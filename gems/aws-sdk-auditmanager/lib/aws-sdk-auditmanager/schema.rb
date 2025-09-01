# frozen_string_literal: true

# This is generated code!

module Aws::AuditManager
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSAccount = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AWSAccount', name: 'AWSAccount')
    AWSAccounts = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#AWSAccounts', name: 'AWSAccounts', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#sensitive" => {}})
    AWSService = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AWSService', name: 'AWSService')
    AWSServiceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#AWSServiceName', name: 'AWSServiceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 40}, "smithy.api#pattern" => "^[a-zA-Z0-9-\\s().]+$"})
    AWSServices = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#AWSServices', name: 'AWSServices')
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    AccountName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#AccountName', name: 'AccountName', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[\\u0020-\\u007E]+$"})
    AccountStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#AccountStatus', name: 'AccountStatus')
    ActionEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#ActionEnum', name: 'ActionEnum')
    ActionPlanInstructions = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ActionPlanInstructions', name: 'ActionPlanInstructions', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$", "smithy.api#sensitive" => {}})
    ActionPlanTitle = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ActionPlanTitle', name: 'ActionPlanTitle', traits: {"smithy.api#length" => {"min" => 0, "max" => 300}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$", "smithy.api#sensitive" => {}})
    Assessment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#Assessment', name: 'Assessment')
    AssessmentControl = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssessmentControl', name: 'AssessmentControl')
    AssessmentControlSet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssessmentControlSet', name: 'AssessmentControlSet')
    AssessmentControlSets = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#AssessmentControlSets', name: 'AssessmentControlSets')
    AssessmentControls = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#AssessmentControls', name: 'AssessmentControls')
    AssessmentDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#AssessmentDescription', name: 'AssessmentDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$", "smithy.api#sensitive" => {}})
    AssessmentEvidenceFolder = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssessmentEvidenceFolder', name: 'AssessmentEvidenceFolder')
    AssessmentEvidenceFolderName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#AssessmentEvidenceFolderName', name: 'AssessmentEvidenceFolderName', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$"})
    AssessmentEvidenceFolders = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#AssessmentEvidenceFolders', name: 'AssessmentEvidenceFolders')
    AssessmentFramework = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssessmentFramework', name: 'AssessmentFramework', traits: {"smithy.api#sensitive" => {}})
    AssessmentFrameworkDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#AssessmentFrameworkDescription', name: 'AssessmentFrameworkDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$"})
    AssessmentFrameworkMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssessmentFrameworkMetadata', name: 'AssessmentFrameworkMetadata')
    AssessmentFrameworkShareRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssessmentFrameworkShareRequest', name: 'AssessmentFrameworkShareRequest')
    AssessmentFrameworkShareRequestList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#AssessmentFrameworkShareRequestList', name: 'AssessmentFrameworkShareRequestList')
    AssessmentMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssessmentMetadata', name: 'AssessmentMetadata')
    AssessmentMetadataItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssessmentMetadataItem', name: 'AssessmentMetadataItem')
    AssessmentName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#AssessmentName', name: 'AssessmentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[^\\\\]*$", "smithy.api#sensitive" => {}})
    AssessmentReport = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssessmentReport', name: 'AssessmentReport')
    AssessmentReportDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#AssessmentReportDescription', name: 'AssessmentReportDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$", "smithy.api#sensitive" => {}})
    AssessmentReportDestinationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#AssessmentReportDestinationType', name: 'AssessmentReportDestinationType')
    AssessmentReportEvidenceError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssessmentReportEvidenceError', name: 'AssessmentReportEvidenceError')
    AssessmentReportEvidenceErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#AssessmentReportEvidenceErrors', name: 'AssessmentReportEvidenceErrors')
    AssessmentReportMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssessmentReportMetadata', name: 'AssessmentReportMetadata')
    AssessmentReportName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#AssessmentReportName', name: 'AssessmentReportName', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[a-zA-Z0-9-_\\.]+$"})
    AssessmentReportStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#AssessmentReportStatus', name: 'AssessmentReportStatus')
    AssessmentReportsDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssessmentReportsDestination', name: 'AssessmentReportsDestination', traits: {"smithy.api#sensitive" => {}})
    AssessmentReportsMetadata = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#AssessmentReportsMetadata', name: 'AssessmentReportsMetadata')
    AssessmentStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#AssessmentStatus', name: 'AssessmentStatus')
    AssociateAssessmentReportEvidenceFolderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssociateAssessmentReportEvidenceFolderRequest', name: 'AssociateAssessmentReportEvidenceFolderRequest')
    AssociateAssessmentReportEvidenceFolderResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#AssociateAssessmentReportEvidenceFolderResponse', name: 'AssociateAssessmentReportEvidenceFolderResponse')
    AuditManagerArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#AuditManagerArn', name: 'AuditManagerArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:.*:auditmanager:"})
    BatchAssociateAssessmentReportEvidenceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchAssociateAssessmentReportEvidenceRequest', name: 'BatchAssociateAssessmentReportEvidenceRequest')
    BatchAssociateAssessmentReportEvidenceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchAssociateAssessmentReportEvidenceResponse', name: 'BatchAssociateAssessmentReportEvidenceResponse')
    BatchCreateDelegationByAssessmentError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchCreateDelegationByAssessmentError', name: 'BatchCreateDelegationByAssessmentError')
    BatchCreateDelegationByAssessmentErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#BatchCreateDelegationByAssessmentErrors', name: 'BatchCreateDelegationByAssessmentErrors', traits: {"smithy.api#sensitive" => {}})
    BatchCreateDelegationByAssessmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchCreateDelegationByAssessmentRequest', name: 'BatchCreateDelegationByAssessmentRequest')
    BatchCreateDelegationByAssessmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchCreateDelegationByAssessmentResponse', name: 'BatchCreateDelegationByAssessmentResponse')
    BatchDeleteDelegationByAssessmentError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchDeleteDelegationByAssessmentError', name: 'BatchDeleteDelegationByAssessmentError')
    BatchDeleteDelegationByAssessmentErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#BatchDeleteDelegationByAssessmentErrors', name: 'BatchDeleteDelegationByAssessmentErrors', traits: {"smithy.api#sensitive" => {}})
    BatchDeleteDelegationByAssessmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchDeleteDelegationByAssessmentRequest', name: 'BatchDeleteDelegationByAssessmentRequest')
    BatchDeleteDelegationByAssessmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchDeleteDelegationByAssessmentResponse', name: 'BatchDeleteDelegationByAssessmentResponse')
    BatchDisassociateAssessmentReportEvidenceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchDisassociateAssessmentReportEvidenceRequest', name: 'BatchDisassociateAssessmentReportEvidenceRequest')
    BatchDisassociateAssessmentReportEvidenceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchDisassociateAssessmentReportEvidenceResponse', name: 'BatchDisassociateAssessmentReportEvidenceResponse')
    BatchImportEvidenceToAssessmentControlError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchImportEvidenceToAssessmentControlError', name: 'BatchImportEvidenceToAssessmentControlError')
    BatchImportEvidenceToAssessmentControlErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#BatchImportEvidenceToAssessmentControlErrors', name: 'BatchImportEvidenceToAssessmentControlErrors')
    BatchImportEvidenceToAssessmentControlRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchImportEvidenceToAssessmentControlRequest', name: 'BatchImportEvidenceToAssessmentControlRequest')
    BatchImportEvidenceToAssessmentControlResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#BatchImportEvidenceToAssessmentControlResponse', name: 'BatchImportEvidenceToAssessmentControlResponse')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.auditmanager#Boolean', name: 'Boolean')
    ChangeLog = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ChangeLog', name: 'ChangeLog')
    ChangeLogs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ChangeLogs', name: 'ChangeLogs')
    CloudTrailArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#CloudTrailArn', name: 'CloudTrailArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:.*:cloudtrail:"})
    ComplianceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ComplianceType', name: 'ComplianceType', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$", "smithy.api#sensitive" => {}})
    Control = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#Control', name: 'Control')
    ControlCatalogId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ControlCatalogId', name: 'ControlCatalogId', traits: {"smithy.api#length" => {"min" => 13, "max" => 2048}, "smithy.api#pattern" => "^arn:.*:controlcatalog:.*|UNCATEGORIZED$"})
    ControlComment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ControlComment', name: 'ControlComment')
    ControlCommentBody = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ControlCommentBody', name: 'ControlCommentBody', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$", "smithy.api#sensitive" => {}})
    ControlComments = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ControlComments', name: 'ControlComments')
    ControlDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ControlDescription', name: 'ControlDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$", "smithy.api#sensitive" => {}})
    ControlDomainId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ControlDomainId', name: 'ControlDomainId', traits: {"smithy.api#length" => {"min" => 13, "max" => 2048}, "smithy.api#pattern" => "^arn:.*:controlcatalog:.*:.*:domain/.*|UNCATEGORIZED|^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    ControlDomainInsights = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ControlDomainInsights', name: 'ControlDomainInsights')
    ControlDomainInsightsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ControlDomainInsightsList', name: 'ControlDomainInsightsList')
    ControlInsightsMetadata = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ControlInsightsMetadata', name: 'ControlInsightsMetadata')
    ControlInsightsMetadataByAssessment = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ControlInsightsMetadataByAssessment', name: 'ControlInsightsMetadataByAssessment')
    ControlInsightsMetadataByAssessmentItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ControlInsightsMetadataByAssessmentItem', name: 'ControlInsightsMetadataByAssessmentItem')
    ControlInsightsMetadataItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ControlInsightsMetadataItem', name: 'ControlInsightsMetadataItem')
    ControlMappingSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ControlMappingSource', name: 'ControlMappingSource')
    ControlMappingSources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ControlMappingSources', name: 'ControlMappingSources', traits: {"smithy.api#length" => {"min" => 1}})
    ControlMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ControlMetadata', name: 'ControlMetadata')
    ControlMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ControlMetadataList', name: 'ControlMetadataList')
    ControlName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ControlName', name: 'ControlName', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[^\\\\]*$"})
    ControlResponse = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#ControlResponse', name: 'ControlResponse')
    ControlSet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ControlSet', name: 'ControlSet')
    ControlSetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ControlSetId', name: 'ControlSetId', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$"})
    ControlSetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ControlSetName', name: 'ControlSetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[^\\\\\\_]*$"})
    ControlSetStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#ControlSetStatus', name: 'ControlSetStatus')
    ControlSets = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ControlSets', name: 'ControlSets', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    ControlSetsCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.auditmanager#ControlSetsCount', name: 'ControlSetsCount', traits: {"smithy.api#default" => 0})
    ControlSources = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ControlSources', name: 'ControlSources', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z_0-9-\\s.,]+$"})
    ControlState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#ControlState', name: 'ControlState')
    ControlStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#ControlStatus', name: 'ControlStatus')
    ControlType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#ControlType', name: 'ControlType')
    Controls = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#Controls', name: 'Controls', traits: {"smithy.api#length" => {"min" => 1}})
    ControlsCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.auditmanager#ControlsCount', name: 'ControlsCount', traits: {"smithy.api#default" => 0})
    CreateAssessmentFrameworkControl = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#CreateAssessmentFrameworkControl', name: 'CreateAssessmentFrameworkControl')
    CreateAssessmentFrameworkControlSet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#CreateAssessmentFrameworkControlSet', name: 'CreateAssessmentFrameworkControlSet')
    CreateAssessmentFrameworkControlSets = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#CreateAssessmentFrameworkControlSets', name: 'CreateAssessmentFrameworkControlSets', traits: {"smithy.api#length" => {"min" => 1}})
    CreateAssessmentFrameworkControls = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#CreateAssessmentFrameworkControls', name: 'CreateAssessmentFrameworkControls', traits: {"smithy.api#length" => {"min" => 1}})
    CreateAssessmentFrameworkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#CreateAssessmentFrameworkRequest', name: 'CreateAssessmentFrameworkRequest')
    CreateAssessmentFrameworkResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#CreateAssessmentFrameworkResponse', name: 'CreateAssessmentFrameworkResponse')
    CreateAssessmentReportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#CreateAssessmentReportRequest', name: 'CreateAssessmentReportRequest')
    CreateAssessmentReportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#CreateAssessmentReportResponse', name: 'CreateAssessmentReportResponse')
    CreateAssessmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#CreateAssessmentRequest', name: 'CreateAssessmentRequest')
    CreateAssessmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#CreateAssessmentResponse', name: 'CreateAssessmentResponse')
    CreateControlMappingSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#CreateControlMappingSource', name: 'CreateControlMappingSource')
    CreateControlMappingSources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#CreateControlMappingSources', name: 'CreateControlMappingSources', traits: {"smithy.api#length" => {"min" => 1}})
    CreateControlRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#CreateControlRequest', name: 'CreateControlRequest')
    CreateControlResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#CreateControlResponse', name: 'CreateControlResponse')
    CreateDelegationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#CreateDelegationRequest', name: 'CreateDelegationRequest')
    CreateDelegationRequests = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#CreateDelegationRequests', name: 'CreateDelegationRequests', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#sensitive" => {}})
    CreatedBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#CreatedBy', name: 'CreatedBy', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s-_()\\[\\]]+$", "smithy.api#sensitive" => {}})
    DataSourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#DataSourceType', name: 'DataSourceType')
    DefaultExportDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DefaultExportDestination', name: 'DefaultExportDestination')
    Delegation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#Delegation', name: 'Delegation', traits: {"smithy.api#sensitive" => {}})
    DelegationComment = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#DelegationComment', name: 'DelegationComment', traits: {"smithy.api#length" => {"min" => 0, "max" => 350}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$", "smithy.api#sensitive" => {}})
    DelegationIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#DelegationIds', name: 'DelegationIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    DelegationMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DelegationMetadata', name: 'DelegationMetadata')
    DelegationMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#DelegationMetadataList', name: 'DelegationMetadataList')
    DelegationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#DelegationStatus', name: 'DelegationStatus')
    Delegations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#Delegations', name: 'Delegations')
    DeleteAssessmentFrameworkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeleteAssessmentFrameworkRequest', name: 'DeleteAssessmentFrameworkRequest')
    DeleteAssessmentFrameworkResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeleteAssessmentFrameworkResponse', name: 'DeleteAssessmentFrameworkResponse')
    DeleteAssessmentFrameworkShareRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeleteAssessmentFrameworkShareRequest', name: 'DeleteAssessmentFrameworkShareRequest')
    DeleteAssessmentFrameworkShareResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeleteAssessmentFrameworkShareResponse', name: 'DeleteAssessmentFrameworkShareResponse')
    DeleteAssessmentReportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeleteAssessmentReportRequest', name: 'DeleteAssessmentReportRequest')
    DeleteAssessmentReportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeleteAssessmentReportResponse', name: 'DeleteAssessmentReportResponse')
    DeleteAssessmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeleteAssessmentRequest', name: 'DeleteAssessmentRequest')
    DeleteAssessmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeleteAssessmentResponse', name: 'DeleteAssessmentResponse')
    DeleteControlRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeleteControlRequest', name: 'DeleteControlRequest')
    DeleteControlResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeleteControlResponse', name: 'DeleteControlResponse')
    DeleteResources = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#DeleteResources', name: 'DeleteResources')
    DeregisterAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeregisterAccountRequest', name: 'DeregisterAccountRequest')
    DeregisterAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeregisterAccountResponse', name: 'DeregisterAccountResponse')
    DeregisterOrganizationAdminAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeregisterOrganizationAdminAccountRequest', name: 'DeregisterOrganizationAdminAccountRequest')
    DeregisterOrganizationAdminAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeregisterOrganizationAdminAccountResponse', name: 'DeregisterOrganizationAdminAccountResponse')
    DeregistrationPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DeregistrationPolicy', name: 'DeregistrationPolicy')
    DisassociateAssessmentReportEvidenceFolderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DisassociateAssessmentReportEvidenceFolderRequest', name: 'DisassociateAssessmentReportEvidenceFolderRequest')
    DisassociateAssessmentReportEvidenceFolderResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#DisassociateAssessmentReportEvidenceFolderResponse', name: 'DisassociateAssessmentReportEvidenceFolderResponse')
    EmailAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#EmailAddress', name: 'EmailAddress', traits: {"smithy.api#length" => {"min" => 1, "max" => 320}, "smithy.api#pattern" => "^.*@.*$", "smithy.api#sensitive" => {}})
    ErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ErrorCode', name: 'ErrorCode', traits: {"smithy.api#length" => {"min" => 3, "max" => 3}, "smithy.api#pattern" => "^[0-9]{3}$"})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 300}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$"})
    EventName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#EventName', name: 'EventName', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$"})
    Evidence = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#Evidence', name: 'Evidence')
    EvidenceAttributeKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#EvidenceAttributeKey', name: 'EvidenceAttributeKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$"})
    EvidenceAttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#EvidenceAttributeValue', name: 'EvidenceAttributeValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$"})
    EvidenceAttributes = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.auditmanager#EvidenceAttributes', name: 'EvidenceAttributes')
    EvidenceFinderBackfillStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#EvidenceFinderBackfillStatus', name: 'EvidenceFinderBackfillStatus')
    EvidenceFinderEnablement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#EvidenceFinderEnablement', name: 'EvidenceFinderEnablement')
    EvidenceFinderEnablementStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#EvidenceFinderEnablementStatus', name: 'EvidenceFinderEnablementStatus')
    EvidenceIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#EvidenceIds', name: 'EvidenceIds', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    EvidenceInsights = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#EvidenceInsights', name: 'EvidenceInsights')
    EvidenceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#EvidenceList', name: 'EvidenceList')
    EvidenceSources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#EvidenceSources', name: 'EvidenceSources')
    ExportDestinationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#ExportDestinationType', name: 'ExportDestinationType')
    Filename = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#Filename', name: 'Filename', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w,\\s-]+\\.[A-Za-z]+$"})
    Framework = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#Framework', name: 'Framework')
    FrameworkDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#FrameworkDescription', name: 'FrameworkDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$"})
    FrameworkMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#FrameworkMetadata', name: 'FrameworkMetadata')
    FrameworkMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#FrameworkMetadataList', name: 'FrameworkMetadataList')
    FrameworkName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#FrameworkName', name: 'FrameworkName', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[^\\\\]*$"})
    FrameworkType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#FrameworkType', name: 'FrameworkType')
    GenericArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#GenericArn', name: 'GenericArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:"})
    GetAccountStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetAccountStatusRequest', name: 'GetAccountStatusRequest')
    GetAccountStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetAccountStatusResponse', name: 'GetAccountStatusResponse')
    GetAssessmentFrameworkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetAssessmentFrameworkRequest', name: 'GetAssessmentFrameworkRequest')
    GetAssessmentFrameworkResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetAssessmentFrameworkResponse', name: 'GetAssessmentFrameworkResponse')
    GetAssessmentReportUrlRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetAssessmentReportUrlRequest', name: 'GetAssessmentReportUrlRequest')
    GetAssessmentReportUrlResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetAssessmentReportUrlResponse', name: 'GetAssessmentReportUrlResponse')
    GetAssessmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetAssessmentRequest', name: 'GetAssessmentRequest')
    GetAssessmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetAssessmentResponse', name: 'GetAssessmentResponse')
    GetChangeLogsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetChangeLogsRequest', name: 'GetChangeLogsRequest')
    GetChangeLogsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetChangeLogsResponse', name: 'GetChangeLogsResponse')
    GetControlRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetControlRequest', name: 'GetControlRequest')
    GetControlResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetControlResponse', name: 'GetControlResponse')
    GetDelegationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetDelegationsRequest', name: 'GetDelegationsRequest')
    GetDelegationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetDelegationsResponse', name: 'GetDelegationsResponse')
    GetEvidenceByEvidenceFolderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetEvidenceByEvidenceFolderRequest', name: 'GetEvidenceByEvidenceFolderRequest')
    GetEvidenceByEvidenceFolderResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetEvidenceByEvidenceFolderResponse', name: 'GetEvidenceByEvidenceFolderResponse')
    GetEvidenceFileUploadUrlRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetEvidenceFileUploadUrlRequest', name: 'GetEvidenceFileUploadUrlRequest')
    GetEvidenceFileUploadUrlResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetEvidenceFileUploadUrlResponse', name: 'GetEvidenceFileUploadUrlResponse', traits: {"smithy.api#sensitive" => {}})
    GetEvidenceFolderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetEvidenceFolderRequest', name: 'GetEvidenceFolderRequest')
    GetEvidenceFolderResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetEvidenceFolderResponse', name: 'GetEvidenceFolderResponse')
    GetEvidenceFoldersByAssessmentControlRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetEvidenceFoldersByAssessmentControlRequest', name: 'GetEvidenceFoldersByAssessmentControlRequest')
    GetEvidenceFoldersByAssessmentControlResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetEvidenceFoldersByAssessmentControlResponse', name: 'GetEvidenceFoldersByAssessmentControlResponse')
    GetEvidenceFoldersByAssessmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetEvidenceFoldersByAssessmentRequest', name: 'GetEvidenceFoldersByAssessmentRequest')
    GetEvidenceFoldersByAssessmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetEvidenceFoldersByAssessmentResponse', name: 'GetEvidenceFoldersByAssessmentResponse')
    GetEvidenceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetEvidenceRequest', name: 'GetEvidenceRequest')
    GetEvidenceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetEvidenceResponse', name: 'GetEvidenceResponse')
    GetInsightsByAssessmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetInsightsByAssessmentRequest', name: 'GetInsightsByAssessmentRequest')
    GetInsightsByAssessmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetInsightsByAssessmentResponse', name: 'GetInsightsByAssessmentResponse')
    GetInsightsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetInsightsRequest', name: 'GetInsightsRequest')
    GetInsightsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetInsightsResponse', name: 'GetInsightsResponse')
    GetOrganizationAdminAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetOrganizationAdminAccountRequest', name: 'GetOrganizationAdminAccountRequest')
    GetOrganizationAdminAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetOrganizationAdminAccountResponse', name: 'GetOrganizationAdminAccountResponse')
    GetServicesInScopeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetServicesInScopeRequest', name: 'GetServicesInScopeRequest')
    GetServicesInScopeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetServicesInScopeResponse', name: 'GetServicesInScopeResponse')
    GetSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetSettingsRequest', name: 'GetSettingsRequest')
    GetSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#GetSettingsResponse', name: 'GetSettingsResponse')
    HyperlinkName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#HyperlinkName', name: 'HyperlinkName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$"})
    IamArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#IamArn', name: 'IamArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:.*:iam:"})
    Insights = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#Insights', name: 'Insights')
    InsightsByAssessment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#InsightsByAssessment', name: 'InsightsByAssessment')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.auditmanager#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KeywordInputType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#KeywordInputType', name: 'KeywordInputType')
    KeywordValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#KeywordValue', name: 'KeywordValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z_0-9-\\s().:\\/]+$"})
    Keywords = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#Keywords', name: 'Keywords')
    KmsKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#KmsKey', name: 'KmsKey', traits: {"smithy.api#length" => {"min" => 7, "max" => 2048}, "smithy.api#pattern" => "^arn:.*:kms:.*|DEFAULT$"})
    LastUpdatedBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#LastUpdatedBy', name: 'LastUpdatedBy', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s-_()\\[\\]]+$", "smithy.api#sensitive" => {}})
    ListAssessmentControlInsightsByControlDomainRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListAssessmentControlInsightsByControlDomainRequest', name: 'ListAssessmentControlInsightsByControlDomainRequest')
    ListAssessmentControlInsightsByControlDomainResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListAssessmentControlInsightsByControlDomainResponse', name: 'ListAssessmentControlInsightsByControlDomainResponse')
    ListAssessmentFrameworkShareRequestsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListAssessmentFrameworkShareRequestsRequest', name: 'ListAssessmentFrameworkShareRequestsRequest')
    ListAssessmentFrameworkShareRequestsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListAssessmentFrameworkShareRequestsResponse', name: 'ListAssessmentFrameworkShareRequestsResponse')
    ListAssessmentFrameworksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListAssessmentFrameworksRequest', name: 'ListAssessmentFrameworksRequest')
    ListAssessmentFrameworksResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListAssessmentFrameworksResponse', name: 'ListAssessmentFrameworksResponse')
    ListAssessmentMetadata = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ListAssessmentMetadata', name: 'ListAssessmentMetadata')
    ListAssessmentReportsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListAssessmentReportsRequest', name: 'ListAssessmentReportsRequest')
    ListAssessmentReportsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListAssessmentReportsResponse', name: 'ListAssessmentReportsResponse')
    ListAssessmentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListAssessmentsRequest', name: 'ListAssessmentsRequest')
    ListAssessmentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListAssessmentsResponse', name: 'ListAssessmentsResponse')
    ListControlDomainInsightsByAssessmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListControlDomainInsightsByAssessmentRequest', name: 'ListControlDomainInsightsByAssessmentRequest')
    ListControlDomainInsightsByAssessmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListControlDomainInsightsByAssessmentResponse', name: 'ListControlDomainInsightsByAssessmentResponse')
    ListControlDomainInsightsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListControlDomainInsightsRequest', name: 'ListControlDomainInsightsRequest')
    ListControlDomainInsightsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListControlDomainInsightsResponse', name: 'ListControlDomainInsightsResponse')
    ListControlInsightsByControlDomainRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListControlInsightsByControlDomainRequest', name: 'ListControlInsightsByControlDomainRequest')
    ListControlInsightsByControlDomainResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListControlInsightsByControlDomainResponse', name: 'ListControlInsightsByControlDomainResponse')
    ListControlsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListControlsRequest', name: 'ListControlsRequest')
    ListControlsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListControlsResponse', name: 'ListControlsResponse')
    ListKeywordsForDataSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListKeywordsForDataSourceRequest', name: 'ListKeywordsForDataSourceRequest')
    ListKeywordsForDataSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListKeywordsForDataSourceResponse', name: 'ListKeywordsForDataSourceResponse')
    ListNotificationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListNotificationsRequest', name: 'ListNotificationsRequest')
    ListNotificationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListNotificationsResponse', name: 'ListNotificationsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ManualEvidence = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ManualEvidence', name: 'ManualEvidence')
    ManualEvidenceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ManualEvidenceList', name: 'ManualEvidenceList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ManualEvidenceLocalFileName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ManualEvidenceLocalFileName', name: 'ManualEvidenceLocalFileName', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[^\\/]*$", "smithy.api#sensitive" => {}})
    ManualEvidenceTextResponse = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ManualEvidenceTextResponse', name: 'ManualEvidenceTextResponse', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$", "smithy.api#sensitive" => {}})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.auditmanager#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    NonEmptyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#NonEmptyString', name: 'NonEmptyString', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "\\S"})
    Notification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#Notification', name: 'Notification')
    Notifications = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#Notifications', name: 'Notifications')
    NullableInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.auditmanager#NullableInteger', name: 'NullableInteger')
    ObjectTypeEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#ObjectTypeEnum', name: 'ObjectTypeEnum')
    QueryStatement = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#QueryStatement', name: 'QueryStatement', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#pattern" => "^(?s)"})
    Region = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#Region', name: 'Region', traits: {"smithy.api#pattern" => "^[a-z]{2}-[a-z]+-[0-9]{1}$"})
    RegisterAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#RegisterAccountRequest', name: 'RegisterAccountRequest')
    RegisterAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#RegisterAccountResponse', name: 'RegisterAccountResponse')
    RegisterOrganizationAdminAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#RegisterOrganizationAdminAccountRequest', name: 'RegisterOrganizationAdminAccountRequest')
    RegisterOrganizationAdminAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#RegisterOrganizationAdminAccountResponse', name: 'RegisterOrganizationAdminAccountResponse')
    Resource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#Resource', name: 'Resource')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Resources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#Resources', name: 'Resources')
    Role = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#Role', name: 'Role')
    RoleType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#RoleType', name: 'RoleType')
    Roles = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#Roles', name: 'Roles', traits: {"smithy.api#sensitive" => {}})
    S3Url = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#S3Url', name: 'S3Url', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(S|s)3:\\/\\/[a-zA-Z0-9\\-\\.\\(\\)\\'\\*\\_\\!\\=\\+\\@\\:\\s\\,\\?\\/]+$"})
    SNSTopic = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#SNSTopic', name: 'SNSTopic', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9-_\\(\\)\\[\\]]+$", "smithy.api#sensitive" => {}})
    Scope = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#Scope', name: 'Scope', traits: {"smithy.api#sensitive" => {}})
    ServiceMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ServiceMetadata', name: 'ServiceMetadata')
    ServiceMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ServiceMetadataList', name: 'ServiceMetadataList')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SettingAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#SettingAttribute', name: 'SettingAttribute')
    Settings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#Settings', name: 'Settings')
    ShareRequestAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#ShareRequestAction', name: 'ShareRequestAction')
    ShareRequestComment = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#ShareRequestComment', name: 'ShareRequestComment', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$"})
    ShareRequestStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#ShareRequestStatus', name: 'ShareRequestStatus')
    ShareRequestType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#ShareRequestType', name: 'ShareRequestType')
    SnsArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#SnsArn', name: 'SnsArn', traits: {"smithy.api#length" => {"min" => 4, "max" => 2048}, "smithy.api#pattern" => "^arn:.*:sns:.*|NONE$"})
    SourceDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#SourceDescription', name: 'SourceDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$"})
    SourceFrequency = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#SourceFrequency', name: 'SourceFrequency')
    SourceKeyword = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#SourceKeyword', name: 'SourceKeyword')
    SourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#SourceName', name: 'SourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    SourceSetUpOption = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#SourceSetUpOption', name: 'SourceSetUpOption')
    SourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#SourceType', name: 'SourceType')
    StartAssessmentFrameworkShareRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#StartAssessmentFrameworkShareRequest', name: 'StartAssessmentFrameworkShareRequest')
    StartAssessmentFrameworkShareResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#StartAssessmentFrameworkShareResponse', name: 'StartAssessmentFrameworkShareResponse')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#String', name: 'String', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => ".*"})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.auditmanager#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^.{0,255}$"})
    TestingInformation = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#TestingInformation', name: 'TestingInformation', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$", "smithy.api#sensitive" => {}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.auditmanager#Timestamp', name: 'Timestamp')
    TimestampUUID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#TimestampUUID', name: 'TimestampUUID', traits: {"smithy.api#length" => {"min" => 47, "max" => 50}, "smithy.api#pattern" => "^[0-9]{10,13}_[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    Token = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#Token', name: 'Token', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[A-Za-z0-9+\\/=]*$"})
    TroubleshootingText = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#TroubleshootingText', name: 'TroubleshootingText', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\w\\W\\s\\S]*$", "smithy.api#sensitive" => {}})
    URL = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#URL', name: 'URL')
    UUID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#UUID', name: 'UUID', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateAssessmentControlRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentControlRequest', name: 'UpdateAssessmentControlRequest')
    UpdateAssessmentControlResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentControlResponse', name: 'UpdateAssessmentControlResponse')
    UpdateAssessmentControlSetStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentControlSetStatusRequest', name: 'UpdateAssessmentControlSetStatusRequest')
    UpdateAssessmentControlSetStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentControlSetStatusResponse', name: 'UpdateAssessmentControlSetStatusResponse')
    UpdateAssessmentFrameworkControlSet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentFrameworkControlSet', name: 'UpdateAssessmentFrameworkControlSet')
    UpdateAssessmentFrameworkControlSets = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentFrameworkControlSets', name: 'UpdateAssessmentFrameworkControlSets', traits: {"smithy.api#length" => {"min" => 1}})
    UpdateAssessmentFrameworkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentFrameworkRequest', name: 'UpdateAssessmentFrameworkRequest')
    UpdateAssessmentFrameworkResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentFrameworkResponse', name: 'UpdateAssessmentFrameworkResponse')
    UpdateAssessmentFrameworkShareRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentFrameworkShareRequest', name: 'UpdateAssessmentFrameworkShareRequest')
    UpdateAssessmentFrameworkShareResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentFrameworkShareResponse', name: 'UpdateAssessmentFrameworkShareResponse')
    UpdateAssessmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentRequest', name: 'UpdateAssessmentRequest')
    UpdateAssessmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentResponse', name: 'UpdateAssessmentResponse')
    UpdateAssessmentStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentStatusRequest', name: 'UpdateAssessmentStatusRequest')
    UpdateAssessmentStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateAssessmentStatusResponse', name: 'UpdateAssessmentStatusResponse')
    UpdateControlRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateControlRequest', name: 'UpdateControlRequest')
    UpdateControlResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateControlResponse', name: 'UpdateControlResponse')
    UpdateSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateSettingsRequest', name: 'UpdateSettingsRequest')
    UpdateSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#UpdateSettingsResponse', name: 'UpdateSettingsResponse')
    UrlLink = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#UrlLink', name: 'UrlLink', traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}, "smithy.api#pattern" => "^(https?:\\/\\/)?(www\\.)?[a-zA-Z0-9-_]+([\\.]+[a-zA-Z]+)+[\\/\\w]*$"})
    Username = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#Username', name: 'Username', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_()\\s\\+=,.@]+$", "smithy.api#sensitive" => {}})
    ValidateAssessmentReportIntegrityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ValidateAssessmentReportIntegrityRequest', name: 'ValidateAssessmentReportIntegrityRequest')
    ValidateAssessmentReportIntegrityResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ValidateAssessmentReportIntegrityResponse', name: 'ValidateAssessmentReportIntegrityResponse')
    ValidationErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ValidationErrors', name: 'ValidationErrors')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.auditmanager#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.auditmanager#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.auditmanager#ValidationExceptionReason', name: 'ValidationExceptionReason')
    OrganizationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.auditmanager#organizationId', name: 'OrganizationId', traits: {"smithy.api#length" => {"min" => 12, "max" => 34}, "smithy.api#pattern" => "^o-[a-z0-9]{10,32}$"})

    AWSAccount.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The identifier for the Amazon Web Services account. </p>"}))
    AWSAccount.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'emailAddress', traits: {"smithy.api#documentation" => "<p> The email address that's associated with the Amazon Web Services account. </p>"}))
    AWSAccount.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the Amazon Web Services account. </p>"}))
    AWSAccount.type = Types::AWSAccount
    AWSAccounts.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccount)
    AWSService.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p> The name of the Amazon Web Services service. </p>"}))
    AWSService.type = Types::AWSService
    AWSServices.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AWSService)
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AccountStatus.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    AccountStatus.add_member(:pending_activation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_ACTIVATION', traits: {"smithy.api#enumValue" => "PENDING_ACTIVATION"}))
    ActionEnum.add_member(:create, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE', traits: {"smithy.api#enumValue" => "CREATE"}))
    ActionEnum.add_member(:update_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_METADATA', traits: {"smithy.api#enumValue" => "UPDATE_METADATA"}))
    ActionEnum.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ActionEnum.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    ActionEnum.add_member(:delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE', traits: {"smithy.api#enumValue" => "DELETE"}))
    ActionEnum.add_member(:under_review, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNDER_REVIEW', traits: {"smithy.api#enumValue" => "UNDER_REVIEW"}))
    ActionEnum.add_member(:reviewed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVIEWED', traits: {"smithy.api#enumValue" => "REVIEWED"}))
    ActionEnum.add_member(:import_evidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORT_EVIDENCE', traits: {"smithy.api#enumValue" => "IMPORT_EVIDENCE"}))
    Assessment.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditManagerArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the assessment. </p>"}))
    Assessment.add_member(:aws_account, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccount, location_name: 'awsAccount', traits: {"smithy.api#documentation" => "<p> The Amazon Web Services account that's associated with the assessment. </p>"}))
    Assessment.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p> The metadata for the assessment. </p>"}))
    Assessment.add_member(:framework, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentFramework, location_name: 'framework', traits: {"smithy.api#documentation" => "<p> The framework that the assessment was created from. </p>"}))
    Assessment.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p> The tags that are associated with the assessment. </p>"}))
    Assessment.type = Types::Assessment
    AssessmentControl.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The identifier for the control. </p>"}))
    AssessmentControl.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the control. </p>"}))
    AssessmentControl.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlDescription, location_name: 'description', traits: {"smithy.api#deprecated" => {"since" => "2025-05-19", "message" => "This data type will be deprecated on May 19, 2025. To view the assessment control description, use GetControl."}, "smithy.api#documentation" => "<p> The description of the control. </p>"}))
    AssessmentControl.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The status of the control. </p>"}))
    AssessmentControl.add_member(:response, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlResponse, location_name: 'response', traits: {"smithy.api#documentation" => "<p> The response of the control. </p>"}))
    AssessmentControl.add_member(:comments, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlComments, location_name: 'comments', traits: {"smithy.api#documentation" => "<p> The list of comments that's attached to the control. </p>"}))
    AssessmentControl.add_member(:evidence_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceSources, location_name: 'evidenceSources', traits: {"smithy.api#documentation" => "<p> The list of data sources for the evidence. </p>"}))
    AssessmentControl.add_member(:evidence_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'evidenceCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The amount of evidence that's collected for the control. </p>"}))
    AssessmentControl.add_member(:assessment_report_evidence_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'assessmentReportEvidenceCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The amount of evidence in the assessment report. </p>"}))
    AssessmentControl.type = Types::AssessmentControl
    AssessmentControlSet.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetId, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The identifier of the control set in the assessment. This is the control set name in a\n         plain string format. </p>"}))
    AssessmentControlSet.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'description', traits: {"smithy.api#documentation" => "<p> The description for the control set. </p>"}))
    AssessmentControlSet.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The current status of the control set. </p>"}))
    AssessmentControlSet.add_member(:roles, Smithy::Schema::Shapes::ShapeRef.new(shape: Roles, location_name: 'roles', traits: {"smithy.api#documentation" => "<p> The roles that are associated with the control set. </p>"}))
    AssessmentControlSet.add_member(:controls, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentControls, location_name: 'controls', traits: {"smithy.api#documentation" => "<p> The list of controls that's contained with the control set. </p>"}))
    AssessmentControlSet.add_member(:delegations, Smithy::Schema::Shapes::ShapeRef.new(shape: Delegations, location_name: 'delegations', traits: {"smithy.api#documentation" => "<p> The delegations that are associated with the control set. </p>"}))
    AssessmentControlSet.add_member(:system_evidence_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'systemEvidenceCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The total number of evidence objects that are retrieved automatically for the control\n         set. </p>"}))
    AssessmentControlSet.add_member(:manual_evidence_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'manualEvidenceCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The total number of evidence objects that are uploaded manually to the control set.\n      </p>"}))
    AssessmentControlSet.type = Types::AssessmentControlSet
    AssessmentControlSets.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentControlSet)
    AssessmentControls.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentControl)
    AssessmentEvidenceFolder.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentEvidenceFolderName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the evidence folder. </p>"}))
    AssessmentEvidenceFolder.add_member(:date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'date', traits: {"smithy.api#documentation" => "<p> The date when the first evidence was added to the evidence folder. </p>"}))
    AssessmentEvidenceFolder.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The identifier for the assessment. </p>"}))
    AssessmentEvidenceFolder.add_member(:control_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetId, location_name: 'controlSetId', traits: {"smithy.api#documentation" => "<p> The identifier for the control set. </p>"}))
    AssessmentEvidenceFolder.add_member(:control_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'controlId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the control. </p>"}))
    AssessmentEvidenceFolder.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The identifier for the folder that the evidence is stored in. </p>"}))
    AssessmentEvidenceFolder.add_member(:data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'dataSource', traits: {"smithy.api#documentation" => "<p> The Amazon Web Services service that the evidence was collected from. </p>"}))
    AssessmentEvidenceFolder.add_member(:author, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'author', traits: {"smithy.api#documentation" => "<p> The name of the user who created the evidence folder. </p>"}))
    AssessmentEvidenceFolder.add_member(:total_evidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'totalEvidence', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The total amount of evidence in the evidence folder. </p>"}))
    AssessmentEvidenceFolder.add_member(:assessment_report_selection_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'assessmentReportSelectionCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The total count of evidence that's included in the assessment report. </p>"}))
    AssessmentEvidenceFolder.add_member(:control_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlName, location_name: 'controlName', traits: {"smithy.api#documentation" => "<p> The name of the control. </p>"}))
    AssessmentEvidenceFolder.add_member(:evidence_resources_included_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'evidenceResourcesIncludedCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The amount of evidence that's included in the evidence folder. </p>"}))
    AssessmentEvidenceFolder.add_member(:evidence_by_type_configuration_data_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'evidenceByTypeConfigurationDataCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The number of evidence that falls under the configuration data category. This evidence\n         is collected from configuration snapshots of other Amazon Web Services services such as\n            Amazon EC2, Amazon S3, or IAM. </p>"}))
    AssessmentEvidenceFolder.add_member(:evidence_by_type_manual_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'evidenceByTypeManualCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The number of evidence that falls under the manual category. This evidence is imported\n         manually. </p>"}))
    AssessmentEvidenceFolder.add_member(:evidence_by_type_compliance_check_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'evidenceByTypeComplianceCheckCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The number of evidence that falls under the compliance check category. This evidence is\n         collected from Config or Security Hub. </p>"}))
    AssessmentEvidenceFolder.add_member(:evidence_by_type_compliance_check_issues_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'evidenceByTypeComplianceCheckIssuesCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The total number of issues that were reported directly from Security Hub,\n            Config, or both. </p>"}))
    AssessmentEvidenceFolder.add_member(:evidence_by_type_user_activity_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'evidenceByTypeUserActivityCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The number of evidence that falls under the user activity category. This evidence is\n         collected from CloudTrail logs. </p>"}))
    AssessmentEvidenceFolder.add_member(:evidence_aws_service_source_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'evidenceAwsServiceSourceCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The total number of Amazon Web Services resources that were assessed to generate the\n         evidence. </p>"}))
    AssessmentEvidenceFolder.type = Types::AssessmentEvidenceFolder
    AssessmentEvidenceFolders.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentEvidenceFolder)
    AssessmentFramework.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The unique identifier for the framework. </p>"}))
    AssessmentFramework.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditManagerArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the framework. </p>"}))
    AssessmentFramework.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkMetadata, location_name: 'metadata'))
    AssessmentFramework.add_member(:control_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentControlSets, location_name: 'controlSets', traits: {"smithy.api#documentation" => "<p> The control sets that are associated with the framework. </p>"}))
    AssessmentFramework.type = Types::AssessmentFramework
    AssessmentFrameworkMetadata.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditManagerArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the framework. </p>"}))
    AssessmentFrameworkMetadata.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The unique identifier for the framework. </p>"}))
    AssessmentFrameworkMetadata.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkType, location_name: 'type', traits: {"smithy.api#documentation" => "<p> The framework type, such as a standard framework or a custom framework. </p>"}))
    AssessmentFrameworkMetadata.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the framework. </p>"}))
    AssessmentFrameworkMetadata.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p> The description of the framework. </p>"}))
    AssessmentFrameworkMetadata.add_member(:logo, Smithy::Schema::Shapes::ShapeRef.new(shape: Filename, location_name: 'logo', traits: {"smithy.api#documentation" => "<p> The logo that's associated with the framework. </p>"}))
    AssessmentFrameworkMetadata.add_member(:compliance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComplianceType, location_name: 'complianceType', traits: {"smithy.api#documentation" => "<p> The compliance type that the new custom framework supports, such as CIS or HIPAA.\n      </p>"}))
    AssessmentFrameworkMetadata.add_member(:controls_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlsCount, location_name: 'controlsCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The number of controls that are associated with the framework. </p>"}))
    AssessmentFrameworkMetadata.add_member(:control_sets_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetsCount, location_name: 'controlSetsCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The number of control sets that are associated with the framework. </p>"}))
    AssessmentFrameworkMetadata.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p> The time when the framework was created. </p>"}))
    AssessmentFrameworkMetadata.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p> The time when the framework was most recently updated. </p>"}))
    AssessmentFrameworkMetadata.type = Types::AssessmentFrameworkMetadata
    AssessmentFrameworkShareRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The unique identifier for the share request. </p>"}))
    AssessmentFrameworkShareRequest.add_member(:framework_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'frameworkId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the shared custom framework. </p>"}))
    AssessmentFrameworkShareRequest.add_member(:framework_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkName, location_name: 'frameworkName', traits: {"smithy.api#documentation" => "<p> The name of the custom framework that the share request is for. </p>"}))
    AssessmentFrameworkShareRequest.add_member(:framework_description, Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkDescription, location_name: 'frameworkDescription', traits: {"smithy.api#documentation" => "<p>The description of the shared custom framework.</p>"}))
    AssessmentFrameworkShareRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareRequestStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The status of the share request. </p>"}))
    AssessmentFrameworkShareRequest.add_member(:source_account, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'sourceAccount', traits: {"smithy.api#documentation" => "<p> The Amazon Web Services account of the sender. </p>"}))
    AssessmentFrameworkShareRequest.add_member(:destination_account, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'destinationAccount', traits: {"smithy.api#documentation" => "<p> The Amazon Web Services account of the recipient. </p>"}))
    AssessmentFrameworkShareRequest.add_member(:destination_region, Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'destinationRegion', traits: {"smithy.api#documentation" => "<p> The Amazon Web Services Region of the recipient. </p>"}))
    AssessmentFrameworkShareRequest.add_member(:expiration_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'expirationTime', traits: {"smithy.api#documentation" => "<p> The time when the share request expires. </p>"}))
    AssessmentFrameworkShareRequest.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p> The time when the share request was created. </p>"}))
    AssessmentFrameworkShareRequest.add_member(:last_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdated', traits: {"smithy.api#documentation" => "<p> Specifies when the share request was last updated. </p>"}))
    AssessmentFrameworkShareRequest.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareRequestComment, location_name: 'comment', traits: {"smithy.api#documentation" => "<p> An optional comment from the sender about the share request. </p>"}))
    AssessmentFrameworkShareRequest.add_member(:standard_controls_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'standardControlsCount', traits: {"smithy.api#documentation" => "<p>The number of standard controls that are part of the shared custom framework. </p>"}))
    AssessmentFrameworkShareRequest.add_member(:custom_controls_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'customControlsCount', traits: {"smithy.api#documentation" => "<p>The number of custom controls that are part of the shared custom framework.</p>"}))
    AssessmentFrameworkShareRequest.add_member(:compliance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComplianceType, location_name: 'complianceType', traits: {"smithy.api#documentation" => "<p>The compliance type that the shared custom framework supports, such as CIS or\n         HIPAA.</p>"}))
    AssessmentFrameworkShareRequest.type = Types::AssessmentFrameworkShareRequest
    AssessmentFrameworkShareRequestList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentFrameworkShareRequest)
    AssessmentMetadata.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the assessment. </p>"}))
    AssessmentMetadata.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The unique identifier for the assessment. </p>"}))
    AssessmentMetadata.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p> The description of the assessment. </p>"}))
    AssessmentMetadata.add_member(:compliance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComplianceType, location_name: 'complianceType', traits: {"smithy.api#documentation" => "<p> The name of the compliance standard that's related to the assessment, such as PCI-DSS.\n      </p>"}))
    AssessmentMetadata.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The overall status of the assessment. </p>"}))
    AssessmentMetadata.add_member(:assessment_reports_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportsDestination, location_name: 'assessmentReportsDestination', traits: {"smithy.api#documentation" => "<p> The destination that evidence reports are stored in for the assessment. </p>"}))
    AssessmentMetadata.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: Scope, location_name: 'scope', traits: {"smithy.api#documentation" => "<p> The wrapper of Amazon Web Services accounts and services that are in scope for the\n         assessment. </p>"}))
    AssessmentMetadata.add_member(:roles, Smithy::Schema::Shapes::ShapeRef.new(shape: Roles, location_name: 'roles', traits: {"smithy.api#documentation" => "<p> The roles that are associated with the assessment. </p>"}))
    AssessmentMetadata.add_member(:delegations, Smithy::Schema::Shapes::ShapeRef.new(shape: Delegations, location_name: 'delegations', traits: {"smithy.api#documentation" => "<p> The delegations that are associated with the assessment. </p>"}))
    AssessmentMetadata.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p> Specifies when the assessment was created. </p>"}))
    AssessmentMetadata.add_member(:last_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdated', traits: {"smithy.api#documentation" => "<p> The time of the most recent update. </p>"}))
    AssessmentMetadata.type = Types::AssessmentMetadata
    AssessmentMetadataItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the assessment. </p>"}))
    AssessmentMetadataItem.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The unique identifier for the assessment. </p>"}))
    AssessmentMetadataItem.add_member(:compliance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComplianceType, location_name: 'complianceType', traits: {"smithy.api#documentation" => "<p> The name of the compliance standard that's related to the assessment, such as PCI-DSS.\n      </p>"}))
    AssessmentMetadataItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The current status of the assessment. </p>"}))
    AssessmentMetadataItem.add_member(:roles, Smithy::Schema::Shapes::ShapeRef.new(shape: Roles, location_name: 'roles', traits: {"smithy.api#documentation" => "<p> The roles that are associated with the assessment. </p>"}))
    AssessmentMetadataItem.add_member(:delegations, Smithy::Schema::Shapes::ShapeRef.new(shape: Delegations, location_name: 'delegations', traits: {"smithy.api#documentation" => "<p> The delegations that are associated with the assessment. </p>"}))
    AssessmentMetadataItem.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p> Specifies when the assessment was created. </p>"}))
    AssessmentMetadataItem.add_member(:last_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdated', traits: {"smithy.api#documentation" => "<p> The time of the most recent update. </p>"}))
    AssessmentMetadataItem.type = Types::AssessmentMetadataItem
    AssessmentReport.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The unique identifier for the assessment report. </p>"}))
    AssessmentReport.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name that's given to the assessment report. </p>"}))
    AssessmentReport.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p> The description of the specified assessment report. </p>"}))
    AssessmentReport.add_member(:aws_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'awsAccountId', traits: {"smithy.api#documentation" => "<p> The identifier for the specified Amazon Web Services account. </p>"}))
    AssessmentReport.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The identifier for the specified assessment. </p>"}))
    AssessmentReport.add_member(:assessment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentName, location_name: 'assessmentName', traits: {"smithy.api#documentation" => "<p> The name of the associated assessment. </p>"}))
    AssessmentReport.add_member(:author, Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: 'author', traits: {"smithy.api#documentation" => "<p> The name of the user who created the assessment report. </p>"}))
    AssessmentReport.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The current status of the specified assessment report. </p>"}))
    AssessmentReport.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p> Specifies when the assessment report was created. </p>"}))
    AssessmentReport.type = Types::AssessmentReport
    AssessmentReportDestinationType.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "S3"}))
    AssessmentReportEvidenceError.add_member(:evidence_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'evidenceId', traits: {"smithy.api#documentation" => "<p> The identifier for the evidence. </p>"}))
    AssessmentReportEvidenceError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p> The error code that was returned. </p>"}))
    AssessmentReportEvidenceError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p> The error message that was returned. </p>"}))
    AssessmentReportEvidenceError.type = Types::AssessmentReportEvidenceError
    AssessmentReportEvidenceErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportEvidenceError)
    AssessmentReportMetadata.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The unique identifier for the assessment report. </p>"}))
    AssessmentReportMetadata.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the assessment report. </p>"}))
    AssessmentReportMetadata.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p> The description of the assessment report. </p>"}))
    AssessmentReportMetadata.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the associated assessment. </p>"}))
    AssessmentReportMetadata.add_member(:assessment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentName, location_name: 'assessmentName', traits: {"smithy.api#documentation" => "<p>The name of the associated assessment. </p>"}))
    AssessmentReportMetadata.add_member(:author, Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: 'author', traits: {"smithy.api#documentation" => "<p> The name of the user who created the assessment report. </p>"}))
    AssessmentReportMetadata.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The current status of the assessment report. </p>"}))
    AssessmentReportMetadata.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p> Specifies when the assessment report was created. </p>"}))
    AssessmentReportMetadata.type = Types::AssessmentReportMetadata
    AssessmentReportStatus.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    AssessmentReportStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    AssessmentReportStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    AssessmentReportsDestination.add_member(:destination_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportDestinationType, location_name: 'destinationType', traits: {"smithy.api#documentation" => "<p> The destination type, such as Amazon S3. </p>"}))
    AssessmentReportsDestination.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: 'destination', traits: {"smithy.api#documentation" => "<p> The destination bucket where Audit Manager stores assessment reports. </p>"}))
    AssessmentReportsDestination.type = Types::AssessmentReportsDestination
    AssessmentReportsMetadata.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportMetadata)
    AssessmentStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AssessmentStatus.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    AssociateAssessmentReportEvidenceFolderRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The identifier for the assessment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateAssessmentReportEvidenceFolderRequest.add_member(:evidence_folder_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'evidenceFolderId', traits: {"smithy.api#documentation" => "<p> The identifier for the folder that the evidence is stored in. </p>", "smithy.api#required" => {}}))
    AssociateAssessmentReportEvidenceFolderRequest.type = Types::AssociateAssessmentReportEvidenceFolderRequest
    AssociateAssessmentReportEvidenceFolderResponse.type = Types::AssociateAssessmentReportEvidenceFolderResponse
    BatchAssociateAssessmentReportEvidenceRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The identifier for the assessment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchAssociateAssessmentReportEvidenceRequest.add_member(:evidence_folder_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'evidenceFolderId', traits: {"smithy.api#documentation" => "<p> The identifier for the folder that the evidence is stored in. </p>", "smithy.api#required" => {}}))
    BatchAssociateAssessmentReportEvidenceRequest.add_member(:evidence_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceIds, location_name: 'evidenceIds', traits: {"smithy.api#documentation" => "<p> The list of evidence identifiers. </p>", "smithy.api#required" => {}}))
    BatchAssociateAssessmentReportEvidenceRequest.type = Types::BatchAssociateAssessmentReportEvidenceRequest
    BatchAssociateAssessmentReportEvidenceResponse.add_member(:evidence_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceIds, location_name: 'evidenceIds', traits: {"smithy.api#documentation" => "<p> The list of evidence identifiers. </p>"}))
    BatchAssociateAssessmentReportEvidenceResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportEvidenceErrors, location_name: 'errors', traits: {"smithy.api#documentation" => "<p> A list of errors that the <code>BatchAssociateAssessmentReportEvidence</code> API\n         returned. </p>"}))
    BatchAssociateAssessmentReportEvidenceResponse.type = Types::BatchAssociateAssessmentReportEvidenceResponse
    BatchCreateDelegationByAssessmentError.add_member(:create_delegation_request, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDelegationRequest, location_name: 'createDelegationRequest', traits: {"smithy.api#documentation" => "<p> The API request to batch create delegations in Audit Manager. </p>"}))
    BatchCreateDelegationByAssessmentError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p> The error code that the <code>BatchCreateDelegationByAssessment</code> API returned.\n      </p>"}))
    BatchCreateDelegationByAssessmentError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p> The error message that the <code>BatchCreateDelegationByAssessment</code> API returned.\n      </p>"}))
    BatchCreateDelegationByAssessmentError.type = Types::BatchCreateDelegationByAssessmentError
    BatchCreateDelegationByAssessmentErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateDelegationByAssessmentError)
    BatchCreateDelegationByAssessmentRequest.add_member(:create_delegation_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDelegationRequests, location_name: 'createDelegationRequests', traits: {"smithy.api#documentation" => "<p> The API request to batch create delegations in Audit Manager. </p>", "smithy.api#required" => {}}))
    BatchCreateDelegationByAssessmentRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The identifier for the assessment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchCreateDelegationByAssessmentRequest.type = Types::BatchCreateDelegationByAssessmentRequest
    BatchCreateDelegationByAssessmentResponse.add_member(:delegations, Smithy::Schema::Shapes::ShapeRef.new(shape: Delegations, location_name: 'delegations', traits: {"smithy.api#documentation" => "<p> The delegations that are associated with the assessment. </p>"}))
    BatchCreateDelegationByAssessmentResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateDelegationByAssessmentErrors, location_name: 'errors', traits: {"smithy.api#documentation" => "<p> A list of errors that the <code>BatchCreateDelegationByAssessment</code> API returned.\n      </p>"}))
    BatchCreateDelegationByAssessmentResponse.type = Types::BatchCreateDelegationByAssessmentResponse
    BatchDeleteDelegationByAssessmentError.add_member(:delegation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'delegationId', traits: {"smithy.api#documentation" => "<p> The identifier for the delegation. </p>"}))
    BatchDeleteDelegationByAssessmentError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p> The error code that the <code>BatchDeleteDelegationByAssessment</code> API returned.\n      </p>"}))
    BatchDeleteDelegationByAssessmentError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p> The error message that the <code>BatchDeleteDelegationByAssessment</code> API returned.\n      </p>"}))
    BatchDeleteDelegationByAssessmentError.type = Types::BatchDeleteDelegationByAssessmentError
    BatchDeleteDelegationByAssessmentErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteDelegationByAssessmentError)
    BatchDeleteDelegationByAssessmentRequest.add_member(:delegation_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationIds, location_name: 'delegationIds', traits: {"smithy.api#documentation" => "<p> The identifiers for the delegations. </p>", "smithy.api#required" => {}}))
    BatchDeleteDelegationByAssessmentRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The identifier for the assessment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDeleteDelegationByAssessmentRequest.type = Types::BatchDeleteDelegationByAssessmentRequest
    BatchDeleteDelegationByAssessmentResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteDelegationByAssessmentErrors, location_name: 'errors', traits: {"smithy.api#documentation" => "<p> A list of errors that the <code>BatchDeleteDelegationByAssessment</code> API returned.\n      </p>"}))
    BatchDeleteDelegationByAssessmentResponse.type = Types::BatchDeleteDelegationByAssessmentResponse
    BatchDisassociateAssessmentReportEvidenceRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The identifier for the assessment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDisassociateAssessmentReportEvidenceRequest.add_member(:evidence_folder_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'evidenceFolderId', traits: {"smithy.api#documentation" => "<p> The identifier for the folder that the evidence is stored in. </p>", "smithy.api#required" => {}}))
    BatchDisassociateAssessmentReportEvidenceRequest.add_member(:evidence_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceIds, location_name: 'evidenceIds', traits: {"smithy.api#documentation" => "<p> The list of evidence identifiers. </p>", "smithy.api#required" => {}}))
    BatchDisassociateAssessmentReportEvidenceRequest.type = Types::BatchDisassociateAssessmentReportEvidenceRequest
    BatchDisassociateAssessmentReportEvidenceResponse.add_member(:evidence_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceIds, location_name: 'evidenceIds', traits: {"smithy.api#documentation" => "<p> The identifier for the evidence. </p>"}))
    BatchDisassociateAssessmentReportEvidenceResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportEvidenceErrors, location_name: 'errors', traits: {"smithy.api#documentation" => "<p> A list of errors that the <code>BatchDisassociateAssessmentReportEvidence</code> API\n         returned. </p>"}))
    BatchDisassociateAssessmentReportEvidenceResponse.type = Types::BatchDisassociateAssessmentReportEvidenceResponse
    BatchImportEvidenceToAssessmentControlError.add_member(:manual_evidence, Smithy::Schema::Shapes::ShapeRef.new(shape: ManualEvidence, location_name: 'manualEvidence', traits: {"smithy.api#documentation" => "<p> Manual evidence that can't be collected automatically by Audit Manager. </p>"}))
    BatchImportEvidenceToAssessmentControlError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p> The error code that the <code>BatchImportEvidenceToAssessmentControl</code> API\n         returned. </p>"}))
    BatchImportEvidenceToAssessmentControlError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p> The error message that the <code>BatchImportEvidenceToAssessmentControl</code> API\n         returned. </p>"}))
    BatchImportEvidenceToAssessmentControlError.type = Types::BatchImportEvidenceToAssessmentControlError
    BatchImportEvidenceToAssessmentControlErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchImportEvidenceToAssessmentControlError)
    BatchImportEvidenceToAssessmentControlRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The identifier for the assessment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchImportEvidenceToAssessmentControlRequest.add_member(:control_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetId, location_name: 'controlSetId', traits: {"smithy.api#documentation" => "<p> The identifier for the control set. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchImportEvidenceToAssessmentControlRequest.add_member(:control_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'controlId', traits: {"smithy.api#documentation" => "<p> The identifier for the control. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchImportEvidenceToAssessmentControlRequest.add_member(:manual_evidence, Smithy::Schema::Shapes::ShapeRef.new(shape: ManualEvidenceList, location_name: 'manualEvidence', traits: {"smithy.api#documentation" => "<p> The list of manual evidence objects. </p>", "smithy.api#required" => {}}))
    BatchImportEvidenceToAssessmentControlRequest.type = Types::BatchImportEvidenceToAssessmentControlRequest
    BatchImportEvidenceToAssessmentControlResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchImportEvidenceToAssessmentControlErrors, location_name: 'errors', traits: {"smithy.api#documentation" => "<p> A list of errors that the <code>BatchImportEvidenceToAssessmentControl</code> API\n         returned. </p>"}))
    BatchImportEvidenceToAssessmentControlResponse.type = Types::BatchImportEvidenceToAssessmentControlResponse
    ChangeLog.add_member(:object_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectTypeEnum, location_name: 'objectType', traits: {"smithy.api#documentation" => "<p> The object that was changed, such as an assessment, control, or control set. </p>"}))
    ChangeLog.add_member(:object_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'objectName', traits: {"smithy.api#documentation" => "<p> The name of the object that changed. This could be the name of an assessment, control,\n         or control set.</p>"}))
    ChangeLog.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionEnum, location_name: 'action', traits: {"smithy.api#documentation" => "<p> The action that was performed. </p>"}))
    ChangeLog.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p> The time when the action was performed and the changelog record was created. </p>"}))
    ChangeLog.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: IamArn, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p> The user or role that performed the action. </p>"}))
    ChangeLog.type = Types::ChangeLog
    ChangeLogs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeLog)
    Control.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditManagerArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the control. </p>"}))
    Control.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The unique identifier for the control. </p>"}))
    Control.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlType, location_name: 'type', traits: {"smithy.api#documentation" => "<p> Specifies whether the control is a standard control or a custom control.</p>"}))
    Control.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the control. </p>"}))
    Control.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p> The description of the control. </p>"}))
    Control.add_member(:testing_information, Smithy::Schema::Shapes::ShapeRef.new(shape: TestingInformation, location_name: 'testingInformation', traits: {"smithy.api#documentation" => "<p> The steps that you should follow to determine if the control has been satisfied.\n      </p>"}))
    Control.add_member(:action_plan_title, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPlanTitle, location_name: 'actionPlanTitle', traits: {"smithy.api#documentation" => "<p> The title of the action plan for remediating the control. </p>"}))
    Control.add_member(:action_plan_instructions, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPlanInstructions, location_name: 'actionPlanInstructions', traits: {"smithy.api#documentation" => "<p> The recommended actions to carry out if the control isn't fulfilled. </p>"}))
    Control.add_member(:control_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSources, location_name: 'controlSources', traits: {"smithy.api#documentation" => "<p> The data source types that determine where Audit Manager collects evidence from for\n         the control. </p>"}))
    Control.add_member(:control_mapping_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlMappingSources, location_name: 'controlMappingSources', traits: {"smithy.api#documentation" => "<p> The data mapping sources for the control. </p>"}))
    Control.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p> The time when the control was created. </p>"}))
    Control.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p> The time when the control was most recently updated. </p>"}))
    Control.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p> The user or role that created the control. </p>"}))
    Control.add_member(:last_updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedBy, location_name: 'lastUpdatedBy', traits: {"smithy.api#documentation" => "<p> The user or role that most recently updated the control. </p>"}))
    Control.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p> The tags associated with the control. </p>"}))
    Control.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the control. The <code>END_OF_SUPPORT</code> state is applicable to\n         standard controls only. This state indicates that the standard control can still be used to\n         collect evidence, but Audit Manager is no longer updating or maintaining that\n         control.</p>"}))
    Control.type = Types::Control
    ControlComment.add_member(:author_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: 'authorName', traits: {"smithy.api#documentation" => "<p> The name of the user who authored the comment. </p>"}))
    ControlComment.add_member(:comment_body, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlCommentBody, location_name: 'commentBody', traits: {"smithy.api#documentation" => "<p> The body text of a control comment. </p>"}))
    ControlComment.add_member(:posted_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'postedDate', traits: {"smithy.api#documentation" => "<p> The time when the comment was posted. </p>"}))
    ControlComment.type = Types::ControlComment
    ControlComments.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ControlComment)
    ControlDomainInsights.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the control domain. </p>"}))
    ControlDomainInsights.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlDomainId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the control domain. Audit Manager supports the control\n         domains that are provided by Amazon Web Services Control Catalog. For information about how\n         to find a list of available control domains, see <a href=\"https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListDomains.html\">\n               <code>ListDomains</code>\n            </a> in the Amazon Web Services Control Catalog API\n         Reference.</p>"}))
    ControlDomainInsights.add_member(:controls_count_by_noncompliant_evidence, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'controlsCountByNoncompliantEvidence', traits: {"smithy.api#documentation" => "<p>The number of controls in the control domain that collected non-compliant evidence on\n         the <code>lastUpdated</code> date. </p>"}))
    ControlDomainInsights.add_member(:total_controls_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'totalControlsCount', traits: {"smithy.api#documentation" => "<p>The total number of controls in the control domain. </p>"}))
    ControlDomainInsights.add_member(:evidence_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceInsights, location_name: 'evidenceInsights', traits: {"smithy.api#documentation" => "<p>A breakdown of the compliance check status for the evidence that’s associated with the\n         control domain. </p>"}))
    ControlDomainInsights.add_member(:last_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdated', traits: {"smithy.api#documentation" => "<p>The time when the control domain insights were last updated. </p>"}))
    ControlDomainInsights.type = Types::ControlDomainInsights
    ControlDomainInsightsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ControlDomainInsights)
    ControlInsightsMetadata.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ControlInsightsMetadataItem)
    ControlInsightsMetadataByAssessment.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ControlInsightsMetadataByAssessmentItem)
    ControlInsightsMetadataByAssessmentItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the assessment control. </p>"}))
    ControlInsightsMetadataByAssessmentItem.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlDomainId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the assessment control. </p>"}))
    ControlInsightsMetadataByAssessmentItem.add_member(:evidence_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceInsights, location_name: 'evidenceInsights', traits: {"smithy.api#documentation" => "<p>A breakdown of the compliance check status for the evidence that’s associated with the\n         assessment control. </p>"}))
    ControlInsightsMetadataByAssessmentItem.add_member(:control_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'controlSetName', traits: {"smithy.api#documentation" => "<p>The name of the control set that the assessment control belongs to. </p>"}))
    ControlInsightsMetadataByAssessmentItem.add_member(:last_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdated', traits: {"smithy.api#documentation" => "<p>The time when the assessment control insights were last updated. </p>"}))
    ControlInsightsMetadataByAssessmentItem.type = Types::ControlInsightsMetadataByAssessmentItem
    ControlInsightsMetadataItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the control. </p>"}))
    ControlInsightsMetadataItem.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlDomainId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the control. </p>"}))
    ControlInsightsMetadataItem.add_member(:evidence_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceInsights, location_name: 'evidenceInsights', traits: {"smithy.api#documentation" => "<p>A breakdown of the compliance check status for the evidence that’s associated with the\n         control. </p>"}))
    ControlInsightsMetadataItem.add_member(:last_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdated', traits: {"smithy.api#documentation" => "<p>The time when the control insights were last updated. </p>"}))
    ControlInsightsMetadataItem.type = Types::ControlInsightsMetadataItem
    ControlMappingSource.add_member(:source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'sourceId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the source. </p>"}))
    ControlMappingSource.add_member(:source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceName, location_name: 'sourceName', traits: {"smithy.api#documentation" => "<p> The name of the source. </p>"}))
    ControlMappingSource.add_member(:source_description, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceDescription, location_name: 'sourceDescription', traits: {"smithy.api#documentation" => "<p> The description of the source. </p>"}))
    ControlMappingSource.add_member(:source_set_up_option, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceSetUpOption, location_name: 'sourceSetUpOption', traits: {"smithy.api#documentation" => "<p>The setup option for the data source. This option reflects if the evidence collection\n         method is automated or manual. If you don’t provide a value for\n            <code>sourceSetUpOption</code>, Audit Manager automatically infers and populates\n         the correct value based on the <code>sourceType</code> that you specify.</p>"}))
    ControlMappingSource.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'sourceType', traits: {"smithy.api#documentation" => "<p> Specifies which type of data source is used to collect evidence. </p>\n         <ul>\n            <li>\n               <p>The source can be an individual data source type, such as\n                  <code>AWS_Cloudtrail</code>, <code>AWS_Config</code>,\n                  <code>AWS_Security_Hub</code>, <code>AWS_API_Call</code>, or <code>MANUAL</code>.\n            </p>\n            </li>\n            <li>\n               <p>The source can also be a managed grouping of data sources, such as a\n                  <code>Core_Control</code> or a <code>Common_Control</code>.</p>\n            </li>\n         </ul>"}))
    ControlMappingSource.add_member(:source_keyword, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceKeyword, location_name: 'sourceKeyword'))
    ControlMappingSource.add_member(:source_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceFrequency, location_name: 'sourceFrequency', traits: {"smithy.api#documentation" => "<p>Specifies how often evidence is collected from the control mapping source. </p>"}))
    ControlMappingSource.add_member(:troubleshooting_text, Smithy::Schema::Shapes::ShapeRef.new(shape: TroubleshootingText, location_name: 'troubleshootingText', traits: {"smithy.api#documentation" => "<p> The instructions for troubleshooting the control. </p>"}))
    ControlMappingSource.type = Types::ControlMappingSource
    ControlMappingSources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ControlMappingSource)
    ControlMetadata.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditManagerArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the control. </p>"}))
    ControlMetadata.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The unique identifier for the control. </p>"}))
    ControlMetadata.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the control. </p>"}))
    ControlMetadata.add_member(:control_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSources, location_name: 'controlSources', traits: {"smithy.api#documentation" => "<p> The data source that determines where Audit Manager collects evidence from for the\n         control. </p>"}))
    ControlMetadata.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p> The time when the control was created. </p>"}))
    ControlMetadata.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p> The time when the control was most recently updated. </p>"}))
    ControlMetadata.type = Types::ControlMetadata
    ControlMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ControlMetadata)
    ControlResponse.add_member(:manual, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUAL', traits: {"smithy.api#enumValue" => "MANUAL"}))
    ControlResponse.add_member(:automate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMATE', traits: {"smithy.api#enumValue" => "AUTOMATE"}))
    ControlResponse.add_member(:defer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFER', traits: {"smithy.api#enumValue" => "DEFER"}))
    ControlResponse.add_member(:ignore, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IGNORE', traits: {"smithy.api#enumValue" => "IGNORE"}))
    ControlSet.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The identifier of the control set in the assessment. This is the control set name in a\n         plain string format. </p>"}))
    ControlSet.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the control set. </p>"}))
    ControlSet.add_member(:controls, Smithy::Schema::Shapes::ShapeRef.new(shape: Controls, location_name: 'controls', traits: {"smithy.api#documentation" => "<p> The list of controls within the control set. </p>"}))
    ControlSet.type = Types::ControlSet
    ControlSetStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ControlSetStatus.add_member(:under_review, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNDER_REVIEW', traits: {"smithy.api#enumValue" => "UNDER_REVIEW"}))
    ControlSetStatus.add_member(:reviewed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVIEWED', traits: {"smithy.api#enumValue" => "REVIEWED"}))
    ControlSets.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSet)
    ControlState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ControlState.add_member(:end_of_support, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'END_OF_SUPPORT', traits: {"smithy.api#enumValue" => "END_OF_SUPPORT"}))
    ControlStatus.add_member(:under_review, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNDER_REVIEW', traits: {"smithy.api#enumValue" => "UNDER_REVIEW"}))
    ControlStatus.add_member(:reviewed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVIEWED', traits: {"smithy.api#enumValue" => "REVIEWED"}))
    ControlStatus.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    ControlType.add_member(:standard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "Standard"}))
    ControlType.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "Custom"}))
    ControlType.add_member(:core, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CORE', traits: {"smithy.api#enumValue" => "Core"}))
    Controls.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Control)
    CreateAssessmentFrameworkControl.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The unique identifier of the control. </p>", "smithy.api#required" => {}}))
    CreateAssessmentFrameworkControl.type = Types::CreateAssessmentFrameworkControl
    CreateAssessmentFrameworkControlSet.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the control set. </p>", "smithy.api#required" => {}}))
    CreateAssessmentFrameworkControlSet.add_member(:controls, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentFrameworkControls, location_name: 'controls', traits: {"smithy.api#documentation" => "<p> The list of controls within the control set. This doesn't contain the control set ID.\n      </p>"}))
    CreateAssessmentFrameworkControlSet.type = Types::CreateAssessmentFrameworkControlSet
    CreateAssessmentFrameworkControlSets.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentFrameworkControlSet)
    CreateAssessmentFrameworkControls.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentFrameworkControl)
    CreateAssessmentFrameworkRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the new custom framework. </p>", "smithy.api#required" => {}}))
    CreateAssessmentFrameworkRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p> An optional description for the new custom framework. </p>"}))
    CreateAssessmentFrameworkRequest.add_member(:compliance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComplianceType, location_name: 'complianceType', traits: {"smithy.api#documentation" => "<p> The compliance type that the new custom framework supports, such as CIS or HIPAA.\n      </p>"}))
    CreateAssessmentFrameworkRequest.add_member(:control_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentFrameworkControlSets, location_name: 'controlSets', traits: {"smithy.api#documentation" => "<p> The control sets that are associated with the framework. </p>\n         <note>\n            <p>The <code>Controls</code> object returns a partial response when called through Framework\n            APIs. For a complete <code>Controls</code> object, use <code>GetControl</code>.</p>\n         </note>", "smithy.api#required" => {}}))
    CreateAssessmentFrameworkRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p> The tags that are associated with the framework. </p>"}))
    CreateAssessmentFrameworkRequest.type = Types::CreateAssessmentFrameworkRequest
    CreateAssessmentFrameworkResponse.add_member(:framework, Smithy::Schema::Shapes::ShapeRef.new(shape: Framework, location_name: 'framework', traits: {"smithy.api#documentation" => "<p> The new framework object that the <code>CreateAssessmentFramework</code> API returned. </p>"}))
    CreateAssessmentFrameworkResponse.type = Types::CreateAssessmentFrameworkResponse
    CreateAssessmentReportRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the new assessment report. </p>", "smithy.api#required" => {}}))
    CreateAssessmentReportRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p> The description of the assessment report. </p>"}))
    CreateAssessmentReportRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The identifier for the assessment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAssessmentReportRequest.add_member(:query_statement, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStatement, location_name: 'queryStatement', traits: {"smithy.api#documentation" => "<p>A SQL statement that represents an evidence finder query.</p>\n         <p>Provide this parameter when you want to generate an assessment report from the results\n         of an evidence finder search query. When you use this parameter, Audit Manager\n         generates a one-time report using only the evidence from the query output. This report does\n         not include any assessment evidence that was manually <a href=\"https://docs.aws.amazon.com/audit-manager/latest/userguide/generate-assessment-report.html#generate-assessment-report-include-evidence\">added to a report using the console</a>, or <a href=\"https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_BatchAssociateAssessmentReportEvidence.html\">associated with a report using the API</a>. </p>\n         <p>To use this parameter, the <a href=\"https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_EvidenceFinderEnablement.html#auditmanager-Type-EvidenceFinderEnablement-enablementStatus\">enablementStatus</a> of evidence finder must be <code>ENABLED</code>. </p>\n         <p> For examples and help resolving <code>queryStatement</code> validation exceptions, see\n            <a href=\"https://docs.aws.amazon.com/audit-manager/latest/userguide/evidence-finder-issues.html#querystatement-exceptions\">Troubleshooting evidence finder issues</a> in the\n               <i>Audit Manager User Guide.</i>\n         </p>"}))
    CreateAssessmentReportRequest.type = Types::CreateAssessmentReportRequest
    CreateAssessmentReportResponse.add_member(:assessment_report, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReport, location_name: 'assessmentReport', traits: {"smithy.api#documentation" => "<p> The new assessment report that the <code>CreateAssessmentReport</code> API returned.\n      </p>"}))
    CreateAssessmentReportResponse.type = Types::CreateAssessmentReportResponse
    CreateAssessmentRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the assessment to be created. </p>", "smithy.api#required" => {}}))
    CreateAssessmentRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p> The optional description of the assessment to be created. </p>"}))
    CreateAssessmentRequest.add_member(:assessment_reports_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportsDestination, location_name: 'assessmentReportsDestination', traits: {"smithy.api#documentation" => "<p> The assessment report storage destination for the assessment that's being created.\n      </p>", "smithy.api#required" => {}}))
    CreateAssessmentRequest.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: Scope, location_name: 'scope', traits: {"smithy.api#required" => {}}))
    CreateAssessmentRequest.add_member(:roles, Smithy::Schema::Shapes::ShapeRef.new(shape: Roles, location_name: 'roles', traits: {"smithy.api#documentation" => "<p> The list of roles for the assessment. </p>", "smithy.api#required" => {}}))
    CreateAssessmentRequest.add_member(:framework_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'frameworkId', traits: {"smithy.api#documentation" => "<p> The identifier for the framework that the assessment will be created from. </p>", "smithy.api#required" => {}}))
    CreateAssessmentRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p> The tags that are associated with the assessment. </p>"}))
    CreateAssessmentRequest.type = Types::CreateAssessmentRequest
    CreateAssessmentResponse.add_member(:assessment, Smithy::Schema::Shapes::ShapeRef.new(shape: Assessment, location_name: 'assessment'))
    CreateAssessmentResponse.type = Types::CreateAssessmentResponse
    CreateControlMappingSource.add_member(:source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceName, location_name: 'sourceName', traits: {"smithy.api#documentation" => "<p> The name of the control mapping data source. </p>"}))
    CreateControlMappingSource.add_member(:source_description, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceDescription, location_name: 'sourceDescription', traits: {"smithy.api#documentation" => "<p> The description of the data source that determines where Audit Manager collects\n         evidence from for the control. </p>"}))
    CreateControlMappingSource.add_member(:source_set_up_option, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceSetUpOption, location_name: 'sourceSetUpOption', traits: {"smithy.api#documentation" => "<p>The setup option for the data source. This option reflects if the evidence collection\n         method is automated or manual. If you don’t provide a value for\n            <code>sourceSetUpOption</code>, Audit Manager automatically infers and populates\n         the correct value based on the <code>sourceType</code> that you specify.</p>"}))
    CreateControlMappingSource.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'sourceType', traits: {"smithy.api#documentation" => "<p> Specifies which type of data source is used to collect evidence. </p>\n         <ul>\n            <li>\n               <p>The source can be an individual data source type, such as\n                  <code>AWS_Cloudtrail</code>, <code>AWS_Config</code>,\n                  <code>AWS_Security_Hub</code>, <code>AWS_API_Call</code>, or <code>MANUAL</code>.\n            </p>\n            </li>\n            <li>\n               <p>The source can also be a managed grouping of data sources, such as a\n                  <code>Core_Control</code> or a <code>Common_Control</code>.</p>\n            </li>\n         </ul>"}))
    CreateControlMappingSource.add_member(:source_keyword, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceKeyword, location_name: 'sourceKeyword'))
    CreateControlMappingSource.add_member(:source_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceFrequency, location_name: 'sourceFrequency', traits: {"smithy.api#documentation" => "<p>Specifies how often evidence is collected from the control mapping source. </p>"}))
    CreateControlMappingSource.add_member(:troubleshooting_text, Smithy::Schema::Shapes::ShapeRef.new(shape: TroubleshootingText, location_name: 'troubleshootingText', traits: {"smithy.api#documentation" => "<p> The instructions for troubleshooting the control. </p>"}))
    CreateControlMappingSource.type = Types::CreateControlMappingSource
    CreateControlMappingSources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateControlMappingSource)
    CreateControlRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the control. </p>", "smithy.api#required" => {}}))
    CreateControlRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p> The description of the control. </p>"}))
    CreateControlRequest.add_member(:testing_information, Smithy::Schema::Shapes::ShapeRef.new(shape: TestingInformation, location_name: 'testingInformation', traits: {"smithy.api#documentation" => "<p> The steps to follow to determine if the control is satisfied. </p>"}))
    CreateControlRequest.add_member(:action_plan_title, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPlanTitle, location_name: 'actionPlanTitle', traits: {"smithy.api#documentation" => "<p> The title of the action plan for remediating the control. </p>"}))
    CreateControlRequest.add_member(:action_plan_instructions, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPlanInstructions, location_name: 'actionPlanInstructions', traits: {"smithy.api#documentation" => "<p> The recommended actions to carry out if the control isn't fulfilled. </p>"}))
    CreateControlRequest.add_member(:control_mapping_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateControlMappingSources, location_name: 'controlMappingSources', traits: {"smithy.api#documentation" => "<p> The data mapping sources for the control. </p>", "smithy.api#required" => {}}))
    CreateControlRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p> The tags that are associated with the control. </p>"}))
    CreateControlRequest.type = Types::CreateControlRequest
    CreateControlResponse.add_member(:control, Smithy::Schema::Shapes::ShapeRef.new(shape: Control, location_name: 'control', traits: {"smithy.api#documentation" => "<p> The new control that the <code>CreateControl</code> API returned. </p>"}))
    CreateControlResponse.type = Types::CreateControlResponse
    CreateDelegationRequest.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationComment, location_name: 'comment', traits: {"smithy.api#documentation" => "<p> A comment that's related to the delegation request. </p>"}))
    CreateDelegationRequest.add_member(:control_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetId, location_name: 'controlSetId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the control set. </p>"}))
    CreateDelegationRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the IAM role. </p>"}))
    CreateDelegationRequest.add_member(:role_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleType, location_name: 'roleType', traits: {"smithy.api#documentation" => "<p> The type of customer persona. </p>\n         <note>\n            <p>In <code>CreateAssessment</code>, <code>roleType</code> can only be\n               <code>PROCESS_OWNER</code>. </p>\n            <p>In <code>UpdateSettings</code>, <code>roleType</code> can only be\n               <code>PROCESS_OWNER</code>.</p>\n            <p>In <code>BatchCreateDelegationByAssessment</code>, <code>roleType</code> can only be\n               <code>RESOURCE_OWNER</code>.</p>\n         </note>"}))
    CreateDelegationRequest.type = Types::CreateDelegationRequest
    CreateDelegationRequests.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDelegationRequest)
    DataSourceType.add_member(:aws_cloudtrail, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_CLOUDTRAIL', traits: {"smithy.api#enumValue" => "AWS_Cloudtrail"}))
    DataSourceType.add_member(:aws_config, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_CONFIG', traits: {"smithy.api#enumValue" => "AWS_Config"}))
    DataSourceType.add_member(:aws_security_hub, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SECURITY_HUB', traits: {"smithy.api#enumValue" => "AWS_Security_Hub"}))
    DataSourceType.add_member(:aws_api_call, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_API_CALL', traits: {"smithy.api#enumValue" => "AWS_API_Call"}))
    DataSourceType.add_member(:manual, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUAL', traits: {"smithy.api#enumValue" => "MANUAL"}))
    DefaultExportDestination.add_member(:destination_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDestinationType, location_name: 'destinationType', traits: {"smithy.api#documentation" => "<p>The destination type, such as Amazon S3.</p>"}))
    DefaultExportDestination.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The destination bucket where Audit Manager stores exported files.</p>"}))
    DefaultExportDestination.type = Types::DefaultExportDestination
    Delegation.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The unique identifier for the delegation. </p>"}))
    Delegation.add_member(:assessment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentName, location_name: 'assessmentName', traits: {"smithy.api#documentation" => "<p> The name of the assessment that's associated with the delegation. </p>"}))
    Delegation.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The identifier for the assessment that's associated with the delegation. </p>"}))
    Delegation.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The status of the delegation. </p>"}))
    Delegation.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the IAM role. </p>"}))
    Delegation.add_member(:role_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleType, location_name: 'roleType', traits: {"smithy.api#documentation" => "<p> The type of customer persona. </p>\n         <note>\n            <p>In <code>CreateAssessment</code>, <code>roleType</code> can only be\n               <code>PROCESS_OWNER</code>. </p>\n            <p>In <code>UpdateSettings</code>, <code>roleType</code> can only be\n               <code>PROCESS_OWNER</code>.</p>\n            <p>In <code>BatchCreateDelegationByAssessment</code>, <code>roleType</code> can only be\n               <code>RESOURCE_OWNER</code>.</p>\n         </note>"}))
    Delegation.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p> Specifies when the delegation was created. </p>"}))
    Delegation.add_member(:last_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdated', traits: {"smithy.api#documentation" => "<p> Specifies when the delegation was last updated. </p>"}))
    Delegation.add_member(:control_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetId, location_name: 'controlSetId', traits: {"smithy.api#documentation" => "<p> The identifier for the control set that's associated with the delegation. </p>"}))
    Delegation.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationComment, location_name: 'comment', traits: {"smithy.api#documentation" => "<p> The comment that's related to the delegation. </p>"}))
    Delegation.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p> The user or role that created the delegation. </p>"}))
    Delegation.type = Types::Delegation
    DelegationIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UUID)
    DelegationMetadata.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The unique identifier for the delegation. </p>"}))
    DelegationMetadata.add_member(:assessment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentName, location_name: 'assessmentName', traits: {"smithy.api#documentation" => "<p> The name of the associated assessment. </p>"}))
    DelegationMetadata.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the assessment. </p>"}))
    DelegationMetadata.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The current status of the delegation. </p>"}))
    DelegationMetadata.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the IAM role. </p>"}))
    DelegationMetadata.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p> Specifies when the delegation was created. </p>"}))
    DelegationMetadata.add_member(:control_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'controlSetName', traits: {"smithy.api#documentation" => "<p> Specifies the name of the control set that was delegated for review. </p>"}))
    DelegationMetadata.type = Types::DelegationMetadata
    DelegationMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationMetadata)
    DelegationStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DelegationStatus.add_member(:under_review, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNDER_REVIEW', traits: {"smithy.api#enumValue" => "UNDER_REVIEW"}))
    DelegationStatus.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    Delegations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Delegation)
    DeleteAssessmentFrameworkRequest.add_member(:framework_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'frameworkId', traits: {"smithy.api#documentation" => "<p> The identifier for the custom framework. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssessmentFrameworkRequest.type = Types::DeleteAssessmentFrameworkRequest
    DeleteAssessmentFrameworkResponse.type = Types::DeleteAssessmentFrameworkResponse
    DeleteAssessmentFrameworkShareRequest.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'requestId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the share request to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssessmentFrameworkShareRequest.add_member(:request_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareRequestType, location_name: 'requestType', traits: {"smithy.api#documentation" => "<p>Specifies whether the share request is a sent request or a received request.</p>", "smithy.api#httpQuery" => "requestType", "smithy.api#required" => {}}))
    DeleteAssessmentFrameworkShareRequest.type = Types::DeleteAssessmentFrameworkShareRequest
    DeleteAssessmentFrameworkShareResponse.type = Types::DeleteAssessmentFrameworkShareResponse
    DeleteAssessmentReportRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the assessment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssessmentReportRequest.add_member(:assessment_report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentReportId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the assessment report. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssessmentReportRequest.type = Types::DeleteAssessmentReportRequest
    DeleteAssessmentReportResponse.type = Types::DeleteAssessmentReportResponse
    DeleteAssessmentRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The identifier for the assessment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssessmentRequest.type = Types::DeleteAssessmentRequest
    DeleteAssessmentResponse.type = Types::DeleteAssessmentResponse
    DeleteControlRequest.add_member(:control_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'controlId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the control. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteControlRequest.type = Types::DeleteControlRequest
    DeleteControlResponse.type = Types::DeleteControlResponse
    DeleteResources.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    DeleteResources.add_member(:default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "DEFAULT"}))
    DeregisterAccountRequest.type = Types::DeregisterAccountRequest
    DeregisterAccountResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The registration status of the account. </p>"}))
    DeregisterAccountResponse.type = Types::DeregisterAccountResponse
    DeregisterOrganizationAdminAccountRequest.add_member(:admin_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'adminAccountId', traits: {"smithy.api#documentation" => "<p> The identifier for the administrator account. </p>"}))
    DeregisterOrganizationAdminAccountRequest.type = Types::DeregisterOrganizationAdminAccountRequest
    DeregisterOrganizationAdminAccountResponse.type = Types::DeregisterOrganizationAdminAccountResponse
    DeregistrationPolicy.add_member(:delete_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResources, location_name: 'deleteResources', traits: {"smithy.api#documentation" => "<p>Specifies which Audit Manager data will be deleted when you deregister Audit Manager.</p>\n         <ul>\n            <li>\n               <p>If you set the value to <code>ALL</code>, all of your data is deleted within seven\n               days of deregistration.</p>\n            </li>\n            <li>\n               <p>If you set the value to <code>DEFAULT</code>, none of your data is deleted at the\n               time of deregistration. However, keep in mind that the Audit Manager data\n               retention policy still applies. As a result, any evidence data will be deleted two\n               years after its creation date. Your other Audit Manager resources will continue\n               to exist indefinitely.</p>\n            </li>\n         </ul>"}))
    DeregistrationPolicy.type = Types::DeregistrationPolicy
    DisassociateAssessmentReportEvidenceFolderRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the assessment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateAssessmentReportEvidenceFolderRequest.add_member(:evidence_folder_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'evidenceFolderId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the folder that the evidence is stored in. </p>", "smithy.api#required" => {}}))
    DisassociateAssessmentReportEvidenceFolderRequest.type = Types::DisassociateAssessmentReportEvidenceFolderRequest
    DisassociateAssessmentReportEvidenceFolderResponse.type = Types::DisassociateAssessmentReportEvidenceFolderResponse
    Evidence.add_member(:data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'dataSource', traits: {"smithy.api#documentation" => "<p> The data source where the evidence was collected from. </p>"}))
    Evidence.add_member(:evidence_aws_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'evidenceAwsAccountId', traits: {"smithy.api#documentation" => "<p> The identifier for the Amazon Web Services account. </p>"}))
    Evidence.add_member(:time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'time', traits: {"smithy.api#documentation" => "<p> The timestamp that represents when the evidence was collected. </p>"}))
    Evidence.add_member(:event_source, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceName, location_name: 'eventSource', traits: {"smithy.api#documentation" => "<p> The Amazon Web Services service that the evidence is collected from. </p>"}))
    Evidence.add_member(:event_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventName, location_name: 'eventName', traits: {"smithy.api#documentation" => "<p> The name of the evidence event. </p>"}))
    Evidence.add_member(:evidence_by_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'evidenceByType', traits: {"smithy.api#documentation" => "<p> The type of automated evidence. </p>"}))
    Evidence.add_member(:resources_included, Smithy::Schema::Shapes::ShapeRef.new(shape: Resources, location_name: 'resourcesIncluded', traits: {"smithy.api#documentation" => "<p> The list of resources that are assessed to generate the evidence. </p>"}))
    Evidence.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceAttributes, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p> The names and values that are used by the evidence event. This includes an attribute\n         name (such as <code>allowUsersToChangePassword</code>) and value (such as <code>true</code>\n         or <code>false</code>). </p>"}))
    Evidence.add_member(:iam_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IamArn, location_name: 'iamId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the user or role that's associated with\n         the evidence. </p>"}))
    Evidence.add_member(:compliance_check, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'complianceCheck', traits: {"smithy.api#documentation" => "<p>The evaluation status for automated evidence that falls under the compliance check\n         category.</p>\n         <ul>\n            <li>\n               <p>Audit Manager classes evidence as non-compliant if Security Hub reports a\n                  <i>Fail</i> result, or if Config reports a\n                  <i>Non-compliant</i> result.</p>\n            </li>\n            <li>\n               <p>Audit Manager classes evidence as compliant if Security Hub reports a\n                  <i>Pass</i> result, or if Config reports a\n                  <i>Compliant</i> result.</p>\n            </li>\n            <li>\n               <p>If a compliance check isn't available or applicable, then no compliance evaluation can be made\n               for that evidence. This is the case if the evidence uses Config or\n                  Security Hub as the underlying data source type, but those services aren't\n               enabled. This is also the case if the evidence uses an underlying data source type\n               that doesn't support compliance checks (such as manual evidence, Amazon Web Services\n               API calls, or CloudTrail). </p>\n            </li>\n         </ul>"}))
    Evidence.add_member(:aws_organization, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'awsOrganization', traits: {"smithy.api#documentation" => "<p> The Amazon Web Services account that the evidence is collected from, and its\n         organization path. </p>"}))
    Evidence.add_member(:aws_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'awsAccountId', traits: {"smithy.api#documentation" => "<p> The identifier for the Amazon Web Services account. </p>"}))
    Evidence.add_member(:evidence_folder_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'evidenceFolderId', traits: {"smithy.api#documentation" => "<p> The identifier for the folder that the evidence is stored in. </p>"}))
    Evidence.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The identifier for the evidence. </p>"}))
    Evidence.add_member(:assessment_report_selection, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'assessmentReportSelection', traits: {"smithy.api#documentation" => "<p> Specifies whether the evidence is included in the assessment report. </p>"}))
    Evidence.type = Types::Evidence
    EvidenceAttributes.key = Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceAttributeKey)
    EvidenceAttributes.value = Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceAttributeValue)
    EvidenceFinderBackfillStatus.add_member(:not_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_STARTED', traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    EvidenceFinderBackfillStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    EvidenceFinderBackfillStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    EvidenceFinderEnablement.add_member(:event_data_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailArn, location_name: 'eventDataStoreArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the CloudTrail Lake event data store that’s\n         used by evidence finder. The event data store is the lake of evidence data that evidence\n         finder runs queries against.</p>"}))
    EvidenceFinderEnablement.add_member(:enablement_status, Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceFinderEnablementStatus, location_name: 'enablementStatus', traits: {"smithy.api#documentation" => "<p>The current status of the evidence finder feature and the related event data store. </p>\n         <ul>\n            <li>\n               <p>\n                  <code>ENABLE_IN_PROGRESS</code> means that you requested to enable evidence\n               finder. An event data store is currently being created to support evidence finder\n               queries.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ENABLED</code> means that an event data store was successfully created and\n               evidence finder is enabled. We recommend that you wait 7 days until the event data\n               store is backfilled with your past two years’ worth of evidence data. You can use\n               evidence finder in the meantime, but not all data might be available until the\n               backfill is complete.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLE_IN_PROGRESS</code> means that you requested to disable evidence finder, and your\n               request is pending the deletion of the event data store.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> means that you have permanently disabled evidence finder and the event\n               data store has been deleted. You can't re-enable evidence finder after this\n               point.</p>\n            </li>\n         </ul>"}))
    EvidenceFinderEnablement.add_member(:backfill_status, Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceFinderBackfillStatus, location_name: 'backfillStatus', traits: {"smithy.api#documentation" => "<p>The current status of the evidence data backfill process. </p>\n         <p>The backfill starts after you enable evidence finder. During this task, Audit Manager populates an event data store with your past two years’ worth of evidence data so that\n         your evidence can be queried.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>NOT_STARTED</code> means that the backfill hasn’t started yet. </p>\n            </li>\n            <li>\n               <p>\n                  <code>IN_PROGRESS</code> means that the backfill is in progress. This can take up\n               to 7 days to complete, depending on the amount of evidence data. </p>\n            </li>\n            <li>\n               <p>\n                  <code>COMPLETED</code> means that the backfill is complete. All of your past\n               evidence is now queryable. </p>\n            </li>\n         </ul>"}))
    EvidenceFinderEnablement.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'error', traits: {"smithy.api#documentation" => "<p>Represents any errors that occurred when enabling or disabling evidence finder. </p>"}))
    EvidenceFinderEnablement.type = Types::EvidenceFinderEnablement
    EvidenceFinderEnablementStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    EvidenceFinderEnablementStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    EvidenceFinderEnablementStatus.add_member(:enable_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "ENABLE_IN_PROGRESS"}))
    EvidenceFinderEnablementStatus.add_member(:disable_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DISABLE_IN_PROGRESS"}))
    EvidenceIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UUID)
    EvidenceInsights.add_member(:noncompliant_evidence_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'noncompliantEvidenceCount', traits: {"smithy.api#documentation" => "<p>The number of compliance check evidence that Audit Manager classified as\n         non-compliant. This includes evidence that was collected from Security Hub with a\n            <i>Fail</i> ruling, or collected from Config with a\n            <i>Non-compliant</i> ruling. </p>"}))
    EvidenceInsights.add_member(:compliant_evidence_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'compliantEvidenceCount', traits: {"smithy.api#documentation" => "<p>The number of compliance check evidence that Audit Manager classified as compliant.\n         This includes evidence that was collected from Security Hub with a\n            <i>Pass</i> ruling, or collected from Config with a\n            <i>Compliant</i> ruling. </p>"}))
    EvidenceInsights.add_member(:inconclusive_evidence_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'inconclusiveEvidenceCount', traits: {"smithy.api#documentation" => "<p>The number of evidence that a compliance check ruling isn't available for. Evidence is\n         inconclusive when the associated control uses Security Hub or Config as a data source but you didn't enable those services. This is also the case when a\n         control uses a data source that doesn’t support compliance checks (for example, manual\n         evidence, API calls, or CloudTrail). </p>\n         <note>\n            <p>If evidence has a compliance check status of <i>not applicable</i> in\n            the console, it's classified as <i>inconclusive</i> in\n               <code>EvidenceInsights</code> data.</p>\n         </note>"}))
    EvidenceInsights.type = Types::EvidenceInsights
    EvidenceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Evidence)
    EvidenceSources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ExportDestinationType.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "S3"}))
    Framework.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditManagerArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the framework. </p>"}))
    Framework.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The unique identifier for the framework. </p>"}))
    Framework.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the framework. </p>"}))
    Framework.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkType, location_name: 'type', traits: {"smithy.api#documentation" => "<p> Specifies whether the framework is a standard framework or a custom framework.</p>"}))
    Framework.add_member(:compliance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComplianceType, location_name: 'complianceType', traits: {"smithy.api#documentation" => "<p> The compliance type that the framework supports, such as CIS or HIPAA. </p>"}))
    Framework.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p> The description of the framework. </p>"}))
    Framework.add_member(:logo, Smithy::Schema::Shapes::ShapeRef.new(shape: Filename, location_name: 'logo', traits: {"smithy.api#documentation" => "<p> The logo that's associated with the framework. </p>"}))
    Framework.add_member(:control_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSources, location_name: 'controlSources', traits: {"smithy.api#deprecated" => {"since" => "2025-07-24", "message" => "Use controlSources from the Control"}, "smithy.api#documentation" => "<p> The control data sources where Audit Manager collects evidence from.</p>\n         <important>\n            <p>This API parameter is no longer supported.</p>\n         </important>"}))
    Framework.add_member(:control_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSets, location_name: 'controlSets', traits: {"smithy.api#documentation" => "<p> The control sets that are associated with the framework. </p>\n         <note>\n            <p>The <code>Controls</code> object returns a partial response when called through\n            Framework APIs. For a complete <code>Controls</code> object, use\n            <code>GetControl</code>.</p>\n         </note>"}))
    Framework.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p> The time when the framework was created. </p>"}))
    Framework.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p> The time when the framework was most recently updated. </p>"}))
    Framework.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p> The user or role that created the framework. </p>"}))
    Framework.add_member(:last_updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedBy, location_name: 'lastUpdatedBy', traits: {"smithy.api#documentation" => "<p> The user or role that most recently updated the framework. </p>"}))
    Framework.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p> The tags that are associated with the framework. </p>"}))
    Framework.type = Types::Framework
    FrameworkMetadata.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the framework. </p>"}))
    FrameworkMetadata.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentFrameworkDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p> The description of the framework. </p>"}))
    FrameworkMetadata.add_member(:logo, Smithy::Schema::Shapes::ShapeRef.new(shape: Filename, location_name: 'logo', traits: {"smithy.api#documentation" => "<p> The logo that's associated with the framework. </p>"}))
    FrameworkMetadata.add_member(:compliance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComplianceType, location_name: 'complianceType', traits: {"smithy.api#documentation" => "<p> The compliance standard that's associated with the framework. For example, this could\n         be PCI DSS or HIPAA. </p>"}))
    FrameworkMetadata.type = Types::FrameworkMetadata
    FrameworkMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentFrameworkMetadata)
    FrameworkType.add_member(:standard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "Standard"}))
    FrameworkType.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "Custom"}))
    GetAccountStatusRequest.type = Types::GetAccountStatusRequest
    GetAccountStatusResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The status of the Amazon Web Services account. </p>"}))
    GetAccountStatusResponse.type = Types::GetAccountStatusResponse
    GetAssessmentFrameworkRequest.add_member(:framework_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'frameworkId', traits: {"smithy.api#documentation" => "<p> The identifier for the framework. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssessmentFrameworkRequest.type = Types::GetAssessmentFrameworkRequest
    GetAssessmentFrameworkResponse.add_member(:framework, Smithy::Schema::Shapes::ShapeRef.new(shape: Framework, location_name: 'framework', traits: {"smithy.api#documentation" => "<p> The framework that the <code>GetAssessmentFramework</code> API returned. </p>\n         <note>\n            <p>The <code>Controls</code> object returns a partial response when called through\n            Framework APIs. For a complete <code>Controls</code> object, use\n            <code>GetControl</code>.</p>\n         </note>"}))
    GetAssessmentFrameworkResponse.type = Types::GetAssessmentFrameworkResponse
    GetAssessmentReportUrlRequest.add_member(:assessment_report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentReportId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the assessment report. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssessmentReportUrlRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the assessment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssessmentReportUrlRequest.type = Types::GetAssessmentReportUrlRequest
    GetAssessmentReportUrlResponse.add_member(:pre_signed_url, Smithy::Schema::Shapes::ShapeRef.new(shape: URL, location_name: 'preSignedUrl'))
    GetAssessmentReportUrlResponse.type = Types::GetAssessmentReportUrlResponse
    GetAssessmentRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the assessment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssessmentRequest.type = Types::GetAssessmentRequest
    GetAssessmentResponse.add_member(:assessment, Smithy::Schema::Shapes::ShapeRef.new(shape: Assessment, location_name: 'assessment'))
    GetAssessmentResponse.add_member(:user_role, Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'userRole'))
    GetAssessmentResponse.type = Types::GetAssessmentResponse
    GetChangeLogsRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the assessment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChangeLogsRequest.add_member(:control_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetId, location_name: 'controlSetId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the control set. </p>", "smithy.api#httpQuery" => "controlSetId"}))
    GetChangeLogsRequest.add_member(:control_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'controlId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the control. </p>", "smithy.api#httpQuery" => "controlId"}))
    GetChangeLogsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The pagination token that's used to fetch the next set of results. </p>", "smithy.api#httpQuery" => "nextToken"}))
    GetChangeLogsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Represents the maximum number of results on a page or for an API request call. </p>", "smithy.api#httpQuery" => "maxResults"}))
    GetChangeLogsRequest.type = Types::GetChangeLogsRequest
    GetChangeLogsResponse.add_member(:change_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeLogs, location_name: 'changeLogs', traits: {"smithy.api#documentation" => "<p>The list of user activity for the control. </p>"}))
    GetChangeLogsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results. </p>"}))
    GetChangeLogsResponse.type = Types::GetChangeLogsResponse
    GetControlRequest.add_member(:control_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'controlId', traits: {"smithy.api#documentation" => "<p> The identifier for the control. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetControlRequest.type = Types::GetControlRequest
    GetControlResponse.add_member(:control, Smithy::Schema::Shapes::ShapeRef.new(shape: Control, location_name: 'control', traits: {"smithy.api#documentation" => "<p> The details of the control that the <code>GetControl</code> API returned. </p>"}))
    GetControlResponse.type = Types::GetControlResponse
    GetDelegationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The pagination token that's used to fetch the next set of results. </p>", "smithy.api#httpQuery" => "nextToken"}))
    GetDelegationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p> Represents the maximum number of results on a page or for an API request call. </p>", "smithy.api#httpQuery" => "maxResults"}))
    GetDelegationsRequest.type = Types::GetDelegationsRequest
    GetDelegationsResponse.add_member(:delegations, Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationMetadataList, location_name: 'delegations', traits: {"smithy.api#documentation" => "<p> The list of delegations that the <code>GetDelegations</code> API returned. </p>"}))
    GetDelegationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The pagination token that's used to fetch the next set of results. </p>"}))
    GetDelegationsResponse.type = Types::GetDelegationsResponse
    GetEvidenceByEvidenceFolderRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The identifier for the assessment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceByEvidenceFolderRequest.add_member(:control_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetId, location_name: 'controlSetId', traits: {"smithy.api#documentation" => "<p> The identifier for the control set. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceByEvidenceFolderRequest.add_member(:evidence_folder_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'evidenceFolderId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the folder that the evidence is stored in. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceByEvidenceFolderRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The pagination token that's used to fetch the next set of results. </p>", "smithy.api#httpQuery" => "nextToken"}))
    GetEvidenceByEvidenceFolderRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p> Represents the maximum number of results on a page or for an API request call. </p>", "smithy.api#httpQuery" => "maxResults"}))
    GetEvidenceByEvidenceFolderRequest.type = Types::GetEvidenceByEvidenceFolderRequest
    GetEvidenceByEvidenceFolderResponse.add_member(:evidence, Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceList, location_name: 'evidence', traits: {"smithy.api#documentation" => "<p> The list of evidence that the <code>GetEvidenceByEvidenceFolder</code> API returned.\n      </p>"}))
    GetEvidenceByEvidenceFolderResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The pagination token that's used to fetch the next set of results. </p>"}))
    GetEvidenceByEvidenceFolderResponse.type = Types::GetEvidenceByEvidenceFolderResponse
    GetEvidenceFileUploadUrlRequest.add_member(:file_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ManualEvidenceLocalFileName, location_name: 'fileName', traits: {"smithy.api#documentation" => "<p>The file that you want to upload. For a list of supported file formats, see <a href=\"https://docs.aws.amazon.com/audit-manager/latest/userguide/upload-evidence.html#supported-manual-evidence-files\">Supported file types for manual evidence</a> in the <i>Audit Manager\n            User Guide</i>.</p>", "smithy.api#httpQuery" => "fileName", "smithy.api#required" => {}}))
    GetEvidenceFileUploadUrlRequest.type = Types::GetEvidenceFileUploadUrlRequest
    GetEvidenceFileUploadUrlResponse.add_member(:evidence_file_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'evidenceFileName', traits: {"smithy.api#documentation" => "<p>The name of the uploaded manual evidence file that the presigned URL was generated\n         for.</p>"}))
    GetEvidenceFileUploadUrlResponse.add_member(:upload_url, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'uploadUrl', traits: {"smithy.api#documentation" => "<p>The presigned URL that was generated.</p>"}))
    GetEvidenceFileUploadUrlResponse.type = Types::GetEvidenceFileUploadUrlResponse
    GetEvidenceFolderRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the assessment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceFolderRequest.add_member(:control_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetId, location_name: 'controlSetId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the control set. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceFolderRequest.add_member(:evidence_folder_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'evidenceFolderId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the folder that the evidence is stored in. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceFolderRequest.type = Types::GetEvidenceFolderRequest
    GetEvidenceFolderResponse.add_member(:evidence_folder, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentEvidenceFolder, location_name: 'evidenceFolder', traits: {"smithy.api#documentation" => "<p> The folder that the evidence is stored in. </p>"}))
    GetEvidenceFolderResponse.type = Types::GetEvidenceFolderResponse
    GetEvidenceFoldersByAssessmentControlRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The identifier for the assessment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceFoldersByAssessmentControlRequest.add_member(:control_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetId, location_name: 'controlSetId', traits: {"smithy.api#documentation" => "<p> The identifier for the control set. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceFoldersByAssessmentControlRequest.add_member(:control_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'controlId', traits: {"smithy.api#documentation" => "<p> The identifier for the control. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceFoldersByAssessmentControlRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The pagination token that's used to fetch the next set of results. </p>", "smithy.api#httpQuery" => "nextToken"}))
    GetEvidenceFoldersByAssessmentControlRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p> Represents the maximum number of results on a page or for an API request call. </p>", "smithy.api#httpQuery" => "maxResults"}))
    GetEvidenceFoldersByAssessmentControlRequest.type = Types::GetEvidenceFoldersByAssessmentControlRequest
    GetEvidenceFoldersByAssessmentControlResponse.add_member(:evidence_folders, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentEvidenceFolders, location_name: 'evidenceFolders', traits: {"smithy.api#documentation" => "<p> The list of evidence folders that the\n            <code>GetEvidenceFoldersByAssessmentControl</code> API returned. </p>"}))
    GetEvidenceFoldersByAssessmentControlResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The pagination token that's used to fetch the next set of results. </p>"}))
    GetEvidenceFoldersByAssessmentControlResponse.type = Types::GetEvidenceFoldersByAssessmentControlResponse
    GetEvidenceFoldersByAssessmentRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the assessment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceFoldersByAssessmentRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The pagination token that's used to fetch the next set of results. </p>", "smithy.api#httpQuery" => "nextToken"}))
    GetEvidenceFoldersByAssessmentRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p> Represents the maximum number of results on a page or for an API request call. </p>", "smithy.api#httpQuery" => "maxResults"}))
    GetEvidenceFoldersByAssessmentRequest.type = Types::GetEvidenceFoldersByAssessmentRequest
    GetEvidenceFoldersByAssessmentResponse.add_member(:evidence_folders, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentEvidenceFolders, location_name: 'evidenceFolders', traits: {"smithy.api#documentation" => "<p> The list of evidence folders that the <code>GetEvidenceFoldersByAssessment</code> API\n         returned. </p>"}))
    GetEvidenceFoldersByAssessmentResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The pagination token that's used to fetch the next set of results. </p>"}))
    GetEvidenceFoldersByAssessmentResponse.type = Types::GetEvidenceFoldersByAssessmentResponse
    GetEvidenceRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the assessment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceRequest.add_member(:control_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetId, location_name: 'controlSetId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the control set. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceRequest.add_member(:evidence_folder_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'evidenceFolderId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the folder that the evidence is stored in. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceRequest.add_member(:evidence_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'evidenceId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the evidence. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvidenceRequest.type = Types::GetEvidenceRequest
    GetEvidenceResponse.add_member(:evidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Evidence, location_name: 'evidence', traits: {"smithy.api#documentation" => "<p> The evidence that the <code>GetEvidence</code> API returned. </p>"}))
    GetEvidenceResponse.type = Types::GetEvidenceResponse
    GetInsightsByAssessmentRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the assessment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInsightsByAssessmentRequest.type = Types::GetInsightsByAssessmentRequest
    GetInsightsByAssessmentResponse.add_member(:insights, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightsByAssessment, location_name: 'insights', traits: {"smithy.api#documentation" => "<p> The assessment analytics data that the <code>GetInsightsByAssessment</code> API\n         returned. </p>"}))
    GetInsightsByAssessmentResponse.type = Types::GetInsightsByAssessmentResponse
    GetInsightsRequest.type = Types::GetInsightsRequest
    GetInsightsResponse.add_member(:insights, Smithy::Schema::Shapes::ShapeRef.new(shape: Insights, location_name: 'insights', traits: {"smithy.api#documentation" => "<p>The analytics data that the <code>GetInsights</code> API returned. </p>"}))
    GetInsightsResponse.type = Types::GetInsightsResponse
    GetOrganizationAdminAccountRequest.type = Types::GetOrganizationAdminAccountRequest
    GetOrganizationAdminAccountResponse.add_member(:admin_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'adminAccountId', traits: {"smithy.api#documentation" => "<p> The identifier for the administrator account. </p>"}))
    GetOrganizationAdminAccountResponse.add_member(:organization_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'organizationId', traits: {"smithy.api#documentation" => "<p> The identifier for the organization. </p>"}))
    GetOrganizationAdminAccountResponse.type = Types::GetOrganizationAdminAccountResponse
    GetServicesInScopeRequest.type = Types::GetServicesInScopeRequest
    GetServicesInScopeResponse.add_member(:service_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceMetadataList, location_name: 'serviceMetadata', traits: {"smithy.api#documentation" => "<p> The metadata that's associated with the Amazon Web Services service. </p>"}))
    GetServicesInScopeResponse.type = Types::GetServicesInScopeResponse
    GetSettingsRequest.add_member(:attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: SettingAttribute, location_name: 'attribute', traits: {"smithy.api#documentation" => "<p> The list of setting attribute enum values. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSettingsRequest.type = Types::GetSettingsRequest
    GetSettingsResponse.add_member(:settings, Smithy::Schema::Shapes::ShapeRef.new(shape: Settings, location_name: 'settings', traits: {"smithy.api#documentation" => "<p> The settings object that holds all supported Audit Manager settings. </p>"}))
    GetSettingsResponse.type = Types::GetSettingsResponse
    Insights.add_member(:active_assessments_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'activeAssessmentsCount', traits: {"smithy.api#documentation" => "<p>The number of active assessments in Audit Manager. </p>"}))
    Insights.add_member(:noncompliant_evidence_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'noncompliantEvidenceCount', traits: {"smithy.api#documentation" => "<p>The number of compliance check evidence that Audit Manager classified as\n         non-compliant on the <code>lastUpdated</code> date. This includes evidence that was\n         collected from Security Hub with a <i>Fail</i> ruling, or collected\n         from Config with a <i>Non-compliant</i> ruling. </p>"}))
    Insights.add_member(:compliant_evidence_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'compliantEvidenceCount', traits: {"smithy.api#documentation" => "<p>The number of compliance check evidence that Audit Manager classified as compliant\n         on the <code>lastUpdated</code> date. This includes evidence that was collected from\n            Security Hub with a <i>Pass</i> ruling, or collected from\n            Config with a <i>Compliant</i> ruling. </p>"}))
    Insights.add_member(:inconclusive_evidence_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'inconclusiveEvidenceCount', traits: {"smithy.api#documentation" => "<p>The number of evidence without a compliance check ruling. Evidence is inconclusive when\n         the associated control uses Security Hub or Config as a data\n         source but you didn't enable those services. This is also the case when a control uses a\n         data source that doesn’t support compliance checks (for example: manual evidence, API\n         calls, or CloudTrail). </p>\n         <note>\n            <p>If evidence has a compliance check status of <i>not applicable</i>,\n            it's classed as <i>inconclusive</i> in <code>Insights</code> data.</p>\n         </note>"}))
    Insights.add_member(:assessment_controls_count_by_noncompliant_evidence, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'assessmentControlsCountByNoncompliantEvidence', traits: {"smithy.api#documentation" => "<p>The number of assessment controls that collected non-compliant evidence on the\n            <code>lastUpdated</code> date. </p>"}))
    Insights.add_member(:total_assessment_controls_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'totalAssessmentControlsCount', traits: {"smithy.api#documentation" => "<p>The total number of controls across all active assessments. </p>"}))
    Insights.add_member(:last_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdated', traits: {"smithy.api#documentation" => "<p>The time when the cross-assessment insights were last updated. </p>"}))
    Insights.type = Types::Insights
    InsightsByAssessment.add_member(:noncompliant_evidence_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'noncompliantEvidenceCount', traits: {"smithy.api#documentation" => "<p>The number of compliance check evidence that Audit Manager classified as\n         non-compliant. This includes evidence that was collected from Security Hub with a\n            <i>Fail</i> ruling, or collected from Config with a\n            <i>Non-compliant</i> ruling. </p>"}))
    InsightsByAssessment.add_member(:compliant_evidence_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'compliantEvidenceCount', traits: {"smithy.api#documentation" => "<p>The number of compliance check evidence that Audit Manager classified as compliant.\n         This includes evidence that was collected from Security Hub with a\n            <i>Pass</i> ruling, or collected from Config with a\n            <i>Compliant</i> ruling. </p>"}))
    InsightsByAssessment.add_member(:inconclusive_evidence_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'inconclusiveEvidenceCount', traits: {"smithy.api#documentation" => "<p>The amount of evidence without a compliance check ruling. Evidence is inconclusive if\n         the associated control uses Security Hub or Config as a data\n         source and you didn't enable those services. This is also the case if a control uses a data\n         source that doesn’t support compliance checks (for example, manual evidence, API calls, or\n            CloudTrail). </p>\n         <note>\n            <p>If evidence has a compliance check status of <i>not applicable</i>,\n            it's classified as <i>inconclusive</i> in\n               <code>InsightsByAssessment</code> data.</p>\n         </note>"}))
    InsightsByAssessment.add_member(:assessment_controls_count_by_noncompliant_evidence, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'assessmentControlsCountByNoncompliantEvidence', traits: {"smithy.api#documentation" => "<p>The number of assessment controls that collected non-compliant evidence on the\n            <code>lastUpdated</code> date. </p>"}))
    InsightsByAssessment.add_member(:total_assessment_controls_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'totalAssessmentControlsCount', traits: {"smithy.api#documentation" => "<p>The total number of controls in the assessment. </p>"}))
    InsightsByAssessment.add_member(:last_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdated', traits: {"smithy.api#documentation" => "<p>The time when the assessment insights were last updated.</p>"}))
    InsightsByAssessment.type = Types::InsightsByAssessment
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    KeywordInputType.add_member(:select_from_list, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SELECT_FROM_LIST', traits: {"smithy.api#enumValue" => "SELECT_FROM_LIST"}))
    KeywordInputType.add_member(:upload_file, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPLOAD_FILE', traits: {"smithy.api#enumValue" => "UPLOAD_FILE"}))
    KeywordInputType.add_member(:input_text, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INPUT_TEXT', traits: {"smithy.api#enumValue" => "INPUT_TEXT"}))
    Keywords.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KeywordValue)
    ListAssessmentControlInsightsByControlDomainRequest.add_member(:control_domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlDomainId, location_name: 'controlDomainId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the control domain. </p>\n         <p>Audit Manager supports the control domains that are provided by Amazon Web Services\n         Control Catalog. For information about how to find a list of available control domains, see\n            <a href=\"https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListDomains.html\">\n               <code>ListDomains</code>\n            </a> in the Amazon Web Services Control\n         Catalog API Reference.</p>", "smithy.api#httpQuery" => "controlDomainId", "smithy.api#required" => {}}))
    ListAssessmentControlInsightsByControlDomainRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the active assessment. </p>", "smithy.api#httpQuery" => "assessmentId", "smithy.api#required" => {}}))
    ListAssessmentControlInsightsByControlDomainRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAssessmentControlInsightsByControlDomainRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Represents the maximum number of results on a page or for an API request call. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAssessmentControlInsightsByControlDomainRequest.type = Types::ListAssessmentControlInsightsByControlDomainRequest
    ListAssessmentControlInsightsByControlDomainResponse.add_member(:control_insights_by_assessment, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlInsightsMetadataByAssessment, location_name: 'controlInsightsByAssessment', traits: {"smithy.api#documentation" => "<p>The assessment control analytics data that the\n            <code>ListAssessmentControlInsightsByControlDomain</code> API returned. </p>"}))
    ListAssessmentControlInsightsByControlDomainResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results. </p>"}))
    ListAssessmentControlInsightsByControlDomainResponse.type = Types::ListAssessmentControlInsightsByControlDomainResponse
    ListAssessmentFrameworkShareRequestsRequest.add_member(:request_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareRequestType, location_name: 'requestType', traits: {"smithy.api#documentation" => "<p> Specifies whether the share request is a sent request or a received request.</p>", "smithy.api#httpQuery" => "requestType", "smithy.api#required" => {}}))
    ListAssessmentFrameworkShareRequestsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The pagination token that's used to fetch the next set of results. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAssessmentFrameworkShareRequestsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p> Represents the maximum number of results on a page or for an API request call. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAssessmentFrameworkShareRequestsRequest.type = Types::ListAssessmentFrameworkShareRequestsRequest
    ListAssessmentFrameworkShareRequestsResponse.add_member(:assessment_framework_share_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentFrameworkShareRequestList, location_name: 'assessmentFrameworkShareRequests', traits: {"smithy.api#documentation" => "<p> The list of share requests that the <code>ListAssessmentFrameworkShareRequests</code>\n         API returned. </p>"}))
    ListAssessmentFrameworkShareRequestsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The pagination token that's used to fetch the next set of results. </p>"}))
    ListAssessmentFrameworkShareRequestsResponse.type = Types::ListAssessmentFrameworkShareRequestsResponse
    ListAssessmentFrameworksRequest.add_member(:framework_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkType, location_name: 'frameworkType', traits: {"smithy.api#documentation" => "<p> The type of framework, such as a standard framework or a custom framework. </p>", "smithy.api#httpQuery" => "frameworkType", "smithy.api#required" => {}}))
    ListAssessmentFrameworksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The pagination token that's used to fetch the next set of results. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAssessmentFrameworksRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p> Represents the maximum number of results on a page or for an API request call. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAssessmentFrameworksRequest.type = Types::ListAssessmentFrameworksRequest
    ListAssessmentFrameworksResponse.add_member(:framework_metadata_list, Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkMetadataList, location_name: 'frameworkMetadataList', traits: {"smithy.api#documentation" => "<p> A list of metadata that the <code>ListAssessmentFrameworks</code> API returns for each\n         framework.</p>"}))
    ListAssessmentFrameworksResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The pagination token that's used to fetch the next set of results. </p>"}))
    ListAssessmentFrameworksResponse.type = Types::ListAssessmentFrameworksResponse
    ListAssessmentMetadata.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentMetadataItem)
    ListAssessmentReportsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The pagination token that's used to fetch the next set of results. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAssessmentReportsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p> Represents the maximum number of results on a page or for an API request call. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAssessmentReportsRequest.type = Types::ListAssessmentReportsRequest
    ListAssessmentReportsResponse.add_member(:assessment_reports, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportsMetadata, location_name: 'assessmentReports', traits: {"smithy.api#documentation" => "<p> The list of assessment reports that the <code>ListAssessmentReports</code> API\n         returned. </p>"}))
    ListAssessmentReportsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The pagination token that's used to fetch the next set of results. </p>"}))
    ListAssessmentReportsResponse.type = Types::ListAssessmentReportsResponse
    ListAssessmentsRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The current status of the assessment.</p>", "smithy.api#httpQuery" => "status"}))
    ListAssessmentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The pagination token that's used to fetch the next set of results. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAssessmentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p> Represents the maximum number of results on a page or for an API request call. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAssessmentsRequest.type = Types::ListAssessmentsRequest
    ListAssessmentsResponse.add_member(:assessment_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentMetadata, location_name: 'assessmentMetadata', traits: {"smithy.api#documentation" => "<p>The metadata that the <code>ListAssessments</code> API returns for each\n         assessment.</p>"}))
    ListAssessmentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The pagination token that's used to fetch the next set of results. </p>"}))
    ListAssessmentsResponse.type = Types::ListAssessmentsResponse
    ListControlDomainInsightsByAssessmentRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the active assessment. </p>", "smithy.api#httpQuery" => "assessmentId", "smithy.api#required" => {}}))
    ListControlDomainInsightsByAssessmentRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListControlDomainInsightsByAssessmentRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Represents the maximum number of results on a page or for an API request call. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListControlDomainInsightsByAssessmentRequest.type = Types::ListControlDomainInsightsByAssessmentRequest
    ListControlDomainInsightsByAssessmentResponse.add_member(:control_domain_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlDomainInsightsList, location_name: 'controlDomainInsights', traits: {"smithy.api#documentation" => "<p>The control domain analytics data that the\n            <code>ListControlDomainInsightsByAssessment</code> API returned. </p>"}))
    ListControlDomainInsightsByAssessmentResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results. </p>"}))
    ListControlDomainInsightsByAssessmentResponse.type = Types::ListControlDomainInsightsByAssessmentResponse
    ListControlDomainInsightsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListControlDomainInsightsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Represents the maximum number of results on a page or for an API request call. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListControlDomainInsightsRequest.type = Types::ListControlDomainInsightsRequest
    ListControlDomainInsightsResponse.add_member(:control_domain_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlDomainInsightsList, location_name: 'controlDomainInsights', traits: {"smithy.api#documentation" => "<p>The control domain analytics data that the <code>ListControlDomainInsights</code> API\n         returned. </p>"}))
    ListControlDomainInsightsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results. </p>"}))
    ListControlDomainInsightsResponse.type = Types::ListControlDomainInsightsResponse
    ListControlInsightsByControlDomainRequest.add_member(:control_domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlDomainId, location_name: 'controlDomainId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the control domain. </p>\n         <p>Audit Manager supports the control domains that are provided by Amazon Web Services\n         Control Catalog. For information about how to find a list of available control domains, see\n            <a href=\"https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListDomains.html\">\n               <code>ListDomains</code>\n            </a> in the Amazon Web Services Control\n         Catalog API Reference.</p>", "smithy.api#httpQuery" => "controlDomainId", "smithy.api#required" => {}}))
    ListControlInsightsByControlDomainRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListControlInsightsByControlDomainRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Represents the maximum number of results on a page or for an API request call. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListControlInsightsByControlDomainRequest.type = Types::ListControlInsightsByControlDomainRequest
    ListControlInsightsByControlDomainResponse.add_member(:control_insights_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlInsightsMetadata, location_name: 'controlInsightsMetadata', traits: {"smithy.api#documentation" => "<p>The control analytics data that the <code>ListControlInsightsByControlDomain</code> API\n         returned. </p>"}))
    ListControlInsightsByControlDomainResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results. </p>"}))
    ListControlInsightsByControlDomainResponse.type = Types::ListControlInsightsByControlDomainResponse
    ListControlsRequest.add_member(:control_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlType, location_name: 'controlType', traits: {"smithy.api#documentation" => "<p>A filter that narrows the list of controls to a specific type. </p>", "smithy.api#httpQuery" => "controlType", "smithy.api#required" => {}}))
    ListControlsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListControlsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results on a page or for an API request call. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListControlsRequest.add_member(:control_catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlCatalogId, location_name: 'controlCatalogId', traits: {"smithy.api#documentation" => "<p>A filter that narrows the list of controls to a specific resource from the Amazon Web Services \n         Control Catalog. </p>\n         <p>To use this parameter, specify the ARN of the Control Catalog resource. You can specify either \n         a control domain, a control objective, or a common control. For information about how to find the ARNs\n         for these resources, see <a href=\"https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListDomains.html\">\n               <code>ListDomains</code>\n            </a>, <a href=\"https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListObjectives.html\">\n               <code>ListObjectives</code>\n            </a>, and <a href=\"https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListCommonControls.html\">\n               <code>ListCommonControls</code>\n            </a>.</p>\n         <note>\n            <p>You can only filter by one Control Catalog resource at a time. \n            Specifying multiple resource ARNs isn’t currently supported. If you want to filter by more \n            than one ARN, we recommend that you run the <code>ListControls</code> operation separately \n            for each ARN. </p>\n         </note>\n         <p>Alternatively, specify <code>UNCATEGORIZED</code> to list controls that aren't\n         mapped to a Control Catalog resource. For example, this operation might return a list of \n         custom controls that don't belong to any control domain or control objective.</p>", "smithy.api#httpQuery" => "controlCatalogId"}))
    ListControlsRequest.type = Types::ListControlsRequest
    ListControlsResponse.add_member(:control_metadata_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlMetadataList, location_name: 'controlMetadataList', traits: {"smithy.api#documentation" => "<p> A list of metadata that the <code>ListControls</code> API returns for each\n         control.</p>"}))
    ListControlsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results. </p>"}))
    ListControlsResponse.type = Types::ListControlsResponse
    ListKeywordsForDataSourceRequest.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The control mapping data source that the keywords apply to. </p>", "smithy.api#httpQuery" => "source", "smithy.api#required" => {}}))
    ListKeywordsForDataSourceRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The pagination token that's used to fetch the next set of results. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListKeywordsForDataSourceRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p> Represents the maximum number of results on a page or for an API request call. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListKeywordsForDataSourceRequest.type = Types::ListKeywordsForDataSourceRequest
    ListKeywordsForDataSourceResponse.add_member(:keywords, Smithy::Schema::Shapes::ShapeRef.new(shape: Keywords, location_name: 'keywords', traits: {"smithy.api#documentation" => "<p>The list of keywords for the control mapping source.</p>"}))
    ListKeywordsForDataSourceResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The pagination token that's used to fetch the next set of results. </p>"}))
    ListKeywordsForDataSourceResponse.type = Types::ListKeywordsForDataSourceResponse
    ListNotificationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The pagination token that's used to fetch the next set of results. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListNotificationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p> Represents the maximum number of results on a page or for an API request call. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListNotificationsRequest.type = Types::ListNotificationsRequest
    ListNotificationsResponse.add_member(:notifications, Smithy::Schema::Shapes::ShapeRef.new(shape: Notifications, location_name: 'notifications', traits: {"smithy.api#documentation" => "<p> The returned list of notifications. </p>"}))
    ListNotificationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The pagination token that's used to fetch the next set of results. </p>"}))
    ListNotificationsResponse.type = Types::ListNotificationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditManagerArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the resource. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p> The list of tags that the <code>ListTagsForResource</code> API returned. </p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ManualEvidence.add_member(:s3_resource_path, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: 's3ResourcePath', traits: {"smithy.api#documentation" => "<p>The S3 URL of the object that's imported as manual evidence. </p>"}))
    ManualEvidence.add_member(:text_response, Smithy::Schema::Shapes::ShapeRef.new(shape: ManualEvidenceTextResponse, location_name: 'textResponse', traits: {"smithy.api#documentation" => "<p>The plain text response that's entered and saved as manual evidence.</p>"}))
    ManualEvidence.add_member(:evidence_file_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ManualEvidenceLocalFileName, location_name: 'evidenceFileName', traits: {"smithy.api#documentation" => "<p>The name of the file that's uploaded as manual evidence. This name is populated using\n         the <code>evidenceFileName</code> value from the <a href=\"https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_GetEvidenceFileUploadUrl.html\">\n               <code>GetEvidenceFileUploadUrl</code>\n            </a> API response.</p>"}))
    ManualEvidence.type = Types::ManualEvidence
    ManualEvidenceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ManualEvidence)
    Notification.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampUUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The unique identifier for the notification. </p>"}))
    Notification.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The identifier for the assessment. </p>"}))
    Notification.add_member(:assessment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentName, location_name: 'assessmentName', traits: {"smithy.api#documentation" => "<p> The name of the related assessment. </p>"}))
    Notification.add_member(:control_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetId, location_name: 'controlSetId', traits: {"smithy.api#documentation" => "<p> The identifier for the control set. </p>"}))
    Notification.add_member(:control_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'controlSetName', traits: {"smithy.api#documentation" => "<p> Specifies the name of the control set that the notification is about. </p>"}))
    Notification.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'description', traits: {"smithy.api#documentation" => "<p> The description of the notification. </p>"}))
    Notification.add_member(:event_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'eventTime', traits: {"smithy.api#documentation" => "<p> The time when the notification was sent. </p>"}))
    Notification.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'source', traits: {"smithy.api#documentation" => "<p> The sender of the notification. </p>"}))
    Notification.type = Types::Notification
    Notifications.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Notification)
    ObjectTypeEnum.add_member(:assessment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT', traits: {"smithy.api#enumValue" => "ASSESSMENT"}))
    ObjectTypeEnum.add_member(:control_set, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTROL_SET', traits: {"smithy.api#enumValue" => "CONTROL_SET"}))
    ObjectTypeEnum.add_member(:control, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTROL', traits: {"smithy.api#enumValue" => "CONTROL"}))
    ObjectTypeEnum.add_member(:delegation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELEGATION', traits: {"smithy.api#enumValue" => "DELEGATION"}))
    ObjectTypeEnum.add_member(:assessment_report, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT_REPORT', traits: {"smithy.api#enumValue" => "ASSESSMENT_REPORT"}))
    RegisterAccountRequest.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'kmsKey', traits: {"smithy.api#documentation" => "<p> The KMS key details. </p>"}))
    RegisterAccountRequest.add_member(:delegated_admin_account, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'delegatedAdminAccount', traits: {"smithy.api#documentation" => "<p> The delegated administrator account for Audit Manager. </p>"}))
    RegisterAccountRequest.type = Types::RegisterAccountRequest
    RegisterAccountResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The status of the account registration request. </p>"}))
    RegisterAccountResponse.type = Types::RegisterAccountResponse
    RegisterOrganizationAdminAccountRequest.add_member(:admin_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'adminAccountId', traits: {"smithy.api#documentation" => "<p> The identifier for the delegated administrator account. </p>", "smithy.api#required" => {}}))
    RegisterOrganizationAdminAccountRequest.type = Types::RegisterOrganizationAdminAccountRequest
    RegisterOrganizationAdminAccountResponse.add_member(:admin_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'adminAccountId', traits: {"smithy.api#documentation" => "<p> The identifier for the delegated administrator account. </p>"}))
    RegisterOrganizationAdminAccountResponse.add_member(:organization_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'organizationId', traits: {"smithy.api#documentation" => "<p> The identifier for the organization. </p>"}))
    RegisterOrganizationAdminAccountResponse.type = Types::RegisterOrganizationAdminAccountResponse
    Resource.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) for the resource. </p>"}))
    Resource.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value', traits: {"smithy.api#documentation" => "<p> The value of the resource. </p>"}))
    Resource.add_member(:compliance_check, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'complianceCheck', traits: {"smithy.api#documentation" => "<p> The evaluation status for a resource that was assessed when collecting compliance check\n         evidence. </p>\n         <ul>\n            <li>\n               <p>Audit Manager classes the resource as non-compliant if Security Hub reports a\n                  <i>Fail</i> result, or if Config reports a\n                  <i>Non-compliant</i> result.</p>\n            </li>\n            <li>\n               <p>Audit Manager classes the resource as compliant if Security Hub reports a\n                  <i>Pass</i> result, or if Config reports a\n                  <i>Compliant</i> result.</p>\n            </li>\n            <li>\n               <p>If a compliance check isn't available or applicable, then no compliance evaluation can be made\n               for that resource. This is the case if a resource assessment uses Config or Security Hub as the underlying data source type, but those services\n               aren't enabled. This is also the case if the resource assessment uses an underlying\n               data source type that doesn't support compliance checks (such as manual evidence,\n                  Amazon Web Services API calls, or CloudTrail). </p>\n            </li>\n         </ul>"}))
    Resource.type = Types::Resource
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the resource. </p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p> The type of resource that's affected by the error. </p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    Resources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Resource)
    Role.add_member(:role_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleType, location_name: 'roleType', traits: {"smithy.api#documentation" => "<p> The type of customer persona. </p>\n         <note>\n            <p>In <code>CreateAssessment</code>, <code>roleType</code> can only be\n               <code>PROCESS_OWNER</code>. </p>\n            <p>In <code>UpdateSettings</code>, <code>roleType</code> can only be\n               <code>PROCESS_OWNER</code>.</p>\n            <p>In <code>BatchCreateDelegationByAssessment</code>, <code>roleType</code> can only be\n               <code>RESOURCE_OWNER</code>.</p>\n         </note>", "smithy.api#required" => {}}))
    Role.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the IAM role. </p>", "smithy.api#required" => {}}))
    Role.type = Types::Role
    RoleType.add_member(:process_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESS_OWNER', traits: {"smithy.api#enumValue" => "PROCESS_OWNER"}))
    RoleType.add_member(:resource_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_OWNER', traits: {"smithy.api#enumValue" => "RESOURCE_OWNER"}))
    Roles.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Role)
    Scope.add_member(:aws_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccounts, location_name: 'awsAccounts', traits: {"smithy.api#documentation" => "<p> The Amazon Web Services accounts that are included in the scope of the assessment.\n      </p>"}))
    Scope.add_member(:aws_services, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServices, location_name: 'awsServices', traits: {"smithy.api#deprecated" => {"message" => "You can't specify services in scope when creating/updating an assessment. If you use the parameter to specify one or more AWS services, Audit Manager ignores the input. Instead the value of the parameter will show as empty indicating that the services are defined and managed by Audit Manager."}, "smithy.api#documentation" => "<p> The Amazon Web Services services that are included in the scope of the assessment.\n      </p>\n         <important>\n            <p>This API parameter is no longer supported. If you use this parameter to specify one\n            or more Amazon Web Services services, Audit Manager ignores this input. Instead, the\n            value for <code>awsServices</code> will show as empty.</p>\n         </important>"}))
    Scope.type = Types::Scope
    ServiceMetadata.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the Amazon Web Services service. </p>"}))
    ServiceMetadata.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p> The display name of the Amazon Web Services service. </p>"}))
    ServiceMetadata.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'description', traits: {"smithy.api#documentation" => "<p> The description of the Amazon Web Services service. </p>"}))
    ServiceMetadata.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'category', traits: {"smithy.api#documentation" => "<p> The category that the Amazon Web Services service belongs to, such as compute, storage,\n         or database. </p>"}))
    ServiceMetadata.type = Types::ServiceMetadata
    ServiceMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceMetadata)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SettingAttribute.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    SettingAttribute.add_member(:is_aws_org_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IS_AWS_ORG_ENABLED', traits: {"smithy.api#enumValue" => "IS_AWS_ORG_ENABLED"}))
    SettingAttribute.add_member(:sns_topic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNS_TOPIC', traits: {"smithy.api#enumValue" => "SNS_TOPIC"}))
    SettingAttribute.add_member(:default_assessment_reports_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT_ASSESSMENT_REPORTS_DESTINATION', traits: {"smithy.api#enumValue" => "DEFAULT_ASSESSMENT_REPORTS_DESTINATION"}))
    SettingAttribute.add_member(:default_process_owners, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT_PROCESS_OWNERS', traits: {"smithy.api#enumValue" => "DEFAULT_PROCESS_OWNERS"}))
    SettingAttribute.add_member(:evidence_finder_enablement, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVIDENCE_FINDER_ENABLEMENT', traits: {"smithy.api#enumValue" => "EVIDENCE_FINDER_ENABLEMENT"}))
    SettingAttribute.add_member(:deregistration_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEREGISTRATION_POLICY', traits: {"smithy.api#enumValue" => "DEREGISTRATION_POLICY"}))
    SettingAttribute.add_member(:default_export_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT_EXPORT_DESTINATION', traits: {"smithy.api#enumValue" => "DEFAULT_EXPORT_DESTINATION"}))
    Settings.add_member(:is_aws_org_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isAwsOrgEnabled', traits: {"smithy.api#documentation" => "<p> Specifies whether Organizations is enabled. </p>"}))
    Settings.add_member(:sns_topic, Smithy::Schema::Shapes::ShapeRef.new(shape: SNSTopic, location_name: 'snsTopic', traits: {"smithy.api#documentation" => "<p> The designated Amazon Simple Notification Service (Amazon SNS) topic. </p>"}))
    Settings.add_member(:default_assessment_reports_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportsDestination, location_name: 'defaultAssessmentReportsDestination', traits: {"smithy.api#documentation" => "<p>The default S3 destination bucket for storing assessment reports.</p>"}))
    Settings.add_member(:default_process_owners, Smithy::Schema::Shapes::ShapeRef.new(shape: Roles, location_name: 'defaultProcessOwners', traits: {"smithy.api#documentation" => "<p> The designated default audit owners. </p>"}))
    Settings.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'kmsKey', traits: {"smithy.api#documentation" => "<p> The KMS key details. </p>"}))
    Settings.add_member(:evidence_finder_enablement, Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceFinderEnablement, location_name: 'evidenceFinderEnablement', traits: {"smithy.api#documentation" => "<p>The current evidence finder status and event data store details.</p>"}))
    Settings.add_member(:deregistration_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: DeregistrationPolicy, location_name: 'deregistrationPolicy', traits: {"smithy.api#documentation" => "<p>The deregistration policy for your Audit Manager data. You can\n      use this attribute to determine how your data is handled when you deregister Audit Manager.</p>"}))
    Settings.add_member(:default_export_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultExportDestination, location_name: 'defaultExportDestination', traits: {"smithy.api#documentation" => "<p>The default S3 destination bucket for storing evidence finder exports.</p>"}))
    Settings.type = Types::Settings
    ShareRequestAction.add_member(:accept, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCEPT', traits: {"smithy.api#enumValue" => "ACCEPT"}))
    ShareRequestAction.add_member(:decline, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DECLINE', traits: {"smithy.api#enumValue" => "DECLINE"}))
    ShareRequestAction.add_member(:revoke, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVOKE', traits: {"smithy.api#enumValue" => "REVOKE"}))
    ShareRequestStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ShareRequestStatus.add_member(:replicating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLICATING', traits: {"smithy.api#enumValue" => "REPLICATING"}))
    ShareRequestStatus.add_member(:shared, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHARED', traits: {"smithy.api#enumValue" => "SHARED"}))
    ShareRequestStatus.add_member(:expiring, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRING', traits: {"smithy.api#enumValue" => "EXPIRING"}))
    ShareRequestStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ShareRequestStatus.add_member(:expired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    ShareRequestStatus.add_member(:declined, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DECLINED', traits: {"smithy.api#enumValue" => "DECLINED"}))
    ShareRequestStatus.add_member(:revoked, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVOKED', traits: {"smithy.api#enumValue" => "REVOKED"}))
    ShareRequestType.add_member(:sent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SENT', traits: {"smithy.api#enumValue" => "SENT"}))
    ShareRequestType.add_member(:received, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECEIVED', traits: {"smithy.api#enumValue" => "RECEIVED"}))
    SourceFrequency.add_member(:daily, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAILY', traits: {"smithy.api#enumValue" => "DAILY"}))
    SourceFrequency.add_member(:weekly, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEEKLY', traits: {"smithy.api#enumValue" => "WEEKLY"}))
    SourceFrequency.add_member(:monthly, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONTHLY', traits: {"smithy.api#enumValue" => "MONTHLY"}))
    SourceKeyword.add_member(:keyword_input_type, Smithy::Schema::Shapes::ShapeRef.new(shape: KeywordInputType, location_name: 'keywordInputType', traits: {"smithy.api#documentation" => "<p> The input method for the keyword. </p>\n         <ul>\n            <li>\n               <p>\n                  <code>SELECT_FROM_LIST</code> is used when mapping a data source for automated\n               evidence.</p>\n               <ul>\n                  <li>\n                     <p>When <code>keywordInputType</code> is <code>SELECT_FROM_LIST</code>, a\n                     keyword must be selected to collect automated evidence. For example, this\n                     keyword can be a CloudTrail event name, a rule name for Config, a Security Hub control, or the name of an Amazon Web Services API call.</p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>\n                  <code>UPLOAD_FILE</code> and <code>INPUT_TEXT</code> are only used when mapping a\n               data source for manual evidence.</p>\n               <ul>\n                  <li>\n                     <p>When <code>keywordInputType</code> is <code>UPLOAD_FILE</code>, a file must\n                     be uploaded as manual evidence.</p>\n                  </li>\n                  <li>\n                     <p>When <code>keywordInputType</code> is <code>INPUT_TEXT</code>, text must be\n                     entered as manual evidence.</p>\n                  </li>\n               </ul>\n            </li>\n         </ul>"}))
    SourceKeyword.add_member(:keyword_value, Smithy::Schema::Shapes::ShapeRef.new(shape: KeywordValue, location_name: 'keywordValue', traits: {"smithy.api#documentation" => "<p> The value of the keyword that's used when mapping a control data source. For example,\n         this can be a CloudTrail event name, a rule name for Config, a\n            Security Hub control, or the name of an Amazon Web Services API call. </p>\n         <p>If you’re mapping a data source to a rule in Config, the\n            <code>keywordValue</code> that you specify depends on the type of rule:</p>\n         <ul>\n            <li>\n               <p>For <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html\">managed rules</a>, you can use the rule identifier as the\n                  <code>keywordValue</code>. You can find the rule identifier from the <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html\">list of Config managed rules</a>. For some\n               rules, the rule identifier is different from the rule name. For example, the rule\n               name <code>restricted-ssh</code> has the following rule identifier:\n                  <code>INCOMING_SSH_DISABLED</code>. Make sure to use the rule identifier, not the\n               rule name. </p>\n               <p>Keyword example for managed rules:</p>\n               <ul>\n                  <li>\n                     <p>Managed rule name: <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-acl-prohibited.html\">s3-bucket-acl-prohibited</a>\n                     </p>\n                     <p>\n                        <code>keywordValue</code>: <code>S3_BUCKET_ACL_PROHIBITED</code>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>For <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_develop-rules.html\">custom rules</a>, you form the <code>keywordValue</code>\n               by adding the <code>Custom_</code> prefix to the rule name. This prefix distinguishes\n               the custom rule from a managed rule. </p>\n               <p>Keyword example for custom rules:</p>\n               <ul>\n                  <li>\n                     <p>Custom rule name: my-custom-config-rule</p>\n                     <p>\n                        <code>keywordValue</code>: <code>Custom_my-custom-config-rule</code>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>For <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/service-linked-awsconfig-rules.html\">service-linked rules</a>, you form the\n                  <code>keywordValue</code> by adding the <code>Custom_</code> prefix to the rule\n               name. In addition, you remove the suffix ID that appears at the end of the rule name. </p>\n               <p>Keyword examples for service-linked rules:</p>\n               <ul>\n                  <li>\n                     <p>Service-linked rule name:\n                     CustomRuleForAccount-conformance-pack-szsm1uv0w</p>\n                     <p>\n                        <code>keywordValue</code>:\n                        <code>Custom_CustomRuleForAccount-conformance-pack</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>Service-linked rule name:\n                     OrgConfigRule-s3-bucket-versioning-enabled-dbgzf8ba</p>\n                     <p>\n                        <code>keywordValue</code>:\n                        <code>Custom_OrgConfigRule-s3-bucket-versioning-enabled</code>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n         </ul>\n         <important>\n            <p>The <code>keywordValue</code> is case sensitive. If you enter a value incorrectly, Audit Manager might not recognize the data source mapping. As a result, you might not\n         successfully collect evidence from that data source as intended. </p>\n            <p>Keep in mind the following requirements, depending on the data source type that\n            you're using. </p>\n            <ol>\n               <li>\n                  <p>For Config: </p>\n                  <ul>\n                     <li>\n                        <p>For managed rules, make sure that the <code>keywordValue</code> is the rule identifier in\n                     <code>ALL_CAPS_WITH_UNDERSCORES</code>. For example,\n                     <code>CLOUDWATCH_LOG_GROUP_ENCRYPTED</code>. For accuracy, we recommend\n                     that you reference the list of <a href=\"https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources-config.html\">supported Config managed rules</a>.</p>\n                     </li>\n                     <li>\n                        <p>For custom rules, make sure that the <code>keywordValue</code> has the <code>Custom_</code>\n                     prefix followed by the custom rule name. The format of the custom rule name\n                     itself may vary. For accuracy, we recommend that you visit the <a href=\"https://console.aws.amazon.com/config/\">Config console</a> to\n                     verify your custom rule name.</p>\n                     </li>\n                  </ul>\n               </li>\n               <li>\n                  <p>For Security Hub: The format varies for Security Hub control names.\n                  For accuracy, we recommend that you reference the list of <a href=\"https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources-ash.html\">supported\n                     Security Hub controls</a>.</p>\n               </li>\n               <li>\n                  <p>For Amazon Web Services API calls: Make sure that the <code>keywordValue</code>\n                  is written as <code>serviceprefix_ActionName</code>. For example,\n                  <code>iam_ListGroups</code>. For accuracy, we recommend that you reference the\n                  list of <a href=\"https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources-api.html\">supported\n                     API calls</a>.</p>\n               </li>\n               <li>\n                  <p>For CloudTrail: Make sure that the <code>keywordValue</code> is written\n                  as <code>serviceprefix_ActionName</code>. For example,\n                  <code>cloudtrail_StartLogging</code>. For accuracy, we recommend that you\n                  review the Amazon Web Services service prefix and action names in the <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html\">Service Authorization Reference</a>.</p>\n               </li>\n            </ol>\n         </important>"}))
    SourceKeyword.type = Types::SourceKeyword
    SourceSetUpOption.add_member(:system_controls_mapping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM_CONTROLS_MAPPING', traits: {"smithy.api#enumValue" => "System_Controls_Mapping"}))
    SourceSetUpOption.add_member(:procedural_controls_mapping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCEDURAL_CONTROLS_MAPPING', traits: {"smithy.api#enumValue" => "Procedural_Controls_Mapping"}))
    SourceType.add_member(:aws_cloudtrail, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_CLOUDTRAIL', traits: {"smithy.api#enumValue" => "AWS_Cloudtrail"}))
    SourceType.add_member(:aws_config, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_CONFIG', traits: {"smithy.api#enumValue" => "AWS_Config"}))
    SourceType.add_member(:aws_security_hub, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SECURITY_HUB', traits: {"smithy.api#enumValue" => "AWS_Security_Hub"}))
    SourceType.add_member(:aws_api_call, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_API_CALL', traits: {"smithy.api#enumValue" => "AWS_API_Call"}))
    SourceType.add_member(:manual, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUAL', traits: {"smithy.api#enumValue" => "MANUAL"}))
    SourceType.add_member(:common_control, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMMON_CONTROL', traits: {"smithy.api#enumValue" => "Common_Control"}))
    SourceType.add_member(:core_control, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CORE_CONTROL', traits: {"smithy.api#enumValue" => "Core_Control"}))
    StartAssessmentFrameworkShareRequest.add_member(:framework_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'frameworkId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the custom framework to be shared. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartAssessmentFrameworkShareRequest.add_member(:destination_account, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'destinationAccount', traits: {"smithy.api#documentation" => "<p> The Amazon Web Services account of the recipient. </p>", "smithy.api#required" => {}}))
    StartAssessmentFrameworkShareRequest.add_member(:destination_region, Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'destinationRegion', traits: {"smithy.api#documentation" => "<p> The Amazon Web Services Region of the recipient. </p>", "smithy.api#required" => {}}))
    StartAssessmentFrameworkShareRequest.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareRequestComment, location_name: 'comment', traits: {"smithy.api#documentation" => "<p> An optional comment from the sender about the share request. </p>"}))
    StartAssessmentFrameworkShareRequest.type = Types::StartAssessmentFrameworkShareRequest
    StartAssessmentFrameworkShareResponse.add_member(:assessment_framework_share_request, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentFrameworkShareRequest, location_name: 'assessmentFrameworkShareRequest', traits: {"smithy.api#documentation" => "<p> The share request that's created by the <code>StartAssessmentFrameworkShare</code> API.\n      </p>"}))
    StartAssessmentFrameworkShareResponse.type = Types::StartAssessmentFrameworkShareResponse
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditManagerArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the resource. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p> The tags that are associated with the resource. </p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    URL.add_member(:hyperlink_name, Smithy::Schema::Shapes::ShapeRef.new(shape: HyperlinkName, location_name: 'hyperlinkName', traits: {"smithy.api#documentation" => "<p> The name or word that's used as a hyperlink to the URL. </p>"}))
    URL.add_member(:link, Smithy::Schema::Shapes::ShapeRef.new(shape: UrlLink, location_name: 'link', traits: {"smithy.api#documentation" => "<p> The unique identifier for the internet resource. </p>"}))
    URL.type = Types::URL
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditManagerArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the specified resource. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p> The name or key of the tag. </p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAssessmentControlRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the assessment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssessmentControlRequest.add_member(:control_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetId, location_name: 'controlSetId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the control set. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssessmentControlRequest.add_member(:control_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'controlId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the control. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssessmentControlRequest.add_member(:control_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlStatus, location_name: 'controlStatus', traits: {"smithy.api#documentation" => "<p> The status of the control. </p>"}))
    UpdateAssessmentControlRequest.add_member(:comment_body, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlCommentBody, location_name: 'commentBody', traits: {"smithy.api#documentation" => "<p> The comment body text for the control. </p>"}))
    UpdateAssessmentControlRequest.type = Types::UpdateAssessmentControlRequest
    UpdateAssessmentControlResponse.add_member(:control, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentControl, location_name: 'control', traits: {"smithy.api#documentation" => "<p> The name of the updated control set that the <code>UpdateAssessmentControl</code> API\n         returned. </p>"}))
    UpdateAssessmentControlResponse.type = Types::UpdateAssessmentControlResponse
    UpdateAssessmentControlSetStatusRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the assessment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssessmentControlSetStatusRequest.add_member(:control_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'controlSetId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the control set. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssessmentControlSetStatusRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The status of the control set that's being updated. </p>", "smithy.api#required" => {}}))
    UpdateAssessmentControlSetStatusRequest.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationComment, location_name: 'comment', traits: {"smithy.api#documentation" => "<p> The comment that's related to the status update. </p>", "smithy.api#required" => {}}))
    UpdateAssessmentControlSetStatusRequest.type = Types::UpdateAssessmentControlSetStatusRequest
    UpdateAssessmentControlSetStatusResponse.add_member(:control_set, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentControlSet, location_name: 'controlSet', traits: {"smithy.api#documentation" => "<p> The name of the updated control set that the\n            <code>UpdateAssessmentControlSetStatus</code> API returned. </p>"}))
    UpdateAssessmentControlSetStatusResponse.type = Types::UpdateAssessmentControlSetStatusResponse
    UpdateAssessmentFrameworkControlSet.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetName, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The unique identifier for the control set. </p>"}))
    UpdateAssessmentFrameworkControlSet.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSetName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the control set. </p>", "smithy.api#required" => {}}))
    UpdateAssessmentFrameworkControlSet.add_member(:controls, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentFrameworkControls, location_name: 'controls', traits: {"smithy.api#documentation" => "<p> The list of controls that are contained within the control set. </p>", "smithy.api#required" => {}}))
    UpdateAssessmentFrameworkControlSet.type = Types::UpdateAssessmentFrameworkControlSet
    UpdateAssessmentFrameworkControlSets.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentFrameworkControlSet)
    UpdateAssessmentFrameworkRequest.add_member(:framework_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'frameworkId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the framework. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssessmentFrameworkRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the framework to be updated. </p>", "smithy.api#required" => {}}))
    UpdateAssessmentFrameworkRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p> The description of the updated framework. </p>"}))
    UpdateAssessmentFrameworkRequest.add_member(:compliance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComplianceType, location_name: 'complianceType', traits: {"smithy.api#documentation" => "<p> The compliance type that the new custom framework supports, such as CIS or HIPAA.\n      </p>"}))
    UpdateAssessmentFrameworkRequest.add_member(:control_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentFrameworkControlSets, location_name: 'controlSets', traits: {"smithy.api#documentation" => "<p> The control sets that are associated with the framework. </p>\n         <note>\n            <p>The <code>Controls</code> object returns a partial response when called through Framework\n            APIs. For a complete <code>Controls</code> object, use <code>GetControl</code>.</p>\n         </note>", "smithy.api#required" => {}}))
    UpdateAssessmentFrameworkRequest.type = Types::UpdateAssessmentFrameworkRequest
    UpdateAssessmentFrameworkResponse.add_member(:framework, Smithy::Schema::Shapes::ShapeRef.new(shape: Framework, location_name: 'framework', traits: {"smithy.api#documentation" => "<p> The framework object. </p>"}))
    UpdateAssessmentFrameworkResponse.type = Types::UpdateAssessmentFrameworkResponse
    UpdateAssessmentFrameworkShareRequest.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'requestId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the share request. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssessmentFrameworkShareRequest.add_member(:request_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareRequestType, location_name: 'requestType', traits: {"smithy.api#documentation" => "<p>Specifies whether the share request is a sent request or a received request.</p>", "smithy.api#required" => {}}))
    UpdateAssessmentFrameworkShareRequest.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareRequestAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>Specifies the update action for the share request.</p>", "smithy.api#required" => {}}))
    UpdateAssessmentFrameworkShareRequest.type = Types::UpdateAssessmentFrameworkShareRequest
    UpdateAssessmentFrameworkShareResponse.add_member(:assessment_framework_share_request, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentFrameworkShareRequest, location_name: 'assessmentFrameworkShareRequest', traits: {"smithy.api#documentation" => "<p> The updated share request that's returned by the\n            <code>UpdateAssessmentFrameworkShare</code> operation. </p>"}))
    UpdateAssessmentFrameworkShareResponse.type = Types::UpdateAssessmentFrameworkShareResponse
    UpdateAssessmentRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the assessment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssessmentRequest.add_member(:assessment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentName, location_name: 'assessmentName', traits: {"smithy.api#documentation" => "<p> The name of the assessment to be updated. </p>"}))
    UpdateAssessmentRequest.add_member(:assessment_description, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentDescription, location_name: 'assessmentDescription', traits: {"smithy.api#documentation" => "<p> The description of the assessment. </p>"}))
    UpdateAssessmentRequest.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: Scope, location_name: 'scope', traits: {"smithy.api#documentation" => "<p> The scope of the assessment. </p>", "smithy.api#required" => {}}))
    UpdateAssessmentRequest.add_member(:assessment_reports_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportsDestination, location_name: 'assessmentReportsDestination', traits: {"smithy.api#documentation" => "<p> The assessment report storage destination for the assessment that's being updated.\n      </p>"}))
    UpdateAssessmentRequest.add_member(:roles, Smithy::Schema::Shapes::ShapeRef.new(shape: Roles, location_name: 'roles', traits: {"smithy.api#documentation" => "<p> The list of roles for the assessment. </p>"}))
    UpdateAssessmentRequest.type = Types::UpdateAssessmentRequest
    UpdateAssessmentResponse.add_member(:assessment, Smithy::Schema::Shapes::ShapeRef.new(shape: Assessment, location_name: 'assessment', traits: {"smithy.api#documentation" => "<p> The response object for the <code>UpdateAssessment</code> API. This is the name of the\n         updated assessment.</p>"}))
    UpdateAssessmentResponse.type = Types::UpdateAssessmentResponse
    UpdateAssessmentStatusRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the assessment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssessmentStatusRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The current status of the assessment. </p>", "smithy.api#required" => {}}))
    UpdateAssessmentStatusRequest.type = Types::UpdateAssessmentStatusRequest
    UpdateAssessmentStatusResponse.add_member(:assessment, Smithy::Schema::Shapes::ShapeRef.new(shape: Assessment, location_name: 'assessment', traits: {"smithy.api#documentation" => "<p> The name of the updated assessment that the <code>UpdateAssessmentStatus</code> API\n         returned. </p>"}))
    UpdateAssessmentStatusResponse.type = Types::UpdateAssessmentStatusResponse
    UpdateControlRequest.add_member(:control_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'controlId', traits: {"smithy.api#documentation" => "<p> The identifier for the control. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateControlRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the updated control. </p>", "smithy.api#required" => {}}))
    UpdateControlRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p> The optional description of the control. </p>"}))
    UpdateControlRequest.add_member(:testing_information, Smithy::Schema::Shapes::ShapeRef.new(shape: TestingInformation, location_name: 'testingInformation', traits: {"smithy.api#documentation" => "<p> The steps that you should follow to determine if the control is met. </p>"}))
    UpdateControlRequest.add_member(:action_plan_title, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPlanTitle, location_name: 'actionPlanTitle', traits: {"smithy.api#documentation" => "<p> The title of the action plan for remediating the control. </p>"}))
    UpdateControlRequest.add_member(:action_plan_instructions, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPlanInstructions, location_name: 'actionPlanInstructions', traits: {"smithy.api#documentation" => "<p> The recommended actions to carry out if the control isn't fulfilled. </p>"}))
    UpdateControlRequest.add_member(:control_mapping_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlMappingSources, location_name: 'controlMappingSources', traits: {"smithy.api#documentation" => "<p> The data mapping sources for the control. </p>", "smithy.api#required" => {}}))
    UpdateControlRequest.type = Types::UpdateControlRequest
    UpdateControlResponse.add_member(:control, Smithy::Schema::Shapes::ShapeRef.new(shape: Control, location_name: 'control', traits: {"smithy.api#documentation" => "<p> The name of the updated control set that the <code>UpdateControl</code> API returned.\n      </p>"}))
    UpdateControlResponse.type = Types::UpdateControlResponse
    UpdateSettingsRequest.add_member(:sns_topic, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsArn, location_name: 'snsTopic', traits: {"smithy.api#documentation" => "<p> The Amazon Simple Notification Service (Amazon SNS) topic that Audit Manager sends\n         notifications to. </p>"}))
    UpdateSettingsRequest.add_member(:default_assessment_reports_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportsDestination, location_name: 'defaultAssessmentReportsDestination', traits: {"smithy.api#documentation" => "<p> The default S3 destination bucket for storing assessment reports. </p>"}))
    UpdateSettingsRequest.add_member(:default_process_owners, Smithy::Schema::Shapes::ShapeRef.new(shape: Roles, location_name: 'defaultProcessOwners', traits: {"smithy.api#documentation" => "<p> A list of the default audit owners. </p>"}))
    UpdateSettingsRequest.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'kmsKey', traits: {"smithy.api#documentation" => "<p> The KMS key details. </p>"}))
    UpdateSettingsRequest.add_member(:evidence_finder_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'evidenceFinderEnabled', traits: {"smithy.api#documentation" => "<p>Specifies whether the evidence finder feature is enabled. Change this attribute to\n         enable or disable evidence finder.</p>\n         <important>\n            <p>When you use this attribute to disable evidence finder, Audit Manager deletes the\n            event data store that’s used to query your evidence data. As a result, you can’t\n            re-enable evidence finder and use the feature again. Your only alternative is to <a href=\"https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeregisterAccount.html\">deregister</a> and then <a href=\"https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_RegisterAccount.html\">re-register</a>\n            Audit Manager. </p>\n         </important>"}))
    UpdateSettingsRequest.add_member(:deregistration_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: DeregistrationPolicy, location_name: 'deregistrationPolicy', traits: {"smithy.api#documentation" => "<p>The deregistration policy for your Audit Manager data. You can\n         use this attribute to determine how your data is handled when you deregister Audit Manager.</p>"}))
    UpdateSettingsRequest.add_member(:default_export_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultExportDestination, location_name: 'defaultExportDestination', traits: {"smithy.api#documentation" => "<p> The default S3 destination bucket for storing evidence finder exports. </p>"}))
    UpdateSettingsRequest.type = Types::UpdateSettingsRequest
    UpdateSettingsResponse.add_member(:settings, Smithy::Schema::Shapes::ShapeRef.new(shape: Settings, location_name: 'settings', traits: {"smithy.api#documentation" => "<p> The current list of settings. </p>"}))
    UpdateSettingsResponse.type = Types::UpdateSettingsResponse
    ValidateAssessmentReportIntegrityRequest.add_member(:s3_relative_path, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: 's3RelativePath', traits: {"smithy.api#documentation" => "<p> The relative path of the Amazon S3 bucket that the assessment report is stored\n         in. </p>", "smithy.api#required" => {}}))
    ValidateAssessmentReportIntegrityRequest.type = Types::ValidateAssessmentReportIntegrityRequest
    ValidateAssessmentReportIntegrityResponse.add_member(:signature_valid, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'signatureValid', traits: {"smithy.api#documentation" => "<p> Specifies whether the signature key is valid. </p>"}))
    ValidateAssessmentReportIntegrityResponse.add_member(:signature_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'signatureAlgorithm', traits: {"smithy.api#documentation" => "<p> The signature algorithm that's used to code sign the assessment report file. </p>"}))
    ValidateAssessmentReportIntegrityResponse.add_member(:signature_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'signatureDateTime', traits: {"smithy.api#documentation" => "<p> The date and time signature that specifies when the assessment report was created.\n      </p>"}))
    ValidateAssessmentReportIntegrityResponse.add_member(:signature_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'signatureKeyId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the validation signature key. </p>"}))
    ValidateAssessmentReportIntegrityResponse.add_member(:validation_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationErrors, location_name: 'validationErrors', traits: {"smithy.api#documentation" => "<p> Represents any errors that occurred when validating the assessment report. </p>"}))
    ValidateAssessmentReportIntegrityResponse.type = Types::ValidateAssessmentReportIntegrityResponse
    ValidationErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p> The reason the request failed validation. </p>"}))
    ValidationException.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fields', traits: {"smithy.api#documentation" => "<p> The fields that caused the error, if applicable. </p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the validation error. </p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p> The body of the error message. </p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_OPERATION', traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_PARSE', traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "other"}))

    BedrockAssessmentManagerLambda = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.auditmanager#BedrockAssessmentManagerLambda"
      service.name = "BedrockAssessmentManagerLambda"
      service.version = "2017-07-25"
      service.traits = {"aws.api#service" => {"sdkId" => "AuditManager", "arnNamespace" => "auditmanager", "cloudFormationName" => "AuditManager", "cloudTrailEventSource" => "auditmanager.amazonaws.com", "endpointPrefix" => "auditmanager"}, "aws.auth#sigv4" => {"name" => "auditmanager"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Audit Manager"}
      service.add_operation(:associate_assessment_report_evidence_folder, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#AssociateAssessmentReportEvidenceFolder"
        operation.name = "AssociateAssessmentReportEvidenceFolder"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateAssessmentReportEvidenceFolderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateAssessmentReportEvidenceFolderResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/assessments/{assessmentId}/associateToAssessmentReport", "code" => 200}}
      end)
      service.add_operation(:batch_associate_assessment_report_evidence, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#BatchAssociateAssessmentReportEvidence"
        operation.name = "BatchAssociateAssessmentReportEvidence"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateAssessmentReportEvidenceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateAssessmentReportEvidenceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/assessments/{assessmentId}/batchAssociateToAssessmentReport", "code" => 200}}
      end)
      service.add_operation(:batch_create_delegation_by_assessment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#BatchCreateDelegationByAssessment"
        operation.name = "BatchCreateDelegationByAssessment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateDelegationByAssessmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateDelegationByAssessmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/assessments/{assessmentId}/delegations", "code" => 200}}
      end)
      service.add_operation(:batch_delete_delegation_by_assessment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#BatchDeleteDelegationByAssessment"
        operation.name = "BatchDeleteDelegationByAssessment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteDelegationByAssessmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteDelegationByAssessmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/assessments/{assessmentId}/delegations", "code" => 200}}
      end)
      service.add_operation(:batch_disassociate_assessment_report_evidence, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#BatchDisassociateAssessmentReportEvidence"
        operation.name = "BatchDisassociateAssessmentReportEvidence"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateAssessmentReportEvidenceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateAssessmentReportEvidenceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/assessments/{assessmentId}/batchDisassociateFromAssessmentReport", "code" => 200}}
      end)
      service.add_operation(:batch_import_evidence_to_assessment_control, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#BatchImportEvidenceToAssessmentControl"
        operation.name = "BatchImportEvidenceToAssessmentControl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchImportEvidenceToAssessmentControlRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchImportEvidenceToAssessmentControlResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/assessments/{assessmentId}/controlSets/{controlSetId}/controls/{controlId}/evidence", "code" => 200}}
      end)
      service.add_operation(:create_assessment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#CreateAssessment"
        operation.name = "CreateAssessment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/assessments", "code" => 200}}
      end)
      service.add_operation(:create_assessment_framework, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#CreateAssessmentFramework"
        operation.name = "CreateAssessmentFramework"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentFrameworkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentFrameworkResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/assessmentFrameworks", "code" => 200}}
      end)
      service.add_operation(:create_assessment_report, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#CreateAssessmentReport"
        operation.name = "CreateAssessmentReport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentReportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentReportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/assessments/{assessmentId}/reports", "code" => 200}}
      end)
      service.add_operation(:create_control, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#CreateControl"
        operation.name = "CreateControl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateControlRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateControlResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/controls", "code" => 200}}
      end)
      service.add_operation(:delete_assessment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#DeleteAssessment"
        operation.name = "DeleteAssessment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssessmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssessmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/assessments/{assessmentId}", "code" => 200}}
      end)
      service.add_operation(:delete_assessment_framework, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#DeleteAssessmentFramework"
        operation.name = "DeleteAssessmentFramework"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssessmentFrameworkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssessmentFrameworkResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/assessmentFrameworks/{frameworkId}", "code" => 200}}
      end)
      service.add_operation(:delete_assessment_framework_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#DeleteAssessmentFrameworkShare"
        operation.name = "DeleteAssessmentFrameworkShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssessmentFrameworkShareRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssessmentFrameworkShareResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/assessmentFrameworkShareRequests/{requestId}", "code" => 200}}
      end)
      service.add_operation(:delete_assessment_report, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#DeleteAssessmentReport"
        operation.name = "DeleteAssessmentReport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssessmentReportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssessmentReportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/assessments/{assessmentId}/reports/{assessmentReportId}", "code" => 200}}
      end)
      service.add_operation(:delete_control, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#DeleteControl"
        operation.name = "DeleteControl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteControlRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteControlResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/controls/{controlId}", "code" => 200}}
      end)
      service.add_operation(:deregister_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#DeregisterAccount"
        operation.name = "DeregisterAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/account/deregisterAccount", "code" => 200}}
      end)
      service.add_operation(:deregister_organization_admin_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#DeregisterOrganizationAdminAccount"
        operation.name = "DeregisterOrganizationAdminAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterOrganizationAdminAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterOrganizationAdminAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/account/deregisterOrganizationAdminAccount", "code" => 200}}
      end)
      service.add_operation(:disassociate_assessment_report_evidence_folder, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#DisassociateAssessmentReportEvidenceFolder"
        operation.name = "DisassociateAssessmentReportEvidenceFolder"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateAssessmentReportEvidenceFolderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateAssessmentReportEvidenceFolderResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/assessments/{assessmentId}/disassociateFromAssessmentReport", "code" => 200}}
      end)
      service.add_operation(:get_account_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetAccountStatus"
        operation.name = "GetAccountStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/account/status", "code" => 200}}
      end)
      service.add_operation(:get_assessment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetAssessment"
        operation.name = "GetAssessment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssessmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssessmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessments/{assessmentId}", "code" => 200}}
      end)
      service.add_operation(:get_assessment_framework, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetAssessmentFramework"
        operation.name = "GetAssessmentFramework"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssessmentFrameworkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssessmentFrameworkResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessmentFrameworks/{frameworkId}", "code" => 200}}
      end)
      service.add_operation(:get_assessment_report_url, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetAssessmentReportUrl"
        operation.name = "GetAssessmentReportUrl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssessmentReportUrlRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssessmentReportUrlResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessments/{assessmentId}/reports/{assessmentReportId}/url", "code" => 200}}
      end)
      service.add_operation(:get_change_logs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetChangeLogs"
        operation.name = "GetChangeLogs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChangeLogsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChangeLogsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessments/{assessmentId}/changelogs", "code" => 200}}
        operation[:paginator] = Paginators::GetChangeLogs.new
      end)
      service.add_operation(:get_control, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetControl"
        operation.name = "GetControl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetControlRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetControlResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/controls/{controlId}", "code" => 200}}
      end)
      service.add_operation(:get_delegations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetDelegations"
        operation.name = "GetDelegations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDelegationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDelegationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/delegations", "code" => 200}}
        operation[:paginator] = Paginators::GetDelegations.new
      end)
      service.add_operation(:get_evidence, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetEvidence"
        operation.name = "GetEvidence"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvidenceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvidenceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessments/{assessmentId}/controlSets/{controlSetId}/evidenceFolders/{evidenceFolderId}/evidence/{evidenceId}", "code" => 200}}
      end)
      service.add_operation(:get_evidence_by_evidence_folder, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetEvidenceByEvidenceFolder"
        operation.name = "GetEvidenceByEvidenceFolder"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvidenceByEvidenceFolderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvidenceByEvidenceFolderResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessments/{assessmentId}/controlSets/{controlSetId}/evidenceFolders/{evidenceFolderId}/evidence", "code" => 200}}
        operation[:paginator] = Paginators::GetEvidenceByEvidenceFolder.new
      end)
      service.add_operation(:get_evidence_file_upload_url, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetEvidenceFileUploadUrl"
        operation.name = "GetEvidenceFileUploadUrl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvidenceFileUploadUrlRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvidenceFileUploadUrlResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/evidenceFileUploadUrl", "code" => 200}}
      end)
      service.add_operation(:get_evidence_folder, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetEvidenceFolder"
        operation.name = "GetEvidenceFolder"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvidenceFolderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvidenceFolderResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessments/{assessmentId}/controlSets/{controlSetId}/evidenceFolders/{evidenceFolderId}", "code" => 200}}
      end)
      service.add_operation(:get_evidence_folders_by_assessment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetEvidenceFoldersByAssessment"
        operation.name = "GetEvidenceFoldersByAssessment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvidenceFoldersByAssessmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvidenceFoldersByAssessmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessments/{assessmentId}/evidenceFolders", "code" => 200}}
        operation[:paginator] = Paginators::GetEvidenceFoldersByAssessment.new
      end)
      service.add_operation(:get_evidence_folders_by_assessment_control, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetEvidenceFoldersByAssessmentControl"
        operation.name = "GetEvidenceFoldersByAssessmentControl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvidenceFoldersByAssessmentControlRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvidenceFoldersByAssessmentControlResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessments/{assessmentId}/evidenceFolders-by-assessment-control/{controlSetId}/{controlId}", "code" => 200}}
        operation[:paginator] = Paginators::GetEvidenceFoldersByAssessmentControl.new
      end)
      service.add_operation(:get_insights, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetInsights"
        operation.name = "GetInsights"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/insights", "code" => 200}}
      end)
      service.add_operation(:get_insights_by_assessment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetInsightsByAssessment"
        operation.name = "GetInsightsByAssessment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightsByAssessmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightsByAssessmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/insights/assessments/{assessmentId}", "code" => 200}}
      end)
      service.add_operation(:get_organization_admin_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetOrganizationAdminAccount"
        operation.name = "GetOrganizationAdminAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetOrganizationAdminAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetOrganizationAdminAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/account/organizationAdminAccount", "code" => 200}}
      end)
      service.add_operation(:get_services_in_scope, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetServicesInScope"
        operation.name = "GetServicesInScope"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServicesInScopeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServicesInScopeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/services", "code" => 200}}
      end)
      service.add_operation(:get_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#GetSettings"
        operation.name = "GetSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/settings/{attribute}", "code" => 200}}
      end)
      service.add_operation(:list_assessment_control_insights_by_control_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ListAssessmentControlInsightsByControlDomain"
        operation.name = "ListAssessmentControlInsightsByControlDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentControlInsightsByControlDomainRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentControlInsightsByControlDomainResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/insights/controls-by-assessment", "code" => 200}}
        operation[:paginator] = Paginators::ListAssessmentControlInsightsByControlDomain.new
      end)
      service.add_operation(:list_assessment_framework_share_requests, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ListAssessmentFrameworkShareRequests"
        operation.name = "ListAssessmentFrameworkShareRequests"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentFrameworkShareRequestsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentFrameworkShareRequestsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessmentFrameworkShareRequests", "code" => 200}}
        operation[:paginator] = Paginators::ListAssessmentFrameworkShareRequests.new
      end)
      service.add_operation(:list_assessment_frameworks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ListAssessmentFrameworks"
        operation.name = "ListAssessmentFrameworks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentFrameworksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentFrameworksResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessmentFrameworks", "code" => 200}}
        operation[:paginator] = Paginators::ListAssessmentFrameworks.new
      end)
      service.add_operation(:list_assessment_reports, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ListAssessmentReports"
        operation.name = "ListAssessmentReports"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentReportsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentReportsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessmentReports", "code" => 200}}
        operation[:paginator] = Paginators::ListAssessmentReports.new
      end)
      service.add_operation(:list_assessments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ListAssessments"
        operation.name = "ListAssessments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assessments", "code" => 200}}
        operation[:paginator] = Paginators::ListAssessments.new
      end)
      service.add_operation(:list_control_domain_insights, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ListControlDomainInsights"
        operation.name = "ListControlDomainInsights"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlDomainInsightsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlDomainInsightsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/insights/control-domains", "code" => 200}}
        operation[:paginator] = Paginators::ListControlDomainInsights.new
      end)
      service.add_operation(:list_control_domain_insights_by_assessment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ListControlDomainInsightsByAssessment"
        operation.name = "ListControlDomainInsightsByAssessment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlDomainInsightsByAssessmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlDomainInsightsByAssessmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/insights/control-domains-by-assessment", "code" => 200}}
        operation[:paginator] = Paginators::ListControlDomainInsightsByAssessment.new
      end)
      service.add_operation(:list_control_insights_by_control_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ListControlInsightsByControlDomain"
        operation.name = "ListControlInsightsByControlDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlInsightsByControlDomainRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlInsightsByControlDomainResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/insights/controls", "code" => 200}}
        operation[:paginator] = Paginators::ListControlInsightsByControlDomain.new
      end)
      service.add_operation(:list_controls, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ListControls"
        operation.name = "ListControls"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/controls", "code" => 200}}
        operation[:paginator] = Paginators::ListControls.new
      end)
      service.add_operation(:list_keywords_for_data_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ListKeywordsForDataSource"
        operation.name = "ListKeywordsForDataSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeywordsForDataSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeywordsForDataSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/dataSourceKeywords", "code" => 200}}
        operation[:paginator] = Paginators::ListKeywordsForDataSource.new
      end)
      service.add_operation(:list_notifications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ListNotifications"
        operation.name = "ListNotifications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotificationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotificationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/notifications", "code" => 200}}
        operation[:paginator] = Paginators::ListNotifications.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:register_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#RegisterAccount"
        operation.name = "RegisterAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/account/registerAccount", "code" => 200}}
      end)
      service.add_operation(:register_organization_admin_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#RegisterOrganizationAdminAccount"
        operation.name = "RegisterOrganizationAdminAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterOrganizationAdminAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterOrganizationAdminAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/account/registerOrganizationAdminAccount", "code" => 200}}
      end)
      service.add_operation(:start_assessment_framework_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#StartAssessmentFrameworkShare"
        operation.name = "StartAssessmentFrameworkShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartAssessmentFrameworkShareRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartAssessmentFrameworkShareResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/assessmentFrameworks/{frameworkId}/shareRequests", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_assessment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#UpdateAssessment"
        operation.name = "UpdateAssessment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/assessments/{assessmentId}", "code" => 200}}
      end)
      service.add_operation(:update_assessment_control, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#UpdateAssessmentControl"
        operation.name = "UpdateAssessmentControl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentControlRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentControlResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/assessments/{assessmentId}/controlSets/{controlSetId}/controls/{controlId}", "code" => 200}}
      end)
      service.add_operation(:update_assessment_control_set_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#UpdateAssessmentControlSetStatus"
        operation.name = "UpdateAssessmentControlSetStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentControlSetStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentControlSetStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/assessments/{assessmentId}/controlSets/{controlSetId}/status", "code" => 200}}
      end)
      service.add_operation(:update_assessment_framework, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#UpdateAssessmentFramework"
        operation.name = "UpdateAssessmentFramework"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentFrameworkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentFrameworkResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/assessmentFrameworks/{frameworkId}", "code" => 200}}
      end)
      service.add_operation(:update_assessment_framework_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#UpdateAssessmentFrameworkShare"
        operation.name = "UpdateAssessmentFrameworkShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentFrameworkShareRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentFrameworkShareResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/assessmentFrameworkShareRequests/{requestId}", "code" => 200}}
      end)
      service.add_operation(:update_assessment_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#UpdateAssessmentStatus"
        operation.name = "UpdateAssessmentStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/assessments/{assessmentId}/status", "code" => 200}}
      end)
      service.add_operation(:update_control, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#UpdateControl"
        operation.name = "UpdateControl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateControlRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateControlResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/controls/{controlId}", "code" => 200}}
      end)
      service.add_operation(:update_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#UpdateSettings"
        operation.name = "UpdateSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/settings", "code" => 200}}
      end)
      service.add_operation(:validate_assessment_report_integrity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.auditmanager#ValidateAssessmentReportIntegrity"
        operation.name = "ValidateAssessmentReportIntegrity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateAssessmentReportIntegrityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateAssessmentReportIntegrityResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/assessmentReports/integrity", "code" => 200}}
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
