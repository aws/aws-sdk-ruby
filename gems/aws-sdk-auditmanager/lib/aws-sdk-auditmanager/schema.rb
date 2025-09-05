# frozen_string_literal: true

# This is generated code!

module Aws::AuditManager
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSAccount = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AWSAccount', name: 'AWSAccount')
    AWSAccounts = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#AWSAccounts', name: 'AWSAccounts', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#sensitive" => {}})
    AWSService = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AWSService', name: 'AWSService')
    AWSServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#AWSServiceName', name: 'AWSServiceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 40}, "smithy.api#pattern" => "^[a-zA-Z0-9-\\s().]+$"})
    AWSServices = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#AWSServices', name: 'AWSServices')
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    AccountName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#AccountName', name: 'AccountName', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[\\u0020-\\u007E]+$"})
    AccountStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#AccountStatus', name: 'AccountStatus')
    ActionEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#ActionEnum', name: 'ActionEnum')
    ActionPlanInstructions = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ActionPlanInstructions', name: 'ActionPlanInstructions', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$", "smithy.api#sensitive" => {}})
    ActionPlanTitle = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ActionPlanTitle', name: 'ActionPlanTitle', traits: {"smithy.api#length" => {"min" => 0, "max" => 300}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$", "smithy.api#sensitive" => {}})
    Assessment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#Assessment', name: 'Assessment')
    AssessmentControl = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssessmentControl', name: 'AssessmentControl')
    AssessmentControlSet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssessmentControlSet', name: 'AssessmentControlSet')
    AssessmentControlSets = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#AssessmentControlSets', name: 'AssessmentControlSets')
    AssessmentControls = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#AssessmentControls', name: 'AssessmentControls')
    AssessmentDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#AssessmentDescription', name: 'AssessmentDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$", "smithy.api#sensitive" => {}})
    AssessmentEvidenceFolder = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssessmentEvidenceFolder', name: 'AssessmentEvidenceFolder')
    AssessmentEvidenceFolderName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#AssessmentEvidenceFolderName', name: 'AssessmentEvidenceFolderName', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$"})
    AssessmentEvidenceFolders = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#AssessmentEvidenceFolders', name: 'AssessmentEvidenceFolders')
    AssessmentFramework = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssessmentFramework', name: 'AssessmentFramework', traits: {"smithy.api#sensitive" => {}})
    AssessmentFrameworkDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#AssessmentFrameworkDescription', name: 'AssessmentFrameworkDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$"})
    AssessmentFrameworkMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssessmentFrameworkMetadata', name: 'AssessmentFrameworkMetadata')
    AssessmentFrameworkShareRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssessmentFrameworkShareRequest', name: 'AssessmentFrameworkShareRequest')
    AssessmentFrameworkShareRequestList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#AssessmentFrameworkShareRequestList', name: 'AssessmentFrameworkShareRequestList')
    AssessmentMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssessmentMetadata', name: 'AssessmentMetadata')
    AssessmentMetadataItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssessmentMetadataItem', name: 'AssessmentMetadataItem')
    AssessmentName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#AssessmentName', name: 'AssessmentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[^\\\\]*$", "smithy.api#sensitive" => {}})
    AssessmentReport = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssessmentReport', name: 'AssessmentReport')
    AssessmentReportDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#AssessmentReportDescription', name: 'AssessmentReportDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$", "smithy.api#sensitive" => {}})
    AssessmentReportDestinationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#AssessmentReportDestinationType', name: 'AssessmentReportDestinationType')
    AssessmentReportEvidenceError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssessmentReportEvidenceError', name: 'AssessmentReportEvidenceError')
    AssessmentReportEvidenceErrors = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#AssessmentReportEvidenceErrors', name: 'AssessmentReportEvidenceErrors')
    AssessmentReportMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssessmentReportMetadata', name: 'AssessmentReportMetadata')
    AssessmentReportName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#AssessmentReportName', name: 'AssessmentReportName', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[a-zA-Z0-9-_\\.]+$"})
    AssessmentReportStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#AssessmentReportStatus', name: 'AssessmentReportStatus')
    AssessmentReportsDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssessmentReportsDestination', name: 'AssessmentReportsDestination', traits: {"smithy.api#sensitive" => {}})
    AssessmentReportsMetadata = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#AssessmentReportsMetadata', name: 'AssessmentReportsMetadata')
    AssessmentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#AssessmentStatus', name: 'AssessmentStatus')
    AssociateAssessmentReportEvidenceFolderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssociateAssessmentReportEvidenceFolderRequest', name: 'AssociateAssessmentReportEvidenceFolderRequest')
    AssociateAssessmentReportEvidenceFolderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssociateAssessmentReportEvidenceFolderResponse', name: 'AssociateAssessmentReportEvidenceFolderResponse')
    AuditManagerArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#AuditManagerArn', name: 'AuditManagerArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:.*:auditmanager:"})
    BatchAssociateAssessmentReportEvidenceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchAssociateAssessmentReportEvidenceRequest', name: 'BatchAssociateAssessmentReportEvidenceRequest')
    BatchAssociateAssessmentReportEvidenceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchAssociateAssessmentReportEvidenceResponse', name: 'BatchAssociateAssessmentReportEvidenceResponse')
    BatchCreateDelegationByAssessmentError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchCreateDelegationByAssessmentError', name: 'BatchCreateDelegationByAssessmentError')
    BatchCreateDelegationByAssessmentErrors = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#BatchCreateDelegationByAssessmentErrors', name: 'BatchCreateDelegationByAssessmentErrors', traits: {"smithy.api#sensitive" => {}})
    BatchCreateDelegationByAssessmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchCreateDelegationByAssessmentRequest', name: 'BatchCreateDelegationByAssessmentRequest')
    BatchCreateDelegationByAssessmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchCreateDelegationByAssessmentResponse', name: 'BatchCreateDelegationByAssessmentResponse')
    BatchDeleteDelegationByAssessmentError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchDeleteDelegationByAssessmentError', name: 'BatchDeleteDelegationByAssessmentError')
    BatchDeleteDelegationByAssessmentErrors = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#BatchDeleteDelegationByAssessmentErrors', name: 'BatchDeleteDelegationByAssessmentErrors', traits: {"smithy.api#sensitive" => {}})
    BatchDeleteDelegationByAssessmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchDeleteDelegationByAssessmentRequest', name: 'BatchDeleteDelegationByAssessmentRequest')
    BatchDeleteDelegationByAssessmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchDeleteDelegationByAssessmentResponse', name: 'BatchDeleteDelegationByAssessmentResponse')
    BatchDisassociateAssessmentReportEvidenceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchDisassociateAssessmentReportEvidenceRequest', name: 'BatchDisassociateAssessmentReportEvidenceRequest')
    BatchDisassociateAssessmentReportEvidenceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchDisassociateAssessmentReportEvidenceResponse', name: 'BatchDisassociateAssessmentReportEvidenceResponse')
    BatchImportEvidenceToAssessmentControlError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchImportEvidenceToAssessmentControlError', name: 'BatchImportEvidenceToAssessmentControlError')
    BatchImportEvidenceToAssessmentControlErrors = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#BatchImportEvidenceToAssessmentControlErrors', name: 'BatchImportEvidenceToAssessmentControlErrors')
    BatchImportEvidenceToAssessmentControlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchImportEvidenceToAssessmentControlRequest', name: 'BatchImportEvidenceToAssessmentControlRequest')
    BatchImportEvidenceToAssessmentControlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchImportEvidenceToAssessmentControlResponse', name: 'BatchImportEvidenceToAssessmentControlResponse')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.auditmanager#Boolean', name: 'Boolean')
    ChangeLog = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ChangeLog', name: 'ChangeLog')
    ChangeLogs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ChangeLogs', name: 'ChangeLogs')
    CloudTrailArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#CloudTrailArn', name: 'CloudTrailArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:.*:cloudtrail:"})
    ComplianceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ComplianceType', name: 'ComplianceType', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$", "smithy.api#sensitive" => {}})
    Control = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#Control', name: 'Control')
    ControlCatalogId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ControlCatalogId', name: 'ControlCatalogId', traits: {"smithy.api#length" => {"min" => 13, "max" => 2048}, "smithy.api#pattern" => "^arn:.*:controlcatalog:.*|UNCATEGORIZED$"})
    ControlComment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ControlComment', name: 'ControlComment')
    ControlCommentBody = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ControlCommentBody', name: 'ControlCommentBody', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$", "smithy.api#sensitive" => {}})
    ControlComments = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ControlComments', name: 'ControlComments')
    ControlDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ControlDescription', name: 'ControlDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$", "smithy.api#sensitive" => {}})
    ControlDomainId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ControlDomainId', name: 'ControlDomainId', traits: {"smithy.api#length" => {"min" => 13, "max" => 2048}, "smithy.api#pattern" => "^arn:.*:controlcatalog:.*:.*:domain/.*|UNCATEGORIZED|^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    ControlDomainInsights = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ControlDomainInsights', name: 'ControlDomainInsights')
    ControlDomainInsightsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ControlDomainInsightsList', name: 'ControlDomainInsightsList')
    ControlInsightsMetadata = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ControlInsightsMetadata', name: 'ControlInsightsMetadata')
    ControlInsightsMetadataByAssessment = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ControlInsightsMetadataByAssessment', name: 'ControlInsightsMetadataByAssessment')
    ControlInsightsMetadataByAssessmentItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ControlInsightsMetadataByAssessmentItem', name: 'ControlInsightsMetadataByAssessmentItem')
    ControlInsightsMetadataItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ControlInsightsMetadataItem', name: 'ControlInsightsMetadataItem')
    ControlMappingSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ControlMappingSource', name: 'ControlMappingSource')
    ControlMappingSources = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ControlMappingSources', name: 'ControlMappingSources', traits: {"smithy.api#length" => {"min" => 1}})
    ControlMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ControlMetadata', name: 'ControlMetadata')
    ControlMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ControlMetadataList', name: 'ControlMetadataList')
    ControlName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ControlName', name: 'ControlName', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[^\\\\]*$"})
    ControlResponse = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#ControlResponse', name: 'ControlResponse')
    ControlSet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ControlSet', name: 'ControlSet')
    ControlSetId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ControlSetId', name: 'ControlSetId', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$"})
    ControlSetName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ControlSetName', name: 'ControlSetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[^\\\\\\_]*$"})
    ControlSetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#ControlSetStatus', name: 'ControlSetStatus')
    ControlSets = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ControlSets', name: 'ControlSets', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    ControlSetsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.auditmanager#ControlSetsCount', name: 'ControlSetsCount', traits: {"smithy.api#default" => 0})
    ControlSources = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ControlSources', name: 'ControlSources', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z_0-9-\\s.,]+$"})
    ControlState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#ControlState', name: 'ControlState')
    ControlStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#ControlStatus', name: 'ControlStatus')
    ControlType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#ControlType', name: 'ControlType')
    Controls = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#Controls', name: 'Controls', traits: {"smithy.api#length" => {"min" => 1}})
    ControlsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.auditmanager#ControlsCount', name: 'ControlsCount', traits: {"smithy.api#default" => 0})
    CreateAssessmentFrameworkControl = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#CreateAssessmentFrameworkControl', name: 'CreateAssessmentFrameworkControl')
    CreateAssessmentFrameworkControlSet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#CreateAssessmentFrameworkControlSet', name: 'CreateAssessmentFrameworkControlSet')
    CreateAssessmentFrameworkControlSets = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#CreateAssessmentFrameworkControlSets', name: 'CreateAssessmentFrameworkControlSets', traits: {"smithy.api#length" => {"min" => 1}})
    CreateAssessmentFrameworkControls = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#CreateAssessmentFrameworkControls', name: 'CreateAssessmentFrameworkControls', traits: {"smithy.api#length" => {"min" => 1}})
    CreateAssessmentFrameworkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#CreateAssessmentFrameworkRequest', name: 'CreateAssessmentFrameworkRequest')
    CreateAssessmentFrameworkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#CreateAssessmentFrameworkResponse', name: 'CreateAssessmentFrameworkResponse')
    CreateAssessmentReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#CreateAssessmentReportRequest', name: 'CreateAssessmentReportRequest')
    CreateAssessmentReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#CreateAssessmentReportResponse', name: 'CreateAssessmentReportResponse')
    CreateAssessmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#CreateAssessmentRequest', name: 'CreateAssessmentRequest')
    CreateAssessmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#CreateAssessmentResponse', name: 'CreateAssessmentResponse')
    CreateControlMappingSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#CreateControlMappingSource', name: 'CreateControlMappingSource')
    CreateControlMappingSources = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#CreateControlMappingSources', name: 'CreateControlMappingSources', traits: {"smithy.api#length" => {"min" => 1}})
    CreateControlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#CreateControlRequest', name: 'CreateControlRequest')
    CreateControlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#CreateControlResponse', name: 'CreateControlResponse')
    CreateDelegationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#CreateDelegationRequest', name: 'CreateDelegationRequest')
    CreateDelegationRequests = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#CreateDelegationRequests', name: 'CreateDelegationRequests', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#sensitive" => {}})
    CreatedBy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#CreatedBy', name: 'CreatedBy', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s-_()\\[\\]]+$", "smithy.api#sensitive" => {}})
    DataSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#DataSourceType', name: 'DataSourceType')
    DefaultExportDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DefaultExportDestination', name: 'DefaultExportDestination')
    Delegation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#Delegation', name: 'Delegation', traits: {"smithy.api#sensitive" => {}})
    DelegationComment = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#DelegationComment', name: 'DelegationComment', traits: {"smithy.api#length" => {"min" => 0, "max" => 350}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$", "smithy.api#sensitive" => {}})
    DelegationIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#DelegationIds', name: 'DelegationIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    DelegationMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DelegationMetadata', name: 'DelegationMetadata')
    DelegationMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#DelegationMetadataList', name: 'DelegationMetadataList')
    DelegationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#DelegationStatus', name: 'DelegationStatus')
    Delegations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#Delegations', name: 'Delegations')
    DeleteAssessmentFrameworkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeleteAssessmentFrameworkRequest', name: 'DeleteAssessmentFrameworkRequest')
    DeleteAssessmentFrameworkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeleteAssessmentFrameworkResponse', name: 'DeleteAssessmentFrameworkResponse')
    DeleteAssessmentFrameworkShareRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeleteAssessmentFrameworkShareRequest', name: 'DeleteAssessmentFrameworkShareRequest')
    DeleteAssessmentFrameworkShareResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeleteAssessmentFrameworkShareResponse', name: 'DeleteAssessmentFrameworkShareResponse')
    DeleteAssessmentReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeleteAssessmentReportRequest', name: 'DeleteAssessmentReportRequest')
    DeleteAssessmentReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeleteAssessmentReportResponse', name: 'DeleteAssessmentReportResponse')
    DeleteAssessmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeleteAssessmentRequest', name: 'DeleteAssessmentRequest')
    DeleteAssessmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeleteAssessmentResponse', name: 'DeleteAssessmentResponse')
    DeleteControlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeleteControlRequest', name: 'DeleteControlRequest')
    DeleteControlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeleteControlResponse', name: 'DeleteControlResponse')
    DeleteResources = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#DeleteResources', name: 'DeleteResources')
    DeregisterAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeregisterAccountRequest', name: 'DeregisterAccountRequest')
    DeregisterAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeregisterAccountResponse', name: 'DeregisterAccountResponse')
    DeregisterOrganizationAdminAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeregisterOrganizationAdminAccountRequest', name: 'DeregisterOrganizationAdminAccountRequest')
    DeregisterOrganizationAdminAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeregisterOrganizationAdminAccountResponse', name: 'DeregisterOrganizationAdminAccountResponse')
    DeregistrationPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeregistrationPolicy', name: 'DeregistrationPolicy')
    DisassociateAssessmentReportEvidenceFolderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DisassociateAssessmentReportEvidenceFolderRequest', name: 'DisassociateAssessmentReportEvidenceFolderRequest')
    DisassociateAssessmentReportEvidenceFolderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DisassociateAssessmentReportEvidenceFolderResponse', name: 'DisassociateAssessmentReportEvidenceFolderResponse')
    EmailAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#EmailAddress', name: 'EmailAddress', traits: {"smithy.api#length" => {"min" => 1, "max" => 320}, "smithy.api#pattern" => "^.*@.*$", "smithy.api#sensitive" => {}})
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ErrorCode', name: 'ErrorCode', traits: {"smithy.api#length" => {"min" => 3, "max" => 3}, "smithy.api#pattern" => "^[0-9]{3}$"})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 300}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$"})
    EventName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#EventName', name: 'EventName', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$"})
    Evidence = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#Evidence', name: 'Evidence')
    EvidenceAttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#EvidenceAttributeKey', name: 'EvidenceAttributeKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$"})
    EvidenceAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#EvidenceAttributeValue', name: 'EvidenceAttributeValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$"})
    EvidenceAttributes = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.auditmanager#EvidenceAttributes', name: 'EvidenceAttributes')
    EvidenceFinderBackfillStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#EvidenceFinderBackfillStatus', name: 'EvidenceFinderBackfillStatus')
    EvidenceFinderEnablement = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#EvidenceFinderEnablement', name: 'EvidenceFinderEnablement')
    EvidenceFinderEnablementStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#EvidenceFinderEnablementStatus', name: 'EvidenceFinderEnablementStatus')
    EvidenceIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#EvidenceIds', name: 'EvidenceIds', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    EvidenceInsights = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#EvidenceInsights', name: 'EvidenceInsights')
    EvidenceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#EvidenceList', name: 'EvidenceList')
    EvidenceSources = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#EvidenceSources', name: 'EvidenceSources')
    ExportDestinationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#ExportDestinationType', name: 'ExportDestinationType')
    Filename = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#Filename', name: 'Filename', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w,\\s-]+\\.[A-Za-z]+$"})
    Framework = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#Framework', name: 'Framework')
    FrameworkDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#FrameworkDescription', name: 'FrameworkDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$"})
    FrameworkMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#FrameworkMetadata', name: 'FrameworkMetadata')
    FrameworkMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#FrameworkMetadataList', name: 'FrameworkMetadataList')
    FrameworkName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#FrameworkName', name: 'FrameworkName', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[^\\\\]*$"})
    FrameworkType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#FrameworkType', name: 'FrameworkType')
    GenericArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#GenericArn', name: 'GenericArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:"})
    GetAccountStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetAccountStatusRequest', name: 'GetAccountStatusRequest')
    GetAccountStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetAccountStatusResponse', name: 'GetAccountStatusResponse')
    GetAssessmentFrameworkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetAssessmentFrameworkRequest', name: 'GetAssessmentFrameworkRequest')
    GetAssessmentFrameworkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetAssessmentFrameworkResponse', name: 'GetAssessmentFrameworkResponse')
    GetAssessmentReportUrlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetAssessmentReportUrlRequest', name: 'GetAssessmentReportUrlRequest')
    GetAssessmentReportUrlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetAssessmentReportUrlResponse', name: 'GetAssessmentReportUrlResponse')
    GetAssessmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetAssessmentRequest', name: 'GetAssessmentRequest')
    GetAssessmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetAssessmentResponse', name: 'GetAssessmentResponse')
    GetChangeLogsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetChangeLogsRequest', name: 'GetChangeLogsRequest')
    GetChangeLogsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetChangeLogsResponse', name: 'GetChangeLogsResponse')
    GetControlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetControlRequest', name: 'GetControlRequest')
    GetControlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetControlResponse', name: 'GetControlResponse')
    GetDelegationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetDelegationsRequest', name: 'GetDelegationsRequest')
    GetDelegationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetDelegationsResponse', name: 'GetDelegationsResponse')
    GetEvidenceByEvidenceFolderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetEvidenceByEvidenceFolderRequest', name: 'GetEvidenceByEvidenceFolderRequest')
    GetEvidenceByEvidenceFolderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetEvidenceByEvidenceFolderResponse', name: 'GetEvidenceByEvidenceFolderResponse')
    GetEvidenceFileUploadUrlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetEvidenceFileUploadUrlRequest', name: 'GetEvidenceFileUploadUrlRequest')
    GetEvidenceFileUploadUrlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetEvidenceFileUploadUrlResponse', name: 'GetEvidenceFileUploadUrlResponse', traits: {"smithy.api#sensitive" => {}})
    GetEvidenceFolderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetEvidenceFolderRequest', name: 'GetEvidenceFolderRequest')
    GetEvidenceFolderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetEvidenceFolderResponse', name: 'GetEvidenceFolderResponse')
    GetEvidenceFoldersByAssessmentControlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetEvidenceFoldersByAssessmentControlRequest', name: 'GetEvidenceFoldersByAssessmentControlRequest')
    GetEvidenceFoldersByAssessmentControlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetEvidenceFoldersByAssessmentControlResponse', name: 'GetEvidenceFoldersByAssessmentControlResponse')
    GetEvidenceFoldersByAssessmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetEvidenceFoldersByAssessmentRequest', name: 'GetEvidenceFoldersByAssessmentRequest')
    GetEvidenceFoldersByAssessmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetEvidenceFoldersByAssessmentResponse', name: 'GetEvidenceFoldersByAssessmentResponse')
    GetEvidenceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetEvidenceRequest', name: 'GetEvidenceRequest')
    GetEvidenceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetEvidenceResponse', name: 'GetEvidenceResponse')
    GetInsightsByAssessmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetInsightsByAssessmentRequest', name: 'GetInsightsByAssessmentRequest')
    GetInsightsByAssessmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetInsightsByAssessmentResponse', name: 'GetInsightsByAssessmentResponse')
    GetInsightsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetInsightsRequest', name: 'GetInsightsRequest')
    GetInsightsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetInsightsResponse', name: 'GetInsightsResponse')
    GetOrganizationAdminAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetOrganizationAdminAccountRequest', name: 'GetOrganizationAdminAccountRequest')
    GetOrganizationAdminAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetOrganizationAdminAccountResponse', name: 'GetOrganizationAdminAccountResponse')
    GetServicesInScopeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetServicesInScopeRequest', name: 'GetServicesInScopeRequest')
    GetServicesInScopeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetServicesInScopeResponse', name: 'GetServicesInScopeResponse')
    GetSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetSettingsRequest', name: 'GetSettingsRequest')
    GetSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetSettingsResponse', name: 'GetSettingsResponse')
    HyperlinkName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#HyperlinkName', name: 'HyperlinkName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$"})
    IamArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#IamArn', name: 'IamArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:.*:iam:"})
    Insights = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#Insights', name: 'Insights')
    InsightsByAssessment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#InsightsByAssessment', name: 'InsightsByAssessment')
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.auditmanager#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KeywordInputType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#KeywordInputType', name: 'KeywordInputType')
    KeywordValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#KeywordValue', name: 'KeywordValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z_0-9-\\s().:\\/]+$"})
    Keywords = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#Keywords', name: 'Keywords')
    KmsKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#KmsKey', name: 'KmsKey', traits: {"smithy.api#length" => {"min" => 7, "max" => 2048}, "smithy.api#pattern" => "^arn:.*:kms:.*|DEFAULT$"})
    LastUpdatedBy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#LastUpdatedBy', name: 'LastUpdatedBy', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s-_()\\[\\]]+$", "smithy.api#sensitive" => {}})
    ListAssessmentControlInsightsByControlDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListAssessmentControlInsightsByControlDomainRequest', name: 'ListAssessmentControlInsightsByControlDomainRequest')
    ListAssessmentControlInsightsByControlDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListAssessmentControlInsightsByControlDomainResponse', name: 'ListAssessmentControlInsightsByControlDomainResponse')
    ListAssessmentFrameworkShareRequestsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListAssessmentFrameworkShareRequestsRequest', name: 'ListAssessmentFrameworkShareRequestsRequest')
    ListAssessmentFrameworkShareRequestsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListAssessmentFrameworkShareRequestsResponse', name: 'ListAssessmentFrameworkShareRequestsResponse')
    ListAssessmentFrameworksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListAssessmentFrameworksRequest', name: 'ListAssessmentFrameworksRequest')
    ListAssessmentFrameworksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListAssessmentFrameworksResponse', name: 'ListAssessmentFrameworksResponse')
    ListAssessmentMetadata = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ListAssessmentMetadata', name: 'ListAssessmentMetadata')
    ListAssessmentReportsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListAssessmentReportsRequest', name: 'ListAssessmentReportsRequest')
    ListAssessmentReportsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListAssessmentReportsResponse', name: 'ListAssessmentReportsResponse')
    ListAssessmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListAssessmentsRequest', name: 'ListAssessmentsRequest')
    ListAssessmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListAssessmentsResponse', name: 'ListAssessmentsResponse')
    ListControlDomainInsightsByAssessmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListControlDomainInsightsByAssessmentRequest', name: 'ListControlDomainInsightsByAssessmentRequest')
    ListControlDomainInsightsByAssessmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListControlDomainInsightsByAssessmentResponse', name: 'ListControlDomainInsightsByAssessmentResponse')
    ListControlDomainInsightsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListControlDomainInsightsRequest', name: 'ListControlDomainInsightsRequest')
    ListControlDomainInsightsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListControlDomainInsightsResponse', name: 'ListControlDomainInsightsResponse')
    ListControlInsightsByControlDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListControlInsightsByControlDomainRequest', name: 'ListControlInsightsByControlDomainRequest')
    ListControlInsightsByControlDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListControlInsightsByControlDomainResponse', name: 'ListControlInsightsByControlDomainResponse')
    ListControlsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListControlsRequest', name: 'ListControlsRequest')
    ListControlsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListControlsResponse', name: 'ListControlsResponse')
    ListKeywordsForDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListKeywordsForDataSourceRequest', name: 'ListKeywordsForDataSourceRequest')
    ListKeywordsForDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListKeywordsForDataSourceResponse', name: 'ListKeywordsForDataSourceResponse')
    ListNotificationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListNotificationsRequest', name: 'ListNotificationsRequest')
    ListNotificationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListNotificationsResponse', name: 'ListNotificationsResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ManualEvidence = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ManualEvidence', name: 'ManualEvidence')
    ManualEvidenceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ManualEvidenceList', name: 'ManualEvidenceList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ManualEvidenceLocalFileName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ManualEvidenceLocalFileName', name: 'ManualEvidenceLocalFileName', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[^\\/]*$", "smithy.api#sensitive" => {}})
    ManualEvidenceTextResponse = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ManualEvidenceTextResponse', name: 'ManualEvidenceTextResponse', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$", "smithy.api#sensitive" => {}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.auditmanager#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#NonEmptyString', name: 'NonEmptyString', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "\\S"})
    Notification = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#Notification', name: 'Notification')
    Notifications = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#Notifications', name: 'Notifications')
    NullableInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.auditmanager#NullableInteger', name: 'NullableInteger')
    ObjectTypeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#ObjectTypeEnum', name: 'ObjectTypeEnum')
    QueryStatement = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#QueryStatement', name: 'QueryStatement', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#pattern" => "^(?s)"})
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#Region', name: 'Region', traits: {"smithy.api#pattern" => "^[a-z]{2}-[a-z]+-[0-9]{1}$"})
    RegisterAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#RegisterAccountRequest', name: 'RegisterAccountRequest')
    RegisterAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#RegisterAccountResponse', name: 'RegisterAccountResponse')
    RegisterOrganizationAdminAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#RegisterOrganizationAdminAccountRequest', name: 'RegisterOrganizationAdminAccountRequest')
    RegisterOrganizationAdminAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#RegisterOrganizationAdminAccountResponse', name: 'RegisterOrganizationAdminAccountResponse')
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#Resource', name: 'Resource')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Resources = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#Resources', name: 'Resources')
    Role = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#Role', name: 'Role')
    RoleType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#RoleType', name: 'RoleType')
    Roles = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#Roles', name: 'Roles', traits: {"smithy.api#sensitive" => {}})
    S3Url = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#S3Url', name: 'S3Url', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(S|s)3:\\/\\/[a-zA-Z0-9\\-\\.\\(\\)\\'\\*\\_\\!\\=\\+\\@\\:\\s\\,\\?\\/]+$"})
    SNSTopic = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#SNSTopic', name: 'SNSTopic', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9-_\\(\\)\\[\\]]+$", "smithy.api#sensitive" => {}})
    Scope = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#Scope', name: 'Scope', traits: {"smithy.api#sensitive" => {}})
    ServiceMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ServiceMetadata', name: 'ServiceMetadata')
    ServiceMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ServiceMetadataList', name: 'ServiceMetadataList')
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SettingAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#SettingAttribute', name: 'SettingAttribute')
    Settings = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#Settings', name: 'Settings')
    ShareRequestAction = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#ShareRequestAction', name: 'ShareRequestAction')
    ShareRequestComment = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ShareRequestComment', name: 'ShareRequestComment', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$"})
    ShareRequestStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#ShareRequestStatus', name: 'ShareRequestStatus')
    ShareRequestType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#ShareRequestType', name: 'ShareRequestType')
    SnsArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#SnsArn', name: 'SnsArn', traits: {"smithy.api#length" => {"min" => 4, "max" => 2048}, "smithy.api#pattern" => "^arn:.*:sns:.*|NONE$"})
    SourceDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#SourceDescription', name: 'SourceDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$"})
    SourceFrequency = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#SourceFrequency', name: 'SourceFrequency')
    SourceKeyword = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#SourceKeyword', name: 'SourceKeyword')
    SourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#SourceName', name: 'SourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    SourceSetUpOption = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#SourceSetUpOption', name: 'SourceSetUpOption')
    SourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#SourceType', name: 'SourceType')
    StartAssessmentFrameworkShareRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#StartAssessmentFrameworkShareRequest', name: 'StartAssessmentFrameworkShareRequest')
    StartAssessmentFrameworkShareResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#StartAssessmentFrameworkShareResponse', name: 'StartAssessmentFrameworkShareResponse')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#String', name: 'String', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => ".*"})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.auditmanager#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^.{0,255}$"})
    TestingInformation = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#TestingInformation', name: 'TestingInformation', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$", "smithy.api#sensitive" => {}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.auditmanager#Timestamp', name: 'Timestamp')
    TimestampUUID = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#TimestampUUID', name: 'TimestampUUID', traits: {"smithy.api#length" => {"min" => 47, "max" => 50}, "smithy.api#pattern" => "^[0-9]{10,13}_[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#Token', name: 'Token', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[A-Za-z0-9+\\/=]*$"})
    TroubleshootingText = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#TroubleshootingText', name: 'TroubleshootingText', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$", "smithy.api#sensitive" => {}})
    URL = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#URL', name: 'URL')
    UUID = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#UUID', name: 'UUID', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateAssessmentControlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentControlRequest', name: 'UpdateAssessmentControlRequest')
    UpdateAssessmentControlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentControlResponse', name: 'UpdateAssessmentControlResponse')
    UpdateAssessmentControlSetStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentControlSetStatusRequest', name: 'UpdateAssessmentControlSetStatusRequest')
    UpdateAssessmentControlSetStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentControlSetStatusResponse', name: 'UpdateAssessmentControlSetStatusResponse')
    UpdateAssessmentFrameworkControlSet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentFrameworkControlSet', name: 'UpdateAssessmentFrameworkControlSet')
    UpdateAssessmentFrameworkControlSets = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentFrameworkControlSets', name: 'UpdateAssessmentFrameworkControlSets', traits: {"smithy.api#length" => {"min" => 1}})
    UpdateAssessmentFrameworkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentFrameworkRequest', name: 'UpdateAssessmentFrameworkRequest')
    UpdateAssessmentFrameworkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentFrameworkResponse', name: 'UpdateAssessmentFrameworkResponse')
    UpdateAssessmentFrameworkShareRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentFrameworkShareRequest', name: 'UpdateAssessmentFrameworkShareRequest')
    UpdateAssessmentFrameworkShareResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentFrameworkShareResponse', name: 'UpdateAssessmentFrameworkShareResponse')
    UpdateAssessmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentRequest', name: 'UpdateAssessmentRequest')
    UpdateAssessmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentResponse', name: 'UpdateAssessmentResponse')
    UpdateAssessmentStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentStatusRequest', name: 'UpdateAssessmentStatusRequest')
    UpdateAssessmentStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentStatusResponse', name: 'UpdateAssessmentStatusResponse')
    UpdateControlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateControlRequest', name: 'UpdateControlRequest')
    UpdateControlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateControlResponse', name: 'UpdateControlResponse')
    UpdateSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateSettingsRequest', name: 'UpdateSettingsRequest')
    UpdateSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateSettingsResponse', name: 'UpdateSettingsResponse')
    UrlLink = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#UrlLink', name: 'UrlLink', traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}, "smithy.api#pattern" => "^(https?:\\/\\/)?(www\\.)?[a-zA-Z0-9-_]+([\\.]+[a-zA-Z]+)+[\\/\\w]*$"})
    Username = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#Username', name: 'Username', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_()\\s\\+=,.@]+$", "smithy.api#sensitive" => {}})
    ValidateAssessmentReportIntegrityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ValidateAssessmentReportIntegrityRequest', name: 'ValidateAssessmentReportIntegrityRequest')
    ValidateAssessmentReportIntegrityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ValidateAssessmentReportIntegrityResponse', name: 'ValidateAssessmentReportIntegrityResponse')
    ValidationErrors = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ValidationErrors', name: 'ValidationErrors')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#ValidationExceptionReason', name: 'ValidationExceptionReason')
    OrganizationId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#organizationId', name: 'OrganizationId', traits: {"smithy.api#length" => {"min" => 12, "max" => 34}, "smithy.api#pattern" => "^o-[a-z0-9]{10,32}$"})

    AWSAccount.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'id'))
    AWSAccount.add_member(:email_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'emailAddress'))
    AWSAccount.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountName, location_name: 'name'))
    AWSAccount.type = Types::AWSAccount
    AWSAccounts.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccount)
    AWSService.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceName, location_name: 'serviceName'))
    AWSService.type = Types::AWSService
    AWSServices.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSService)
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AccountStatus.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    AccountStatus.add_member(:pending_activation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_ACTIVATION', traits: {"smithy.api#enumValue" => "PENDING_ACTIVATION"}))
    ActionEnum.add_member(:create, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE', traits: {"smithy.api#enumValue" => "CREATE"}))
    ActionEnum.add_member(:update_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_METADATA', traits: {"smithy.api#enumValue" => "UPDATE_METADATA"}))
    ActionEnum.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ActionEnum.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    ActionEnum.add_member(:delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE', traits: {"smithy.api#enumValue" => "DELETE"}))
    ActionEnum.add_member(:under_review, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNDER_REVIEW', traits: {"smithy.api#enumValue" => "UNDER_REVIEW"}))
    ActionEnum.add_member(:reviewed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVIEWED', traits: {"smithy.api#enumValue" => "REVIEWED"}))
    ActionEnum.add_member(:import_evidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORT_EVIDENCE', traits: {"smithy.api#enumValue" => "IMPORT_EVIDENCE"}))
    Assessment.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditManagerArn, location_name: 'arn'))
    Assessment.add_member(:aws_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccount, location_name: 'awsAccount'))
    Assessment.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentMetadata, location_name: 'metadata'))
    Assessment.add_member(:framework, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentFramework, location_name: 'framework'))
    Assessment.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    Assessment.type = Types::Assessment
    AssessmentControl.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id'))
    AssessmentControl.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlName, location_name: 'name'))
    AssessmentControl.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlDescription, location_name: 'description', traits: {"smithy.api#deprecated" => {"since" => "2025-05-19", "message" => "This data type will be deprecated on May 19, 2025. To view the assessment control description, use GetControl."}}))
    AssessmentControl.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlStatus, location_name: 'status'))
    AssessmentControl.add_member(:response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlResponse, location_name: 'response'))
    AssessmentControl.add_member(:comments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlComments, location_name: 'comments'))
    AssessmentControl.add_member(:evidence_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceSources, location_name: 'evidenceSources'))
    AssessmentControl.add_member(:evidence_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'evidenceCount', traits: {"smithy.api#default" => 0}))
    AssessmentControl.add_member(:assessment_report_evidence_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'assessmentReportEvidenceCount', traits: {"smithy.api#default" => 0}))
    AssessmentControl.type = Types::AssessmentControl
    AssessmentControlSet.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetId, location_name: 'id'))
    AssessmentControlSet.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'description'))
    AssessmentControlSet.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetStatus, location_name: 'status'))
    AssessmentControlSet.add_member(:roles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Roles, location_name: 'roles'))
    AssessmentControlSet.add_member(:controls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentControls, location_name: 'controls'))
    AssessmentControlSet.add_member(:delegations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Delegations, location_name: 'delegations'))
    AssessmentControlSet.add_member(:system_evidence_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'systemEvidenceCount', traits: {"smithy.api#default" => 0}))
    AssessmentControlSet.add_member(:manual_evidence_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'manualEvidenceCount', traits: {"smithy.api#default" => 0}))
    AssessmentControlSet.type = Types::AssessmentControlSet
    AssessmentControlSets.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentControlSet)
    AssessmentControls.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentControl)
    AssessmentEvidenceFolder.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentEvidenceFolderName, location_name: 'name'))
    AssessmentEvidenceFolder.add_member(:date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'date'))
    AssessmentEvidenceFolder.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId'))
    AssessmentEvidenceFolder.add_member(:control_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetId, location_name: 'controlSetId'))
    AssessmentEvidenceFolder.add_member(:control_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'controlId'))
    AssessmentEvidenceFolder.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id'))
    AssessmentEvidenceFolder.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'dataSource'))
    AssessmentEvidenceFolder.add_member(:author, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'author'))
    AssessmentEvidenceFolder.add_member(:total_evidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'totalEvidence', traits: {"smithy.api#default" => 0}))
    AssessmentEvidenceFolder.add_member(:assessment_report_selection_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'assessmentReportSelectionCount', traits: {"smithy.api#default" => 0}))
    AssessmentEvidenceFolder.add_member(:control_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlName, location_name: 'controlName'))
    AssessmentEvidenceFolder.add_member(:evidence_resources_included_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'evidenceResourcesIncludedCount', traits: {"smithy.api#default" => 0}))
    AssessmentEvidenceFolder.add_member(:evidence_by_type_configuration_data_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'evidenceByTypeConfigurationDataCount', traits: {"smithy.api#default" => 0}))
    AssessmentEvidenceFolder.add_member(:evidence_by_type_manual_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'evidenceByTypeManualCount', traits: {"smithy.api#default" => 0}))
    AssessmentEvidenceFolder.add_member(:evidence_by_type_compliance_check_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'evidenceByTypeComplianceCheckCount', traits: {"smithy.api#default" => 0}))
    AssessmentEvidenceFolder.add_member(:evidence_by_type_compliance_check_issues_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'evidenceByTypeComplianceCheckIssuesCount', traits: {"smithy.api#default" => 0}))
    AssessmentEvidenceFolder.add_member(:evidence_by_type_user_activity_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'evidenceByTypeUserActivityCount', traits: {"smithy.api#default" => 0}))
    AssessmentEvidenceFolder.add_member(:evidence_aws_service_source_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'evidenceAwsServiceSourceCount', traits: {"smithy.api#default" => 0}))
    AssessmentEvidenceFolder.type = Types::AssessmentEvidenceFolder
    AssessmentEvidenceFolders.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentEvidenceFolder)
    AssessmentFramework.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id'))
    AssessmentFramework.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditManagerArn, location_name: 'arn'))
    AssessmentFramework.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkMetadata, location_name: 'metadata'))
    AssessmentFramework.add_member(:control_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentControlSets, location_name: 'controlSets'))
    AssessmentFramework.type = Types::AssessmentFramework
    AssessmentFrameworkMetadata.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditManagerArn, location_name: 'arn'))
    AssessmentFrameworkMetadata.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id'))
    AssessmentFrameworkMetadata.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkType, location_name: 'type'))
    AssessmentFrameworkMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkName, location_name: 'name'))
    AssessmentFrameworkMetadata.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkDescription, location_name: 'description'))
    AssessmentFrameworkMetadata.add_member(:logo, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filename, location_name: 'logo'))
    AssessmentFrameworkMetadata.add_member(:compliance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComplianceType, location_name: 'complianceType'))
    AssessmentFrameworkMetadata.add_member(:controls_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlsCount, location_name: 'controlsCount', traits: {"smithy.api#default" => 0}))
    AssessmentFrameworkMetadata.add_member(:control_sets_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetsCount, location_name: 'controlSetsCount', traits: {"smithy.api#default" => 0}))
    AssessmentFrameworkMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt'))
    AssessmentFrameworkMetadata.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt'))
    AssessmentFrameworkMetadata.type = Types::AssessmentFrameworkMetadata
    AssessmentFrameworkShareRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id'))
    AssessmentFrameworkShareRequest.add_member(:framework_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'frameworkId'))
    AssessmentFrameworkShareRequest.add_member(:framework_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkName, location_name: 'frameworkName'))
    AssessmentFrameworkShareRequest.add_member(:framework_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkDescription, location_name: 'frameworkDescription'))
    AssessmentFrameworkShareRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShareRequestStatus, location_name: 'status'))
    AssessmentFrameworkShareRequest.add_member(:source_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'sourceAccount'))
    AssessmentFrameworkShareRequest.add_member(:destination_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'destinationAccount'))
    AssessmentFrameworkShareRequest.add_member(:destination_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'destinationRegion'))
    AssessmentFrameworkShareRequest.add_member(:expiration_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'expirationTime'))
    AssessmentFrameworkShareRequest.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime'))
    AssessmentFrameworkShareRequest.add_member(:last_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdated'))
    AssessmentFrameworkShareRequest.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShareRequestComment, location_name: 'comment'))
    AssessmentFrameworkShareRequest.add_member(:standard_controls_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'standardControlsCount'))
    AssessmentFrameworkShareRequest.add_member(:custom_controls_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'customControlsCount'))
    AssessmentFrameworkShareRequest.add_member(:compliance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComplianceType, location_name: 'complianceType'))
    AssessmentFrameworkShareRequest.type = Types::AssessmentFrameworkShareRequest
    AssessmentFrameworkShareRequestList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentFrameworkShareRequest)
    AssessmentMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentName, location_name: 'name'))
    AssessmentMetadata.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id'))
    AssessmentMetadata.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentDescription, location_name: 'description'))
    AssessmentMetadata.add_member(:compliance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComplianceType, location_name: 'complianceType'))
    AssessmentMetadata.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentStatus, location_name: 'status'))
    AssessmentMetadata.add_member(:assessment_reports_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportsDestination, location_name: 'assessmentReportsDestination'))
    AssessmentMetadata.add_member(:scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Scope, location_name: 'scope'))
    AssessmentMetadata.add_member(:roles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Roles, location_name: 'roles'))
    AssessmentMetadata.add_member(:delegations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Delegations, location_name: 'delegations'))
    AssessmentMetadata.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime'))
    AssessmentMetadata.add_member(:last_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdated'))
    AssessmentMetadata.type = Types::AssessmentMetadata
    AssessmentMetadataItem.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentName, location_name: 'name'))
    AssessmentMetadataItem.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id'))
    AssessmentMetadataItem.add_member(:compliance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComplianceType, location_name: 'complianceType'))
    AssessmentMetadataItem.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentStatus, location_name: 'status'))
    AssessmentMetadataItem.add_member(:roles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Roles, location_name: 'roles'))
    AssessmentMetadataItem.add_member(:delegations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Delegations, location_name: 'delegations'))
    AssessmentMetadataItem.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime'))
    AssessmentMetadataItem.add_member(:last_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdated'))
    AssessmentMetadataItem.type = Types::AssessmentMetadataItem
    AssessmentReport.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id'))
    AssessmentReport.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportName, location_name: 'name'))
    AssessmentReport.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportDescription, location_name: 'description'))
    AssessmentReport.add_member(:aws_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'awsAccountId'))
    AssessmentReport.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId'))
    AssessmentReport.add_member(:assessment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentName, location_name: 'assessmentName'))
    AssessmentReport.add_member(:author, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: 'author'))
    AssessmentReport.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportStatus, location_name: 'status'))
    AssessmentReport.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime'))
    AssessmentReport.type = Types::AssessmentReport
    AssessmentReportDestinationType.add_member(:s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "S3"}))
    AssessmentReportEvidenceError.add_member(:evidence_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'evidenceId'))
    AssessmentReportEvidenceError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode'))
    AssessmentReportEvidenceError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage'))
    AssessmentReportEvidenceError.type = Types::AssessmentReportEvidenceError
    AssessmentReportEvidenceErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportEvidenceError)
    AssessmentReportMetadata.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id'))
    AssessmentReportMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportName, location_name: 'name'))
    AssessmentReportMetadata.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportDescription, location_name: 'description'))
    AssessmentReportMetadata.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId'))
    AssessmentReportMetadata.add_member(:assessment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentName, location_name: 'assessmentName'))
    AssessmentReportMetadata.add_member(:author, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: 'author'))
    AssessmentReportMetadata.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportStatus, location_name: 'status'))
    AssessmentReportMetadata.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime'))
    AssessmentReportMetadata.type = Types::AssessmentReportMetadata
    AssessmentReportStatus.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    AssessmentReportStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    AssessmentReportStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    AssessmentReportsDestination.add_member(:destination_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportDestinationType, location_name: 'destinationType'))
    AssessmentReportsDestination.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: 'destination'))
    AssessmentReportsDestination.type = Types::AssessmentReportsDestination
    AssessmentReportsMetadata.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportMetadata)
    AssessmentStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AssessmentStatus.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    AssociateAssessmentReportEvidenceFolderRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateAssessmentReportEvidenceFolderRequest.add_member(:evidence_folder_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'evidenceFolderId', traits: {"smithy.api#required" => {}}))
    AssociateAssessmentReportEvidenceFolderRequest.type = Types::AssociateAssessmentReportEvidenceFolderRequest
    AssociateAssessmentReportEvidenceFolderResponse.type = Types::AssociateAssessmentReportEvidenceFolderResponse
    BatchAssociateAssessmentReportEvidenceRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchAssociateAssessmentReportEvidenceRequest.add_member(:evidence_folder_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'evidenceFolderId', traits: {"smithy.api#required" => {}}))
    BatchAssociateAssessmentReportEvidenceRequest.add_member(:evidence_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceIds, location_name: 'evidenceIds', traits: {"smithy.api#required" => {}}))
    BatchAssociateAssessmentReportEvidenceRequest.type = Types::BatchAssociateAssessmentReportEvidenceRequest
    BatchAssociateAssessmentReportEvidenceResponse.add_member(:evidence_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceIds, location_name: 'evidenceIds'))
    BatchAssociateAssessmentReportEvidenceResponse.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportEvidenceErrors, location_name: 'errors'))
    BatchAssociateAssessmentReportEvidenceResponse.type = Types::BatchAssociateAssessmentReportEvidenceResponse
    BatchCreateDelegationByAssessmentError.add_member(:create_delegation_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDelegationRequest, location_name: 'createDelegationRequest'))
    BatchCreateDelegationByAssessmentError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode'))
    BatchCreateDelegationByAssessmentError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage'))
    BatchCreateDelegationByAssessmentError.type = Types::BatchCreateDelegationByAssessmentError
    BatchCreateDelegationByAssessmentErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateDelegationByAssessmentError)
    BatchCreateDelegationByAssessmentRequest.add_member(:create_delegation_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDelegationRequests, location_name: 'createDelegationRequests', traits: {"smithy.api#required" => {}}))
    BatchCreateDelegationByAssessmentRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchCreateDelegationByAssessmentRequest.type = Types::BatchCreateDelegationByAssessmentRequest
    BatchCreateDelegationByAssessmentResponse.add_member(:delegations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Delegations, location_name: 'delegations'))
    BatchCreateDelegationByAssessmentResponse.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateDelegationByAssessmentErrors, location_name: 'errors'))
    BatchCreateDelegationByAssessmentResponse.type = Types::BatchCreateDelegationByAssessmentResponse
    BatchDeleteDelegationByAssessmentError.add_member(:delegation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'delegationId'))
    BatchDeleteDelegationByAssessmentError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode'))
    BatchDeleteDelegationByAssessmentError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage'))
    BatchDeleteDelegationByAssessmentError.type = Types::BatchDeleteDelegationByAssessmentError
    BatchDeleteDelegationByAssessmentErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteDelegationByAssessmentError)
    BatchDeleteDelegationByAssessmentRequest.add_member(:delegation_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationIds, location_name: 'delegationIds', traits: {"smithy.api#required" => {}}))
    BatchDeleteDelegationByAssessmentRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDeleteDelegationByAssessmentRequest.type = Types::BatchDeleteDelegationByAssessmentRequest
    BatchDeleteDelegationByAssessmentResponse.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteDelegationByAssessmentErrors, location_name: 'errors'))
    BatchDeleteDelegationByAssessmentResponse.type = Types::BatchDeleteDelegationByAssessmentResponse
    BatchDisassociateAssessmentReportEvidenceRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDisassociateAssessmentReportEvidenceRequest.add_member(:evidence_folder_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'evidenceFolderId', traits: {"smithy.api#required" => {}}))
    BatchDisassociateAssessmentReportEvidenceRequest.add_member(:evidence_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceIds, location_name: 'evidenceIds', traits: {"smithy.api#required" => {}}))
    BatchDisassociateAssessmentReportEvidenceRequest.type = Types::BatchDisassociateAssessmentReportEvidenceRequest
    BatchDisassociateAssessmentReportEvidenceResponse.add_member(:evidence_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceIds, location_name: 'evidenceIds'))
    BatchDisassociateAssessmentReportEvidenceResponse.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportEvidenceErrors, location_name: 'errors'))
    BatchDisassociateAssessmentReportEvidenceResponse.type = Types::BatchDisassociateAssessmentReportEvidenceResponse
    BatchImportEvidenceToAssessmentControlError.add_member(:manual_evidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManualEvidence, location_name: 'manualEvidence'))
    BatchImportEvidenceToAssessmentControlError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode'))
    BatchImportEvidenceToAssessmentControlError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage'))
    BatchImportEvidenceToAssessmentControlError.type = Types::BatchImportEvidenceToAssessmentControlError
    BatchImportEvidenceToAssessmentControlErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchImportEvidenceToAssessmentControlError)
    BatchImportEvidenceToAssessmentControlRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchImportEvidenceToAssessmentControlRequest.add_member(:control_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetId, location_name: 'controlSetId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchImportEvidenceToAssessmentControlRequest.add_member(:control_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'controlId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchImportEvidenceToAssessmentControlRequest.add_member(:manual_evidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManualEvidenceList, location_name: 'manualEvidence', traits: {"smithy.api#required" => {}}))
    BatchImportEvidenceToAssessmentControlRequest.type = Types::BatchImportEvidenceToAssessmentControlRequest
    BatchImportEvidenceToAssessmentControlResponse.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchImportEvidenceToAssessmentControlErrors, location_name: 'errors'))
    BatchImportEvidenceToAssessmentControlResponse.type = Types::BatchImportEvidenceToAssessmentControlResponse
    ChangeLog.add_member(:object_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectTypeEnum, location_name: 'objectType'))
    ChangeLog.add_member(:object_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'objectName'))
    ChangeLog.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionEnum, location_name: 'action'))
    ChangeLog.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt'))
    ChangeLog.add_member(:created_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamArn, location_name: 'createdBy'))
    ChangeLog.type = Types::ChangeLog
    ChangeLogs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeLog)
    Control.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditManagerArn, location_name: 'arn'))
    Control.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id'))
    Control.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlType, location_name: 'type'))
    Control.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlName, location_name: 'name'))
    Control.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlDescription, location_name: 'description'))
    Control.add_member(:testing_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestingInformation, location_name: 'testingInformation'))
    Control.add_member(:action_plan_title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPlanTitle, location_name: 'actionPlanTitle'))
    Control.add_member(:action_plan_instructions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPlanInstructions, location_name: 'actionPlanInstructions'))
    Control.add_member(:control_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSources, location_name: 'controlSources'))
    Control.add_member(:control_mapping_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlMappingSources, location_name: 'controlMappingSources'))
    Control.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt'))
    Control.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt'))
    Control.add_member(:created_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy'))
    Control.add_member(:last_updated_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedBy, location_name: 'lastUpdatedBy'))
    Control.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    Control.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlState, location_name: 'state'))
    Control.type = Types::Control
    ControlComment.add_member(:author_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: 'authorName'))
    ControlComment.add_member(:comment_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlCommentBody, location_name: 'commentBody'))
    ControlComment.add_member(:posted_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'postedDate'))
    ControlComment.type = Types::ControlComment
    ControlComments.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlComment)
    ControlDomainInsights.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    ControlDomainInsights.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlDomainId, location_name: 'id'))
    ControlDomainInsights.add_member(:controls_count_by_noncompliant_evidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'controlsCountByNoncompliantEvidence'))
    ControlDomainInsights.add_member(:total_controls_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'totalControlsCount'))
    ControlDomainInsights.add_member(:evidence_insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceInsights, location_name: 'evidenceInsights'))
    ControlDomainInsights.add_member(:last_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdated'))
    ControlDomainInsights.type = Types::ControlDomainInsights
    ControlDomainInsightsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlDomainInsights)
    ControlInsightsMetadata.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlInsightsMetadataItem)
    ControlInsightsMetadataByAssessment.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlInsightsMetadataByAssessmentItem)
    ControlInsightsMetadataByAssessmentItem.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    ControlInsightsMetadataByAssessmentItem.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlDomainId, location_name: 'id'))
    ControlInsightsMetadataByAssessmentItem.add_member(:evidence_insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceInsights, location_name: 'evidenceInsights'))
    ControlInsightsMetadataByAssessmentItem.add_member(:control_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'controlSetName'))
    ControlInsightsMetadataByAssessmentItem.add_member(:last_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdated'))
    ControlInsightsMetadataByAssessmentItem.type = Types::ControlInsightsMetadataByAssessmentItem
    ControlInsightsMetadataItem.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    ControlInsightsMetadataItem.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlDomainId, location_name: 'id'))
    ControlInsightsMetadataItem.add_member(:evidence_insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceInsights, location_name: 'evidenceInsights'))
    ControlInsightsMetadataItem.add_member(:last_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdated'))
    ControlInsightsMetadataItem.type = Types::ControlInsightsMetadataItem
    ControlMappingSource.add_member(:source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'sourceId'))
    ControlMappingSource.add_member(:source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceName, location_name: 'sourceName'))
    ControlMappingSource.add_member(:source_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceDescription, location_name: 'sourceDescription'))
    ControlMappingSource.add_member(:source_set_up_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceSetUpOption, location_name: 'sourceSetUpOption'))
    ControlMappingSource.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'sourceType'))
    ControlMappingSource.add_member(:source_keyword, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceKeyword, location_name: 'sourceKeyword'))
    ControlMappingSource.add_member(:source_frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceFrequency, location_name: 'sourceFrequency'))
    ControlMappingSource.add_member(:troubleshooting_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TroubleshootingText, location_name: 'troubleshootingText'))
    ControlMappingSource.type = Types::ControlMappingSource
    ControlMappingSources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlMappingSource)
    ControlMetadata.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditManagerArn, location_name: 'arn'))
    ControlMetadata.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id'))
    ControlMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlName, location_name: 'name'))
    ControlMetadata.add_member(:control_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSources, location_name: 'controlSources'))
    ControlMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt'))
    ControlMetadata.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt'))
    ControlMetadata.type = Types::ControlMetadata
    ControlMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlMetadata)
    ControlResponse.add_member(:manual, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUAL', traits: {"smithy.api#enumValue" => "MANUAL"}))
    ControlResponse.add_member(:automate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMATE', traits: {"smithy.api#enumValue" => "AUTOMATE"}))
    ControlResponse.add_member(:defer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFER', traits: {"smithy.api#enumValue" => "DEFER"}))
    ControlResponse.add_member(:ignore, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IGNORE', traits: {"smithy.api#enumValue" => "IGNORE"}))
    ControlSet.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id'))
    ControlSet.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetName, location_name: 'name'))
    ControlSet.add_member(:controls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Controls, location_name: 'controls'))
    ControlSet.type = Types::ControlSet
    ControlSetStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ControlSetStatus.add_member(:under_review, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNDER_REVIEW', traits: {"smithy.api#enumValue" => "UNDER_REVIEW"}))
    ControlSetStatus.add_member(:reviewed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVIEWED', traits: {"smithy.api#enumValue" => "REVIEWED"}))
    ControlSets.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSet)
    ControlState.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ControlState.add_member(:end_of_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'END_OF_SUPPORT', traits: {"smithy.api#enumValue" => "END_OF_SUPPORT"}))
    ControlStatus.add_member(:under_review, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNDER_REVIEW', traits: {"smithy.api#enumValue" => "UNDER_REVIEW"}))
    ControlStatus.add_member(:reviewed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVIEWED', traits: {"smithy.api#enumValue" => "REVIEWED"}))
    ControlStatus.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    ControlType.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "Standard"}))
    ControlType.add_member(:custom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "Custom"}))
    ControlType.add_member(:core, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CORE', traits: {"smithy.api#enumValue" => "Core"}))
    Controls.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Control)
    CreateAssessmentFrameworkControl.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#required" => {}}))
    CreateAssessmentFrameworkControl.type = Types::CreateAssessmentFrameworkControl
    CreateAssessmentFrameworkControlSet.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateAssessmentFrameworkControlSet.add_member(:controls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentFrameworkControls, location_name: 'controls'))
    CreateAssessmentFrameworkControlSet.type = Types::CreateAssessmentFrameworkControlSet
    CreateAssessmentFrameworkControlSets.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentFrameworkControlSet)
    CreateAssessmentFrameworkControls.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentFrameworkControl)
    CreateAssessmentFrameworkRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateAssessmentFrameworkRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkDescription, location_name: 'description'))
    CreateAssessmentFrameworkRequest.add_member(:compliance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComplianceType, location_name: 'complianceType'))
    CreateAssessmentFrameworkRequest.add_member(:control_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentFrameworkControlSets, location_name: 'controlSets', traits: {"smithy.api#required" => {}}))
    CreateAssessmentFrameworkRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateAssessmentFrameworkRequest.type = Types::CreateAssessmentFrameworkRequest
    CreateAssessmentFrameworkResponse.add_member(:framework, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Framework, location_name: 'framework'))
    CreateAssessmentFrameworkResponse.type = Types::CreateAssessmentFrameworkResponse
    CreateAssessmentReportRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateAssessmentReportRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportDescription, location_name: 'description'))
    CreateAssessmentReportRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAssessmentReportRequest.add_member(:query_statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStatement, location_name: 'queryStatement'))
    CreateAssessmentReportRequest.type = Types::CreateAssessmentReportRequest
    CreateAssessmentReportResponse.add_member(:assessment_report, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReport, location_name: 'assessmentReport'))
    CreateAssessmentReportResponse.type = Types::CreateAssessmentReportResponse
    CreateAssessmentRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateAssessmentRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentDescription, location_name: 'description'))
    CreateAssessmentRequest.add_member(:assessment_reports_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportsDestination, location_name: 'assessmentReportsDestination', traits: {"smithy.api#required" => {}}))
    CreateAssessmentRequest.add_member(:scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Scope, location_name: 'scope', traits: {"smithy.api#required" => {}}))
    CreateAssessmentRequest.add_member(:roles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Roles, location_name: 'roles', traits: {"smithy.api#required" => {}}))
    CreateAssessmentRequest.add_member(:framework_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'frameworkId', traits: {"smithy.api#required" => {}}))
    CreateAssessmentRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateAssessmentRequest.type = Types::CreateAssessmentRequest
    CreateAssessmentResponse.add_member(:assessment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Assessment, location_name: 'assessment'))
    CreateAssessmentResponse.type = Types::CreateAssessmentResponse
    CreateControlMappingSource.add_member(:source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceName, location_name: 'sourceName'))
    CreateControlMappingSource.add_member(:source_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceDescription, location_name: 'sourceDescription'))
    CreateControlMappingSource.add_member(:source_set_up_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceSetUpOption, location_name: 'sourceSetUpOption'))
    CreateControlMappingSource.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'sourceType'))
    CreateControlMappingSource.add_member(:source_keyword, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceKeyword, location_name: 'sourceKeyword'))
    CreateControlMappingSource.add_member(:source_frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceFrequency, location_name: 'sourceFrequency'))
    CreateControlMappingSource.add_member(:troubleshooting_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TroubleshootingText, location_name: 'troubleshootingText'))
    CreateControlMappingSource.type = Types::CreateControlMappingSource
    CreateControlMappingSources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateControlMappingSource)
    CreateControlRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateControlRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlDescription, location_name: 'description'))
    CreateControlRequest.add_member(:testing_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestingInformation, location_name: 'testingInformation'))
    CreateControlRequest.add_member(:action_plan_title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPlanTitle, location_name: 'actionPlanTitle'))
    CreateControlRequest.add_member(:action_plan_instructions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPlanInstructions, location_name: 'actionPlanInstructions'))
    CreateControlRequest.add_member(:control_mapping_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateControlMappingSources, location_name: 'controlMappingSources', traits: {"smithy.api#required" => {}}))
    CreateControlRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateControlRequest.type = Types::CreateControlRequest
    CreateControlResponse.add_member(:control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Control, location_name: 'control'))
    CreateControlResponse.type = Types::CreateControlResponse
    CreateDelegationRequest.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationComment, location_name: 'comment'))
    CreateDelegationRequest.add_member(:control_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetId, location_name: 'controlSetId'))
    CreateDelegationRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamArn, location_name: 'roleArn'))
    CreateDelegationRequest.add_member(:role_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleType, location_name: 'roleType'))
    CreateDelegationRequest.type = Types::CreateDelegationRequest
    CreateDelegationRequests.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDelegationRequest)
    DataSourceType.add_member(:aws_cloudtrail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_CLOUDTRAIL', traits: {"smithy.api#enumValue" => "AWS_Cloudtrail"}))
    DataSourceType.add_member(:aws_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_CONFIG', traits: {"smithy.api#enumValue" => "AWS_Config"}))
    DataSourceType.add_member(:aws_security_hub, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SECURITY_HUB', traits: {"smithy.api#enumValue" => "AWS_Security_Hub"}))
    DataSourceType.add_member(:aws_api_call, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_API_CALL', traits: {"smithy.api#enumValue" => "AWS_API_Call"}))
    DataSourceType.add_member(:manual, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUAL', traits: {"smithy.api#enumValue" => "MANUAL"}))
    DefaultExportDestination.add_member(:destination_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDestinationType, location_name: 'destinationType'))
    DefaultExportDestination.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: 'destination'))
    DefaultExportDestination.type = Types::DefaultExportDestination
    Delegation.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id'))
    Delegation.add_member(:assessment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentName, location_name: 'assessmentName'))
    Delegation.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId'))
    Delegation.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationStatus, location_name: 'status'))
    Delegation.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamArn, location_name: 'roleArn'))
    Delegation.add_member(:role_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleType, location_name: 'roleType'))
    Delegation.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime'))
    Delegation.add_member(:last_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdated'))
    Delegation.add_member(:control_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetId, location_name: 'controlSetId'))
    Delegation.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationComment, location_name: 'comment'))
    Delegation.add_member(:created_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy'))
    Delegation.type = Types::Delegation
    DelegationIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID)
    DelegationMetadata.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id'))
    DelegationMetadata.add_member(:assessment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentName, location_name: 'assessmentName'))
    DelegationMetadata.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId'))
    DelegationMetadata.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationStatus, location_name: 'status'))
    DelegationMetadata.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamArn, location_name: 'roleArn'))
    DelegationMetadata.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime'))
    DelegationMetadata.add_member(:control_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'controlSetName'))
    DelegationMetadata.type = Types::DelegationMetadata
    DelegationMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationMetadata)
    DelegationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DelegationStatus.add_member(:under_review, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNDER_REVIEW', traits: {"smithy.api#enumValue" => "UNDER_REVIEW"}))
    DelegationStatus.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    Delegations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Delegation)
    DeleteAssessmentFrameworkRequest.add_member(:framework_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'frameworkId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssessmentFrameworkRequest.type = Types::DeleteAssessmentFrameworkRequest
    DeleteAssessmentFrameworkResponse.type = Types::DeleteAssessmentFrameworkResponse
    DeleteAssessmentFrameworkShareRequest.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'requestId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssessmentFrameworkShareRequest.add_member(:request_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShareRequestType, location_name: 'requestType', traits: {"smithy.api#httpQuery" => "requestType", "smithy.api#required" => {}}))
    DeleteAssessmentFrameworkShareRequest.type = Types::DeleteAssessmentFrameworkShareRequest
    DeleteAssessmentFrameworkShareResponse.type = Types::DeleteAssessmentFrameworkShareResponse
    DeleteAssessmentReportRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssessmentReportRequest.add_member(:assessment_report_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentReportId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssessmentReportRequest.type = Types::DeleteAssessmentReportRequest
    DeleteAssessmentReportResponse.type = Types::DeleteAssessmentReportResponse
    DeleteAssessmentRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssessmentRequest.type = Types::DeleteAssessmentRequest
    DeleteAssessmentResponse.type = Types::DeleteAssessmentResponse
    DeleteControlRequest.add_member(:control_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'controlId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteControlRequest.type = Types::DeleteControlRequest
    DeleteControlResponse.type = Types::DeleteControlResponse
    DeleteResources.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    DeleteResources.add_member(:default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "DEFAULT"}))
    DeregisterAccountRequest.type = Types::DeregisterAccountRequest
    DeregisterAccountResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountStatus, location_name: 'status'))
    DeregisterAccountResponse.type = Types::DeregisterAccountResponse
    DeregisterOrganizationAdminAccountRequest.add_member(:admin_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'adminAccountId'))
    DeregisterOrganizationAdminAccountRequest.type = Types::DeregisterOrganizationAdminAccountRequest
    DeregisterOrganizationAdminAccountResponse.type = Types::DeregisterOrganizationAdminAccountResponse
    DeregistrationPolicy.add_member(:delete_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResources, location_name: 'deleteResources'))
    DeregistrationPolicy.type = Types::DeregistrationPolicy
    DisassociateAssessmentReportEvidenceFolderRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateAssessmentReportEvidenceFolderRequest.add_member(:evidence_folder_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'evidenceFolderId', traits: {"smithy.api#required" => {}}))
    DisassociateAssessmentReportEvidenceFolderRequest.type = Types::DisassociateAssessmentReportEvidenceFolderRequest
    DisassociateAssessmentReportEvidenceFolderResponse.type = Types::DisassociateAssessmentReportEvidenceFolderResponse
    Evidence.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'dataSource'))
    Evidence.add_member(:evidence_aws_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'evidenceAwsAccountId'))
    Evidence.add_member(:time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'time'))
    Evidence.add_member(:event_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceName, location_name: 'eventSource'))
    Evidence.add_member(:event_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventName, location_name: 'eventName'))
    Evidence.add_member(:evidence_by_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'evidenceByType'))
    Evidence.add_member(:resources_included, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resources, location_name: 'resourcesIncluded'))
    Evidence.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceAttributes, location_name: 'attributes'))
    Evidence.add_member(:iam_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamArn, location_name: 'iamId'))
    Evidence.add_member(:compliance_check, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'complianceCheck'))
    Evidence.add_member(:aws_organization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'awsOrganization'))
    Evidence.add_member(:aws_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'awsAccountId'))
    Evidence.add_member(:evidence_folder_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'evidenceFolderId'))
    Evidence.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id'))
    Evidence.add_member(:assessment_report_selection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'assessmentReportSelection'))
    Evidence.type = Types::Evidence
    EvidenceAttributes.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceAttributeKey)
    EvidenceAttributes.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceAttributeValue)
    EvidenceFinderBackfillStatus.add_member(:not_started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_STARTED', traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    EvidenceFinderBackfillStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    EvidenceFinderBackfillStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    EvidenceFinderEnablement.add_member(:event_data_store_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailArn, location_name: 'eventDataStoreArn'))
    EvidenceFinderEnablement.add_member(:enablement_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceFinderEnablementStatus, location_name: 'enablementStatus'))
    EvidenceFinderEnablement.add_member(:backfill_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceFinderBackfillStatus, location_name: 'backfillStatus'))
    EvidenceFinderEnablement.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'error'))
    EvidenceFinderEnablement.type = Types::EvidenceFinderEnablement
    EvidenceFinderEnablementStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    EvidenceFinderEnablementStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    EvidenceFinderEnablementStatus.add_member(:enable_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "ENABLE_IN_PROGRESS"}))
    EvidenceFinderEnablementStatus.add_member(:disable_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DISABLE_IN_PROGRESS"}))
    EvidenceIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID)
    EvidenceInsights.add_member(:noncompliant_evidence_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'noncompliantEvidenceCount'))
    EvidenceInsights.add_member(:compliant_evidence_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'compliantEvidenceCount'))
    EvidenceInsights.add_member(:inconclusive_evidence_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'inconclusiveEvidenceCount'))
    EvidenceInsights.type = Types::EvidenceInsights
    EvidenceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Evidence)
    EvidenceSources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ExportDestinationType.add_member(:s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "S3"}))
    Framework.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditManagerArn, location_name: 'arn'))
    Framework.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id'))
    Framework.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkName, location_name: 'name'))
    Framework.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkType, location_name: 'type'))
    Framework.add_member(:compliance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComplianceType, location_name: 'complianceType'))
    Framework.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkDescription, location_name: 'description'))
    Framework.add_member(:logo, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filename, location_name: 'logo'))
    Framework.add_member(:control_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSources, location_name: 'controlSources', traits: {"smithy.api#deprecated" => {"since" => "2025-07-24", "message" => "Use controlSources from the Control"}}))
    Framework.add_member(:control_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSets, location_name: 'controlSets'))
    Framework.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt'))
    Framework.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt'))
    Framework.add_member(:created_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy'))
    Framework.add_member(:last_updated_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedBy, location_name: 'lastUpdatedBy'))
    Framework.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    Framework.type = Types::Framework
    FrameworkMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentName, location_name: 'name'))
    FrameworkMetadata.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentFrameworkDescription, location_name: 'description'))
    FrameworkMetadata.add_member(:logo, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filename, location_name: 'logo'))
    FrameworkMetadata.add_member(:compliance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComplianceType, location_name: 'complianceType'))
    FrameworkMetadata.type = Types::FrameworkMetadata
    FrameworkMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentFrameworkMetadata)
    FrameworkType.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "Standard"}))
    FrameworkType.add_member(:custom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "Custom"}))
    GetAccountStatusRequest.type = Types::GetAccountStatusRequest
    GetAccountStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountStatus, location_name: 'status'))
    GetAccountStatusResponse.type = Types::GetAccountStatusResponse
    GetAssessmentFrameworkRequest.add_member(:framework_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'frameworkId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssessmentFrameworkRequest.type = Types::GetAssessmentFrameworkRequest
    GetAssessmentFrameworkResponse.add_member(:framework, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Framework, location_name: 'framework'))
    GetAssessmentFrameworkResponse.type = Types::GetAssessmentFrameworkResponse
    GetAssessmentReportUrlRequest.add_member(:assessment_report_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentReportId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssessmentReportUrlRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssessmentReportUrlRequest.type = Types::GetAssessmentReportUrlRequest
    GetAssessmentReportUrlResponse.add_member(:pre_signed_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: URL, location_name: 'preSignedUrl'))
    GetAssessmentReportUrlResponse.type = Types::GetAssessmentReportUrlResponse
    GetAssessmentRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssessmentRequest.type = Types::GetAssessmentRequest
    GetAssessmentResponse.add_member(:assessment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Assessment, location_name: 'assessment'))
    GetAssessmentResponse.add_member(:user_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'userRole'))
    GetAssessmentResponse.type = Types::GetAssessmentResponse
    GetChangeLogsRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChangeLogsRequest.add_member(:control_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetId, location_name: 'controlSetId', traits: {"smithy.api#httpQuery" => "controlSetId"}))
    GetChangeLogsRequest.add_member(:control_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'controlId', traits: {"smithy.api#httpQuery" => "controlId"}))
    GetChangeLogsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetChangeLogsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetChangeLogsRequest.type = Types::GetChangeLogsRequest
    GetChangeLogsResponse.add_member(:change_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeLogs, location_name: 'changeLogs'))
    GetChangeLogsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    GetChangeLogsResponse.type = Types::GetChangeLogsResponse
    GetControlRequest.add_member(:control_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'controlId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetControlRequest.type = Types::GetControlRequest
    GetControlResponse.add_member(:control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Control, location_name: 'control'))
    GetControlResponse.type = Types::GetControlResponse
    GetDelegationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetDelegationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetDelegationsRequest.type = Types::GetDelegationsRequest
    GetDelegationsResponse.add_member(:delegations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationMetadataList, location_name: 'delegations'))
    GetDelegationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    GetDelegationsResponse.type = Types::GetDelegationsResponse
    GetEvidenceByEvidenceFolderRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceByEvidenceFolderRequest.add_member(:control_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetId, location_name: 'controlSetId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceByEvidenceFolderRequest.add_member(:evidence_folder_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'evidenceFolderId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceByEvidenceFolderRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetEvidenceByEvidenceFolderRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetEvidenceByEvidenceFolderRequest.type = Types::GetEvidenceByEvidenceFolderRequest
    GetEvidenceByEvidenceFolderResponse.add_member(:evidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceList, location_name: 'evidence'))
    GetEvidenceByEvidenceFolderResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    GetEvidenceByEvidenceFolderResponse.type = Types::GetEvidenceByEvidenceFolderResponse
    GetEvidenceFileUploadUrlRequest.add_member(:file_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManualEvidenceLocalFileName, location_name: 'fileName', traits: {"smithy.api#httpQuery" => "fileName", "smithy.api#required" => {}}))
    GetEvidenceFileUploadUrlRequest.type = Types::GetEvidenceFileUploadUrlRequest
    GetEvidenceFileUploadUrlResponse.add_member(:evidence_file_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'evidenceFileName'))
    GetEvidenceFileUploadUrlResponse.add_member(:upload_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'uploadUrl'))
    GetEvidenceFileUploadUrlResponse.type = Types::GetEvidenceFileUploadUrlResponse
    GetEvidenceFolderRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceFolderRequest.add_member(:control_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetId, location_name: 'controlSetId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceFolderRequest.add_member(:evidence_folder_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'evidenceFolderId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceFolderRequest.type = Types::GetEvidenceFolderRequest
    GetEvidenceFolderResponse.add_member(:evidence_folder, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentEvidenceFolder, location_name: 'evidenceFolder'))
    GetEvidenceFolderResponse.type = Types::GetEvidenceFolderResponse
    GetEvidenceFoldersByAssessmentControlRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceFoldersByAssessmentControlRequest.add_member(:control_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetId, location_name: 'controlSetId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceFoldersByAssessmentControlRequest.add_member(:control_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'controlId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceFoldersByAssessmentControlRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetEvidenceFoldersByAssessmentControlRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetEvidenceFoldersByAssessmentControlRequest.type = Types::GetEvidenceFoldersByAssessmentControlRequest
    GetEvidenceFoldersByAssessmentControlResponse.add_member(:evidence_folders, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentEvidenceFolders, location_name: 'evidenceFolders'))
    GetEvidenceFoldersByAssessmentControlResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    GetEvidenceFoldersByAssessmentControlResponse.type = Types::GetEvidenceFoldersByAssessmentControlResponse
    GetEvidenceFoldersByAssessmentRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceFoldersByAssessmentRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetEvidenceFoldersByAssessmentRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetEvidenceFoldersByAssessmentRequest.type = Types::GetEvidenceFoldersByAssessmentRequest
    GetEvidenceFoldersByAssessmentResponse.add_member(:evidence_folders, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentEvidenceFolders, location_name: 'evidenceFolders'))
    GetEvidenceFoldersByAssessmentResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    GetEvidenceFoldersByAssessmentResponse.type = Types::GetEvidenceFoldersByAssessmentResponse
    GetEvidenceRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceRequest.add_member(:control_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetId, location_name: 'controlSetId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceRequest.add_member(:evidence_folder_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'evidenceFolderId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceRequest.add_member(:evidence_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'evidenceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceRequest.type = Types::GetEvidenceRequest
    GetEvidenceResponse.add_member(:evidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Evidence, location_name: 'evidence'))
    GetEvidenceResponse.type = Types::GetEvidenceResponse
    GetInsightsByAssessmentRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInsightsByAssessmentRequest.type = Types::GetInsightsByAssessmentRequest
    GetInsightsByAssessmentResponse.add_member(:insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightsByAssessment, location_name: 'insights'))
    GetInsightsByAssessmentResponse.type = Types::GetInsightsByAssessmentResponse
    GetInsightsRequest.type = Types::GetInsightsRequest
    GetInsightsResponse.add_member(:insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Insights, location_name: 'insights'))
    GetInsightsResponse.type = Types::GetInsightsResponse
    GetOrganizationAdminAccountRequest.type = Types::GetOrganizationAdminAccountRequest
    GetOrganizationAdminAccountResponse.add_member(:admin_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'adminAccountId'))
    GetOrganizationAdminAccountResponse.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'organizationId'))
    GetOrganizationAdminAccountResponse.type = Types::GetOrganizationAdminAccountResponse
    GetServicesInScopeRequest.type = Types::GetServicesInScopeRequest
    GetServicesInScopeResponse.add_member(:service_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceMetadataList, location_name: 'serviceMetadata'))
    GetServicesInScopeResponse.type = Types::GetServicesInScopeResponse
    GetSettingsRequest.add_member(:attribute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SettingAttribute, location_name: 'attribute', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSettingsRequest.type = Types::GetSettingsRequest
    GetSettingsResponse.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Settings, location_name: 'settings'))
    GetSettingsResponse.type = Types::GetSettingsResponse
    Insights.add_member(:active_assessments_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'activeAssessmentsCount'))
    Insights.add_member(:noncompliant_evidence_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'noncompliantEvidenceCount'))
    Insights.add_member(:compliant_evidence_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'compliantEvidenceCount'))
    Insights.add_member(:inconclusive_evidence_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'inconclusiveEvidenceCount'))
    Insights.add_member(:assessment_controls_count_by_noncompliant_evidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'assessmentControlsCountByNoncompliantEvidence'))
    Insights.add_member(:total_assessment_controls_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'totalAssessmentControlsCount'))
    Insights.add_member(:last_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdated'))
    Insights.type = Types::Insights
    InsightsByAssessment.add_member(:noncompliant_evidence_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'noncompliantEvidenceCount'))
    InsightsByAssessment.add_member(:compliant_evidence_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'compliantEvidenceCount'))
    InsightsByAssessment.add_member(:inconclusive_evidence_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'inconclusiveEvidenceCount'))
    InsightsByAssessment.add_member(:assessment_controls_count_by_noncompliant_evidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'assessmentControlsCountByNoncompliantEvidence'))
    InsightsByAssessment.add_member(:total_assessment_controls_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'totalAssessmentControlsCount'))
    InsightsByAssessment.add_member(:last_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdated'))
    InsightsByAssessment.type = Types::InsightsByAssessment
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    KeywordInputType.add_member(:select_from_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SELECT_FROM_LIST', traits: {"smithy.api#enumValue" => "SELECT_FROM_LIST"}))
    KeywordInputType.add_member(:upload_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPLOAD_FILE', traits: {"smithy.api#enumValue" => "UPLOAD_FILE"}))
    KeywordInputType.add_member(:input_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INPUT_TEXT', traits: {"smithy.api#enumValue" => "INPUT_TEXT"}))
    Keywords.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeywordValue)
    ListAssessmentControlInsightsByControlDomainRequest.add_member(:control_domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlDomainId, location_name: 'controlDomainId', traits: {"smithy.api#httpQuery" => "controlDomainId", "smithy.api#required" => {}}))
    ListAssessmentControlInsightsByControlDomainRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#httpQuery" => "assessmentId", "smithy.api#required" => {}}))
    ListAssessmentControlInsightsByControlDomainRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssessmentControlInsightsByControlDomainRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAssessmentControlInsightsByControlDomainRequest.type = Types::ListAssessmentControlInsightsByControlDomainRequest
    ListAssessmentControlInsightsByControlDomainResponse.add_member(:control_insights_by_assessment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlInsightsMetadataByAssessment, location_name: 'controlInsightsByAssessment'))
    ListAssessmentControlInsightsByControlDomainResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    ListAssessmentControlInsightsByControlDomainResponse.type = Types::ListAssessmentControlInsightsByControlDomainResponse
    ListAssessmentFrameworkShareRequestsRequest.add_member(:request_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShareRequestType, location_name: 'requestType', traits: {"smithy.api#httpQuery" => "requestType", "smithy.api#required" => {}}))
    ListAssessmentFrameworkShareRequestsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssessmentFrameworkShareRequestsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAssessmentFrameworkShareRequestsRequest.type = Types::ListAssessmentFrameworkShareRequestsRequest
    ListAssessmentFrameworkShareRequestsResponse.add_member(:assessment_framework_share_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentFrameworkShareRequestList, location_name: 'assessmentFrameworkShareRequests'))
    ListAssessmentFrameworkShareRequestsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    ListAssessmentFrameworkShareRequestsResponse.type = Types::ListAssessmentFrameworkShareRequestsResponse
    ListAssessmentFrameworksRequest.add_member(:framework_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkType, location_name: 'frameworkType', traits: {"smithy.api#httpQuery" => "frameworkType", "smithy.api#required" => {}}))
    ListAssessmentFrameworksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssessmentFrameworksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAssessmentFrameworksRequest.type = Types::ListAssessmentFrameworksRequest
    ListAssessmentFrameworksResponse.add_member(:framework_metadata_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkMetadataList, location_name: 'frameworkMetadataList'))
    ListAssessmentFrameworksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    ListAssessmentFrameworksResponse.type = Types::ListAssessmentFrameworksResponse
    ListAssessmentMetadata.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentMetadataItem)
    ListAssessmentReportsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssessmentReportsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAssessmentReportsRequest.type = Types::ListAssessmentReportsRequest
    ListAssessmentReportsResponse.add_member(:assessment_reports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportsMetadata, location_name: 'assessmentReports'))
    ListAssessmentReportsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    ListAssessmentReportsResponse.type = Types::ListAssessmentReportsResponse
    ListAssessmentsRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentStatus, location_name: 'status', traits: {"smithy.api#httpQuery" => "status"}))
    ListAssessmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssessmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAssessmentsRequest.type = Types::ListAssessmentsRequest
    ListAssessmentsResponse.add_member(:assessment_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentMetadata, location_name: 'assessmentMetadata'))
    ListAssessmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    ListAssessmentsResponse.type = Types::ListAssessmentsResponse
    ListControlDomainInsightsByAssessmentRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#httpQuery" => "assessmentId", "smithy.api#required" => {}}))
    ListControlDomainInsightsByAssessmentRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListControlDomainInsightsByAssessmentRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListControlDomainInsightsByAssessmentRequest.type = Types::ListControlDomainInsightsByAssessmentRequest
    ListControlDomainInsightsByAssessmentResponse.add_member(:control_domain_insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlDomainInsightsList, location_name: 'controlDomainInsights'))
    ListControlDomainInsightsByAssessmentResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    ListControlDomainInsightsByAssessmentResponse.type = Types::ListControlDomainInsightsByAssessmentResponse
    ListControlDomainInsightsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListControlDomainInsightsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListControlDomainInsightsRequest.type = Types::ListControlDomainInsightsRequest
    ListControlDomainInsightsResponse.add_member(:control_domain_insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlDomainInsightsList, location_name: 'controlDomainInsights'))
    ListControlDomainInsightsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    ListControlDomainInsightsResponse.type = Types::ListControlDomainInsightsResponse
    ListControlInsightsByControlDomainRequest.add_member(:control_domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlDomainId, location_name: 'controlDomainId', traits: {"smithy.api#httpQuery" => "controlDomainId", "smithy.api#required" => {}}))
    ListControlInsightsByControlDomainRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListControlInsightsByControlDomainRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListControlInsightsByControlDomainRequest.type = Types::ListControlInsightsByControlDomainRequest
    ListControlInsightsByControlDomainResponse.add_member(:control_insights_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlInsightsMetadata, location_name: 'controlInsightsMetadata'))
    ListControlInsightsByControlDomainResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    ListControlInsightsByControlDomainResponse.type = Types::ListControlInsightsByControlDomainResponse
    ListControlsRequest.add_member(:control_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlType, location_name: 'controlType', traits: {"smithy.api#httpQuery" => "controlType", "smithy.api#required" => {}}))
    ListControlsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListControlsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListControlsRequest.add_member(:control_catalog_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlCatalogId, location_name: 'controlCatalogId', traits: {"smithy.api#httpQuery" => "controlCatalogId"}))
    ListControlsRequest.type = Types::ListControlsRequest
    ListControlsResponse.add_member(:control_metadata_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlMetadataList, location_name: 'controlMetadataList'))
    ListControlsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    ListControlsResponse.type = Types::ListControlsResponse
    ListKeywordsForDataSourceRequest.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType, location_name: 'source', traits: {"smithy.api#httpQuery" => "source", "smithy.api#required" => {}}))
    ListKeywordsForDataSourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListKeywordsForDataSourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListKeywordsForDataSourceRequest.type = Types::ListKeywordsForDataSourceRequest
    ListKeywordsForDataSourceResponse.add_member(:keywords, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Keywords, location_name: 'keywords'))
    ListKeywordsForDataSourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    ListKeywordsForDataSourceResponse.type = Types::ListKeywordsForDataSourceResponse
    ListNotificationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListNotificationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListNotificationsRequest.type = Types::ListNotificationsRequest
    ListNotificationsResponse.add_member(:notifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Notifications, location_name: 'notifications'))
    ListNotificationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    ListNotificationsResponse.type = Types::ListNotificationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditManagerArn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ManualEvidence.add_member(:s3_resource_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: 's3ResourcePath'))
    ManualEvidence.add_member(:text_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManualEvidenceTextResponse, location_name: 'textResponse'))
    ManualEvidence.add_member(:evidence_file_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManualEvidenceLocalFileName, location_name: 'evidenceFileName'))
    ManualEvidence.type = Types::ManualEvidence
    ManualEvidenceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManualEvidence)
    Notification.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampUUID, location_name: 'id'))
    Notification.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId'))
    Notification.add_member(:assessment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentName, location_name: 'assessmentName'))
    Notification.add_member(:control_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetId, location_name: 'controlSetId'))
    Notification.add_member(:control_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'controlSetName'))
    Notification.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'description'))
    Notification.add_member(:event_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'eventTime'))
    Notification.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'source'))
    Notification.type = Types::Notification
    Notifications.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Notification)
    ObjectTypeEnum.add_member(:assessment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT', traits: {"smithy.api#enumValue" => "ASSESSMENT"}))
    ObjectTypeEnum.add_member(:control_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTROL_SET', traits: {"smithy.api#enumValue" => "CONTROL_SET"}))
    ObjectTypeEnum.add_member(:control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTROL', traits: {"smithy.api#enumValue" => "CONTROL"}))
    ObjectTypeEnum.add_member(:delegation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELEGATION', traits: {"smithy.api#enumValue" => "DELEGATION"}))
    ObjectTypeEnum.add_member(:assessment_report, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT_REPORT', traits: {"smithy.api#enumValue" => "ASSESSMENT_REPORT"}))
    RegisterAccountRequest.add_member(:kms_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'kmsKey'))
    RegisterAccountRequest.add_member(:delegated_admin_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'delegatedAdminAccount'))
    RegisterAccountRequest.type = Types::RegisterAccountRequest
    RegisterAccountResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountStatus, location_name: 'status'))
    RegisterAccountResponse.type = Types::RegisterAccountResponse
    RegisterOrganizationAdminAccountRequest.add_member(:admin_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'adminAccountId', traits: {"smithy.api#required" => {}}))
    RegisterOrganizationAdminAccountRequest.type = Types::RegisterOrganizationAdminAccountRequest
    RegisterOrganizationAdminAccountResponse.add_member(:admin_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'adminAccountId'))
    RegisterOrganizationAdminAccountResponse.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'organizationId'))
    RegisterOrganizationAdminAccountResponse.type = Types::RegisterOrganizationAdminAccountResponse
    Resource.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'arn'))
    Resource.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value'))
    Resource.add_member(:compliance_check, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'complianceCheck'))
    Resource.type = Types::Resource
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    Resources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resource)
    Role.add_member(:role_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleType, location_name: 'roleType', traits: {"smithy.api#required" => {}}))
    Role.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    Role.type = Types::Role
    RoleType.add_member(:process_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESS_OWNER', traits: {"smithy.api#enumValue" => "PROCESS_OWNER"}))
    RoleType.add_member(:resource_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_OWNER', traits: {"smithy.api#enumValue" => "RESOURCE_OWNER"}))
    Roles.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role)
    Scope.add_member(:aws_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccounts, location_name: 'awsAccounts'))
    Scope.add_member(:aws_services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServices, location_name: 'awsServices', traits: {"smithy.api#deprecated" => {"message" => "You can't specify services in scope when creating/updating an assessment. If you use the parameter to specify one or more AWS services, Audit Manager ignores the input. Instead the value of the parameter will show as empty indicating that the services are defined and managed by Audit Manager."}}))
    Scope.type = Types::Scope
    ServiceMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceName, location_name: 'name'))
    ServiceMetadata.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'displayName'))
    ServiceMetadata.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'description'))
    ServiceMetadata.add_member(:category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'category'))
    ServiceMetadata.type = Types::ServiceMetadata
    ServiceMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceMetadata)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SettingAttribute.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    SettingAttribute.add_member(:is_aws_org_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IS_AWS_ORG_ENABLED', traits: {"smithy.api#enumValue" => "IS_AWS_ORG_ENABLED"}))
    SettingAttribute.add_member(:sns_topic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNS_TOPIC', traits: {"smithy.api#enumValue" => "SNS_TOPIC"}))
    SettingAttribute.add_member(:default_assessment_reports_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT_ASSESSMENT_REPORTS_DESTINATION', traits: {"smithy.api#enumValue" => "DEFAULT_ASSESSMENT_REPORTS_DESTINATION"}))
    SettingAttribute.add_member(:default_process_owners, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT_PROCESS_OWNERS', traits: {"smithy.api#enumValue" => "DEFAULT_PROCESS_OWNERS"}))
    SettingAttribute.add_member(:evidence_finder_enablement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVIDENCE_FINDER_ENABLEMENT', traits: {"smithy.api#enumValue" => "EVIDENCE_FINDER_ENABLEMENT"}))
    SettingAttribute.add_member(:deregistration_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEREGISTRATION_POLICY', traits: {"smithy.api#enumValue" => "DEREGISTRATION_POLICY"}))
    SettingAttribute.add_member(:default_export_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT_EXPORT_DESTINATION', traits: {"smithy.api#enumValue" => "DEFAULT_EXPORT_DESTINATION"}))
    Settings.add_member(:is_aws_org_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isAwsOrgEnabled'))
    Settings.add_member(:sns_topic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSTopic, location_name: 'snsTopic'))
    Settings.add_member(:default_assessment_reports_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportsDestination, location_name: 'defaultAssessmentReportsDestination'))
    Settings.add_member(:default_process_owners, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Roles, location_name: 'defaultProcessOwners'))
    Settings.add_member(:kms_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'kmsKey'))
    Settings.add_member(:evidence_finder_enablement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceFinderEnablement, location_name: 'evidenceFinderEnablement'))
    Settings.add_member(:deregistration_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregistrationPolicy, location_name: 'deregistrationPolicy'))
    Settings.add_member(:default_export_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultExportDestination, location_name: 'defaultExportDestination'))
    Settings.type = Types::Settings
    ShareRequestAction.add_member(:accept, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCEPT', traits: {"smithy.api#enumValue" => "ACCEPT"}))
    ShareRequestAction.add_member(:decline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DECLINE', traits: {"smithy.api#enumValue" => "DECLINE"}))
    ShareRequestAction.add_member(:revoke, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVOKE', traits: {"smithy.api#enumValue" => "REVOKE"}))
    ShareRequestStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ShareRequestStatus.add_member(:replicating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLICATING', traits: {"smithy.api#enumValue" => "REPLICATING"}))
    ShareRequestStatus.add_member(:shared, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHARED', traits: {"smithy.api#enumValue" => "SHARED"}))
    ShareRequestStatus.add_member(:expiring, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRING', traits: {"smithy.api#enumValue" => "EXPIRING"}))
    ShareRequestStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ShareRequestStatus.add_member(:expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    ShareRequestStatus.add_member(:declined, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DECLINED', traits: {"smithy.api#enumValue" => "DECLINED"}))
    ShareRequestStatus.add_member(:revoked, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVOKED', traits: {"smithy.api#enumValue" => "REVOKED"}))
    ShareRequestType.add_member(:sent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SENT', traits: {"smithy.api#enumValue" => "SENT"}))
    ShareRequestType.add_member(:received, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECEIVED', traits: {"smithy.api#enumValue" => "RECEIVED"}))
    SourceFrequency.add_member(:daily, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAILY', traits: {"smithy.api#enumValue" => "DAILY"}))
    SourceFrequency.add_member(:weekly, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEEKLY', traits: {"smithy.api#enumValue" => "WEEKLY"}))
    SourceFrequency.add_member(:monthly, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONTHLY', traits: {"smithy.api#enumValue" => "MONTHLY"}))
    SourceKeyword.add_member(:keyword_input_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeywordInputType, location_name: 'keywordInputType'))
    SourceKeyword.add_member(:keyword_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeywordValue, location_name: 'keywordValue'))
    SourceKeyword.type = Types::SourceKeyword
    SourceSetUpOption.add_member(:system_controls_mapping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM_CONTROLS_MAPPING', traits: {"smithy.api#enumValue" => "System_Controls_Mapping"}))
    SourceSetUpOption.add_member(:procedural_controls_mapping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCEDURAL_CONTROLS_MAPPING', traits: {"smithy.api#enumValue" => "Procedural_Controls_Mapping"}))
    SourceType.add_member(:aws_cloudtrail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_CLOUDTRAIL', traits: {"smithy.api#enumValue" => "AWS_Cloudtrail"}))
    SourceType.add_member(:aws_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_CONFIG', traits: {"smithy.api#enumValue" => "AWS_Config"}))
    SourceType.add_member(:aws_security_hub, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SECURITY_HUB', traits: {"smithy.api#enumValue" => "AWS_Security_Hub"}))
    SourceType.add_member(:aws_api_call, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_API_CALL', traits: {"smithy.api#enumValue" => "AWS_API_Call"}))
    SourceType.add_member(:manual, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUAL', traits: {"smithy.api#enumValue" => "MANUAL"}))
    SourceType.add_member(:common_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMMON_CONTROL', traits: {"smithy.api#enumValue" => "Common_Control"}))
    SourceType.add_member(:core_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CORE_CONTROL', traits: {"smithy.api#enumValue" => "Core_Control"}))
    StartAssessmentFrameworkShareRequest.add_member(:framework_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'frameworkId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartAssessmentFrameworkShareRequest.add_member(:destination_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'destinationAccount', traits: {"smithy.api#required" => {}}))
    StartAssessmentFrameworkShareRequest.add_member(:destination_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'destinationRegion', traits: {"smithy.api#required" => {}}))
    StartAssessmentFrameworkShareRequest.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShareRequestComment, location_name: 'comment'))
    StartAssessmentFrameworkShareRequest.type = Types::StartAssessmentFrameworkShareRequest
    StartAssessmentFrameworkShareResponse.add_member(:assessment_framework_share_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentFrameworkShareRequest, location_name: 'assessmentFrameworkShareRequest'))
    StartAssessmentFrameworkShareResponse.type = Types::StartAssessmentFrameworkShareResponse
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditManagerArn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    URL.add_member(:hyperlink_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HyperlinkName, location_name: 'hyperlinkName'))
    URL.add_member(:link, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UrlLink, location_name: 'link'))
    URL.type = Types::URL
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditManagerArn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAssessmentControlRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssessmentControlRequest.add_member(:control_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetId, location_name: 'controlSetId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssessmentControlRequest.add_member(:control_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'controlId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssessmentControlRequest.add_member(:control_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlStatus, location_name: 'controlStatus'))
    UpdateAssessmentControlRequest.add_member(:comment_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlCommentBody, location_name: 'commentBody'))
    UpdateAssessmentControlRequest.type = Types::UpdateAssessmentControlRequest
    UpdateAssessmentControlResponse.add_member(:control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentControl, location_name: 'control'))
    UpdateAssessmentControlResponse.type = Types::UpdateAssessmentControlResponse
    UpdateAssessmentControlSetStatusRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssessmentControlSetStatusRequest.add_member(:control_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'controlSetId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssessmentControlSetStatusRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    UpdateAssessmentControlSetStatusRequest.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationComment, location_name: 'comment', traits: {"smithy.api#required" => {}}))
    UpdateAssessmentControlSetStatusRequest.type = Types::UpdateAssessmentControlSetStatusRequest
    UpdateAssessmentControlSetStatusResponse.add_member(:control_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentControlSet, location_name: 'controlSet'))
    UpdateAssessmentControlSetStatusResponse.type = Types::UpdateAssessmentControlSetStatusResponse
    UpdateAssessmentFrameworkControlSet.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetName, location_name: 'id'))
    UpdateAssessmentFrameworkControlSet.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateAssessmentFrameworkControlSet.add_member(:controls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentFrameworkControls, location_name: 'controls', traits: {"smithy.api#required" => {}}))
    UpdateAssessmentFrameworkControlSet.type = Types::UpdateAssessmentFrameworkControlSet
    UpdateAssessmentFrameworkControlSets.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentFrameworkControlSet)
    UpdateAssessmentFrameworkRequest.add_member(:framework_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'frameworkId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssessmentFrameworkRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateAssessmentFrameworkRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkDescription, location_name: 'description'))
    UpdateAssessmentFrameworkRequest.add_member(:compliance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComplianceType, location_name: 'complianceType'))
    UpdateAssessmentFrameworkRequest.add_member(:control_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentFrameworkControlSets, location_name: 'controlSets', traits: {"smithy.api#required" => {}}))
    UpdateAssessmentFrameworkRequest.type = Types::UpdateAssessmentFrameworkRequest
    UpdateAssessmentFrameworkResponse.add_member(:framework, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Framework, location_name: 'framework'))
    UpdateAssessmentFrameworkResponse.type = Types::UpdateAssessmentFrameworkResponse
    UpdateAssessmentFrameworkShareRequest.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'requestId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssessmentFrameworkShareRequest.add_member(:request_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShareRequestType, location_name: 'requestType', traits: {"smithy.api#required" => {}}))
    UpdateAssessmentFrameworkShareRequest.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShareRequestAction, location_name: 'action', traits: {"smithy.api#required" => {}}))
    UpdateAssessmentFrameworkShareRequest.type = Types::UpdateAssessmentFrameworkShareRequest
    UpdateAssessmentFrameworkShareResponse.add_member(:assessment_framework_share_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentFrameworkShareRequest, location_name: 'assessmentFrameworkShareRequest'))
    UpdateAssessmentFrameworkShareResponse.type = Types::UpdateAssessmentFrameworkShareResponse
    UpdateAssessmentRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssessmentRequest.add_member(:assessment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentName, location_name: 'assessmentName'))
    UpdateAssessmentRequest.add_member(:assessment_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentDescription, location_name: 'assessmentDescription'))
    UpdateAssessmentRequest.add_member(:scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Scope, location_name: 'scope', traits: {"smithy.api#required" => {}}))
    UpdateAssessmentRequest.add_member(:assessment_reports_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportsDestination, location_name: 'assessmentReportsDestination'))
    UpdateAssessmentRequest.add_member(:roles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Roles, location_name: 'roles'))
    UpdateAssessmentRequest.type = Types::UpdateAssessmentRequest
    UpdateAssessmentResponse.add_member(:assessment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Assessment, location_name: 'assessment'))
    UpdateAssessmentResponse.type = Types::UpdateAssessmentResponse
    UpdateAssessmentStatusRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssessmentStatusRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    UpdateAssessmentStatusRequest.type = Types::UpdateAssessmentStatusRequest
    UpdateAssessmentStatusResponse.add_member(:assessment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Assessment, location_name: 'assessment'))
    UpdateAssessmentStatusResponse.type = Types::UpdateAssessmentStatusResponse
    UpdateControlRequest.add_member(:control_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'controlId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateControlRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateControlRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlDescription, location_name: 'description'))
    UpdateControlRequest.add_member(:testing_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestingInformation, location_name: 'testingInformation'))
    UpdateControlRequest.add_member(:action_plan_title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPlanTitle, location_name: 'actionPlanTitle'))
    UpdateControlRequest.add_member(:action_plan_instructions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPlanInstructions, location_name: 'actionPlanInstructions'))
    UpdateControlRequest.add_member(:control_mapping_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlMappingSources, location_name: 'controlMappingSources', traits: {"smithy.api#required" => {}}))
    UpdateControlRequest.type = Types::UpdateControlRequest
    UpdateControlResponse.add_member(:control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Control, location_name: 'control'))
    UpdateControlResponse.type = Types::UpdateControlResponse
    UpdateSettingsRequest.add_member(:sns_topic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnsArn, location_name: 'snsTopic'))
    UpdateSettingsRequest.add_member(:default_assessment_reports_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportsDestination, location_name: 'defaultAssessmentReportsDestination'))
    UpdateSettingsRequest.add_member(:default_process_owners, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Roles, location_name: 'defaultProcessOwners'))
    UpdateSettingsRequest.add_member(:kms_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'kmsKey'))
    UpdateSettingsRequest.add_member(:evidence_finder_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'evidenceFinderEnabled'))
    UpdateSettingsRequest.add_member(:deregistration_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregistrationPolicy, location_name: 'deregistrationPolicy'))
    UpdateSettingsRequest.add_member(:default_export_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultExportDestination, location_name: 'defaultExportDestination'))
    UpdateSettingsRequest.type = Types::UpdateSettingsRequest
    UpdateSettingsResponse.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Settings, location_name: 'settings'))
    UpdateSettingsResponse.type = Types::UpdateSettingsResponse
    ValidateAssessmentReportIntegrityRequest.add_member(:s3_relative_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: 's3RelativePath', traits: {"smithy.api#required" => {}}))
    ValidateAssessmentReportIntegrityRequest.type = Types::ValidateAssessmentReportIntegrityRequest
    ValidateAssessmentReportIntegrityResponse.add_member(:signature_valid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'signatureValid'))
    ValidateAssessmentReportIntegrityResponse.add_member(:signature_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'signatureAlgorithm'))
    ValidateAssessmentReportIntegrityResponse.add_member(:signature_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'signatureDateTime'))
    ValidateAssessmentReportIntegrityResponse.add_member(:signature_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'signatureKeyId'))
    ValidateAssessmentReportIntegrityResponse.add_member(:validation_errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationErrors, location_name: 'validationErrors'))
    ValidateAssessmentReportIntegrityResponse.type = Types::ValidateAssessmentReportIntegrityResponse
    ValidationErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason'))
    ValidationException.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fields'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_OPERATION', traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_PARSE', traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "other"}))

    BedrockAssessmentManagerLambda = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.auditmanager#BedrockAssessmentManagerLambda"
      service.name = "BedrockAssessmentManagerLambda"
      service.version = "2017-07-25"
      service.traits = {"aws.api#service" => {"sdkId" => "AuditManager", "arnNamespace" => "auditmanager", "cloudFormationName" => "AuditManager", "cloudTrailEventSource" => "auditmanager.amazonaws.com", "endpointPrefix" => "auditmanager"}, "aws.auth#sigv4" => {"name" => "auditmanager"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Audit Manager"}
      service.add_operation(:associate_assessment_report_evidence_folder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#AssociateAssessmentReportEvidenceFolder"
        operation.name = "AssociateAssessmentReportEvidenceFolder"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateAssessmentReportEvidenceFolderRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateAssessmentReportEvidenceFolderResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/assessments/{assessmentId}/associateToAssessmentReport", "code" => 200}}
      end)
      service.add_operation(:batch_associate_assessment_report_evidence, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#BatchAssociateAssessmentReportEvidence"
        operation.name = "BatchAssociateAssessmentReportEvidence"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateAssessmentReportEvidenceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateAssessmentReportEvidenceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/assessments/{assessmentId}/batchAssociateToAssessmentReport", "code" => 200}}
      end)
      service.add_operation(:batch_create_delegation_by_assessment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#BatchCreateDelegationByAssessment"
        operation.name = "BatchCreateDelegationByAssessment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateDelegationByAssessmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateDelegationByAssessmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/assessments/{assessmentId}/delegations", "code" => 200}}
      end)
      service.add_operation(:batch_delete_delegation_by_assessment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#BatchDeleteDelegationByAssessment"
        operation.name = "BatchDeleteDelegationByAssessment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteDelegationByAssessmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteDelegationByAssessmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/assessments/{assessmentId}/delegations", "code" => 200}}
      end)
      service.add_operation(:batch_disassociate_assessment_report_evidence, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#BatchDisassociateAssessmentReportEvidence"
        operation.name = "BatchDisassociateAssessmentReportEvidence"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateAssessmentReportEvidenceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateAssessmentReportEvidenceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/assessments/{assessmentId}/batchDisassociateFromAssessmentReport", "code" => 200}}
      end)
      service.add_operation(:batch_import_evidence_to_assessment_control, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#BatchImportEvidenceToAssessmentControl"
        operation.name = "BatchImportEvidenceToAssessmentControl"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchImportEvidenceToAssessmentControlRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchImportEvidenceToAssessmentControlResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/assessments/{assessmentId}/controlSets/{controlSetId}/controls/{controlId}/evidence", "code" => 200}}
      end)
      service.add_operation(:create_assessment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#CreateAssessment"
        operation.name = "CreateAssessment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/assessments", "code" => 200}}
      end)
      service.add_operation(:create_assessment_framework, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#CreateAssessmentFramework"
        operation.name = "CreateAssessmentFramework"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentFrameworkRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentFrameworkResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/assessmentFrameworks", "code" => 200}}
      end)
      service.add_operation(:create_assessment_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#CreateAssessmentReport"
        operation.name = "CreateAssessmentReport"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentReportRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentReportResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/assessments/{assessmentId}/reports", "code" => 200}}
      end)
      service.add_operation(:create_control, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#CreateControl"
        operation.name = "CreateControl"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateControlRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateControlResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/controls", "code" => 200}}
      end)
      service.add_operation(:delete_assessment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#DeleteAssessment"
        operation.name = "DeleteAssessment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssessmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssessmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/assessments/{assessmentId}", "code" => 200}}
      end)
      service.add_operation(:delete_assessment_framework, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#DeleteAssessmentFramework"
        operation.name = "DeleteAssessmentFramework"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssessmentFrameworkRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssessmentFrameworkResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/assessmentFrameworks/{frameworkId}", "code" => 200}}
      end)
      service.add_operation(:delete_assessment_framework_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#DeleteAssessmentFrameworkShare"
        operation.name = "DeleteAssessmentFrameworkShare"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssessmentFrameworkShareRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssessmentFrameworkShareResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/assessmentFrameworkShareRequests/{requestId}", "code" => 200}}
      end)
      service.add_operation(:delete_assessment_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#DeleteAssessmentReport"
        operation.name = "DeleteAssessmentReport"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssessmentReportRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssessmentReportResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/assessments/{assessmentId}/reports/{assessmentReportId}", "code" => 200}}
      end)
      service.add_operation(:delete_control, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#DeleteControl"
        operation.name = "DeleteControl"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteControlRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteControlResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/controls/{controlId}", "code" => 200}}
      end)
      service.add_operation(:deregister_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#DeregisterAccount"
        operation.name = "DeregisterAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterAccountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/account/deregisterAccount", "code" => 200}}
      end)
      service.add_operation(:deregister_organization_admin_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#DeregisterOrganizationAdminAccount"
        operation.name = "DeregisterOrganizationAdminAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterOrganizationAdminAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterOrganizationAdminAccountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/account/deregisterOrganizationAdminAccount", "code" => 200}}
      end)
      service.add_operation(:disassociate_assessment_report_evidence_folder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#DisassociateAssessmentReportEvidenceFolder"
        operation.name = "DisassociateAssessmentReportEvidenceFolder"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateAssessmentReportEvidenceFolderRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateAssessmentReportEvidenceFolderResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/assessments/{assessmentId}/disassociateFromAssessmentReport", "code" => 200}}
      end)
      service.add_operation(:get_account_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetAccountStatus"
        operation.name = "GetAccountStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/account/status", "code" => 200}}
      end)
      service.add_operation(:get_assessment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetAssessment"
        operation.name = "GetAssessment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssessmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssessmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessments/{assessmentId}", "code" => 200}}
      end)
      service.add_operation(:get_assessment_framework, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetAssessmentFramework"
        operation.name = "GetAssessmentFramework"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssessmentFrameworkRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssessmentFrameworkResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessmentFrameworks/{frameworkId}", "code" => 200}}
      end)
      service.add_operation(:get_assessment_report_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetAssessmentReportUrl"
        operation.name = "GetAssessmentReportUrl"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssessmentReportUrlRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssessmentReportUrlResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessments/{assessmentId}/reports/{assessmentReportId}/url", "code" => 200}}
      end)
      service.add_operation(:get_change_logs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetChangeLogs"
        operation.name = "GetChangeLogs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetChangeLogsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetChangeLogsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessments/{assessmentId}/changelogs", "code" => 200}}
        operation[:paginator] = Paginators::GetChangeLogs.new
      end)
      service.add_operation(:get_control, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetControl"
        operation.name = "GetControl"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetControlRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetControlResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/controls/{controlId}", "code" => 200}}
      end)
      service.add_operation(:get_delegations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetDelegations"
        operation.name = "GetDelegations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDelegationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDelegationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/delegations", "code" => 200}}
        operation[:paginator] = Paginators::GetDelegations.new
      end)
      service.add_operation(:get_evidence, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetEvidence"
        operation.name = "GetEvidence"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvidenceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvidenceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessments/{assessmentId}/controlSets/{controlSetId}/evidenceFolders/{evidenceFolderId}/evidence/{evidenceId}", "code" => 200}}
      end)
      service.add_operation(:get_evidence_by_evidence_folder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetEvidenceByEvidenceFolder"
        operation.name = "GetEvidenceByEvidenceFolder"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvidenceByEvidenceFolderRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvidenceByEvidenceFolderResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessments/{assessmentId}/controlSets/{controlSetId}/evidenceFolders/{evidenceFolderId}/evidence", "code" => 200}}
        operation[:paginator] = Paginators::GetEvidenceByEvidenceFolder.new
      end)
      service.add_operation(:get_evidence_file_upload_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetEvidenceFileUploadUrl"
        operation.name = "GetEvidenceFileUploadUrl"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvidenceFileUploadUrlRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvidenceFileUploadUrlResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/evidenceFileUploadUrl", "code" => 200}}
      end)
      service.add_operation(:get_evidence_folder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetEvidenceFolder"
        operation.name = "GetEvidenceFolder"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvidenceFolderRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvidenceFolderResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessments/{assessmentId}/controlSets/{controlSetId}/evidenceFolders/{evidenceFolderId}", "code" => 200}}
      end)
      service.add_operation(:get_evidence_folders_by_assessment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetEvidenceFoldersByAssessment"
        operation.name = "GetEvidenceFoldersByAssessment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvidenceFoldersByAssessmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvidenceFoldersByAssessmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessments/{assessmentId}/evidenceFolders", "code" => 200}}
        operation[:paginator] = Paginators::GetEvidenceFoldersByAssessment.new
      end)
      service.add_operation(:get_evidence_folders_by_assessment_control, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetEvidenceFoldersByAssessmentControl"
        operation.name = "GetEvidenceFoldersByAssessmentControl"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvidenceFoldersByAssessmentControlRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvidenceFoldersByAssessmentControlResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessments/{assessmentId}/evidenceFolders-by-assessment-control/{controlSetId}/{controlId}", "code" => 200}}
        operation[:paginator] = Paginators::GetEvidenceFoldersByAssessmentControl.new
      end)
      service.add_operation(:get_insights, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetInsights"
        operation.name = "GetInsights"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/insights", "code" => 200}}
      end)
      service.add_operation(:get_insights_by_assessment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetInsightsByAssessment"
        operation.name = "GetInsightsByAssessment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightsByAssessmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightsByAssessmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/insights/assessments/{assessmentId}", "code" => 200}}
      end)
      service.add_operation(:get_organization_admin_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetOrganizationAdminAccount"
        operation.name = "GetOrganizationAdminAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOrganizationAdminAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOrganizationAdminAccountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/account/organizationAdminAccount", "code" => 200}}
      end)
      service.add_operation(:get_services_in_scope, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetServicesInScope"
        operation.name = "GetServicesInScope"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServicesInScopeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServicesInScopeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/services", "code" => 200}}
      end)
      service.add_operation(:get_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetSettings"
        operation.name = "GetSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSettingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSettingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/settings/{attribute}", "code" => 200}}
      end)
      service.add_operation(:list_assessment_control_insights_by_control_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ListAssessmentControlInsightsByControlDomain"
        operation.name = "ListAssessmentControlInsightsByControlDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentControlInsightsByControlDomainRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentControlInsightsByControlDomainResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/insights/controls-by-assessment", "code" => 200}}
        operation[:paginator] = Paginators::ListAssessmentControlInsightsByControlDomain.new
      end)
      service.add_operation(:list_assessment_framework_share_requests, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ListAssessmentFrameworkShareRequests"
        operation.name = "ListAssessmentFrameworkShareRequests"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentFrameworkShareRequestsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentFrameworkShareRequestsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessmentFrameworkShareRequests", "code" => 200}}
        operation[:paginator] = Paginators::ListAssessmentFrameworkShareRequests.new
      end)
      service.add_operation(:list_assessment_frameworks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ListAssessmentFrameworks"
        operation.name = "ListAssessmentFrameworks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentFrameworksRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentFrameworksResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessmentFrameworks", "code" => 200}}
        operation[:paginator] = Paginators::ListAssessmentFrameworks.new
      end)
      service.add_operation(:list_assessment_reports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ListAssessmentReports"
        operation.name = "ListAssessmentReports"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentReportsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentReportsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessmentReports", "code" => 200}}
        operation[:paginator] = Paginators::ListAssessmentReports.new
      end)
      service.add_operation(:list_assessments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ListAssessments"
        operation.name = "ListAssessments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessments", "code" => 200}}
        operation[:paginator] = Paginators::ListAssessments.new
      end)
      service.add_operation(:list_control_domain_insights, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ListControlDomainInsights"
        operation.name = "ListControlDomainInsights"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlDomainInsightsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlDomainInsightsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/insights/control-domains", "code" => 200}}
        operation[:paginator] = Paginators::ListControlDomainInsights.new
      end)
      service.add_operation(:list_control_domain_insights_by_assessment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ListControlDomainInsightsByAssessment"
        operation.name = "ListControlDomainInsightsByAssessment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlDomainInsightsByAssessmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlDomainInsightsByAssessmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/insights/control-domains-by-assessment", "code" => 200}}
        operation[:paginator] = Paginators::ListControlDomainInsightsByAssessment.new
      end)
      service.add_operation(:list_control_insights_by_control_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ListControlInsightsByControlDomain"
        operation.name = "ListControlInsightsByControlDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlInsightsByControlDomainRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlInsightsByControlDomainResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/insights/controls", "code" => 200}}
        operation[:paginator] = Paginators::ListControlInsightsByControlDomain.new
      end)
      service.add_operation(:list_controls, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ListControls"
        operation.name = "ListControls"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/controls", "code" => 200}}
        operation[:paginator] = Paginators::ListControls.new
      end)
      service.add_operation(:list_keywords_for_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ListKeywordsForDataSource"
        operation.name = "ListKeywordsForDataSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeywordsForDataSourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeywordsForDataSourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/dataSourceKeywords", "code" => 200}}
        operation[:paginator] = Paginators::ListKeywordsForDataSource.new
      end)
      service.add_operation(:list_notifications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ListNotifications"
        operation.name = "ListNotifications"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotificationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotificationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/notifications", "code" => 200}}
        operation[:paginator] = Paginators::ListNotifications.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:register_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#RegisterAccount"
        operation.name = "RegisterAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterAccountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/account/registerAccount", "code" => 200}}
      end)
      service.add_operation(:register_organization_admin_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#RegisterOrganizationAdminAccount"
        operation.name = "RegisterOrganizationAdminAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterOrganizationAdminAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterOrganizationAdminAccountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/account/registerOrganizationAdminAccount", "code" => 200}}
      end)
      service.add_operation(:start_assessment_framework_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#StartAssessmentFrameworkShare"
        operation.name = "StartAssessmentFrameworkShare"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartAssessmentFrameworkShareRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartAssessmentFrameworkShareResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/assessmentFrameworks/{frameworkId}/shareRequests", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_assessment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#UpdateAssessment"
        operation.name = "UpdateAssessment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/assessments/{assessmentId}", "code" => 200}}
      end)
      service.add_operation(:update_assessment_control, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#UpdateAssessmentControl"
        operation.name = "UpdateAssessmentControl"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentControlRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentControlResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/assessments/{assessmentId}/controlSets/{controlSetId}/controls/{controlId}", "code" => 200}}
      end)
      service.add_operation(:update_assessment_control_set_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#UpdateAssessmentControlSetStatus"
        operation.name = "UpdateAssessmentControlSetStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentControlSetStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentControlSetStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/assessments/{assessmentId}/controlSets/{controlSetId}/status", "code" => 200}}
      end)
      service.add_operation(:update_assessment_framework, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#UpdateAssessmentFramework"
        operation.name = "UpdateAssessmentFramework"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentFrameworkRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentFrameworkResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/assessmentFrameworks/{frameworkId}", "code" => 200}}
      end)
      service.add_operation(:update_assessment_framework_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#UpdateAssessmentFrameworkShare"
        operation.name = "UpdateAssessmentFrameworkShare"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentFrameworkShareRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentFrameworkShareResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/assessmentFrameworkShareRequests/{requestId}", "code" => 200}}
      end)
      service.add_operation(:update_assessment_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#UpdateAssessmentStatus"
        operation.name = "UpdateAssessmentStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/assessments/{assessmentId}/status", "code" => 200}}
      end)
      service.add_operation(:update_control, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#UpdateControl"
        operation.name = "UpdateControl"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateControlRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateControlResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/controls/{controlId}", "code" => 200}}
      end)
      service.add_operation(:update_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#UpdateSettings"
        operation.name = "UpdateSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSettingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSettingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/settings", "code" => 200}}
      end)
      service.add_operation(:validate_assessment_report_integrity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ValidateAssessmentReportIntegrity"
        operation.name = "ValidateAssessmentReportIntegrity"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateAssessmentReportIntegrityRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateAssessmentReportIntegrityResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/assessmentReports/integrity", "code" => 200}}
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
