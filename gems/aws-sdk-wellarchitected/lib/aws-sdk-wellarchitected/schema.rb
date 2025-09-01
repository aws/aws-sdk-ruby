# frozen_string_literal: true

# This is generated code!

module Aws::WellArchitected
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountJiraConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#AccountJiraConfigurationInput', name: 'AccountJiraConfigurationInput')
    AccountJiraConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#AccountJiraConfigurationOutput', name: 'AccountJiraConfigurationOutput')
    AccountJiraIssueManagementStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#AccountJiraIssueManagementStatus', name: 'AccountJiraIssueManagementStatus')
    AccountSummary = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.wellarchitected#AccountSummary', name: 'AccountSummary')
    AdditionalResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#AdditionalResourceType', name: 'AdditionalResourceType')
    AdditionalResources = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#AdditionalResources', name: 'AdditionalResources')
    AdditionalResourcesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#AdditionalResourcesList', name: 'AdditionalResourcesList')
    Answer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#Answer', name: 'Answer')
    AnswerReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#AnswerReason', name: 'AnswerReason')
    AnswerSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#AnswerSummaries', name: 'AnswerSummaries')
    AnswerSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#AnswerSummary', name: 'AnswerSummary')
    ApplicationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#ApplicationArn', name: 'ApplicationArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2084}, "smithy.api#pattern" => "^arn:aws[-a-z]*:servicecatalog:[a-z]{2}(-gov)?-[a-z]+-\\d:\\d{12}:/applications/[a-z0-9]+$"})
    AssociateLensesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#AssociateLensesInput', name: 'AssociateLensesInput')
    AssociateProfilesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#AssociateProfilesInput', name: 'AssociateProfilesInput')
    AwsAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#AwsAccountId', name: 'AwsAccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    AwsRegion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#AwsRegion', name: 'AwsRegion', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Base64String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#Base64String', name: 'Base64String')
    BestPractice = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#BestPractice', name: 'BestPractice')
    BestPractices = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#BestPractices', name: 'BestPractices')
    CheckDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#CheckDescription', name: 'CheckDescription')
    CheckDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#CheckDetail', name: 'CheckDetail')
    CheckDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#CheckDetails', name: 'CheckDetails')
    CheckFailureReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#CheckFailureReason', name: 'CheckFailureReason')
    CheckId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#CheckId', name: 'CheckId')
    CheckName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#CheckName', name: 'CheckName')
    CheckProvider = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#CheckProvider', name: 'CheckProvider')
    CheckStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#CheckStatus', name: 'CheckStatus')
    CheckStatusCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wellarchitected#CheckStatusCount', name: 'CheckStatusCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 101}})
    CheckSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#CheckSummaries', name: 'CheckSummaries')
    CheckSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#CheckSummary', name: 'CheckSummary')
    Choice = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#Choice', name: 'Choice')
    ChoiceAnswer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ChoiceAnswer', name: 'ChoiceAnswer')
    ChoiceAnswerSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#ChoiceAnswerSummaries', name: 'ChoiceAnswerSummaries')
    ChoiceAnswerSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ChoiceAnswerSummary', name: 'ChoiceAnswerSummary')
    ChoiceAnswers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#ChoiceAnswers', name: 'ChoiceAnswers')
    ChoiceContent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ChoiceContent', name: 'ChoiceContent')
    ChoiceContentDisplayText = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#ChoiceContentDisplayText', name: 'ChoiceContentDisplayText', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ChoiceContentUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#ChoiceContentUrl', name: 'ChoiceContentUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ChoiceDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#ChoiceDescription', name: 'ChoiceDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ChoiceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#ChoiceId', name: 'ChoiceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ChoiceImprovementPlan = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ChoiceImprovementPlan', name: 'ChoiceImprovementPlan')
    ChoiceImprovementPlans = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#ChoiceImprovementPlans', name: 'ChoiceImprovementPlans')
    ChoiceNotes = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#ChoiceNotes', name: 'ChoiceNotes', traits: {"smithy.api#length" => {"min" => 0, "max" => 250}})
    ChoiceReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#ChoiceReason', name: 'ChoiceReason')
    ChoiceStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#ChoiceStatus', name: 'ChoiceStatus')
    ChoiceTitle = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#ChoiceTitle', name: 'ChoiceTitle', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ChoiceUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ChoiceUpdate', name: 'ChoiceUpdate')
    ChoiceUpdates = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.wellarchitected#ChoiceUpdates', name: 'ChoiceUpdates')
    Choices = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#Choices', name: 'Choices')
    ClientRequestToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#ClientRequestToken', name: 'ClientRequestToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConsolidatedReportMetric = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ConsolidatedReportMetric', name: 'ConsolidatedReportMetric')
    ConsolidatedReportMetrics = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#ConsolidatedReportMetrics', name: 'ConsolidatedReportMetrics')
    Count = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wellarchitected#Count', name: 'Count', traits: {"smithy.api#range" => {"min" => 0}})
    CreateLensShareInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#CreateLensShareInput', name: 'CreateLensShareInput')
    CreateLensShareOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#CreateLensShareOutput', name: 'CreateLensShareOutput')
    CreateLensVersionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#CreateLensVersionInput', name: 'CreateLensVersionInput')
    CreateLensVersionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#CreateLensVersionOutput', name: 'CreateLensVersionOutput')
    CreateMilestoneInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#CreateMilestoneInput', name: 'CreateMilestoneInput')
    CreateMilestoneOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#CreateMilestoneOutput', name: 'CreateMilestoneOutput')
    CreateProfileInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#CreateProfileInput', name: 'CreateProfileInput')
    CreateProfileOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#CreateProfileOutput', name: 'CreateProfileOutput')
    CreateProfileShareInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#CreateProfileShareInput', name: 'CreateProfileShareInput')
    CreateProfileShareOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#CreateProfileShareOutput', name: 'CreateProfileShareOutput')
    CreateReviewTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#CreateReviewTemplateInput', name: 'CreateReviewTemplateInput')
    CreateReviewTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#CreateReviewTemplateOutput', name: 'CreateReviewTemplateOutput')
    CreateTemplateShareInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#CreateTemplateShareInput', name: 'CreateTemplateShareInput')
    CreateTemplateShareOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#CreateTemplateShareOutput', name: 'CreateTemplateShareOutput')
    CreateWorkloadInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#CreateWorkloadInput', name: 'CreateWorkloadInput')
    CreateWorkloadOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#CreateWorkloadOutput', name: 'CreateWorkloadOutput')
    CreateWorkloadShareInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#CreateWorkloadShareInput', name: 'CreateWorkloadShareInput')
    CreateWorkloadShareOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#CreateWorkloadShareOutput', name: 'CreateWorkloadShareOutput')
    DefinitionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#DefinitionType', name: 'DefinitionType')
    DeleteLensInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#DeleteLensInput', name: 'DeleteLensInput')
    DeleteLensShareInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#DeleteLensShareInput', name: 'DeleteLensShareInput')
    DeleteProfileInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#DeleteProfileInput', name: 'DeleteProfileInput')
    DeleteProfileShareInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#DeleteProfileShareInput', name: 'DeleteProfileShareInput')
    DeleteReviewTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#DeleteReviewTemplateInput', name: 'DeleteReviewTemplateInput')
    DeleteTemplateShareInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#DeleteTemplateShareInput', name: 'DeleteTemplateShareInput')
    DeleteWorkloadInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#DeleteWorkloadInput', name: 'DeleteWorkloadInput')
    DeleteWorkloadShareInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#DeleteWorkloadShareInput', name: 'DeleteWorkloadShareInput')
    DifferenceStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#DifferenceStatus', name: 'DifferenceStatus')
    DisassociateLensesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#DisassociateLensesInput', name: 'DisassociateLensesInput')
    DisassociateProfilesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#DisassociateProfilesInput', name: 'DisassociateProfilesInput')
    DiscoveryIntegrationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#DiscoveryIntegrationStatus', name: 'DiscoveryIntegrationStatus')
    DisplayText = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#DisplayText', name: 'DisplayText', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#ExceptionMessage', name: 'ExceptionMessage')
    ExceptionResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#ExceptionResourceId', name: 'ExceptionResourceId')
    ExceptionResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#ExceptionResourceType', name: 'ExceptionResourceType')
    ExportLensInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ExportLensInput', name: 'ExportLensInput')
    ExportLensOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ExportLensOutput', name: 'ExportLensOutput')
    FlaggedResources = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wellarchitected#FlaggedResources', name: 'FlaggedResources', traits: {"smithy.api#range" => {"min" => 1, "max" => 9999}})
    GetAnswerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetAnswerInput', name: 'GetAnswerInput')
    GetAnswerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetAnswerOutput', name: 'GetAnswerOutput')
    GetConsolidatedReportInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetConsolidatedReportInput', name: 'GetConsolidatedReportInput')
    GetConsolidatedReportMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wellarchitected#GetConsolidatedReportMaxResults', name: 'GetConsolidatedReportMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 15}})
    GetConsolidatedReportOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetConsolidatedReportOutput', name: 'GetConsolidatedReportOutput')
    GetGlobalSettingsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetGlobalSettingsOutput', name: 'GetGlobalSettingsOutput')
    GetLensInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetLensInput', name: 'GetLensInput')
    GetLensOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetLensOutput', name: 'GetLensOutput')
    GetLensReviewInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetLensReviewInput', name: 'GetLensReviewInput')
    GetLensReviewOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetLensReviewOutput', name: 'GetLensReviewOutput')
    GetLensReviewReportInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetLensReviewReportInput', name: 'GetLensReviewReportInput')
    GetLensReviewReportOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetLensReviewReportOutput', name: 'GetLensReviewReportOutput')
    GetLensVersionDifferenceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetLensVersionDifferenceInput', name: 'GetLensVersionDifferenceInput')
    GetLensVersionDifferenceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetLensVersionDifferenceOutput', name: 'GetLensVersionDifferenceOutput')
    GetMilestoneInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetMilestoneInput', name: 'GetMilestoneInput')
    GetMilestoneOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetMilestoneOutput', name: 'GetMilestoneOutput')
    GetProfileInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetProfileInput', name: 'GetProfileInput')
    GetProfileOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetProfileOutput', name: 'GetProfileOutput')
    GetProfileTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetProfileTemplateInput', name: 'GetProfileTemplateInput')
    GetProfileTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetProfileTemplateOutput', name: 'GetProfileTemplateOutput')
    GetReviewTemplateAnswerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetReviewTemplateAnswerInput', name: 'GetReviewTemplateAnswerInput')
    GetReviewTemplateAnswerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetReviewTemplateAnswerOutput', name: 'GetReviewTemplateAnswerOutput')
    GetReviewTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetReviewTemplateInput', name: 'GetReviewTemplateInput')
    GetReviewTemplateLensReviewInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetReviewTemplateLensReviewInput', name: 'GetReviewTemplateLensReviewInput')
    GetReviewTemplateLensReviewOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetReviewTemplateLensReviewOutput', name: 'GetReviewTemplateLensReviewOutput')
    GetReviewTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetReviewTemplateOutput', name: 'GetReviewTemplateOutput')
    GetWorkloadInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetWorkloadInput', name: 'GetWorkloadInput')
    GetWorkloadOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#GetWorkloadOutput', name: 'GetWorkloadOutput')
    HelpfulResourceUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#HelpfulResourceUrl', name: 'HelpfulResourceUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ImportLensInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ImportLensInput', name: 'ImportLensInput')
    ImportLensOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ImportLensOutput', name: 'ImportLensOutput')
    ImportLensStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#ImportLensStatus', name: 'ImportLensStatus')
    ImprovementPlanUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#ImprovementPlanUrl', name: 'ImprovementPlanUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ImprovementSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#ImprovementSummaries', name: 'ImprovementSummaries')
    ImprovementSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ImprovementSummary', name: 'ImprovementSummary')
    IncludeSharedResources = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.wellarchitected#IncludeSharedResources', name: 'IncludeSharedResources')
    IntegratingService = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#IntegratingService', name: 'IntegratingService')
    IntegrationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#IntegrationStatus', name: 'IntegrationStatus')
    IntegrationStatusInput = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#IntegrationStatusInput', name: 'IntegrationStatusInput')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IsApplicable = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.wellarchitected#IsApplicable', name: 'IsApplicable')
    IsMajorVersion = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.wellarchitected#IsMajorVersion', name: 'IsMajorVersion')
    IsReviewOwnerUpdateAcknowledged = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.wellarchitected#IsReviewOwnerUpdateAcknowledged', name: 'IsReviewOwnerUpdateAcknowledged')
    IssueManagementType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#IssueManagementType', name: 'IssueManagementType')
    JiraConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#JiraConfiguration', name: 'JiraConfiguration')
    JiraIssueUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#JiraIssueUrl', name: 'JiraIssueUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    JiraProjectKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#JiraProjectKey', name: 'JiraProjectKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Z][A-Z0-9_]*$"})
    JiraSelectedQuestionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#JiraSelectedQuestionConfiguration', name: 'JiraSelectedQuestionConfiguration')
    Lens = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#Lens', name: 'Lens')
    LensAlias = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#LensAlias', name: 'LensAlias', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    LensAliases = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#LensAliases', name: 'LensAliases', traits: {"smithy.api#length" => {"min" => 1}})
    LensArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#LensArn', name: 'LensArn')
    LensDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#LensDescription', name: 'LensDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    LensJSON = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#LensJSON', name: 'LensJSON', traits: {"smithy.api#length" => {"min" => 2, "max" => 500000}})
    LensMetric = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#LensMetric', name: 'LensMetric')
    LensMetrics = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#LensMetrics', name: 'LensMetrics')
    LensName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#LensName', name: 'LensName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    LensNamePrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#LensNamePrefix', name: 'LensNamePrefix', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    LensOwner = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#LensOwner', name: 'LensOwner')
    LensReview = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#LensReview', name: 'LensReview')
    LensReviewReport = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#LensReviewReport', name: 'LensReviewReport')
    LensReviewSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#LensReviewSummaries', name: 'LensReviewSummaries')
    LensReviewSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#LensReviewSummary', name: 'LensReviewSummary')
    LensShareSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#LensShareSummaries', name: 'LensShareSummaries')
    LensShareSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#LensShareSummary', name: 'LensShareSummary')
    LensStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#LensStatus', name: 'LensStatus')
    LensStatusType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#LensStatusType', name: 'LensStatusType')
    LensSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#LensSummaries', name: 'LensSummaries')
    LensSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#LensSummary', name: 'LensSummary')
    LensType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#LensType', name: 'LensType')
    LensUpgradeSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#LensUpgradeSummary', name: 'LensUpgradeSummary')
    LensVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#LensVersion', name: 'LensVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    LensesAppliedCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wellarchitected#LensesAppliedCount', name: 'LensesAppliedCount', traits: {"smithy.api#range" => {"min" => 0}})
    ListAnswersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListAnswersInput', name: 'ListAnswersInput')
    ListAnswersMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wellarchitected#ListAnswersMaxResults', name: 'ListAnswersMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListAnswersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListAnswersOutput', name: 'ListAnswersOutput')
    ListCheckDetailsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListCheckDetailsInput', name: 'ListCheckDetailsInput')
    ListCheckDetailsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListCheckDetailsOutput', name: 'ListCheckDetailsOutput')
    ListCheckSummariesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListCheckSummariesInput', name: 'ListCheckSummariesInput')
    ListCheckSummariesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListCheckSummariesOutput', name: 'ListCheckSummariesOutput')
    ListLensReviewImprovementsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListLensReviewImprovementsInput', name: 'ListLensReviewImprovementsInput')
    ListLensReviewImprovementsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wellarchitected#ListLensReviewImprovementsMaxResults', name: 'ListLensReviewImprovementsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListLensReviewImprovementsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListLensReviewImprovementsOutput', name: 'ListLensReviewImprovementsOutput')
    ListLensReviewsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListLensReviewsInput', name: 'ListLensReviewsInput')
    ListLensReviewsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListLensReviewsOutput', name: 'ListLensReviewsOutput')
    ListLensSharesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListLensSharesInput', name: 'ListLensSharesInput')
    ListLensSharesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListLensSharesOutput', name: 'ListLensSharesOutput')
    ListLensesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListLensesInput', name: 'ListLensesInput')
    ListLensesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListLensesOutput', name: 'ListLensesOutput')
    ListMilestonesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListMilestonesInput', name: 'ListMilestonesInput')
    ListMilestonesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListMilestonesOutput', name: 'ListMilestonesOutput')
    ListNotificationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListNotificationsInput', name: 'ListNotificationsInput')
    ListNotificationsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wellarchitected#ListNotificationsMaxResults', name: 'ListNotificationsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListNotificationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListNotificationsOutput', name: 'ListNotificationsOutput')
    ListProfileNotificationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListProfileNotificationsInput', name: 'ListProfileNotificationsInput')
    ListProfileNotificationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListProfileNotificationsOutput', name: 'ListProfileNotificationsOutput')
    ListProfileSharesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListProfileSharesInput', name: 'ListProfileSharesInput')
    ListProfileSharesMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wellarchitected#ListProfileSharesMaxResults', name: 'ListProfileSharesMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListProfileSharesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListProfileSharesOutput', name: 'ListProfileSharesOutput')
    ListProfilesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListProfilesInput', name: 'ListProfilesInput')
    ListProfilesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListProfilesOutput', name: 'ListProfilesOutput')
    ListReviewTemplateAnswersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListReviewTemplateAnswersInput', name: 'ListReviewTemplateAnswersInput')
    ListReviewTemplateAnswersMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wellarchitected#ListReviewTemplateAnswersMaxResults', name: 'ListReviewTemplateAnswersMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListReviewTemplateAnswersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListReviewTemplateAnswersOutput', name: 'ListReviewTemplateAnswersOutput')
    ListReviewTemplatesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListReviewTemplatesInput', name: 'ListReviewTemplatesInput')
    ListReviewTemplatesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListReviewTemplatesOutput', name: 'ListReviewTemplatesOutput')
    ListShareInvitationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListShareInvitationsInput', name: 'ListShareInvitationsInput')
    ListShareInvitationsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wellarchitected#ListShareInvitationsMaxResults', name: 'ListShareInvitationsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListShareInvitationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListShareInvitationsOutput', name: 'ListShareInvitationsOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListTemplateSharesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListTemplateSharesInput', name: 'ListTemplateSharesInput')
    ListTemplateSharesMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wellarchitected#ListTemplateSharesMaxResults', name: 'ListTemplateSharesMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListTemplateSharesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListTemplateSharesOutput', name: 'ListTemplateSharesOutput')
    ListWorkloadSharesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListWorkloadSharesInput', name: 'ListWorkloadSharesInput')
    ListWorkloadSharesMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wellarchitected#ListWorkloadSharesMaxResults', name: 'ListWorkloadSharesMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListWorkloadSharesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListWorkloadSharesOutput', name: 'ListWorkloadSharesOutput')
    ListWorkloadsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListWorkloadsInput', name: 'ListWorkloadsInput')
    ListWorkloadsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wellarchitected#ListWorkloadsMaxResults', name: 'ListWorkloadsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListWorkloadsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ListWorkloadsOutput', name: 'ListWorkloadsOutput')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wellarchitected#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxSelectedProfileChoices = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wellarchitected#MaxSelectedProfileChoices', name: 'MaxSelectedProfileChoices', traits: {"smithy.api#range" => {"min" => 0}})
    MetricType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#MetricType', name: 'MetricType')
    Milestone = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#Milestone', name: 'Milestone')
    MilestoneName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#MilestoneName', name: 'MilestoneName', traits: {"smithy.api#length" => {"min" => 3, "max" => 100}})
    MilestoneNumber = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wellarchitected#MilestoneNumber', name: 'MilestoneNumber', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MilestoneSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#MilestoneSummaries', name: 'MilestoneSummaries')
    MilestoneSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#MilestoneSummary', name: 'MilestoneSummary')
    MinSelectedProfileChoices = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wellarchitected#MinSelectedProfileChoices', name: 'MinSelectedProfileChoices', traits: {"smithy.api#range" => {"min" => 0}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#NextToken', name: 'NextToken')
    Notes = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#Notes', name: 'Notes', traits: {"smithy.api#length" => {"min" => 0, "max" => 2084}})
    NotificationSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#NotificationSummaries', name: 'NotificationSummaries')
    NotificationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#NotificationSummary', name: 'NotificationSummary')
    NotificationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#NotificationType', name: 'NotificationType')
    OrganizationSharingStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#OrganizationSharingStatus', name: 'OrganizationSharingStatus')
    PermissionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#PermissionType', name: 'PermissionType')
    PillarDifference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#PillarDifference', name: 'PillarDifference')
    PillarDifferences = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#PillarDifferences', name: 'PillarDifferences')
    PillarId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#PillarId', name: 'PillarId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    PillarMetric = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#PillarMetric', name: 'PillarMetric')
    PillarMetrics = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#PillarMetrics', name: 'PillarMetrics')
    PillarName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#PillarName', name: 'PillarName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    PillarNotes = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.wellarchitected#PillarNotes', name: 'PillarNotes')
    PillarReviewSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#PillarReviewSummaries', name: 'PillarReviewSummaries')
    PillarReviewSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#PillarReviewSummary', name: 'PillarReviewSummary')
    Profile = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#Profile', name: 'Profile')
    ProfileArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#ProfileArn', name: 'ProfileArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2084}, "smithy.api#pattern" => "^arn:aws[-a-z]*:wellarchitected:[a-z]{2}(-gov)?-[a-z]+-\\d:\\d{12}:profile/[a-z0-9]+$"})
    ProfileArns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#ProfileArns', name: 'ProfileArns', traits: {"smithy.api#length" => {"min" => 1}})
    ProfileChoice = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ProfileChoice', name: 'ProfileChoice')
    ProfileDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#ProfileDescription', name: 'ProfileDescription', traits: {"smithy.api#length" => {"min" => 3, "max" => 100}})
    ProfileName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#ProfileName', name: 'ProfileName', traits: {"smithy.api#length" => {"min" => 3, "max" => 100}})
    ProfileNamePrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#ProfileNamePrefix', name: 'ProfileNamePrefix', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ProfileNotificationSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#ProfileNotificationSummaries', name: 'ProfileNotificationSummaries')
    ProfileNotificationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ProfileNotificationSummary', name: 'ProfileNotificationSummary')
    ProfileNotificationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#ProfileNotificationType', name: 'ProfileNotificationType')
    ProfileOwnerType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#ProfileOwnerType', name: 'ProfileOwnerType')
    ProfileQuestion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ProfileQuestion', name: 'ProfileQuestion')
    ProfileQuestionChoices = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#ProfileQuestionChoices', name: 'ProfileQuestionChoices')
    ProfileQuestionUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ProfileQuestionUpdate', name: 'ProfileQuestionUpdate')
    ProfileQuestionUpdates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#ProfileQuestionUpdates', name: 'ProfileQuestionUpdates')
    ProfileQuestions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#ProfileQuestions', name: 'ProfileQuestions')
    ProfileShareSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#ProfileShareSummaries', name: 'ProfileShareSummaries')
    ProfileShareSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ProfileShareSummary', name: 'ProfileShareSummary')
    ProfileSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#ProfileSummaries', name: 'ProfileSummaries')
    ProfileSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ProfileSummary', name: 'ProfileSummary')
    ProfileTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ProfileTemplate', name: 'ProfileTemplate')
    ProfileTemplateChoice = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ProfileTemplateChoice', name: 'ProfileTemplateChoice')
    ProfileTemplateQuestion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ProfileTemplateQuestion', name: 'ProfileTemplateQuestion')
    ProfileTemplateQuestionChoices = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#ProfileTemplateQuestionChoices', name: 'ProfileTemplateQuestionChoices')
    ProfileVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#ProfileVersion', name: 'ProfileVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[A-Za-z0-9-]+$"})
    Question = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#Question', name: 'Question')
    QuestionCounts = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.wellarchitected#QuestionCounts', name: 'QuestionCounts')
    QuestionDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#QuestionDescription', name: 'QuestionDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    QuestionDifference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#QuestionDifference', name: 'QuestionDifference')
    QuestionDifferences = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#QuestionDifferences', name: 'QuestionDifferences')
    QuestionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#QuestionId', name: 'QuestionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    QuestionMetric = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#QuestionMetric', name: 'QuestionMetric')
    QuestionMetrics = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#QuestionMetrics', name: 'QuestionMetrics')
    QuestionPriority = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#QuestionPriority', name: 'QuestionPriority')
    QuestionTitle = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#QuestionTitle', name: 'QuestionTitle', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    QuestionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#QuestionType', name: 'QuestionType')
    QuotaCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#QuotaCode', name: 'QuotaCode')
    ReportFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#ReportFormat', name: 'ReportFormat')
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 50, "max" => 250}, "smithy.api#pattern" => "^arn:aws(-us-gov|-iso(-[a-z])?|-cn)?:wellarchitected:[a-z]{2}(-gov|-iso([a-z])?)?-[a-z]+-\\d:\\d{12}:(review-template)/[a-f0-9]{32}$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReviewTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ReviewTemplate', name: 'ReviewTemplate')
    ReviewTemplateAnswer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ReviewTemplateAnswer', name: 'ReviewTemplateAnswer')
    ReviewTemplateAnswerStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#ReviewTemplateAnswerStatus', name: 'ReviewTemplateAnswerStatus')
    ReviewTemplateAnswerSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#ReviewTemplateAnswerSummaries', name: 'ReviewTemplateAnswerSummaries')
    ReviewTemplateAnswerSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ReviewTemplateAnswerSummary', name: 'ReviewTemplateAnswerSummary')
    ReviewTemplateArns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#ReviewTemplateArns', name: 'ReviewTemplateArns', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    ReviewTemplateLensAliases = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#ReviewTemplateLensAliases', name: 'ReviewTemplateLensAliases', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ReviewTemplateLensReview = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ReviewTemplateLensReview', name: 'ReviewTemplateLensReview')
    ReviewTemplateLenses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#ReviewTemplateLenses', name: 'ReviewTemplateLenses')
    ReviewTemplatePillarReviewSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#ReviewTemplatePillarReviewSummaries', name: 'ReviewTemplatePillarReviewSummaries')
    ReviewTemplatePillarReviewSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ReviewTemplatePillarReviewSummary', name: 'ReviewTemplatePillarReviewSummary')
    ReviewTemplateSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ReviewTemplateSummary', name: 'ReviewTemplateSummary')
    ReviewTemplateUpdateStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#ReviewTemplateUpdateStatus', name: 'ReviewTemplateUpdateStatus')
    ReviewTemplates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#ReviewTemplates', name: 'ReviewTemplates')
    Risk = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#Risk', name: 'Risk')
    RiskCounts = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.wellarchitected#RiskCounts', name: 'RiskCounts')
    SelectedChoiceIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#SelectedChoiceIds', name: 'SelectedChoiceIds')
    SelectedChoices = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#SelectedChoices', name: 'SelectedChoices')
    SelectedPillar = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#SelectedPillar', name: 'SelectedPillar')
    SelectedPillars = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#SelectedPillars', name: 'SelectedPillars')
    SelectedProfileChoiceIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#SelectedProfileChoiceIds', name: 'SelectedProfileChoiceIds')
    SelectedQuestionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#SelectedQuestionId', name: 'SelectedQuestionId')
    SelectedQuestionIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#SelectedQuestionIds', name: 'SelectedQuestionIds')
    ServiceCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#ServiceCode', name: 'ServiceCode')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ShareId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#ShareId', name: 'ShareId', traits: {"smithy.api#pattern" => "^[0-9a-f]{32}$"})
    ShareInvitation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ShareInvitation', name: 'ShareInvitation')
    ShareInvitationAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#ShareInvitationAction', name: 'ShareInvitationAction')
    ShareInvitationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#ShareInvitationId', name: 'ShareInvitationId', traits: {"smithy.api#pattern" => "^[0-9a-f]{32}$"})
    ShareInvitationSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#ShareInvitationSummaries', name: 'ShareInvitationSummaries')
    ShareInvitationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ShareInvitationSummary', name: 'ShareInvitationSummary')
    ShareResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#ShareResourceType', name: 'ShareResourceType')
    ShareStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#ShareStatus', name: 'ShareStatus')
    SharedWith = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#SharedWith', name: 'SharedWith', traits: {"smithy.api#length" => {"min" => 12, "max" => 2048}})
    SharedWithPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#SharedWithPrefix', name: 'SharedWithPrefix', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    StatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#StatusMessage', name: 'StatusMessage', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    Subdomain = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#Subdomain', name: 'Subdomain', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.wellarchitected#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TemplateArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#TemplateArn', name: 'TemplateArn', traits: {"smithy.api#length" => {"min" => 50, "max" => 250}, "smithy.api#pattern" => "^arn:aws(-us-gov|-iso(-[a-z])?|-cn)?:wellarchitected:[a-z]{2}(-gov|-iso([a-z])?)?-[a-z]+-\\d:\\d{12}:(review-template)/[a-f0-9]{32}$"})
    TemplateDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#TemplateDescription', name: 'TemplateDescription', traits: {"smithy.api#length" => {"min" => 3, "max" => 250}, "smithy.api#pattern" => "^[A-Za-z0-9-_.,:/()@!&?#+'’\\s]+$"})
    TemplateName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#TemplateName', name: 'TemplateName', traits: {"smithy.api#length" => {"min" => 3, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9-_.,:/()@!&?#+'’\\s]+$"})
    TemplateNamePrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#TemplateNamePrefix', name: 'TemplateNamePrefix', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9-_.,:/()@!&?#+'’\\s]+$"})
    TemplateQuestions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#TemplateQuestions', name: 'TemplateQuestions')
    TemplateShareSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#TemplateShareSummaries', name: 'TemplateShareSummaries')
    TemplateShareSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#TemplateShareSummary', name: 'TemplateShareSummary')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.wellarchitected#Timestamp', name: 'Timestamp')
    TrustedAdvisorIntegrationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#TrustedAdvisorIntegrationStatus', name: 'TrustedAdvisorIntegrationStatus')
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateAnswerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#UpdateAnswerInput', name: 'UpdateAnswerInput')
    UpdateAnswerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#UpdateAnswerOutput', name: 'UpdateAnswerOutput')
    UpdateGlobalSettingsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#UpdateGlobalSettingsInput', name: 'UpdateGlobalSettingsInput')
    UpdateIntegrationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#UpdateIntegrationInput', name: 'UpdateIntegrationInput')
    UpdateLensReviewInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#UpdateLensReviewInput', name: 'UpdateLensReviewInput')
    UpdateLensReviewOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#UpdateLensReviewOutput', name: 'UpdateLensReviewOutput')
    UpdateProfileInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#UpdateProfileInput', name: 'UpdateProfileInput')
    UpdateProfileOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#UpdateProfileOutput', name: 'UpdateProfileOutput')
    UpdateReviewTemplateAnswerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#UpdateReviewTemplateAnswerInput', name: 'UpdateReviewTemplateAnswerInput')
    UpdateReviewTemplateAnswerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#UpdateReviewTemplateAnswerOutput', name: 'UpdateReviewTemplateAnswerOutput')
    UpdateReviewTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#UpdateReviewTemplateInput', name: 'UpdateReviewTemplateInput')
    UpdateReviewTemplateLensReviewInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#UpdateReviewTemplateLensReviewInput', name: 'UpdateReviewTemplateLensReviewInput')
    UpdateReviewTemplateLensReviewOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#UpdateReviewTemplateLensReviewOutput', name: 'UpdateReviewTemplateLensReviewOutput')
    UpdateReviewTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#UpdateReviewTemplateOutput', name: 'UpdateReviewTemplateOutput')
    UpdateShareInvitationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#UpdateShareInvitationInput', name: 'UpdateShareInvitationInput')
    UpdateShareInvitationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#UpdateShareInvitationOutput', name: 'UpdateShareInvitationOutput')
    UpdateWorkloadInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#UpdateWorkloadInput', name: 'UpdateWorkloadInput')
    UpdateWorkloadOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#UpdateWorkloadOutput', name: 'UpdateWorkloadOutput')
    UpdateWorkloadShareInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#UpdateWorkloadShareInput', name: 'UpdateWorkloadShareInput')
    UpdateWorkloadShareOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#UpdateWorkloadShareOutput', name: 'UpdateWorkloadShareOutput')
    UpgradeLensReviewInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#UpgradeLensReviewInput', name: 'UpgradeLensReviewInput')
    UpgradeProfileVersionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#UpgradeProfileVersionInput', name: 'UpgradeProfileVersionInput')
    UpgradeReviewTemplateLensReviewInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#UpgradeReviewTemplateLensReviewInput', name: 'UpgradeReviewTemplateLensReviewInput')
    Urls = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#Urls', name: 'Urls')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionFieldName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#ValidationExceptionFieldName', name: 'ValidationExceptionFieldName')
    ValidationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#ValidationExceptionReason', name: 'ValidationExceptionReason')
    VersionDifferences = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#VersionDifferences', name: 'VersionDifferences')
    Workload = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#Workload', name: 'Workload')
    WorkloadAccountIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#WorkloadAccountIds', name: 'WorkloadAccountIds', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    WorkloadApplications = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#WorkloadApplications', name: 'WorkloadApplications', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    WorkloadArchitecturalDesign = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#WorkloadArchitecturalDesign', name: 'WorkloadArchitecturalDesign', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^(|(https?|ftp):\\/\\/[^\\s/$.?#].[^\\s]*)$"})
    WorkloadArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#WorkloadArn', name: 'WorkloadArn')
    WorkloadAwsRegions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#WorkloadAwsRegions', name: 'WorkloadAwsRegions', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    WorkloadDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#WorkloadDescription', name: 'WorkloadDescription', traits: {"smithy.api#length" => {"min" => 3, "max" => 250}})
    WorkloadDiscoveryConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#WorkloadDiscoveryConfig', name: 'WorkloadDiscoveryConfig')
    WorkloadEnvironment = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#WorkloadEnvironment', name: 'WorkloadEnvironment')
    WorkloadId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#WorkloadId', name: 'WorkloadId', traits: {"smithy.api#length" => {"min" => 32, "max" => 32}, "smithy.api#pattern" => "^[0-9a-f]{32}$"})
    WorkloadImprovementStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#WorkloadImprovementStatus', name: 'WorkloadImprovementStatus')
    WorkloadIndustry = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#WorkloadIndustry', name: 'WorkloadIndustry', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    WorkloadIndustryType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#WorkloadIndustryType', name: 'WorkloadIndustryType', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    WorkloadIssueManagementStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.wellarchitected#WorkloadIssueManagementStatus', name: 'WorkloadIssueManagementStatus')
    WorkloadJiraConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#WorkloadJiraConfigurationInput', name: 'WorkloadJiraConfigurationInput')
    WorkloadJiraConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#WorkloadJiraConfigurationOutput', name: 'WorkloadJiraConfigurationOutput')
    WorkloadLenses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#WorkloadLenses', name: 'WorkloadLenses')
    WorkloadName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#WorkloadName', name: 'WorkloadName', traits: {"smithy.api#length" => {"min" => 3, "max" => 100}})
    WorkloadNamePrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#WorkloadNamePrefix', name: 'WorkloadNamePrefix', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    WorkloadNonAwsRegion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#WorkloadNonAwsRegion', name: 'WorkloadNonAwsRegion', traits: {"smithy.api#length" => {"min" => 3, "max" => 25}})
    WorkloadNonAwsRegions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#WorkloadNonAwsRegions', name: 'WorkloadNonAwsRegions', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    WorkloadPillarPriorities = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#WorkloadPillarPriorities', name: 'WorkloadPillarPriorities')
    WorkloadProfile = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#WorkloadProfile', name: 'WorkloadProfile')
    WorkloadProfileArns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#WorkloadProfileArns', name: 'WorkloadProfileArns', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    WorkloadProfiles = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#WorkloadProfiles', name: 'WorkloadProfiles', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    WorkloadResourceDefinition = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#WorkloadResourceDefinition', name: 'WorkloadResourceDefinition')
    WorkloadReviewOwner = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wellarchitected#WorkloadReviewOwner', name: 'WorkloadReviewOwner', traits: {"smithy.api#length" => {"min" => 3, "max" => 255}})
    WorkloadShare = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#WorkloadShare', name: 'WorkloadShare')
    WorkloadShareSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#WorkloadShareSummaries', name: 'WorkloadShareSummaries')
    WorkloadShareSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#WorkloadShareSummary', name: 'WorkloadShareSummary')
    WorkloadSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wellarchitected#WorkloadSummaries', name: 'WorkloadSummaries')
    WorkloadSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wellarchitected#WorkloadSummary', name: 'WorkloadSummary')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountJiraConfigurationInput.add_member(:issue_management_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountJiraIssueManagementStatus, location_name: 'IssueManagementStatus', traits: {"smithy.api#documentation" => "<p>Account-level: Jira issue management status.</p>"}))
    AccountJiraConfigurationInput.add_member(:issue_management_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IssueManagementType, location_name: 'IssueManagementType', traits: {"smithy.api#documentation" => "<p>Account-level: Jira issue management type.</p>"}))
    AccountJiraConfigurationInput.add_member(:jira_project_key, Smithy::Schema::Shapes::ShapeRef.new(shape: JiraProjectKey, location_name: 'JiraProjectKey', traits: {"smithy.api#documentation" => "<p>Account-level: Jira project key to sync workloads to.</p>"}))
    AccountJiraConfigurationInput.add_member(:integration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationStatusInput, location_name: 'IntegrationStatus', traits: {"smithy.api#documentation" => "<p>Account-level: Configuration status of the Jira integration.</p>"}))
    AccountJiraConfigurationInput.type = Types::AccountJiraConfigurationInput
    AccountJiraConfigurationOutput.add_member(:integration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationStatus, location_name: 'IntegrationStatus', traits: {"smithy.api#documentation" => "<p>Account-level: Configuration status of the Jira integration.</p>"}))
    AccountJiraConfigurationOutput.add_member(:issue_management_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountJiraIssueManagementStatus, location_name: 'IssueManagementStatus', traits: {"smithy.api#documentation" => "<p>Account-level: Jira issue management status.</p>"}))
    AccountJiraConfigurationOutput.add_member(:issue_management_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IssueManagementType, location_name: 'IssueManagementType', traits: {"smithy.api#documentation" => "<p>Account-level: Jira issue management type.</p>"}))
    AccountJiraConfigurationOutput.add_member(:subdomain, Smithy::Schema::Shapes::ShapeRef.new(shape: Subdomain, location_name: 'Subdomain', traits: {"smithy.api#documentation" => "<p>Account-level: Jira subdomain URL.</p>"}))
    AccountJiraConfigurationOutput.add_member(:jira_project_key, Smithy::Schema::Shapes::ShapeRef.new(shape: JiraProjectKey, location_name: 'JiraProjectKey', traits: {"smithy.api#documentation" => "<p>Account-level: Jira project key to sync workloads to.</p>"}))
    AccountJiraConfigurationOutput.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>Account-level: Status message on configuration of the Jira integration.</p>"}))
    AccountJiraConfigurationOutput.type = Types::AccountJiraConfigurationOutput
    AccountJiraIssueManagementStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    AccountJiraIssueManagementStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    AccountSummary.key = Smithy::Schema::Shapes::ShapeRef.new(shape: CheckStatus)
    AccountSummary.value = Smithy::Schema::Shapes::ShapeRef.new(shape: CheckStatusCount)
    AdditionalResourceType.add_member(:helpful_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HELPFUL_RESOURCE', traits: {"smithy.api#enumValue" => "HELPFUL_RESOURCE"}))
    AdditionalResourceType.add_member(:improvement_plan, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPROVEMENT_PLAN', traits: {"smithy.api#enumValue" => "IMPROVEMENT_PLAN"}))
    AdditionalResources.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalResourceType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Type of additional resource for a custom lens.</p>"}))
    AdditionalResources.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: Urls, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The URLs for additional resources, either helpful resources or improvement plans, for a custom lens. Up to five additional URLs can be specified.</p>"}))
    AdditionalResources.type = Types::AdditionalResources
    AdditionalResourcesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalResources)
    Answer.add_member(:question_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionId, location_name: 'QuestionId'))
    Answer.add_member(:pillar_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PillarId, location_name: 'PillarId'))
    Answer.add_member(:question_title, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionTitle, location_name: 'QuestionTitle'))
    Answer.add_member(:question_description, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionDescription, location_name: 'QuestionDescription'))
    Answer.add_member(:improvement_plan_url, Smithy::Schema::Shapes::ShapeRef.new(shape: ImprovementPlanUrl, location_name: 'ImprovementPlanUrl'))
    Answer.add_member(:helpful_resource_url, Smithy::Schema::Shapes::ShapeRef.new(shape: HelpfulResourceUrl, location_name: 'HelpfulResourceUrl'))
    Answer.add_member(:helpful_resource_display_text, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayText, location_name: 'HelpfulResourceDisplayText', traits: {"smithy.api#documentation" => "<p>The helpful resource text to be displayed for a custom lens.</p>\n         <p>This field does not apply to Amazon Web Services official lenses.</p>"}))
    Answer.add_member(:choices, Smithy::Schema::Shapes::ShapeRef.new(shape: Choices, location_name: 'Choices'))
    Answer.add_member(:selected_choices, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectedChoices, location_name: 'SelectedChoices'))
    Answer.add_member(:choice_answers, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceAnswers, location_name: 'ChoiceAnswers', traits: {"smithy.api#documentation" => "<p>A list of selected choices to a question in your workload.</p>"}))
    Answer.add_member(:is_applicable, Smithy::Schema::Shapes::ShapeRef.new(shape: IsApplicable, location_name: 'IsApplicable'))
    Answer.add_member(:risk, Smithy::Schema::Shapes::ShapeRef.new(shape: Risk, location_name: 'Risk'))
    Answer.add_member(:notes, Smithy::Schema::Shapes::ShapeRef.new(shape: Notes, location_name: 'Notes'))
    Answer.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: AnswerReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason why the question is not applicable to your workload.</p>"}))
    Answer.add_member(:jira_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: JiraConfiguration, location_name: 'JiraConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration of the Jira integration.</p>"}))
    Answer.type = Types::Answer
    AnswerReason.add_member(:out_of_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OUT_OF_SCOPE', traits: {"smithy.api#enumValue" => "OUT_OF_SCOPE"}))
    AnswerReason.add_member(:business_priorities, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUSINESS_PRIORITIES', traits: {"smithy.api#enumValue" => "BUSINESS_PRIORITIES"}))
    AnswerReason.add_member(:architecture_constraints, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARCHITECTURE_CONSTRAINTS', traits: {"smithy.api#enumValue" => "ARCHITECTURE_CONSTRAINTS"}))
    AnswerReason.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))
    AnswerReason.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    AnswerSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnswerSummary)
    AnswerSummary.add_member(:question_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionId, location_name: 'QuestionId'))
    AnswerSummary.add_member(:pillar_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PillarId, location_name: 'PillarId'))
    AnswerSummary.add_member(:question_title, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionTitle, location_name: 'QuestionTitle'))
    AnswerSummary.add_member(:choices, Smithy::Schema::Shapes::ShapeRef.new(shape: Choices, location_name: 'Choices'))
    AnswerSummary.add_member(:selected_choices, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectedChoices, location_name: 'SelectedChoices'))
    AnswerSummary.add_member(:choice_answer_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceAnswerSummaries, location_name: 'ChoiceAnswerSummaries', traits: {"smithy.api#documentation" => "<p>A list of selected choices to a question in your workload.</p>"}))
    AnswerSummary.add_member(:is_applicable, Smithy::Schema::Shapes::ShapeRef.new(shape: IsApplicable, location_name: 'IsApplicable'))
    AnswerSummary.add_member(:risk, Smithy::Schema::Shapes::ShapeRef.new(shape: Risk, location_name: 'Risk'))
    AnswerSummary.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: AnswerReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason why a choice is non-applicable to a question in your workload.</p>"}))
    AnswerSummary.add_member(:question_type, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionType, location_name: 'QuestionType', traits: {"smithy.api#documentation" => "<p>The type of the question.</p>"}))
    AnswerSummary.add_member(:jira_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: JiraConfiguration, location_name: 'JiraConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration of the Jira integration.</p>"}))
    AnswerSummary.type = Types::AnswerSummary
    AssociateLensesInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateLensesInput.add_member(:lens_aliases, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAliases, location_name: 'LensAliases', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssociateLensesInput.type = Types::AssociateLensesInput
    AssociateProfilesInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateProfilesInput.add_member(:profile_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileArns, location_name: 'ProfileArns', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The list of profile ARNs to associate with the workload.</p>", "smithy.api#required" => {}}))
    AssociateProfilesInput.type = Types::AssociateProfilesInput
    BestPractice.add_member(:choice_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceId, location_name: 'ChoiceId'))
    BestPractice.add_member(:choice_title, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceTitle, location_name: 'ChoiceTitle'))
    BestPractice.type = Types::BestPractice
    BestPractices.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BestPractice)
    CheckDetail.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>Trusted Advisor check ID.</p>"}))
    CheckDetail.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Trusted Advisor check name.</p>"}))
    CheckDetail.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Trusted Advisor check description.</p>"}))
    CheckDetail.add_member(:provider, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckProvider, location_name: 'Provider', traits: {"smithy.api#documentation" => "<p>Provider of the check related to the best practice.</p>"}))
    CheckDetail.add_member(:lens_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LensArn, location_name: 'LensArn', traits: {"smithy.api#documentation" => "<p>Well-Architected Lens ARN associated to the check.</p>"}))
    CheckDetail.add_member(:pillar_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PillarId, location_name: 'PillarId'))
    CheckDetail.add_member(:question_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionId, location_name: 'QuestionId'))
    CheckDetail.add_member(:choice_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceId, location_name: 'ChoiceId'))
    CheckDetail.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status associated to the check.</p>"}))
    CheckDetail.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'AccountId'))
    CheckDetail.add_member(:flagged_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: FlaggedResources, location_name: 'FlaggedResources', traits: {"smithy.api#documentation" => "<p>Count of flagged resources associated to the check.</p>"}))
    CheckDetail.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckFailureReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>Reason associated to the check.</p>"}))
    CheckDetail.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt'))
    CheckDetail.type = Types::CheckDetail
    CheckDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CheckDetail)
    CheckFailureReason.add_member(:assume_role_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSUME_ROLE_ERROR', traits: {"smithy.api#enumValue" => "ASSUME_ROLE_ERROR"}))
    CheckFailureReason.add_member(:access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED', traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    CheckFailureReason.add_member(:unknown_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_ERROR', traits: {"smithy.api#enumValue" => "UNKNOWN_ERROR"}))
    CheckFailureReason.add_member(:premium_support_required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREMIUM_SUPPORT_REQUIRED', traits: {"smithy.api#enumValue" => "PREMIUM_SUPPORT_REQUIRED"}))
    CheckProvider.add_member(:trusted_advisor, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRUSTED_ADVISOR', traits: {"smithy.api#enumValue" => "TRUSTED_ADVISOR"}))
    CheckStatus.add_member(:okay, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OKAY', traits: {"smithy.api#enumValue" => "OKAY"}))
    CheckStatus.add_member(:warning, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WARNING', traits: {"smithy.api#enumValue" => "WARNING"}))
    CheckStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    CheckStatus.add_member(:not_available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_AVAILABLE', traits: {"smithy.api#enumValue" => "NOT_AVAILABLE"}))
    CheckStatus.add_member(:fetch_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FETCH_FAILED', traits: {"smithy.api#enumValue" => "FETCH_FAILED"}))
    CheckSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CheckSummary)
    CheckSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>Trusted Advisor check ID.</p>"}))
    CheckSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Trusted Advisor check name.</p>"}))
    CheckSummary.add_member(:provider, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckProvider, location_name: 'Provider', traits: {"smithy.api#documentation" => "<p>Provider of the check related to the best practice.</p>"}))
    CheckSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Trusted Advisor check description.</p>"}))
    CheckSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt'))
    CheckSummary.add_member(:lens_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LensArn, location_name: 'LensArn', traits: {"smithy.api#documentation" => "<p>Well-Architected Lens ARN associated to the check.</p>"}))
    CheckSummary.add_member(:pillar_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PillarId, location_name: 'PillarId'))
    CheckSummary.add_member(:question_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionId, location_name: 'QuestionId'))
    CheckSummary.add_member(:choice_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceId, location_name: 'ChoiceId'))
    CheckSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status associated to the check.</p>"}))
    CheckSummary.add_member(:account_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSummary, location_name: 'AccountSummary', traits: {"smithy.api#documentation" => "<p>Account summary associated to the check.</p>"}))
    CheckSummary.type = Types::CheckSummary
    Choice.add_member(:choice_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceId, location_name: 'ChoiceId'))
    Choice.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceTitle, location_name: 'Title'))
    Choice.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceDescription, location_name: 'Description'))
    Choice.add_member(:helpful_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceContent, location_name: 'HelpfulResource', traits: {"smithy.api#documentation" => "<p>The helpful resource (both text and URL) for a particular choice.</p>\n         <p>This field only applies to custom lenses. Each choice can have only one helpful resource.</p>"}))
    Choice.add_member(:improvement_plan, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceContent, location_name: 'ImprovementPlan', traits: {"smithy.api#documentation" => "<p>The improvement plan (both text and URL) for a particular choice.</p>\n         <p>This field only applies to custom lenses. Each choice can have only one improvement plan.</p>"}))
    Choice.add_member(:additional_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalResourcesList, location_name: 'AdditionalResources', traits: {"smithy.api#documentation" => "<p>The additional resources for a choice in a custom lens.</p>\n         <p>A choice can have up to two additional resources: one of type <code>HELPFUL_RESOURCE</code>, \n            one of type <code>IMPROVEMENT_PLAN</code>, or both.</p>"}))
    Choice.type = Types::Choice
    ChoiceAnswer.add_member(:choice_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceId, location_name: 'ChoiceId'))
    ChoiceAnswer.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of a choice.</p>"}))
    ChoiceAnswer.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason why a choice is non-applicable to a question in your workload.</p>"}))
    ChoiceAnswer.add_member(:notes, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceNotes, location_name: 'Notes', traits: {"smithy.api#documentation" => "<p>The notes associated with a choice.</p>"}))
    ChoiceAnswer.type = Types::ChoiceAnswer
    ChoiceAnswerSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceAnswerSummary)
    ChoiceAnswerSummary.add_member(:choice_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceId, location_name: 'ChoiceId'))
    ChoiceAnswerSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of a choice.</p>"}))
    ChoiceAnswerSummary.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason why a choice is non-applicable to a question in your workload.</p>"}))
    ChoiceAnswerSummary.type = Types::ChoiceAnswerSummary
    ChoiceAnswers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceAnswer)
    ChoiceContent.add_member(:display_text, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceContentDisplayText, location_name: 'DisplayText', traits: {"smithy.api#documentation" => "<p>The display text for the choice content.</p>"}))
    ChoiceContent.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceContentUrl, location_name: 'Url', traits: {"smithy.api#documentation" => "<p>The URL for the choice content.</p>"}))
    ChoiceContent.type = Types::ChoiceContent
    ChoiceImprovementPlan.add_member(:choice_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceId, location_name: 'ChoiceId'))
    ChoiceImprovementPlan.add_member(:display_text, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayText, location_name: 'DisplayText', traits: {"smithy.api#documentation" => "<p>The display text for the improvement plan.</p>"}))
    ChoiceImprovementPlan.add_member(:improvement_plan_url, Smithy::Schema::Shapes::ShapeRef.new(shape: ImprovementPlanUrl, location_name: 'ImprovementPlanUrl'))
    ChoiceImprovementPlan.type = Types::ChoiceImprovementPlan
    ChoiceImprovementPlans.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceImprovementPlan)
    ChoiceReason.add_member(:out_of_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OUT_OF_SCOPE', traits: {"smithy.api#enumValue" => "OUT_OF_SCOPE"}))
    ChoiceReason.add_member(:business_priorities, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUSINESS_PRIORITIES', traits: {"smithy.api#enumValue" => "BUSINESS_PRIORITIES"}))
    ChoiceReason.add_member(:architecture_constraints, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARCHITECTURE_CONSTRAINTS', traits: {"smithy.api#enumValue" => "ARCHITECTURE_CONSTRAINTS"}))
    ChoiceReason.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))
    ChoiceReason.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    ChoiceStatus.add_member(:selected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SELECTED', traits: {"smithy.api#enumValue" => "SELECTED"}))
    ChoiceStatus.add_member(:not_applicable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_APPLICABLE', traits: {"smithy.api#enumValue" => "NOT_APPLICABLE"}))
    ChoiceStatus.add_member(:unselected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSELECTED', traits: {"smithy.api#enumValue" => "UNSELECTED"}))
    ChoiceUpdate.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceStatus, location_name: 'Status', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The status of a choice.</p>", "smithy.api#required" => {}}))
    ChoiceUpdate.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason why a choice is non-applicable to a question in your workload.</p>"}))
    ChoiceUpdate.add_member(:notes, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceNotes, location_name: 'Notes', traits: {"smithy.api#documentation" => "<p>The notes associated with a choice.</p>"}))
    ChoiceUpdate.type = Types::ChoiceUpdate
    ChoiceUpdates.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceId)
    ChoiceUpdates.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceUpdate)
    Choices.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Choice)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionResourceId, location_name: 'ResourceId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionResourceType, location_name: 'ResourceType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConsolidatedReportMetric.add_member(:metric_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricType, location_name: 'MetricType', traits: {"smithy.api#documentation" => "<p>The metric type of a metric in the consolidated report. Currently only WORKLOAD metric types are supported.</p>"}))
    ConsolidatedReportMetric.add_member(:risk_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: RiskCounts, location_name: 'RiskCounts'))
    ConsolidatedReportMetric.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    ConsolidatedReportMetric.add_member(:workload_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: 'WorkloadName'))
    ConsolidatedReportMetric.add_member(:workload_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadArn, location_name: 'WorkloadArn'))
    ConsolidatedReportMetric.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt'))
    ConsolidatedReportMetric.add_member(:lenses, Smithy::Schema::Shapes::ShapeRef.new(shape: LensMetrics, location_name: 'Lenses', traits: {"smithy.api#documentation" => "<p>The metrics for the lenses in the workload.</p>"}))
    ConsolidatedReportMetric.add_member(:lenses_applied_count, Smithy::Schema::Shapes::ShapeRef.new(shape: LensesAppliedCount, location_name: 'LensesAppliedCount', traits: {"smithy.api#documentation" => "<p>The total number of lenses applied to the workload.</p>"}))
    ConsolidatedReportMetric.type = Types::ConsolidatedReportMetric
    ConsolidatedReportMetrics.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConsolidatedReportMetric)
    CreateLensShareInput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLensShareInput.add_member(:shared_with, Smithy::Schema::Shapes::ShapeRef.new(shape: SharedWith, location_name: 'SharedWith', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateLensShareInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateLensShareInput.type = Types::CreateLensShareInput
    CreateLensShareOutput.add_member(:share_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareId, location_name: 'ShareId'))
    CreateLensShareOutput.type = Types::CreateLensShareOutput
    CreateLensVersionInput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLensVersionInput.add_member(:lens_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LensVersion, location_name: 'LensVersion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The version of the lens being created.</p>", "smithy.api#required" => {}}))
    CreateLensVersionInput.add_member(:is_major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: IsMajorVersion, location_name: 'IsMajorVersion', traits: {"smithy.api#documentation" => "<p>Set to true if this new major lens version.</p>"}))
    CreateLensVersionInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateLensVersionInput.type = Types::CreateLensVersionInput
    CreateLensVersionOutput.add_member(:lens_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LensArn, location_name: 'LensArn', traits: {"smithy.api#documentation" => "<p>The ARN for the lens.</p>"}))
    CreateLensVersionOutput.add_member(:lens_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LensVersion, location_name: 'LensVersion', traits: {"smithy.api#documentation" => "<p>The version of the lens.</p>"}))
    CreateLensVersionOutput.type = Types::CreateLensVersionOutput
    CreateMilestoneInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMilestoneInput.add_member(:milestone_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MilestoneName, location_name: 'MilestoneName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateMilestoneInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateMilestoneInput.type = Types::CreateMilestoneInput
    CreateMilestoneOutput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    CreateMilestoneOutput.add_member(:milestone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: MilestoneNumber, location_name: 'MilestoneNumber'))
    CreateMilestoneOutput.type = Types::CreateMilestoneOutput
    CreateProfileInput.add_member(:profile_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileName, location_name: 'ProfileName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Name of the profile.</p>", "smithy.api#required" => {}}))
    CreateProfileInput.add_member(:profile_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileDescription, location_name: 'ProfileDescription', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The profile description.</p>", "smithy.api#required" => {}}))
    CreateProfileInput.add_member(:profile_questions, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileQuestionUpdates, location_name: 'ProfileQuestions', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The profile questions.</p>", "smithy.api#required" => {}}))
    CreateProfileInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateProfileInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the profile.</p>"}))
    CreateProfileInput.type = Types::CreateProfileInput
    CreateProfileOutput.add_member(:profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileArn, location_name: 'ProfileArn', traits: {"smithy.api#documentation" => "<p>The profile ARN.</p>"}))
    CreateProfileOutput.add_member(:profile_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileVersion, location_name: 'ProfileVersion', traits: {"smithy.api#documentation" => "<p>Version of the profile.</p>"}))
    CreateProfileOutput.type = Types::CreateProfileOutput
    CreateProfileShareInput.add_member(:profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileArn, location_name: 'ProfileArn', traits: {"smithy.api#documentation" => "<p>The profile ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateProfileShareInput.add_member(:shared_with, Smithy::Schema::Shapes::ShapeRef.new(shape: SharedWith, location_name: 'SharedWith', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateProfileShareInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateProfileShareInput.type = Types::CreateProfileShareInput
    CreateProfileShareOutput.add_member(:share_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareId, location_name: 'ShareId'))
    CreateProfileShareOutput.add_member(:profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileArn, location_name: 'ProfileArn', traits: {"smithy.api#documentation" => "<p>The profile ARN.</p>"}))
    CreateProfileShareOutput.type = Types::CreateProfileShareOutput
    CreateReviewTemplateInput.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'TemplateName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Name of the review template.</p>", "smithy.api#required" => {}}))
    CreateReviewTemplateInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateDescription, location_name: 'Description', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The review template description.</p>", "smithy.api#required" => {}}))
    CreateReviewTemplateInput.add_member(:lenses, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewTemplateLenses, location_name: 'Lenses', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Lenses applied to the review template.</p>", "smithy.api#required" => {}}))
    CreateReviewTemplateInput.add_member(:notes, Smithy::Schema::Shapes::ShapeRef.new(shape: Notes, location_name: 'Notes'))
    CreateReviewTemplateInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the review template.</p>"}))
    CreateReviewTemplateInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateReviewTemplateInput.type = Types::CreateReviewTemplateInput
    CreateReviewTemplateOutput.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The review template ARN.</p>"}))
    CreateReviewTemplateOutput.type = Types::CreateReviewTemplateOutput
    CreateTemplateShareInput.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The review template ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTemplateShareInput.add_member(:shared_with, Smithy::Schema::Shapes::ShapeRef.new(shape: SharedWith, location_name: 'SharedWith', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateTemplateShareInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateTemplateShareInput.type = Types::CreateTemplateShareInput
    CreateTemplateShareOutput.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The review template ARN.</p>"}))
    CreateTemplateShareOutput.add_member(:share_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareId, location_name: 'ShareId'))
    CreateTemplateShareOutput.type = Types::CreateTemplateShareOutput
    CreateWorkloadInput.add_member(:workload_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: 'WorkloadName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateWorkloadInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadDescription, location_name: 'Description', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateWorkloadInput.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEnvironment, location_name: 'Environment', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateWorkloadInput.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadAccountIds, location_name: 'AccountIds'))
    CreateWorkloadInput.add_member(:aws_regions, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadAwsRegions, location_name: 'AwsRegions'))
    CreateWorkloadInput.add_member(:non_aws_regions, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadNonAwsRegions, location_name: 'NonAwsRegions'))
    CreateWorkloadInput.add_member(:pillar_priorities, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadPillarPriorities, location_name: 'PillarPriorities'))
    CreateWorkloadInput.add_member(:architectural_design, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadArchitecturalDesign, location_name: 'ArchitecturalDesign'))
    CreateWorkloadInput.add_member(:review_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadReviewOwner, location_name: 'ReviewOwner'))
    CreateWorkloadInput.add_member(:industry_type, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIndustryType, location_name: 'IndustryType'))
    CreateWorkloadInput.add_member(:industry, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIndustry, location_name: 'Industry'))
    CreateWorkloadInput.add_member(:lenses, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadLenses, location_name: 'Lenses', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateWorkloadInput.add_member(:notes, Smithy::Schema::Shapes::ShapeRef.new(shape: Notes, location_name: 'Notes'))
    CreateWorkloadInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateWorkloadInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to be associated with the workload.</p>"}))
    CreateWorkloadInput.add_member(:discovery_config, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadDiscoveryConfig, location_name: 'DiscoveryConfig', traits: {"smithy.api#documentation" => "<p>Well-Architected discovery configuration settings associated to the workload.</p>"}))
    CreateWorkloadInput.add_member(:applications, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadApplications, location_name: 'Applications', traits: {"smithy.api#documentation" => "<p>List of AppRegistry application ARNs associated to the workload.</p>"}))
    CreateWorkloadInput.add_member(:profile_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadProfileArns, location_name: 'ProfileArns', traits: {"smithy.api#documentation" => "<p>The list of profile ARNs associated with the workload.</p>"}))
    CreateWorkloadInput.add_member(:review_template_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewTemplateArns, location_name: 'ReviewTemplateArns', traits: {"smithy.api#documentation" => "<p>The list of review template ARNs to associate with the workload.</p>"}))
    CreateWorkloadInput.add_member(:jira_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadJiraConfigurationInput, location_name: 'JiraConfiguration', traits: {"smithy.api#documentation" => "<p>Jira configuration settings when creating a workload.</p>"}))
    CreateWorkloadInput.type = Types::CreateWorkloadInput
    CreateWorkloadOutput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    CreateWorkloadOutput.add_member(:workload_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadArn, location_name: 'WorkloadArn'))
    CreateWorkloadOutput.type = Types::CreateWorkloadOutput
    CreateWorkloadShareInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWorkloadShareInput.add_member(:shared_with, Smithy::Schema::Shapes::ShapeRef.new(shape: SharedWith, location_name: 'SharedWith', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateWorkloadShareInput.add_member(:permission_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionType, location_name: 'PermissionType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateWorkloadShareInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateWorkloadShareInput.type = Types::CreateWorkloadShareInput
    CreateWorkloadShareOutput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    CreateWorkloadShareOutput.add_member(:share_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareId, location_name: 'ShareId'))
    CreateWorkloadShareOutput.type = Types::CreateWorkloadShareOutput
    DefinitionType.add_member(:workload_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORKLOAD_METADATA', traits: {"smithy.api#enumValue" => "WORKLOAD_METADATA"}))
    DefinitionType.add_member(:app_registry, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APP_REGISTRY', traits: {"smithy.api#enumValue" => "APP_REGISTRY"}))
    DeleteLensInput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLensInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "ClientRequestToken", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    DeleteLensInput.add_member(:lens_status, Smithy::Schema::Shapes::ShapeRef.new(shape: LensStatusType, location_name: 'LensStatus', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The status of the lens to be deleted.</p>", "smithy.api#httpQuery" => "LensStatus", "smithy.api#required" => {}}))
    DeleteLensInput.type = Types::DeleteLensInput
    DeleteLensShareInput.add_member(:share_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareId, location_name: 'ShareId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLensShareInput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLensShareInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "ClientRequestToken", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    DeleteLensShareInput.type = Types::DeleteLensShareInput
    DeleteProfileInput.add_member(:profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileArn, location_name: 'ProfileArn', traits: {"smithy.api#documentation" => "<p>The profile ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProfileInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "ClientRequestToken", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    DeleteProfileInput.type = Types::DeleteProfileInput
    DeleteProfileShareInput.add_member(:share_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareId, location_name: 'ShareId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProfileShareInput.add_member(:profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileArn, location_name: 'ProfileArn', traits: {"smithy.api#documentation" => "<p>The profile ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProfileShareInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "ClientRequestToken", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    DeleteProfileShareInput.type = Types::DeleteProfileShareInput
    DeleteReviewTemplateInput.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The review template ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteReviewTemplateInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "ClientRequestToken", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    DeleteReviewTemplateInput.type = Types::DeleteReviewTemplateInput
    DeleteTemplateShareInput.add_member(:share_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareId, location_name: 'ShareId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTemplateShareInput.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The review template ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTemplateShareInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "ClientRequestToken", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    DeleteTemplateShareInput.type = Types::DeleteTemplateShareInput
    DeleteWorkloadInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkloadInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "ClientRequestToken", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    DeleteWorkloadInput.type = Types::DeleteWorkloadInput
    DeleteWorkloadShareInput.add_member(:share_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareId, location_name: 'ShareId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkloadShareInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkloadShareInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "ClientRequestToken", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    DeleteWorkloadShareInput.type = Types::DeleteWorkloadShareInput
    DifferenceStatus.add_member(:updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATED', traits: {"smithy.api#enumValue" => "UPDATED"}))
    DifferenceStatus.add_member(:new, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEW', traits: {"smithy.api#enumValue" => "NEW"}))
    DifferenceStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    DisassociateLensesInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateLensesInput.add_member(:lens_aliases, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAliases, location_name: 'LensAliases', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisassociateLensesInput.type = Types::DisassociateLensesInput
    DisassociateProfilesInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateProfilesInput.add_member(:profile_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileArns, location_name: 'ProfileArns', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The list of profile ARNs to disassociate from the workload.</p>", "smithy.api#required" => {}}))
    DisassociateProfilesInput.type = Types::DisassociateProfilesInput
    DiscoveryIntegrationStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    DiscoveryIntegrationStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ExportLensInput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportLensInput.add_member(:lens_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LensVersion, location_name: 'LensVersion', traits: {"smithy.api#documentation" => "<p>The lens version to be exported.</p>", "smithy.api#httpQuery" => "LensVersion"}))
    ExportLensInput.type = Types::ExportLensInput
    ExportLensOutput.add_member(:lens_json, Smithy::Schema::Shapes::ShapeRef.new(shape: LensJSON, location_name: 'LensJSON', traits: {"smithy.api#documentation" => "<p>The JSON representation of a lens.</p>"}))
    ExportLensOutput.type = Types::ExportLensOutput
    GetAnswerInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAnswerInput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAnswerInput.add_member(:question_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionId, location_name: 'QuestionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAnswerInput.add_member(:milestone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: MilestoneNumber, location_name: 'MilestoneNumber', traits: {"smithy.api#httpQuery" => "MilestoneNumber"}))
    GetAnswerInput.type = Types::GetAnswerInput
    GetAnswerOutput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    GetAnswerOutput.add_member(:milestone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: MilestoneNumber, location_name: 'MilestoneNumber'))
    GetAnswerOutput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias'))
    GetAnswerOutput.add_member(:lens_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LensArn, location_name: 'LensArn', traits: {"smithy.api#documentation" => "<p>The ARN for the lens.</p>"}))
    GetAnswerOutput.add_member(:answer, Smithy::Schema::Shapes::ShapeRef.new(shape: Answer, location_name: 'Answer'))
    GetAnswerOutput.type = Types::GetAnswerOutput
    GetConsolidatedReportInput.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportFormat, location_name: 'Format', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The format of the consolidated report.</p>\n         <p>For <code>PDF</code>, <code>Base64String</code> is returned. For <code>JSON</code>, \n            <code>Metrics</code> is returned.</p>", "smithy.api#httpQuery" => "Format", "smithy.api#required" => {}}))
    GetConsolidatedReportInput.add_member(:include_shared_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeSharedResources, location_name: 'IncludeSharedResources', traits: {"smithy.api#documentation" => "<p>Set to <code>true</code> to have shared resources included in the report.</p>", "smithy.api#httpQuery" => "IncludeSharedResources"}))
    GetConsolidatedReportInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    GetConsolidatedReportInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: GetConsolidatedReportMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for this request.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    GetConsolidatedReportInput.type = Types::GetConsolidatedReportInput
    GetConsolidatedReportOutput.add_member(:metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsolidatedReportMetrics, location_name: 'Metrics', traits: {"smithy.api#documentation" => "<p>The metrics that make up the consolidated report.</p>\n         <p>Only returned when <code>JSON</code> format is requested.</p>"}))
    GetConsolidatedReportOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    GetConsolidatedReportOutput.add_member(:base64_string, Smithy::Schema::Shapes::ShapeRef.new(shape: Base64String, location_name: 'Base64String'))
    GetConsolidatedReportOutput.type = Types::GetConsolidatedReportOutput
    GetGlobalSettingsOutput.add_member(:organization_sharing_status, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationSharingStatus, location_name: 'OrganizationSharingStatus', traits: {"smithy.api#documentation" => "<p>Amazon Web Services Organizations sharing status.</p>"}))
    GetGlobalSettingsOutput.add_member(:discovery_integration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DiscoveryIntegrationStatus, location_name: 'DiscoveryIntegrationStatus', traits: {"smithy.api#documentation" => "<p>Discovery integration status.</p>"}))
    GetGlobalSettingsOutput.add_member(:jira_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountJiraConfigurationOutput, location_name: 'JiraConfiguration', traits: {"smithy.api#documentation" => "<p>Jira configuration status.</p>"}))
    GetGlobalSettingsOutput.type = Types::GetGlobalSettingsOutput
    GetLensInput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLensInput.add_member(:lens_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LensVersion, location_name: 'LensVersion', traits: {"smithy.api#documentation" => "<p>The lens version to be retrieved.</p>", "smithy.api#httpQuery" => "LensVersion"}))
    GetLensInput.type = Types::GetLensInput
    GetLensOutput.add_member(:lens, Smithy::Schema::Shapes::ShapeRef.new(shape: Lens, location_name: 'Lens', traits: {"smithy.api#documentation" => "<p>A lens return object.</p>"}))
    GetLensOutput.type = Types::GetLensOutput
    GetLensReviewInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLensReviewInput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLensReviewInput.add_member(:milestone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: MilestoneNumber, location_name: 'MilestoneNumber', traits: {"smithy.api#httpQuery" => "MilestoneNumber"}))
    GetLensReviewInput.type = Types::GetLensReviewInput
    GetLensReviewOutput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    GetLensReviewOutput.add_member(:milestone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: MilestoneNumber, location_name: 'MilestoneNumber'))
    GetLensReviewOutput.add_member(:lens_review, Smithy::Schema::Shapes::ShapeRef.new(shape: LensReview, location_name: 'LensReview'))
    GetLensReviewOutput.type = Types::GetLensReviewOutput
    GetLensReviewReportInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLensReviewReportInput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLensReviewReportInput.add_member(:milestone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: MilestoneNumber, location_name: 'MilestoneNumber', traits: {"smithy.api#httpQuery" => "MilestoneNumber"}))
    GetLensReviewReportInput.type = Types::GetLensReviewReportInput
    GetLensReviewReportOutput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    GetLensReviewReportOutput.add_member(:milestone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: MilestoneNumber, location_name: 'MilestoneNumber'))
    GetLensReviewReportOutput.add_member(:lens_review_report, Smithy::Schema::Shapes::ShapeRef.new(shape: LensReviewReport, location_name: 'LensReviewReport'))
    GetLensReviewReportOutput.type = Types::GetLensReviewReportOutput
    GetLensVersionDifferenceInput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLensVersionDifferenceInput.add_member(:base_lens_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LensVersion, location_name: 'BaseLensVersion', traits: {"smithy.api#documentation" => "<p>The base version of the lens.</p>", "smithy.api#httpQuery" => "BaseLensVersion"}))
    GetLensVersionDifferenceInput.add_member(:target_lens_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LensVersion, location_name: 'TargetLensVersion', traits: {"smithy.api#documentation" => "<p>The lens version to target a difference for.</p>", "smithy.api#httpQuery" => "TargetLensVersion"}))
    GetLensVersionDifferenceInput.type = Types::GetLensVersionDifferenceInput
    GetLensVersionDifferenceOutput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias'))
    GetLensVersionDifferenceOutput.add_member(:lens_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LensArn, location_name: 'LensArn', traits: {"smithy.api#documentation" => "<p>The ARN for the lens.</p>"}))
    GetLensVersionDifferenceOutput.add_member(:base_lens_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LensVersion, location_name: 'BaseLensVersion', traits: {"smithy.api#documentation" => "<p>The base version of the lens.</p>"}))
    GetLensVersionDifferenceOutput.add_member(:target_lens_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LensVersion, location_name: 'TargetLensVersion', traits: {"smithy.api#documentation" => "<p>The target lens version for the lens.</p>"}))
    GetLensVersionDifferenceOutput.add_member(:latest_lens_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LensVersion, location_name: 'LatestLensVersion', traits: {"smithy.api#documentation" => "<p>The latest version of the lens.</p>"}))
    GetLensVersionDifferenceOutput.add_member(:version_differences, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionDifferences, location_name: 'VersionDifferences'))
    GetLensVersionDifferenceOutput.type = Types::GetLensVersionDifferenceOutput
    GetMilestoneInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMilestoneInput.add_member(:milestone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: MilestoneNumber, location_name: 'MilestoneNumber', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMilestoneInput.type = Types::GetMilestoneInput
    GetMilestoneOutput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    GetMilestoneOutput.add_member(:milestone, Smithy::Schema::Shapes::ShapeRef.new(shape: Milestone, location_name: 'Milestone'))
    GetMilestoneOutput.type = Types::GetMilestoneOutput
    GetProfileInput.add_member(:profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileArn, location_name: 'ProfileArn', traits: {"smithy.api#documentation" => "<p>The profile ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProfileInput.add_member(:profile_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileVersion, location_name: 'ProfileVersion', traits: {"smithy.api#documentation" => "<p>The profile version.</p>", "smithy.api#httpQuery" => "ProfileVersion"}))
    GetProfileInput.type = Types::GetProfileInput
    GetProfileOutput.add_member(:profile, Smithy::Schema::Shapes::ShapeRef.new(shape: Profile, location_name: 'Profile', traits: {"smithy.api#documentation" => "<p>The profile.</p>"}))
    GetProfileOutput.type = Types::GetProfileOutput
    GetProfileTemplateInput.type = Types::GetProfileTemplateInput
    GetProfileTemplateOutput.add_member(:profile_template, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileTemplate, location_name: 'ProfileTemplate', traits: {"smithy.api#documentation" => "<p>The profile template.</p>"}))
    GetProfileTemplateOutput.type = Types::GetProfileTemplateOutput
    GetReviewTemplateAnswerInput.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The review template ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReviewTemplateAnswerInput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReviewTemplateAnswerInput.add_member(:question_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionId, location_name: 'QuestionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReviewTemplateAnswerInput.type = Types::GetReviewTemplateAnswerInput
    GetReviewTemplateAnswerOutput.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The review template ARN.</p>"}))
    GetReviewTemplateAnswerOutput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias'))
    GetReviewTemplateAnswerOutput.add_member(:answer, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewTemplateAnswer, location_name: 'Answer', traits: {"smithy.api#documentation" => "<p>An answer of the question.</p>"}))
    GetReviewTemplateAnswerOutput.type = Types::GetReviewTemplateAnswerOutput
    GetReviewTemplateInput.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The review template ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReviewTemplateInput.type = Types::GetReviewTemplateInput
    GetReviewTemplateLensReviewInput.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The review template ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReviewTemplateLensReviewInput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReviewTemplateLensReviewInput.type = Types::GetReviewTemplateLensReviewInput
    GetReviewTemplateLensReviewOutput.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The review template ARN.</p>"}))
    GetReviewTemplateLensReviewOutput.add_member(:lens_review, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewTemplateLensReview, location_name: 'LensReview', traits: {"smithy.api#documentation" => "<p>A lens review of a question.</p>"}))
    GetReviewTemplateLensReviewOutput.type = Types::GetReviewTemplateLensReviewOutput
    GetReviewTemplateOutput.add_member(:review_template, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewTemplate, location_name: 'ReviewTemplate', traits: {"smithy.api#documentation" => "<p>The review template.</p>"}))
    GetReviewTemplateOutput.type = Types::GetReviewTemplateOutput
    GetWorkloadInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkloadInput.type = Types::GetWorkloadInput
    GetWorkloadOutput.add_member(:workload, Smithy::Schema::Shapes::ShapeRef.new(shape: Workload, location_name: 'Workload'))
    GetWorkloadOutput.type = Types::GetWorkloadOutput
    ImportLensInput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias'))
    ImportLensInput.add_member(:json_string, Smithy::Schema::Shapes::ShapeRef.new(shape: LensJSON, location_name: 'JSONString', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The JSON representation of a lens.</p>", "smithy.api#required" => {}}))
    ImportLensInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    ImportLensInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to associate to a lens.</p>"}))
    ImportLensInput.type = Types::ImportLensInput
    ImportLensOutput.add_member(:lens_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LensArn, location_name: 'LensArn', traits: {"smithy.api#documentation" => "<p>The ARN for the lens that was created or updated.</p>"}))
    ImportLensOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportLensStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the imported lens.</p>"}))
    ImportLensOutput.type = Types::ImportLensOutput
    ImportLensStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ImportLensStatus.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ImportLensStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    ImprovementSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImprovementSummary)
    ImprovementSummary.add_member(:question_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionId, location_name: 'QuestionId'))
    ImprovementSummary.add_member(:pillar_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PillarId, location_name: 'PillarId'))
    ImprovementSummary.add_member(:question_title, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionTitle, location_name: 'QuestionTitle'))
    ImprovementSummary.add_member(:risk, Smithy::Schema::Shapes::ShapeRef.new(shape: Risk, location_name: 'Risk'))
    ImprovementSummary.add_member(:improvement_plan_url, Smithy::Schema::Shapes::ShapeRef.new(shape: ImprovementPlanUrl, location_name: 'ImprovementPlanUrl'))
    ImprovementSummary.add_member(:improvement_plans, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceImprovementPlans, location_name: 'ImprovementPlans', traits: {"smithy.api#documentation" => "<p>The improvement plan details.</p>"}))
    ImprovementSummary.add_member(:jira_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: JiraConfiguration, location_name: 'JiraConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration of the Jira integration.</p>"}))
    ImprovementSummary.type = Types::ImprovementSummary
    IntegratingService.add_member(:jira, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JIRA', traits: {"smithy.api#enumValue" => "JIRA"}))
    IntegrationStatus.add_member(:configured, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFIGURED', traits: {"smithy.api#enumValue" => "CONFIGURED"}))
    IntegrationStatus.add_member(:not_configured, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_CONFIGURED', traits: {"smithy.api#enumValue" => "NOT_CONFIGURED"}))
    IntegrationStatusInput.add_member(:not_configured, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_CONFIGURED', traits: {"smithy.api#enumValue" => "NOT_CONFIGURED"}))
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    IssueManagementType.add_member(:auto, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO', traits: {"smithy.api#enumValue" => "AUTO"}))
    IssueManagementType.add_member(:manual, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUAL', traits: {"smithy.api#enumValue" => "MANUAL"}))
    JiraConfiguration.add_member(:jira_issue_url, Smithy::Schema::Shapes::ShapeRef.new(shape: JiraIssueUrl, location_name: 'JiraIssueUrl', traits: {"smithy.api#documentation" => "<p>The URL of the associated Jira issue.</p>"}))
    JiraConfiguration.add_member(:last_synced_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastSyncedTime'))
    JiraConfiguration.type = Types::JiraConfiguration
    JiraSelectedQuestionConfiguration.add_member(:selected_pillars, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectedPillars, location_name: 'SelectedPillars', traits: {"smithy.api#documentation" => "<p>Selected pillars in the workload.</p>"}))
    JiraSelectedQuestionConfiguration.type = Types::JiraSelectedQuestionConfiguration
    Lens.add_member(:lens_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LensArn, location_name: 'LensArn', traits: {"smithy.api#documentation" => "<p>The ARN of a lens.</p>"}))
    Lens.add_member(:lens_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LensVersion, location_name: 'LensVersion', traits: {"smithy.api#documentation" => "<p>The version of a lens.</p>"}))
    Lens.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LensName, location_name: 'Name'))
    Lens.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: LensDescription, location_name: 'Description'))
    Lens.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: LensOwner, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID that owns the lens.</p>"}))
    Lens.add_member(:share_invitation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareInvitationId, location_name: 'ShareInvitationId', traits: {"smithy.api#documentation" => "<p>The ID assigned to the share invitation.</p>"}))
    Lens.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the lens.</p>"}))
    Lens.type = Types::Lens
    LensAliases.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias)
    LensMetric.add_member(:lens_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LensArn, location_name: 'LensArn', traits: {"smithy.api#documentation" => "<p>The lens ARN.</p>"}))
    LensMetric.add_member(:pillars, Smithy::Schema::Shapes::ShapeRef.new(shape: PillarMetrics, location_name: 'Pillars', traits: {"smithy.api#documentation" => "<p>The metrics for the pillars in a lens.</p>"}))
    LensMetric.add_member(:risk_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: RiskCounts, location_name: 'RiskCounts'))
    LensMetric.type = Types::LensMetric
    LensMetrics.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LensMetric)
    LensReview.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias'))
    LensReview.add_member(:lens_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LensArn, location_name: 'LensArn', traits: {"smithy.api#documentation" => "<p>The ARN for the lens.</p>"}))
    LensReview.add_member(:lens_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LensVersion, location_name: 'LensVersion', traits: {"smithy.api#documentation" => "<p>The version of the lens.</p>"}))
    LensReview.add_member(:lens_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LensName, location_name: 'LensName'))
    LensReview.add_member(:lens_status, Smithy::Schema::Shapes::ShapeRef.new(shape: LensStatus, location_name: 'LensStatus', traits: {"smithy.api#documentation" => "<p>The status of the lens.</p>"}))
    LensReview.add_member(:pillar_review_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: PillarReviewSummaries, location_name: 'PillarReviewSummaries'))
    LensReview.add_member(:jira_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: JiraSelectedQuestionConfiguration, location_name: 'JiraConfiguration', traits: {"smithy.api#documentation" => "<p>Jira configuration status of the Lens review.</p>"}))
    LensReview.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt'))
    LensReview.add_member(:notes, Smithy::Schema::Shapes::ShapeRef.new(shape: Notes, location_name: 'Notes'))
    LensReview.add_member(:risk_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: RiskCounts, location_name: 'RiskCounts'))
    LensReview.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    LensReview.add_member(:profiles, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadProfiles, location_name: 'Profiles', traits: {"smithy.api#documentation" => "<p>The profiles associated with the workload.</p>"}))
    LensReview.add_member(:prioritized_risk_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: RiskCounts, location_name: 'PrioritizedRiskCounts'))
    LensReview.type = Types::LensReview
    LensReviewReport.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias'))
    LensReviewReport.add_member(:lens_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LensArn, location_name: 'LensArn', traits: {"smithy.api#documentation" => "<p>The ARN for the lens.</p>"}))
    LensReviewReport.add_member(:base64_string, Smithy::Schema::Shapes::ShapeRef.new(shape: Base64String, location_name: 'Base64String'))
    LensReviewReport.type = Types::LensReviewReport
    LensReviewSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LensReviewSummary)
    LensReviewSummary.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias'))
    LensReviewSummary.add_member(:lens_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LensArn, location_name: 'LensArn', traits: {"smithy.api#documentation" => "<p>The ARN for the lens.</p>"}))
    LensReviewSummary.add_member(:lens_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LensVersion, location_name: 'LensVersion', traits: {"smithy.api#documentation" => "<p>The version of the lens.</p>"}))
    LensReviewSummary.add_member(:lens_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LensName, location_name: 'LensName'))
    LensReviewSummary.add_member(:lens_status, Smithy::Schema::Shapes::ShapeRef.new(shape: LensStatus, location_name: 'LensStatus', traits: {"smithy.api#documentation" => "<p>The status of the lens.</p>"}))
    LensReviewSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt'))
    LensReviewSummary.add_member(:risk_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: RiskCounts, location_name: 'RiskCounts'))
    LensReviewSummary.add_member(:profiles, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadProfiles, location_name: 'Profiles', traits: {"smithy.api#documentation" => "<p>The profiles associated with the workload.</p>"}))
    LensReviewSummary.add_member(:prioritized_risk_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: RiskCounts, location_name: 'PrioritizedRiskCounts'))
    LensReviewSummary.type = Types::LensReviewSummary
    LensShareSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LensShareSummary)
    LensShareSummary.add_member(:share_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareId, location_name: 'ShareId'))
    LensShareSummary.add_member(:shared_with, Smithy::Schema::Shapes::ShapeRef.new(shape: SharedWith, location_name: 'SharedWith'))
    LensShareSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: 'Status'))
    LensShareSummary.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>Optional message to compliment the Status field.</p>"}))
    LensShareSummary.type = Types::LensShareSummary
    LensStatus.add_member(:current, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CURRENT', traits: {"smithy.api#enumValue" => "CURRENT"}))
    LensStatus.add_member(:not_current, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_CURRENT', traits: {"smithy.api#enumValue" => "NOT_CURRENT"}))
    LensStatus.add_member(:deprecated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPRECATED', traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    LensStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    LensStatus.add_member(:unshared, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSHARED', traits: {"smithy.api#enumValue" => "UNSHARED"}))
    LensStatusType.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    LensStatusType.add_member(:draft, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DRAFT', traits: {"smithy.api#enumValue" => "DRAFT"}))
    LensStatusType.add_member(:published, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLISHED', traits: {"smithy.api#enumValue" => "PUBLISHED"}))
    LensSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LensSummary)
    LensSummary.add_member(:lens_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LensArn, location_name: 'LensArn', traits: {"smithy.api#documentation" => "<p>The ARN of the lens.</p>"}))
    LensSummary.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias'))
    LensSummary.add_member(:lens_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LensName, location_name: 'LensName'))
    LensSummary.add_member(:lens_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LensType, location_name: 'LensType', traits: {"smithy.api#documentation" => "<p>The type of the lens.</p>"}))
    LensSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: LensDescription, location_name: 'Description'))
    LensSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt'))
    LensSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt'))
    LensSummary.add_member(:lens_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LensVersion, location_name: 'LensVersion', traits: {"smithy.api#documentation" => "<p>The version of the lens.</p>"}))
    LensSummary.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'Owner'))
    LensSummary.add_member(:lens_status, Smithy::Schema::Shapes::ShapeRef.new(shape: LensStatus, location_name: 'LensStatus', traits: {"smithy.api#documentation" => "<p>The status of the lens.</p>"}))
    LensSummary.type = Types::LensSummary
    LensType.add_member(:aws_official, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_OFFICIAL', traits: {"smithy.api#enumValue" => "AWS_OFFICIAL"}))
    LensType.add_member(:custom_shared, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM_SHARED', traits: {"smithy.api#enumValue" => "CUSTOM_SHARED"}))
    LensType.add_member(:custom_self, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM_SELF', traits: {"smithy.api#enumValue" => "CUSTOM_SELF"}))
    LensUpgradeSummary.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    LensUpgradeSummary.add_member(:workload_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: 'WorkloadName'))
    LensUpgradeSummary.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias'))
    LensUpgradeSummary.add_member(:lens_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LensArn, location_name: 'LensArn', traits: {"smithy.api#documentation" => "<p>The ARN for the lens.</p>"}))
    LensUpgradeSummary.add_member(:current_lens_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LensVersion, location_name: 'CurrentLensVersion', traits: {"smithy.api#documentation" => "<p>The current version of the lens.</p>"}))
    LensUpgradeSummary.add_member(:latest_lens_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LensVersion, location_name: 'LatestLensVersion', traits: {"smithy.api#documentation" => "<p>The latest version of the lens.</p>"}))
    LensUpgradeSummary.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>\n            <code>ResourceArn</code> of the lens being upgraded</p>"}))
    LensUpgradeSummary.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: 'ResourceName'))
    LensUpgradeSummary.type = Types::LensUpgradeSummary
    ListAnswersInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAnswersInput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAnswersInput.add_member(:pillar_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PillarId, location_name: 'PillarId', traits: {"smithy.api#httpQuery" => "PillarId"}))
    ListAnswersInput.add_member(:milestone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: MilestoneNumber, location_name: 'MilestoneNumber', traits: {"smithy.api#httpQuery" => "MilestoneNumber"}))
    ListAnswersInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListAnswersInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnswersMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for this request.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListAnswersInput.add_member(:question_priority, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionPriority, location_name: 'QuestionPriority', traits: {"smithy.api#documentation" => "<p>The priority of the question.</p>", "smithy.api#httpQuery" => "QuestionPriority"}))
    ListAnswersInput.type = Types::ListAnswersInput
    ListAnswersOutput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    ListAnswersOutput.add_member(:milestone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: MilestoneNumber, location_name: 'MilestoneNumber'))
    ListAnswersOutput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias'))
    ListAnswersOutput.add_member(:lens_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LensArn, location_name: 'LensArn', traits: {"smithy.api#documentation" => "<p>The ARN for the lens.</p>"}))
    ListAnswersOutput.add_member(:answer_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AnswerSummaries, location_name: 'AnswerSummaries'))
    ListAnswersOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListAnswersOutput.type = Types::ListAnswersOutput
    ListCheckDetailsInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCheckDetailsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListCheckDetailsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListCheckDetailsInput.add_member(:lens_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LensArn, location_name: 'LensArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Well-Architected Lens ARN.</p>", "smithy.api#required" => {}}))
    ListCheckDetailsInput.add_member(:pillar_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PillarId, location_name: 'PillarId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListCheckDetailsInput.add_member(:question_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionId, location_name: 'QuestionId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListCheckDetailsInput.add_member(:choice_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceId, location_name: 'ChoiceId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListCheckDetailsInput.type = Types::ListCheckDetailsInput
    ListCheckDetailsOutput.add_member(:check_details, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckDetails, location_name: 'CheckDetails', traits: {"smithy.api#documentation" => "<p>The details about the Trusted Advisor checks related to the Well-Architected best practice.</p>"}))
    ListCheckDetailsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListCheckDetailsOutput.type = Types::ListCheckDetailsOutput
    ListCheckSummariesInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCheckSummariesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListCheckSummariesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListCheckSummariesInput.add_member(:lens_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LensArn, location_name: 'LensArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Well-Architected Lens ARN.</p>", "smithy.api#required" => {}}))
    ListCheckSummariesInput.add_member(:pillar_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PillarId, location_name: 'PillarId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListCheckSummariesInput.add_member(:question_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionId, location_name: 'QuestionId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListCheckSummariesInput.add_member(:choice_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceId, location_name: 'ChoiceId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListCheckSummariesInput.type = Types::ListCheckSummariesInput
    ListCheckSummariesOutput.add_member(:check_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckSummaries, location_name: 'CheckSummaries', traits: {"smithy.api#documentation" => "<p>List of Trusted Advisor summaries related to the Well-Architected best practice.</p>"}))
    ListCheckSummariesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListCheckSummariesOutput.type = Types::ListCheckSummariesOutput
    ListLensReviewImprovementsInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListLensReviewImprovementsInput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListLensReviewImprovementsInput.add_member(:pillar_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PillarId, location_name: 'PillarId', traits: {"smithy.api#httpQuery" => "PillarId"}))
    ListLensReviewImprovementsInput.add_member(:milestone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: MilestoneNumber, location_name: 'MilestoneNumber', traits: {"smithy.api#httpQuery" => "MilestoneNumber"}))
    ListLensReviewImprovementsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListLensReviewImprovementsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListLensReviewImprovementsMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for this request.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListLensReviewImprovementsInput.add_member(:question_priority, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionPriority, location_name: 'QuestionPriority', traits: {"smithy.api#documentation" => "<p>The priority of the question.</p>", "smithy.api#httpQuery" => "QuestionPriority"}))
    ListLensReviewImprovementsInput.type = Types::ListLensReviewImprovementsInput
    ListLensReviewImprovementsOutput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    ListLensReviewImprovementsOutput.add_member(:milestone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: MilestoneNumber, location_name: 'MilestoneNumber'))
    ListLensReviewImprovementsOutput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias'))
    ListLensReviewImprovementsOutput.add_member(:lens_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LensArn, location_name: 'LensArn', traits: {"smithy.api#documentation" => "<p>The ARN for the lens.</p>"}))
    ListLensReviewImprovementsOutput.add_member(:improvement_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ImprovementSummaries, location_name: 'ImprovementSummaries'))
    ListLensReviewImprovementsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListLensReviewImprovementsOutput.type = Types::ListLensReviewImprovementsOutput
    ListLensReviewsInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListLensReviewsInput.add_member(:milestone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: MilestoneNumber, location_name: 'MilestoneNumber', traits: {"smithy.api#httpQuery" => "MilestoneNumber"}))
    ListLensReviewsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListLensReviewsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListLensReviewsInput.type = Types::ListLensReviewsInput
    ListLensReviewsOutput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    ListLensReviewsOutput.add_member(:milestone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: MilestoneNumber, location_name: 'MilestoneNumber'))
    ListLensReviewsOutput.add_member(:lens_review_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: LensReviewSummaries, location_name: 'LensReviewSummaries'))
    ListLensReviewsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListLensReviewsOutput.type = Types::ListLensReviewsOutput
    ListLensSharesInput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListLensSharesInput.add_member(:shared_with_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: SharedWithPrefix, location_name: 'SharedWithPrefix', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID, organization ID, or organizational unit (OU) ID with which the lens is shared.</p>", "smithy.api#httpQuery" => "SharedWithPrefix"}))
    ListLensSharesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListLensSharesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkloadSharesMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for this request.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListLensSharesInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: 'Status', traits: {"smithy.api#httpQuery" => "Status"}))
    ListLensSharesInput.type = Types::ListLensSharesInput
    ListLensSharesOutput.add_member(:lens_share_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: LensShareSummaries, location_name: 'LensShareSummaries', traits: {"smithy.api#documentation" => "<p>A list of lens share summaries.</p>"}))
    ListLensSharesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListLensSharesOutput.type = Types::ListLensSharesOutput
    ListLensesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListLensesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListLensesInput.add_member(:lens_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LensType, location_name: 'LensType', traits: {"smithy.api#documentation" => "<p>The type of lenses to be returned.</p>", "smithy.api#httpQuery" => "LensType"}))
    ListLensesInput.add_member(:lens_status, Smithy::Schema::Shapes::ShapeRef.new(shape: LensStatusType, location_name: 'LensStatus', traits: {"smithy.api#documentation" => "<p>The status of lenses to be returned.</p>", "smithy.api#httpQuery" => "LensStatus"}))
    ListLensesInput.add_member(:lens_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LensName, location_name: 'LensName', traits: {"smithy.api#httpQuery" => "LensName"}))
    ListLensesInput.type = Types::ListLensesInput
    ListLensesOutput.add_member(:lens_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: LensSummaries, location_name: 'LensSummaries'))
    ListLensesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListLensesOutput.type = Types::ListLensesOutput
    ListMilestonesInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMilestonesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListMilestonesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListMilestonesInput.type = Types::ListMilestonesInput
    ListMilestonesOutput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    ListMilestonesOutput.add_member(:milestone_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: MilestoneSummaries, location_name: 'MilestoneSummaries'))
    ListMilestonesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListMilestonesOutput.type = Types::ListMilestonesOutput
    ListNotificationsInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    ListNotificationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListNotificationsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotificationsMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for this request.</p>"}))
    ListNotificationsInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN for the related resource for the notification.</p>\n         <note>\n            <p>Only one of <code>WorkloadID</code> or <code>ResourceARN</code> should be specified.</p>\n         </note>"}))
    ListNotificationsInput.type = Types::ListNotificationsInput
    ListNotificationsOutput.add_member(:notification_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationSummaries, location_name: 'NotificationSummaries', traits: {"smithy.api#documentation" => "<p>List of lens notification summaries in a workload.</p>"}))
    ListNotificationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListNotificationsOutput.type = Types::ListNotificationsOutput
    ListProfileNotificationsInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpQuery" => "WorkloadId"}))
    ListProfileNotificationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListProfileNotificationsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListProfileNotificationsInput.type = Types::ListProfileNotificationsInput
    ListProfileNotificationsOutput.add_member(:notification_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileNotificationSummaries, location_name: 'NotificationSummaries', traits: {"smithy.api#documentation" => "<p>Notification summaries.</p>"}))
    ListProfileNotificationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListProfileNotificationsOutput.type = Types::ListProfileNotificationsOutput
    ListProfileSharesInput.add_member(:profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileArn, location_name: 'ProfileArn', traits: {"smithy.api#documentation" => "<p>The profile ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListProfileSharesInput.add_member(:shared_with_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: SharedWithPrefix, location_name: 'SharedWithPrefix', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID, organization ID, or organizational unit (OU) ID with which the profile is shared.</p>", "smithy.api#httpQuery" => "SharedWithPrefix"}))
    ListProfileSharesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListProfileSharesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListProfileSharesMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for this request.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListProfileSharesInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: 'Status', traits: {"smithy.api#httpQuery" => "Status"}))
    ListProfileSharesInput.type = Types::ListProfileSharesInput
    ListProfileSharesOutput.add_member(:profile_share_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileShareSummaries, location_name: 'ProfileShareSummaries', traits: {"smithy.api#documentation" => "<p>Profile share summaries.</p>"}))
    ListProfileSharesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListProfileSharesOutput.type = Types::ListProfileSharesOutput
    ListProfilesInput.add_member(:profile_name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileNamePrefix, location_name: 'ProfileNamePrefix', traits: {"smithy.api#documentation" => "<p>An optional string added to the beginning of each profile name returned in the\n            results.</p>", "smithy.api#httpQuery" => "ProfileNamePrefix"}))
    ListProfilesInput.add_member(:profile_owner_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileOwnerType, location_name: 'ProfileOwnerType', traits: {"smithy.api#documentation" => "<p>Profile owner type.</p>", "smithy.api#httpQuery" => "ProfileOwnerType"}))
    ListProfilesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListProfilesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListProfilesInput.type = Types::ListProfilesInput
    ListProfilesOutput.add_member(:profile_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileSummaries, location_name: 'ProfileSummaries', traits: {"smithy.api#documentation" => "<p>Profile summaries.</p>"}))
    ListProfilesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListProfilesOutput.type = Types::ListProfilesOutput
    ListReviewTemplateAnswersInput.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The ARN of the review template.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListReviewTemplateAnswersInput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListReviewTemplateAnswersInput.add_member(:pillar_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PillarId, location_name: 'PillarId', traits: {"smithy.api#httpQuery" => "PillarId"}))
    ListReviewTemplateAnswersInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListReviewTemplateAnswersInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListReviewTemplateAnswersMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for this request.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListReviewTemplateAnswersInput.type = Types::ListReviewTemplateAnswersInput
    ListReviewTemplateAnswersOutput.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The ARN of the review template.</p>"}))
    ListReviewTemplateAnswersOutput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias'))
    ListReviewTemplateAnswersOutput.add_member(:answer_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewTemplateAnswerSummaries, location_name: 'AnswerSummaries', traits: {"smithy.api#documentation" => "<p>List of answer summaries of a lens review in a review template.</p>"}))
    ListReviewTemplateAnswersOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListReviewTemplateAnswersOutput.type = Types::ListReviewTemplateAnswersOutput
    ListReviewTemplatesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListReviewTemplatesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListReviewTemplatesInput.type = Types::ListReviewTemplatesInput
    ListReviewTemplatesOutput.add_member(:review_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewTemplates, location_name: 'ReviewTemplates', traits: {"smithy.api#documentation" => "<p>List of review templates.</p>"}))
    ListReviewTemplatesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListReviewTemplatesOutput.type = Types::ListReviewTemplatesOutput
    ListShareInvitationsInput.add_member(:workload_name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadNamePrefix, location_name: 'WorkloadNamePrefix', traits: {"smithy.api#httpQuery" => "WorkloadNamePrefix"}))
    ListShareInvitationsInput.add_member(:lens_name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: LensNamePrefix, location_name: 'LensNamePrefix', traits: {"smithy.api#documentation" => "<p>An optional string added to the beginning of each lens name returned in the results.</p>", "smithy.api#httpQuery" => "LensNamePrefix"}))
    ListShareInvitationsInput.add_member(:share_resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareResourceType, location_name: 'ShareResourceType', traits: {"smithy.api#documentation" => "<p>The type of share invitations to be returned.</p>", "smithy.api#httpQuery" => "ShareResourceType"}))
    ListShareInvitationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListShareInvitationsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListShareInvitationsMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for this request.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListShareInvitationsInput.add_member(:profile_name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileNamePrefix, location_name: 'ProfileNamePrefix', traits: {"smithy.api#documentation" => "<p>An optional string added to the beginning of each profile name returned in the\n            results.</p>", "smithy.api#httpQuery" => "ProfileNamePrefix"}))
    ListShareInvitationsInput.add_member(:template_name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateNamePrefix, location_name: 'TemplateNamePrefix', traits: {"smithy.api#documentation" => "<p>An optional string added to the beginning of each review template name returned in the\n            results.</p>", "smithy.api#httpQuery" => "TemplateNamePrefix"}))
    ListShareInvitationsInput.type = Types::ListShareInvitationsInput
    ListShareInvitationsOutput.add_member(:share_invitation_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareInvitationSummaries, location_name: 'ShareInvitationSummaries', traits: {"smithy.api#documentation" => "<p>List of share invitation summaries in a workload.</p>"}))
    ListShareInvitationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListShareInvitationsOutput.type = Types::ListShareInvitationsOutput
    ListTagsForResourceInput.add_member(:workload_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadArn, location_name: 'WorkloadArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags for the resource.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTemplateSharesInput.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The review template ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTemplateSharesInput.add_member(:shared_with_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: SharedWithPrefix, location_name: 'SharedWithPrefix', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID, organization ID, or organizational unit\n            (OU) ID with which the profile is shared.</p>", "smithy.api#httpQuery" => "SharedWithPrefix"}))
    ListTemplateSharesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListTemplateSharesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplateSharesMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for this request.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListTemplateSharesInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: 'Status', traits: {"smithy.api#httpQuery" => "Status"}))
    ListTemplateSharesInput.type = Types::ListTemplateSharesInput
    ListTemplateSharesOutput.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The review template ARN.</p>"}))
    ListTemplateSharesOutput.add_member(:template_share_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateShareSummaries, location_name: 'TemplateShareSummaries', traits: {"smithy.api#documentation" => "<p>A review template share summary return object.</p>"}))
    ListTemplateSharesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListTemplateSharesOutput.type = Types::ListTemplateSharesOutput
    ListWorkloadSharesInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWorkloadSharesInput.add_member(:shared_with_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: SharedWithPrefix, location_name: 'SharedWithPrefix', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID, organization ID, or organizational unit (OU) ID with which the workload is shared.</p>", "smithy.api#httpQuery" => "SharedWithPrefix"}))
    ListWorkloadSharesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListWorkloadSharesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkloadSharesMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for this request.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListWorkloadSharesInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: 'Status', traits: {"smithy.api#httpQuery" => "Status"}))
    ListWorkloadSharesInput.type = Types::ListWorkloadSharesInput
    ListWorkloadSharesOutput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    ListWorkloadSharesOutput.add_member(:workload_share_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadShareSummaries, location_name: 'WorkloadShareSummaries'))
    ListWorkloadSharesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListWorkloadSharesOutput.type = Types::ListWorkloadSharesOutput
    ListWorkloadsInput.add_member(:workload_name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadNamePrefix, location_name: 'WorkloadNamePrefix'))
    ListWorkloadsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListWorkloadsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkloadsMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for this request.</p>"}))
    ListWorkloadsInput.type = Types::ListWorkloadsInput
    ListWorkloadsOutput.add_member(:workload_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadSummaries, location_name: 'WorkloadSummaries'))
    ListWorkloadsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListWorkloadsOutput.type = Types::ListWorkloadsOutput
    MetricType.add_member(:workload, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORKLOAD', traits: {"smithy.api#enumValue" => "WORKLOAD"}))
    Milestone.add_member(:milestone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: MilestoneNumber, location_name: 'MilestoneNumber'))
    Milestone.add_member(:milestone_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MilestoneName, location_name: 'MilestoneName'))
    Milestone.add_member(:recorded_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RecordedAt'))
    Milestone.add_member(:workload, Smithy::Schema::Shapes::ShapeRef.new(shape: Workload, location_name: 'Workload'))
    Milestone.type = Types::Milestone
    MilestoneSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MilestoneSummary)
    MilestoneSummary.add_member(:milestone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: MilestoneNumber, location_name: 'MilestoneNumber'))
    MilestoneSummary.add_member(:milestone_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MilestoneName, location_name: 'MilestoneName'))
    MilestoneSummary.add_member(:recorded_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RecordedAt'))
    MilestoneSummary.add_member(:workload_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadSummary, location_name: 'WorkloadSummary'))
    MilestoneSummary.type = Types::MilestoneSummary
    NotificationSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationSummary)
    NotificationSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of notification.</p>"}))
    NotificationSummary.add_member(:lens_upgrade_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: LensUpgradeSummary, location_name: 'LensUpgradeSummary', traits: {"smithy.api#documentation" => "<p>Summary of lens upgrade.</p>"}))
    NotificationSummary.type = Types::NotificationSummary
    NotificationType.add_member(:lens_version_upgraded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LENS_VERSION_UPGRADED', traits: {"smithy.api#enumValue" => "LENS_VERSION_UPGRADED"}))
    NotificationType.add_member(:lens_version_deprecated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LENS_VERSION_DEPRECATED', traits: {"smithy.api#enumValue" => "LENS_VERSION_DEPRECATED"}))
    OrganizationSharingStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    OrganizationSharingStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    PermissionType.add_member(:readonly, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READONLY', traits: {"smithy.api#enumValue" => "READONLY"}))
    PermissionType.add_member(:contributor, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTRIBUTOR', traits: {"smithy.api#enumValue" => "CONTRIBUTOR"}))
    PillarDifference.add_member(:pillar_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PillarId, location_name: 'PillarId'))
    PillarDifference.add_member(:pillar_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PillarName, location_name: 'PillarName'))
    PillarDifference.add_member(:difference_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DifferenceStatus, location_name: 'DifferenceStatus', traits: {"smithy.api#documentation" => "<p>Indicates the type of change to the pillar.</p>"}))
    PillarDifference.add_member(:question_differences, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionDifferences, location_name: 'QuestionDifferences', traits: {"smithy.api#documentation" => "<p>List of question differences.</p>"}))
    PillarDifference.type = Types::PillarDifference
    PillarDifferences.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PillarDifference)
    PillarMetric.add_member(:pillar_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PillarId, location_name: 'PillarId'))
    PillarMetric.add_member(:risk_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: RiskCounts, location_name: 'RiskCounts'))
    PillarMetric.add_member(:questions, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionMetrics, location_name: 'Questions', traits: {"smithy.api#documentation" => "<p>The questions that have been identified as risks in the pillar.</p>"}))
    PillarMetric.type = Types::PillarMetric
    PillarMetrics.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PillarMetric)
    PillarNotes.key = Smithy::Schema::Shapes::ShapeRef.new(shape: PillarId)
    PillarNotes.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Notes)
    PillarReviewSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PillarReviewSummary)
    PillarReviewSummary.add_member(:pillar_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PillarId, location_name: 'PillarId'))
    PillarReviewSummary.add_member(:pillar_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PillarName, location_name: 'PillarName'))
    PillarReviewSummary.add_member(:notes, Smithy::Schema::Shapes::ShapeRef.new(shape: Notes, location_name: 'Notes'))
    PillarReviewSummary.add_member(:risk_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: RiskCounts, location_name: 'RiskCounts'))
    PillarReviewSummary.add_member(:prioritized_risk_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: RiskCounts, location_name: 'PrioritizedRiskCounts'))
    PillarReviewSummary.type = Types::PillarReviewSummary
    Profile.add_member(:profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileArn, location_name: 'ProfileArn', traits: {"smithy.api#documentation" => "<p>The profile ARN.</p>"}))
    Profile.add_member(:profile_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileVersion, location_name: 'ProfileVersion', traits: {"smithy.api#documentation" => "<p>The profile version.</p>"}))
    Profile.add_member(:profile_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileName, location_name: 'ProfileName', traits: {"smithy.api#documentation" => "<p>The profile name.</p>"}))
    Profile.add_member(:profile_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileDescription, location_name: 'ProfileDescription', traits: {"smithy.api#documentation" => "<p>The profile description.</p>"}))
    Profile.add_member(:profile_questions, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileQuestions, location_name: 'ProfileQuestions', traits: {"smithy.api#documentation" => "<p>Profile questions.</p>"}))
    Profile.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'Owner'))
    Profile.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt'))
    Profile.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt'))
    Profile.add_member(:share_invitation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareInvitationId, location_name: 'ShareInvitationId', traits: {"smithy.api#documentation" => "<p>The ID assigned to the share invitation.</p>"}))
    Profile.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the profile.</p>"}))
    Profile.type = Types::Profile
    ProfileArns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileArn)
    ProfileChoice.add_member(:choice_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceId, location_name: 'ChoiceId'))
    ProfileChoice.add_member(:choice_title, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceTitle, location_name: 'ChoiceTitle'))
    ProfileChoice.add_member(:choice_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceDescription, location_name: 'ChoiceDescription'))
    ProfileChoice.type = Types::ProfileChoice
    ProfileNotificationSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileNotificationSummary)
    ProfileNotificationSummary.add_member(:current_profile_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileVersion, location_name: 'CurrentProfileVersion', traits: {"smithy.api#documentation" => "<p>The current profile version.</p>"}))
    ProfileNotificationSummary.add_member(:latest_profile_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileVersion, location_name: 'LatestProfileVersion', traits: {"smithy.api#documentation" => "<p>The latest profile version.</p>"}))
    ProfileNotificationSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileNotificationType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Type of notification.</p>"}))
    ProfileNotificationSummary.add_member(:profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileArn, location_name: 'ProfileArn', traits: {"smithy.api#documentation" => "<p>The profile ARN.</p>"}))
    ProfileNotificationSummary.add_member(:profile_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileName, location_name: 'ProfileName', traits: {"smithy.api#documentation" => "<p>The profile name.</p>"}))
    ProfileNotificationSummary.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    ProfileNotificationSummary.add_member(:workload_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: 'WorkloadName'))
    ProfileNotificationSummary.type = Types::ProfileNotificationSummary
    ProfileNotificationType.add_member(:profile_answers_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROFILE_ANSWERS_UPDATED', traits: {"smithy.api#enumValue" => "PROFILE_ANSWERS_UPDATED"}))
    ProfileNotificationType.add_member(:profile_deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROFILE_DELETED', traits: {"smithy.api#enumValue" => "PROFILE_DELETED"}))
    ProfileOwnerType.add_member(:self, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SELF', traits: {"smithy.api#enumValue" => "SELF"}))
    ProfileOwnerType.add_member(:shared, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHARED', traits: {"smithy.api#enumValue" => "SHARED"}))
    ProfileQuestion.add_member(:question_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionId, location_name: 'QuestionId'))
    ProfileQuestion.add_member(:question_title, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionTitle, location_name: 'QuestionTitle'))
    ProfileQuestion.add_member(:question_description, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionDescription, location_name: 'QuestionDescription'))
    ProfileQuestion.add_member(:question_choices, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileQuestionChoices, location_name: 'QuestionChoices', traits: {"smithy.api#documentation" => "<p>The question choices.</p>"}))
    ProfileQuestion.add_member(:selected_choice_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectedChoiceIds, location_name: 'SelectedChoiceIds', traits: {"smithy.api#documentation" => "<p>The selected choices.</p>"}))
    ProfileQuestion.add_member(:min_selected_choices, Smithy::Schema::Shapes::ShapeRef.new(shape: MinSelectedProfileChoices, location_name: 'MinSelectedChoices', traits: {"smithy.api#documentation" => "<p>The minimum number of selected choices.</p>"}))
    ProfileQuestion.add_member(:max_selected_choices, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSelectedProfileChoices, location_name: 'MaxSelectedChoices', traits: {"smithy.api#documentation" => "<p>The maximum number of selected choices.</p>"}))
    ProfileQuestion.type = Types::ProfileQuestion
    ProfileQuestionChoices.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileChoice)
    ProfileQuestionUpdate.add_member(:question_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionId, location_name: 'QuestionId'))
    ProfileQuestionUpdate.add_member(:selected_choice_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectedProfileChoiceIds, location_name: 'SelectedChoiceIds', traits: {"smithy.api#documentation" => "<p>The selected choices.</p>"}))
    ProfileQuestionUpdate.type = Types::ProfileQuestionUpdate
    ProfileQuestionUpdates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileQuestionUpdate)
    ProfileQuestions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileQuestion)
    ProfileShareSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileShareSummary)
    ProfileShareSummary.add_member(:share_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareId, location_name: 'ShareId'))
    ProfileShareSummary.add_member(:shared_with, Smithy::Schema::Shapes::ShapeRef.new(shape: SharedWith, location_name: 'SharedWith'))
    ProfileShareSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: 'Status'))
    ProfileShareSummary.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>Profile share invitation status message.</p>"}))
    ProfileShareSummary.type = Types::ProfileShareSummary
    ProfileSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileSummary)
    ProfileSummary.add_member(:profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileArn, location_name: 'ProfileArn', traits: {"smithy.api#documentation" => "<p>The profile ARN.</p>"}))
    ProfileSummary.add_member(:profile_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileVersion, location_name: 'ProfileVersion', traits: {"smithy.api#documentation" => "<p>The profile version.</p>"}))
    ProfileSummary.add_member(:profile_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileName, location_name: 'ProfileName', traits: {"smithy.api#documentation" => "<p>The profile name.</p>"}))
    ProfileSummary.add_member(:profile_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileDescription, location_name: 'ProfileDescription', traits: {"smithy.api#documentation" => "<p>The profile description.</p>"}))
    ProfileSummary.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'Owner'))
    ProfileSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt'))
    ProfileSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt'))
    ProfileSummary.type = Types::ProfileSummary
    ProfileTemplate.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the profile template.</p>"}))
    ProfileTemplate.add_member(:template_questions, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateQuestions, location_name: 'TemplateQuestions', traits: {"smithy.api#documentation" => "<p>Profile template questions.</p>"}))
    ProfileTemplate.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt'))
    ProfileTemplate.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt'))
    ProfileTemplate.type = Types::ProfileTemplate
    ProfileTemplateChoice.add_member(:choice_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceId, location_name: 'ChoiceId'))
    ProfileTemplateChoice.add_member(:choice_title, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceTitle, location_name: 'ChoiceTitle'))
    ProfileTemplateChoice.add_member(:choice_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceDescription, location_name: 'ChoiceDescription'))
    ProfileTemplateChoice.type = Types::ProfileTemplateChoice
    ProfileTemplateQuestion.add_member(:question_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionId, location_name: 'QuestionId'))
    ProfileTemplateQuestion.add_member(:question_title, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionTitle, location_name: 'QuestionTitle'))
    ProfileTemplateQuestion.add_member(:question_description, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionDescription, location_name: 'QuestionDescription'))
    ProfileTemplateQuestion.add_member(:question_choices, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileTemplateQuestionChoices, location_name: 'QuestionChoices', traits: {"smithy.api#documentation" => "<p>The question choices.</p>"}))
    ProfileTemplateQuestion.add_member(:min_selected_choices, Smithy::Schema::Shapes::ShapeRef.new(shape: MinSelectedProfileChoices, location_name: 'MinSelectedChoices', traits: {"smithy.api#documentation" => "<p>The minimum number of choices selected.</p>"}))
    ProfileTemplateQuestion.add_member(:max_selected_choices, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSelectedProfileChoices, location_name: 'MaxSelectedChoices', traits: {"smithy.api#documentation" => "<p>The maximum number of choices selected.</p>"}))
    ProfileTemplateQuestion.type = Types::ProfileTemplateQuestion
    ProfileTemplateQuestionChoices.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileTemplateChoice)
    Question.add_member(:unanswered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNANSWERED', traits: {"smithy.api#enumValue" => "UNANSWERED"}))
    Question.add_member(:answered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANSWERED', traits: {"smithy.api#enumValue" => "ANSWERED"}))
    QuestionCounts.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Question)
    QuestionCounts.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Count)
    QuestionDifference.add_member(:question_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionId, location_name: 'QuestionId'))
    QuestionDifference.add_member(:question_title, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionTitle, location_name: 'QuestionTitle'))
    QuestionDifference.add_member(:difference_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DifferenceStatus, location_name: 'DifferenceStatus', traits: {"smithy.api#documentation" => "<p>Indicates the type of change to the question.</p>"}))
    QuestionDifference.type = Types::QuestionDifference
    QuestionDifferences.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionDifference)
    QuestionMetric.add_member(:question_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionId, location_name: 'QuestionId'))
    QuestionMetric.add_member(:risk, Smithy::Schema::Shapes::ShapeRef.new(shape: Risk, location_name: 'Risk'))
    QuestionMetric.add_member(:best_practices, Smithy::Schema::Shapes::ShapeRef.new(shape: BestPractices, location_name: 'BestPractices', traits: {"smithy.api#documentation" => "<p>The best practices, or choices, that have been identified as contributing to risk in a question.</p>"}))
    QuestionMetric.type = Types::QuestionMetric
    QuestionMetrics.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionMetric)
    QuestionPriority.add_member(:prioritized, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIORITIZED', traits: {"smithy.api#enumValue" => "PRIORITIZED"}))
    QuestionPriority.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    QuestionType.add_member(:prioritized, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIORITIZED', traits: {"smithy.api#enumValue" => "PRIORITIZED"}))
    QuestionType.add_member(:non_prioritized, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NON_PRIORITIZED', traits: {"smithy.api#enumValue" => "NON_PRIORITIZED"}))
    ReportFormat.add_member(:pdf, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PDF', traits: {"smithy.api#enumValue" => "PDF"}))
    ReportFormat.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionResourceId, location_name: 'ResourceId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionResourceType, location_name: 'ResourceType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ReviewTemplate.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The review template description.</p>"}))
    ReviewTemplate.add_member(:lenses, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewTemplateLenses, location_name: 'Lenses', traits: {"smithy.api#documentation" => "<p>The lenses applied to the review template.</p>"}))
    ReviewTemplate.add_member(:notes, Smithy::Schema::Shapes::ShapeRef.new(shape: Notes, location_name: 'Notes'))
    ReviewTemplate.add_member(:question_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionCounts, location_name: 'QuestionCounts', traits: {"smithy.api#documentation" => "<p>A count of how many total questions are answered and unanswered in the review template.</p>"}))
    ReviewTemplate.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'Owner'))
    ReviewTemplate.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt'))
    ReviewTemplate.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The review template ARN.</p>"}))
    ReviewTemplate.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the review template.</p>"}))
    ReviewTemplate.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the review template.</p>"}))
    ReviewTemplate.add_member(:update_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewTemplateUpdateStatus, location_name: 'UpdateStatus', traits: {"smithy.api#documentation" => "<p>The latest status of a review template.</p>"}))
    ReviewTemplate.add_member(:share_invitation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareInvitationId, location_name: 'ShareInvitationId', traits: {"smithy.api#documentation" => "<p>The ID assigned to the template share invitation.</p>"}))
    ReviewTemplate.type = Types::ReviewTemplate
    ReviewTemplateAnswer.add_member(:question_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionId, location_name: 'QuestionId'))
    ReviewTemplateAnswer.add_member(:pillar_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PillarId, location_name: 'PillarId'))
    ReviewTemplateAnswer.add_member(:question_title, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionTitle, location_name: 'QuestionTitle'))
    ReviewTemplateAnswer.add_member(:question_description, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionDescription, location_name: 'QuestionDescription'))
    ReviewTemplateAnswer.add_member(:improvement_plan_url, Smithy::Schema::Shapes::ShapeRef.new(shape: ImprovementPlanUrl, location_name: 'ImprovementPlanUrl'))
    ReviewTemplateAnswer.add_member(:helpful_resource_url, Smithy::Schema::Shapes::ShapeRef.new(shape: HelpfulResourceUrl, location_name: 'HelpfulResourceUrl'))
    ReviewTemplateAnswer.add_member(:helpful_resource_display_text, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayText, location_name: 'HelpfulResourceDisplayText', traits: {"smithy.api#documentation" => "<p>The helpful resource text to be displayed for a custom lens.</p>\n         <note>\n            <p>This field does not apply to Amazon Web Services official lenses.</p>\n         </note>"}))
    ReviewTemplateAnswer.add_member(:choices, Smithy::Schema::Shapes::ShapeRef.new(shape: Choices, location_name: 'Choices'))
    ReviewTemplateAnswer.add_member(:selected_choices, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectedChoices, location_name: 'SelectedChoices'))
    ReviewTemplateAnswer.add_member(:choice_answers, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceAnswers, location_name: 'ChoiceAnswers', traits: {"smithy.api#documentation" => "<p>A list of selected choices to a question in your review template.</p>"}))
    ReviewTemplateAnswer.add_member(:is_applicable, Smithy::Schema::Shapes::ShapeRef.new(shape: IsApplicable, location_name: 'IsApplicable'))
    ReviewTemplateAnswer.add_member(:answer_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewTemplateAnswerStatus, location_name: 'AnswerStatus', traits: {"smithy.api#documentation" => "<p>The status of whether or not this question has been answered.</p>"}))
    ReviewTemplateAnswer.add_member(:notes, Smithy::Schema::Shapes::ShapeRef.new(shape: Notes, location_name: 'Notes'))
    ReviewTemplateAnswer.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: AnswerReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason why the question is not applicable to your review template.</p>"}))
    ReviewTemplateAnswer.type = Types::ReviewTemplateAnswer
    ReviewTemplateAnswerStatus.add_member(:unanswered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNANSWERED', traits: {"smithy.api#enumValue" => "UNANSWERED"}))
    ReviewTemplateAnswerStatus.add_member(:answered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANSWERED', traits: {"smithy.api#enumValue" => "ANSWERED"}))
    ReviewTemplateAnswerSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewTemplateAnswerSummary)
    ReviewTemplateAnswerSummary.add_member(:question_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionId, location_name: 'QuestionId'))
    ReviewTemplateAnswerSummary.add_member(:pillar_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PillarId, location_name: 'PillarId'))
    ReviewTemplateAnswerSummary.add_member(:question_title, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionTitle, location_name: 'QuestionTitle'))
    ReviewTemplateAnswerSummary.add_member(:choices, Smithy::Schema::Shapes::ShapeRef.new(shape: Choices, location_name: 'Choices'))
    ReviewTemplateAnswerSummary.add_member(:selected_choices, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectedChoices, location_name: 'SelectedChoices'))
    ReviewTemplateAnswerSummary.add_member(:choice_answer_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceAnswerSummaries, location_name: 'ChoiceAnswerSummaries', traits: {"smithy.api#documentation" => "<p>A list of selected choices to a question in the review template.</p>"}))
    ReviewTemplateAnswerSummary.add_member(:is_applicable, Smithy::Schema::Shapes::ShapeRef.new(shape: IsApplicable, location_name: 'IsApplicable'))
    ReviewTemplateAnswerSummary.add_member(:answer_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewTemplateAnswerStatus, location_name: 'AnswerStatus', traits: {"smithy.api#documentation" => "<p>The status of whether or not this question has been answered.</p>"}))
    ReviewTemplateAnswerSummary.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: AnswerReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason why a choice is not-applicable to a question in the review template.</p>"}))
    ReviewTemplateAnswerSummary.add_member(:question_type, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionType, location_name: 'QuestionType', traits: {"smithy.api#documentation" => "<p>The type of question.</p>"}))
    ReviewTemplateAnswerSummary.type = Types::ReviewTemplateAnswerSummary
    ReviewTemplateArns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn)
    ReviewTemplateLensAliases.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias)
    ReviewTemplateLensReview.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias'))
    ReviewTemplateLensReview.add_member(:lens_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LensArn, location_name: 'LensArn', traits: {"smithy.api#documentation" => "<p>The lens ARN.</p>"}))
    ReviewTemplateLensReview.add_member(:lens_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LensVersion, location_name: 'LensVersion', traits: {"smithy.api#documentation" => "<p>The version of the lens.</p>"}))
    ReviewTemplateLensReview.add_member(:lens_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LensName, location_name: 'LensName'))
    ReviewTemplateLensReview.add_member(:lens_status, Smithy::Schema::Shapes::ShapeRef.new(shape: LensStatus, location_name: 'LensStatus', traits: {"smithy.api#documentation" => "<p>The status of the lens.</p>"}))
    ReviewTemplateLensReview.add_member(:pillar_review_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewTemplatePillarReviewSummaries, location_name: 'PillarReviewSummaries', traits: {"smithy.api#documentation" => "<p>Pillar review summaries of a lens review.</p>"}))
    ReviewTemplateLensReview.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt'))
    ReviewTemplateLensReview.add_member(:notes, Smithy::Schema::Shapes::ShapeRef.new(shape: Notes, location_name: 'Notes'))
    ReviewTemplateLensReview.add_member(:question_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionCounts, location_name: 'QuestionCounts', traits: {"smithy.api#documentation" => "<p>A count of how many questions are answered and unanswered in the lens review.</p>"}))
    ReviewTemplateLensReview.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ReviewTemplateLensReview.type = Types::ReviewTemplateLensReview
    ReviewTemplateLenses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias)
    ReviewTemplatePillarReviewSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewTemplatePillarReviewSummary)
    ReviewTemplatePillarReviewSummary.add_member(:pillar_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PillarId, location_name: 'PillarId'))
    ReviewTemplatePillarReviewSummary.add_member(:pillar_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PillarName, location_name: 'PillarName'))
    ReviewTemplatePillarReviewSummary.add_member(:notes, Smithy::Schema::Shapes::ShapeRef.new(shape: Notes, location_name: 'Notes'))
    ReviewTemplatePillarReviewSummary.add_member(:question_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionCounts, location_name: 'QuestionCounts', traits: {"smithy.api#documentation" => "<p>A count of how many questions are answered and unanswered in the requested pillar of the lens review.</p>"}))
    ReviewTemplatePillarReviewSummary.type = Types::ReviewTemplatePillarReviewSummary
    ReviewTemplateSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Description of the review template.</p>"}))
    ReviewTemplateSummary.add_member(:lenses, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewTemplateLenses, location_name: 'Lenses', traits: {"smithy.api#documentation" => "<p>Lenses associated with the review template.</p>"}))
    ReviewTemplateSummary.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'Owner'))
    ReviewTemplateSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt'))
    ReviewTemplateSummary.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The review template ARN.</p>"}))
    ReviewTemplateSummary.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the review template.</p>"}))
    ReviewTemplateSummary.add_member(:update_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewTemplateUpdateStatus, location_name: 'UpdateStatus', traits: {"smithy.api#documentation" => "<p>The latest status of a review template.</p>"}))
    ReviewTemplateSummary.type = Types::ReviewTemplateSummary
    ReviewTemplateUpdateStatus.add_member(:current, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CURRENT', traits: {"smithy.api#enumValue" => "CURRENT"}))
    ReviewTemplateUpdateStatus.add_member(:lens_not_current, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LENS_NOT_CURRENT', traits: {"smithy.api#enumValue" => "LENS_NOT_CURRENT"}))
    ReviewTemplates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewTemplateSummary)
    Risk.add_member(:unanswered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNANSWERED', traits: {"smithy.api#enumValue" => "UNANSWERED"}))
    Risk.add_member(:high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "HIGH"}))
    Risk.add_member(:medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "MEDIUM"}))
    Risk.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    Risk.add_member(:not_applicable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_APPLICABLE', traits: {"smithy.api#enumValue" => "NOT_APPLICABLE"}))
    RiskCounts.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Risk)
    RiskCounts.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Count)
    SelectedChoiceIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceId)
    SelectedChoices.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceId)
    SelectedPillar.add_member(:pillar_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PillarId, location_name: 'PillarId'))
    SelectedPillar.add_member(:selected_question_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectedQuestionIds, location_name: 'SelectedQuestionIds', traits: {"smithy.api#documentation" => "<p>Selected question IDs in the selected pillar.</p>"}))
    SelectedPillar.type = Types::SelectedPillar
    SelectedPillars.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SelectedPillar)
    SelectedProfileChoiceIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceId)
    SelectedQuestionIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SelectedQuestionId)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionResourceId, location_name: 'ResourceId'))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionResourceType, location_name: 'ResourceType'))
    ServiceQuotaExceededException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: 'QuotaCode', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'ServiceCode', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ShareInvitation.add_member(:share_invitation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareInvitationId, location_name: 'ShareInvitationId', traits: {"smithy.api#documentation" => "<p>The ID assigned to the share invitation.</p>"}))
    ShareInvitation.add_member(:share_resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareResourceType, location_name: 'ShareResourceType', traits: {"smithy.api#documentation" => "<p>The resource type of the share invitation.</p>"}))
    ShareInvitation.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    ShareInvitation.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias'))
    ShareInvitation.add_member(:lens_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LensArn, location_name: 'LensArn', traits: {"smithy.api#documentation" => "<p>The ARN for the lens.</p>"}))
    ShareInvitation.add_member(:profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileArn, location_name: 'ProfileArn', traits: {"smithy.api#documentation" => "<p>The profile ARN.</p>"}))
    ShareInvitation.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The review template ARN.</p>"}))
    ShareInvitation.type = Types::ShareInvitation
    ShareInvitationAction.add_member(:accept, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCEPT', traits: {"smithy.api#enumValue" => "ACCEPT"}))
    ShareInvitationAction.add_member(:reject, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECT', traits: {"smithy.api#enumValue" => "REJECT"}))
    ShareInvitationSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ShareInvitationSummary)
    ShareInvitationSummary.add_member(:share_invitation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareInvitationId, location_name: 'ShareInvitationId', traits: {"smithy.api#documentation" => "<p>The ID assigned to the share invitation.</p>"}))
    ShareInvitationSummary.add_member(:shared_by, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'SharedBy'))
    ShareInvitationSummary.add_member(:shared_with, Smithy::Schema::Shapes::ShapeRef.new(shape: SharedWith, location_name: 'SharedWith'))
    ShareInvitationSummary.add_member(:permission_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionType, location_name: 'PermissionType'))
    ShareInvitationSummary.add_member(:share_resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareResourceType, location_name: 'ShareResourceType', traits: {"smithy.api#documentation" => "<p>The resource type of the share invitation.</p>"}))
    ShareInvitationSummary.add_member(:workload_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: 'WorkloadName'))
    ShareInvitationSummary.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    ShareInvitationSummary.add_member(:lens_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LensName, location_name: 'LensName'))
    ShareInvitationSummary.add_member(:lens_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LensArn, location_name: 'LensArn', traits: {"smithy.api#documentation" => "<p>The ARN for the lens.</p>"}))
    ShareInvitationSummary.add_member(:profile_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileName, location_name: 'ProfileName', traits: {"smithy.api#documentation" => "<p>The profile name.</p>"}))
    ShareInvitationSummary.add_member(:profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileArn, location_name: 'ProfileArn', traits: {"smithy.api#documentation" => "<p>The profile ARN.</p>"}))
    ShareInvitationSummary.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the review template.</p>"}))
    ShareInvitationSummary.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The review template ARN.</p>"}))
    ShareInvitationSummary.type = Types::ShareInvitationSummary
    ShareResourceType.add_member(:workload, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORKLOAD', traits: {"smithy.api#enumValue" => "WORKLOAD"}))
    ShareResourceType.add_member(:lens, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LENS', traits: {"smithy.api#enumValue" => "LENS"}))
    ShareResourceType.add_member(:profile, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROFILE', traits: {"smithy.api#enumValue" => "PROFILE"}))
    ShareResourceType.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEMPLATE', traits: {"smithy.api#enumValue" => "TEMPLATE"}))
    ShareStatus.add_member(:accepted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCEPTED', traits: {"smithy.api#enumValue" => "ACCEPTED"}))
    ShareStatus.add_member(:rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    ShareStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ShareStatus.add_member(:revoked, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVOKED', traits: {"smithy.api#enumValue" => "REVOKED"}))
    ShareStatus.add_member(:expired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    ShareStatus.add_member(:associating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSOCIATING', traits: {"smithy.api#enumValue" => "ASSOCIATING"}))
    ShareStatus.add_member(:associated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSOCIATED', traits: {"smithy.api#enumValue" => "ASSOCIATED"}))
    ShareStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:workload_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadArn, location_name: 'WorkloadArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The tags for the resource.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TemplateQuestions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileTemplateQuestion)
    TemplateShareSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateShareSummary)
    TemplateShareSummary.add_member(:share_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareId, location_name: 'ShareId'))
    TemplateShareSummary.add_member(:shared_with, Smithy::Schema::Shapes::ShapeRef.new(shape: SharedWith, location_name: 'SharedWith'))
    TemplateShareSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: 'Status'))
    TemplateShareSummary.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>Review template share invitation status message. </p>"}))
    TemplateShareSummary.type = Types::TemplateShareSummary
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ThrottlingException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: 'QuotaCode'))
    ThrottlingException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'ServiceCode'))
    ThrottlingException.type = Types::ThrottlingException
    TrustedAdvisorIntegrationStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    TrustedAdvisorIntegrationStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    UntagResourceInput.add_member(:workload_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadArn, location_name: 'WorkloadArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A list of tag keys. Existing tags of the resource \n            whose keys are members of this list are removed from the resource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateAnswerInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAnswerInput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAnswerInput.add_member(:question_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionId, location_name: 'QuestionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAnswerInput.add_member(:selected_choices, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectedChoices, location_name: 'SelectedChoices'))
    UpdateAnswerInput.add_member(:choice_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceUpdates, location_name: 'ChoiceUpdates', traits: {"smithy.api#documentation" => "<p>A list of choices to update on a question in your workload.  The String key \n            corresponds to the choice ID to be updated.</p>"}))
    UpdateAnswerInput.add_member(:notes, Smithy::Schema::Shapes::ShapeRef.new(shape: Notes, location_name: 'Notes'))
    UpdateAnswerInput.add_member(:is_applicable, Smithy::Schema::Shapes::ShapeRef.new(shape: IsApplicable, location_name: 'IsApplicable'))
    UpdateAnswerInput.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: AnswerReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason why a question is not applicable to your workload.</p>"}))
    UpdateAnswerInput.type = Types::UpdateAnswerInput
    UpdateAnswerOutput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    UpdateAnswerOutput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias'))
    UpdateAnswerOutput.add_member(:lens_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LensArn, location_name: 'LensArn', traits: {"smithy.api#documentation" => "<p>The ARN for the lens.</p>"}))
    UpdateAnswerOutput.add_member(:answer, Smithy::Schema::Shapes::ShapeRef.new(shape: Answer, location_name: 'Answer'))
    UpdateAnswerOutput.type = Types::UpdateAnswerOutput
    UpdateGlobalSettingsInput.add_member(:organization_sharing_status, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationSharingStatus, location_name: 'OrganizationSharingStatus', traits: {"smithy.api#documentation" => "<p>The status of organization sharing settings.</p>"}))
    UpdateGlobalSettingsInput.add_member(:discovery_integration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DiscoveryIntegrationStatus, location_name: 'DiscoveryIntegrationStatus', traits: {"smithy.api#documentation" => "<p>The status of discovery support settings.</p>"}))
    UpdateGlobalSettingsInput.add_member(:jira_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountJiraConfigurationInput, location_name: 'JiraConfiguration', traits: {"smithy.api#documentation" => "<p>The status of Jira integration settings.</p>"}))
    UpdateGlobalSettingsInput.type = Types::UpdateGlobalSettingsInput
    UpdateIntegrationInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIntegrationInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    UpdateIntegrationInput.add_member(:integrating_service, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegratingService, location_name: 'IntegratingService', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Which integrated service to update.</p>", "smithy.api#required" => {}}))
    UpdateIntegrationInput.type = Types::UpdateIntegrationInput
    UpdateLensReviewInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLensReviewInput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLensReviewInput.add_member(:lens_notes, Smithy::Schema::Shapes::ShapeRef.new(shape: Notes, location_name: 'LensNotes'))
    UpdateLensReviewInput.add_member(:pillar_notes, Smithy::Schema::Shapes::ShapeRef.new(shape: PillarNotes, location_name: 'PillarNotes'))
    UpdateLensReviewInput.add_member(:jira_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: JiraSelectedQuestionConfiguration, location_name: 'JiraConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration of the Jira integration.</p>"}))
    UpdateLensReviewInput.type = Types::UpdateLensReviewInput
    UpdateLensReviewOutput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    UpdateLensReviewOutput.add_member(:lens_review, Smithy::Schema::Shapes::ShapeRef.new(shape: LensReview, location_name: 'LensReview'))
    UpdateLensReviewOutput.type = Types::UpdateLensReviewOutput
    UpdateProfileInput.add_member(:profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileArn, location_name: 'ProfileArn', traits: {"smithy.api#documentation" => "<p>The profile ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProfileInput.add_member(:profile_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileDescription, location_name: 'ProfileDescription', traits: {"smithy.api#documentation" => "<p>The profile description.</p>"}))
    UpdateProfileInput.add_member(:profile_questions, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileQuestionUpdates, location_name: 'ProfileQuestions', traits: {"smithy.api#documentation" => "<p>Profile questions.</p>"}))
    UpdateProfileInput.type = Types::UpdateProfileInput
    UpdateProfileOutput.add_member(:profile, Smithy::Schema::Shapes::ShapeRef.new(shape: Profile, location_name: 'Profile', traits: {"smithy.api#documentation" => "<p>The profile.</p>"}))
    UpdateProfileOutput.type = Types::UpdateProfileOutput
    UpdateReviewTemplateAnswerInput.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The review template ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReviewTemplateAnswerInput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReviewTemplateAnswerInput.add_member(:question_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QuestionId, location_name: 'QuestionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReviewTemplateAnswerInput.add_member(:selected_choices, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectedChoices, location_name: 'SelectedChoices'))
    UpdateReviewTemplateAnswerInput.add_member(:choice_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceUpdates, location_name: 'ChoiceUpdates', traits: {"smithy.api#documentation" => "<p>A list of choices to be updated.</p>"}))
    UpdateReviewTemplateAnswerInput.add_member(:notes, Smithy::Schema::Shapes::ShapeRef.new(shape: Notes, location_name: 'Notes'))
    UpdateReviewTemplateAnswerInput.add_member(:is_applicable, Smithy::Schema::Shapes::ShapeRef.new(shape: IsApplicable, location_name: 'IsApplicable'))
    UpdateReviewTemplateAnswerInput.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: AnswerReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The update reason.</p>"}))
    UpdateReviewTemplateAnswerInput.type = Types::UpdateReviewTemplateAnswerInput
    UpdateReviewTemplateAnswerOutput.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The review template ARN.</p>"}))
    UpdateReviewTemplateAnswerOutput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias'))
    UpdateReviewTemplateAnswerOutput.add_member(:answer, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewTemplateAnswer, location_name: 'Answer', traits: {"smithy.api#documentation" => "<p>An answer of the question.</p>"}))
    UpdateReviewTemplateAnswerOutput.type = Types::UpdateReviewTemplateAnswerOutput
    UpdateReviewTemplateInput.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The review template ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReviewTemplateInput.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The review template name.</p>"}))
    UpdateReviewTemplateInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The review template description.</p>"}))
    UpdateReviewTemplateInput.add_member(:notes, Smithy::Schema::Shapes::ShapeRef.new(shape: Notes, location_name: 'Notes'))
    UpdateReviewTemplateInput.add_member(:lenses_to_associate, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewTemplateLensAliases, location_name: 'LensesToAssociate', traits: {"smithy.api#documentation" => "<p>A list of lens aliases or ARNs to apply to the review template.</p>"}))
    UpdateReviewTemplateInput.add_member(:lenses_to_disassociate, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewTemplateLensAliases, location_name: 'LensesToDisassociate', traits: {"smithy.api#documentation" => "<p>A list of lens aliases or ARNs to unapply to the review template. The <code>wellarchitected</code> lens cannot be unapplied.</p>"}))
    UpdateReviewTemplateInput.type = Types::UpdateReviewTemplateInput
    UpdateReviewTemplateLensReviewInput.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The review template ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReviewTemplateLensReviewInput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReviewTemplateLensReviewInput.add_member(:lens_notes, Smithy::Schema::Shapes::ShapeRef.new(shape: Notes, location_name: 'LensNotes'))
    UpdateReviewTemplateLensReviewInput.add_member(:pillar_notes, Smithy::Schema::Shapes::ShapeRef.new(shape: PillarNotes, location_name: 'PillarNotes'))
    UpdateReviewTemplateLensReviewInput.type = Types::UpdateReviewTemplateLensReviewInput
    UpdateReviewTemplateLensReviewOutput.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The review template ARN.</p>"}))
    UpdateReviewTemplateLensReviewOutput.add_member(:lens_review, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewTemplateLensReview, location_name: 'LensReview', traits: {"smithy.api#documentation" => "<p>A lens review of a question.</p>"}))
    UpdateReviewTemplateLensReviewOutput.type = Types::UpdateReviewTemplateLensReviewOutput
    UpdateReviewTemplateOutput.add_member(:review_template, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewTemplate, location_name: 'ReviewTemplate', traits: {"smithy.api#documentation" => "<p>A review template.</p>"}))
    UpdateReviewTemplateOutput.type = Types::UpdateReviewTemplateOutput
    UpdateShareInvitationInput.add_member(:share_invitation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareInvitationId, location_name: 'ShareInvitationId', traits: {"smithy.api#documentation" => "<p>The ID assigned to the share invitation.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateShareInvitationInput.add_member(:share_invitation_action, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareInvitationAction, location_name: 'ShareInvitationAction', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateShareInvitationInput.type = Types::UpdateShareInvitationInput
    UpdateShareInvitationOutput.add_member(:share_invitation, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareInvitation, location_name: 'ShareInvitation', traits: {"smithy.api#documentation" => "<p>The updated workload or custom lens share invitation.</p>"}))
    UpdateShareInvitationOutput.type = Types::UpdateShareInvitationOutput
    UpdateWorkloadInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkloadInput.add_member(:workload_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: 'WorkloadName'))
    UpdateWorkloadInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadDescription, location_name: 'Description'))
    UpdateWorkloadInput.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEnvironment, location_name: 'Environment'))
    UpdateWorkloadInput.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadAccountIds, location_name: 'AccountIds'))
    UpdateWorkloadInput.add_member(:aws_regions, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadAwsRegions, location_name: 'AwsRegions'))
    UpdateWorkloadInput.add_member(:non_aws_regions, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadNonAwsRegions, location_name: 'NonAwsRegions'))
    UpdateWorkloadInput.add_member(:pillar_priorities, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadPillarPriorities, location_name: 'PillarPriorities'))
    UpdateWorkloadInput.add_member(:architectural_design, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadArchitecturalDesign, location_name: 'ArchitecturalDesign'))
    UpdateWorkloadInput.add_member(:review_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadReviewOwner, location_name: 'ReviewOwner'))
    UpdateWorkloadInput.add_member(:is_review_owner_update_acknowledged, Smithy::Schema::Shapes::ShapeRef.new(shape: IsReviewOwnerUpdateAcknowledged, location_name: 'IsReviewOwnerUpdateAcknowledged', traits: {"smithy.api#documentation" => "<p>Flag indicating whether the workload owner has acknowledged that the <i>Review\n                owner</i> field is required.</p>\n         <p>If a <b>Review owner</b> is not added to the workload within\n            60 days of acknowledgement, access to the workload is restricted until an owner is\n            added.</p>"}))
    UpdateWorkloadInput.add_member(:industry_type, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIndustryType, location_name: 'IndustryType'))
    UpdateWorkloadInput.add_member(:industry, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIndustry, location_name: 'Industry'))
    UpdateWorkloadInput.add_member(:notes, Smithy::Schema::Shapes::ShapeRef.new(shape: Notes, location_name: 'Notes'))
    UpdateWorkloadInput.add_member(:improvement_status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadImprovementStatus, location_name: 'ImprovementStatus'))
    UpdateWorkloadInput.add_member(:discovery_config, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadDiscoveryConfig, location_name: 'DiscoveryConfig', traits: {"smithy.api#documentation" => "<p>Well-Architected discovery configuration settings to associate to the workload.</p>"}))
    UpdateWorkloadInput.add_member(:applications, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadApplications, location_name: 'Applications', traits: {"smithy.api#documentation" => "<p>List of AppRegistry application ARNs to associate to the workload.</p>"}))
    UpdateWorkloadInput.add_member(:jira_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadJiraConfigurationInput, location_name: 'JiraConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration of the Jira integration.</p>"}))
    UpdateWorkloadInput.type = Types::UpdateWorkloadInput
    UpdateWorkloadOutput.add_member(:workload, Smithy::Schema::Shapes::ShapeRef.new(shape: Workload, location_name: 'Workload'))
    UpdateWorkloadOutput.type = Types::UpdateWorkloadOutput
    UpdateWorkloadShareInput.add_member(:share_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareId, location_name: 'ShareId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkloadShareInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkloadShareInput.add_member(:permission_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionType, location_name: 'PermissionType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateWorkloadShareInput.type = Types::UpdateWorkloadShareInput
    UpdateWorkloadShareOutput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    UpdateWorkloadShareOutput.add_member(:workload_share, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadShare, location_name: 'WorkloadShare'))
    UpdateWorkloadShareOutput.type = Types::UpdateWorkloadShareOutput
    UpgradeLensReviewInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpgradeLensReviewInput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpgradeLensReviewInput.add_member(:milestone_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MilestoneName, location_name: 'MilestoneName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpgradeLensReviewInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken'))
    UpgradeLensReviewInput.type = Types::UpgradeLensReviewInput
    UpgradeProfileVersionInput.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpgradeProfileVersionInput.add_member(:profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileArn, location_name: 'ProfileArn', traits: {"smithy.api#documentation" => "<p>The profile ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpgradeProfileVersionInput.add_member(:milestone_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MilestoneName, location_name: 'MilestoneName'))
    UpgradeProfileVersionInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpgradeProfileVersionInput.type = Types::UpgradeProfileVersionInput
    UpgradeReviewTemplateLensReviewInput.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The ARN of the review template.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpgradeReviewTemplateLensReviewInput.add_member(:lens_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias, location_name: 'LensAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpgradeReviewTemplateLensReviewInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken'))
    UpgradeReviewTemplateLensReviewInput.type = Types::UpgradeReviewTemplateLensReviewInput
    Urls.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChoiceContent)
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'Reason'))
    ValidationException.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'Fields'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldName, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_OPERATION', traits: {"smithy.api#enumValue" => "UNKNOWN_OPERATION"}))
    ValidationExceptionReason.add_member(:cannot_parse, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_PARSE', traits: {"smithy.api#enumValue" => "CANNOT_PARSE"}))
    ValidationExceptionReason.add_member(:field_validation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))
    VersionDifferences.add_member(:pillar_differences, Smithy::Schema::Shapes::ShapeRef.new(shape: PillarDifferences, location_name: 'PillarDifferences', traits: {"smithy.api#documentation" => "<p>The differences between the base and latest versions of the lens.</p>"}))
    VersionDifferences.type = Types::VersionDifferences
    Workload.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    Workload.add_member(:workload_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadArn, location_name: 'WorkloadArn'))
    Workload.add_member(:workload_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: 'WorkloadName'))
    Workload.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadDescription, location_name: 'Description'))
    Workload.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEnvironment, location_name: 'Environment'))
    Workload.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt'))
    Workload.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadAccountIds, location_name: 'AccountIds'))
    Workload.add_member(:aws_regions, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadAwsRegions, location_name: 'AwsRegions'))
    Workload.add_member(:non_aws_regions, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadNonAwsRegions, location_name: 'NonAwsRegions'))
    Workload.add_member(:architectural_design, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadArchitecturalDesign, location_name: 'ArchitecturalDesign'))
    Workload.add_member(:review_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadReviewOwner, location_name: 'ReviewOwner'))
    Workload.add_member(:review_restriction_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ReviewRestrictionDate'))
    Workload.add_member(:is_review_owner_update_acknowledged, Smithy::Schema::Shapes::ShapeRef.new(shape: IsReviewOwnerUpdateAcknowledged, location_name: 'IsReviewOwnerUpdateAcknowledged', traits: {"smithy.api#documentation" => "<p>Flag indicating whether the workload owner has acknowledged that the <i>Review\n                owner</i> field is required.</p>\n         <p>If a <b>Review owner</b> is not added to the workload within\n            60 days of acknowledgement, access to the workload is restricted until an owner is\n            added.</p>"}))
    Workload.add_member(:industry_type, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIndustryType, location_name: 'IndustryType'))
    Workload.add_member(:industry, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIndustry, location_name: 'Industry'))
    Workload.add_member(:notes, Smithy::Schema::Shapes::ShapeRef.new(shape: Notes, location_name: 'Notes'))
    Workload.add_member(:improvement_status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadImprovementStatus, location_name: 'ImprovementStatus'))
    Workload.add_member(:risk_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: RiskCounts, location_name: 'RiskCounts'))
    Workload.add_member(:pillar_priorities, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadPillarPriorities, location_name: 'PillarPriorities'))
    Workload.add_member(:lenses, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadLenses, location_name: 'Lenses'))
    Workload.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'Owner'))
    Workload.add_member(:share_invitation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareInvitationId, location_name: 'ShareInvitationId', traits: {"smithy.api#documentation" => "<p>The ID assigned to the share invitation.</p>"}))
    Workload.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the workload.</p>"}))
    Workload.add_member(:discovery_config, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadDiscoveryConfig, location_name: 'DiscoveryConfig', traits: {"smithy.api#documentation" => "<p>Discovery configuration associated to the workload.</p>"}))
    Workload.add_member(:applications, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadApplications, location_name: 'Applications', traits: {"smithy.api#documentation" => "<p>List of AppRegistry application ARNs associated to the workload.</p>"}))
    Workload.add_member(:profiles, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadProfiles, location_name: 'Profiles', traits: {"smithy.api#documentation" => "<p>Profile associated with a workload.</p>"}))
    Workload.add_member(:prioritized_risk_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: RiskCounts, location_name: 'PrioritizedRiskCounts'))
    Workload.add_member(:jira_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadJiraConfigurationOutput, location_name: 'JiraConfiguration', traits: {"smithy.api#documentation" => "<p>Jira configuration for a specific workload.</p>"}))
    Workload.type = Types::Workload
    WorkloadAccountIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId)
    WorkloadApplications.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn)
    WorkloadAwsRegions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AwsRegion)
    WorkloadDiscoveryConfig.add_member(:trusted_advisor_integration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorIntegrationStatus, location_name: 'TrustedAdvisorIntegrationStatus', traits: {"smithy.api#documentation" => "<p>Discovery integration status in respect to Trusted Advisor for the workload.</p>"}))
    WorkloadDiscoveryConfig.add_member(:workload_resource_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadResourceDefinition, location_name: 'WorkloadResourceDefinition', traits: {"smithy.api#documentation" => "<p>The mode to use for identifying resources associated with the workload.</p>\n         <p>You can specify <code>WORKLOAD_METADATA</code>, <code>APP_REGISTRY</code>, or both.</p>"}))
    WorkloadDiscoveryConfig.type = Types::WorkloadDiscoveryConfig
    WorkloadEnvironment.add_member(:production, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRODUCTION', traits: {"smithy.api#enumValue" => "PRODUCTION"}))
    WorkloadEnvironment.add_member(:preproduction, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREPRODUCTION', traits: {"smithy.api#enumValue" => "PREPRODUCTION"}))
    WorkloadImprovementStatus.add_member(:not_applicable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_APPLICABLE', traits: {"smithy.api#enumValue" => "NOT_APPLICABLE"}))
    WorkloadImprovementStatus.add_member(:not_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_STARTED', traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    WorkloadImprovementStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    WorkloadImprovementStatus.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    WorkloadImprovementStatus.add_member(:risk_acknowledged, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RISK_ACKNOWLEDGED', traits: {"smithy.api#enumValue" => "RISK_ACKNOWLEDGED"}))
    WorkloadIssueManagementStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    WorkloadIssueManagementStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    WorkloadIssueManagementStatus.add_member(:inherit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INHERIT', traits: {"smithy.api#enumValue" => "INHERIT"}))
    WorkloadJiraConfigurationInput.add_member(:issue_management_status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIssueManagementStatus, location_name: 'IssueManagementStatus', traits: {"smithy.api#documentation" => "<p>Workload-level: Jira issue management status.</p>"}))
    WorkloadJiraConfigurationInput.add_member(:issue_management_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IssueManagementType, location_name: 'IssueManagementType', traits: {"smithy.api#documentation" => "<p>Workload-level: Jira issue management type.</p>"}))
    WorkloadJiraConfigurationInput.add_member(:jira_project_key, Smithy::Schema::Shapes::ShapeRef.new(shape: JiraProjectKey, location_name: 'JiraProjectKey', traits: {"smithy.api#documentation" => "<p>Workload-level: Jira project key to sync workloads to.</p>"}))
    WorkloadJiraConfigurationInput.type = Types::WorkloadJiraConfigurationInput
    WorkloadJiraConfigurationOutput.add_member(:issue_management_status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIssueManagementStatus, location_name: 'IssueManagementStatus', traits: {"smithy.api#documentation" => "<p>Workload-level: Jira issue management status.</p>"}))
    WorkloadJiraConfigurationOutput.add_member(:issue_management_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IssueManagementType, location_name: 'IssueManagementType', traits: {"smithy.api#documentation" => "<p>Workload-level: Jira issue management type.</p>"}))
    WorkloadJiraConfigurationOutput.add_member(:jira_project_key, Smithy::Schema::Shapes::ShapeRef.new(shape: JiraProjectKey, location_name: 'JiraProjectKey', traits: {"smithy.api#documentation" => "<p>Workload-level: Jira project key to sync workloads to.</p>"}))
    WorkloadJiraConfigurationOutput.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>Workload-level: Status message on configuration of the Jira integration.</p>"}))
    WorkloadJiraConfigurationOutput.type = Types::WorkloadJiraConfigurationOutput
    WorkloadLenses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LensAlias)
    WorkloadNonAwsRegions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadNonAwsRegion)
    WorkloadPillarPriorities.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PillarId)
    WorkloadProfile.add_member(:profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileArn, location_name: 'ProfileArn', traits: {"smithy.api#documentation" => "<p>The profile ARN.</p>"}))
    WorkloadProfile.add_member(:profile_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileVersion, location_name: 'ProfileVersion', traits: {"smithy.api#documentation" => "<p>The profile version.</p>"}))
    WorkloadProfile.type = Types::WorkloadProfile
    WorkloadProfileArns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileArn)
    WorkloadProfiles.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadProfile)
    WorkloadResourceDefinition.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DefinitionType)
    WorkloadShare.add_member(:share_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareId, location_name: 'ShareId'))
    WorkloadShare.add_member(:shared_by, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'SharedBy'))
    WorkloadShare.add_member(:shared_with, Smithy::Schema::Shapes::ShapeRef.new(shape: SharedWith, location_name: 'SharedWith'))
    WorkloadShare.add_member(:permission_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionType, location_name: 'PermissionType'))
    WorkloadShare.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: 'Status'))
    WorkloadShare.add_member(:workload_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: 'WorkloadName'))
    WorkloadShare.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    WorkloadShare.type = Types::WorkloadShare
    WorkloadShareSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadShareSummary)
    WorkloadShareSummary.add_member(:share_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareId, location_name: 'ShareId'))
    WorkloadShareSummary.add_member(:shared_with, Smithy::Schema::Shapes::ShapeRef.new(shape: SharedWith, location_name: 'SharedWith'))
    WorkloadShareSummary.add_member(:permission_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionType, location_name: 'PermissionType'))
    WorkloadShareSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: 'Status'))
    WorkloadShareSummary.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>Optional message to compliment the Status field.</p>"}))
    WorkloadShareSummary.type = Types::WorkloadShareSummary
    WorkloadSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadSummary)
    WorkloadSummary.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    WorkloadSummary.add_member(:workload_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadArn, location_name: 'WorkloadArn'))
    WorkloadSummary.add_member(:workload_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: 'WorkloadName'))
    WorkloadSummary.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'Owner'))
    WorkloadSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt'))
    WorkloadSummary.add_member(:lenses, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadLenses, location_name: 'Lenses'))
    WorkloadSummary.add_member(:risk_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: RiskCounts, location_name: 'RiskCounts'))
    WorkloadSummary.add_member(:improvement_status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadImprovementStatus, location_name: 'ImprovementStatus'))
    WorkloadSummary.add_member(:profiles, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadProfiles, location_name: 'Profiles', traits: {"smithy.api#documentation" => "<p>Profile associated with a workload.</p>"}))
    WorkloadSummary.add_member(:prioritized_risk_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: RiskCounts, location_name: 'PrioritizedRiskCounts'))
    WorkloadSummary.type = Types::WorkloadSummary

    WellArchitectedApiServiceLambda = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.wellarchitected#WellArchitectedApiServiceLambda"
      service.name = "WellArchitectedApiServiceLambda"
      service.version = "2020-03-31"
      service.traits = {"aws.api#service" => {"sdkId" => "WellArchitected", "arnNamespace" => "wellarchitected", "cloudFormationName" => "WellArchitected", "cloudTrailEventSource" => "wellarchitected.amazonaws.com", "endpointPrefix" => "wellarchitected"}, "aws.auth#sigv4" => {"name" => "wellarchitected"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Well-Architected Tool"}
      service.add_operation(:associate_lenses, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#AssociateLenses"
        operation.name = "AssociateLenses"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateLensesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/workloads/{WorkloadId}/associateLenses", "code" => 200}}
      end)
      service.add_operation(:associate_profiles, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#AssociateProfiles"
        operation.name = "AssociateProfiles"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateProfilesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/workloads/{WorkloadId}/associateProfiles", "code" => 200}}
      end)
      service.add_operation(:create_lens_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#CreateLensShare"
        operation.name = "CreateLensShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLensShareInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLensShareOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/lenses/{LensAlias}/shares", "code" => 200}}
      end)
      service.add_operation(:create_lens_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#CreateLensVersion"
        operation.name = "CreateLensVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLensVersionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLensVersionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/lenses/{LensAlias}/versions", "code" => 200}}
      end)
      service.add_operation(:create_milestone, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#CreateMilestone"
        operation.name = "CreateMilestone"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMilestoneInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMilestoneOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workloads/{WorkloadId}/milestones", "code" => 200}}
      end)
      service.add_operation(:create_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#CreateProfile"
        operation.name = "CreateProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProfileInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProfileOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/profiles", "code" => 200}}
      end)
      service.add_operation(:create_profile_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#CreateProfileShare"
        operation.name = "CreateProfileShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProfileShareInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProfileShareOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/profiles/{ProfileArn}/shares", "code" => 200}}
      end)
      service.add_operation(:create_review_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#CreateReviewTemplate"
        operation.name = "CreateReviewTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReviewTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReviewTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/reviewTemplates", "code" => 200}}
      end)
      service.add_operation(:create_template_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#CreateTemplateShare"
        operation.name = "CreateTemplateShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTemplateShareInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTemplateShareOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/templates/shares/{TemplateArn}", "code" => 200}}
      end)
      service.add_operation(:create_workload, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#CreateWorkload"
        operation.name = "CreateWorkload"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkloadInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkloadOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workloads", "code" => 200}}
      end)
      service.add_operation(:create_workload_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#CreateWorkloadShare"
        operation.name = "CreateWorkloadShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkloadShareInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkloadShareOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workloads/{WorkloadId}/shares", "code" => 200}}
      end)
      service.add_operation(:delete_lens, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#DeleteLens"
        operation.name = "DeleteLens"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLensInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/lenses/{LensAlias}", "code" => 200}}
      end)
      service.add_operation(:delete_lens_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#DeleteLensShare"
        operation.name = "DeleteLensShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLensShareInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/lenses/{LensAlias}/shares/{ShareId}", "code" => 200}}
      end)
      service.add_operation(:delete_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#DeleteProfile"
        operation.name = "DeleteProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProfileInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/profiles/{ProfileArn}", "code" => 200}}
      end)
      service.add_operation(:delete_profile_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#DeleteProfileShare"
        operation.name = "DeleteProfileShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProfileShareInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/profiles/{ProfileArn}/shares/{ShareId}", "code" => 200}}
      end)
      service.add_operation(:delete_review_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#DeleteReviewTemplate"
        operation.name = "DeleteReviewTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReviewTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/reviewTemplates/{TemplateArn}", "code" => 200}}
      end)
      service.add_operation(:delete_template_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#DeleteTemplateShare"
        operation.name = "DeleteTemplateShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTemplateShareInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/templates/shares/{TemplateArn}/{ShareId}", "code" => 200}}
      end)
      service.add_operation(:delete_workload, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#DeleteWorkload"
        operation.name = "DeleteWorkload"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkloadInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/workloads/{WorkloadId}", "code" => 200}}
      end)
      service.add_operation(:delete_workload_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#DeleteWorkloadShare"
        operation.name = "DeleteWorkloadShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkloadShareInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/workloads/{WorkloadId}/shares/{ShareId}", "code" => 200}}
      end)
      service.add_operation(:disassociate_lenses, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#DisassociateLenses"
        operation.name = "DisassociateLenses"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateLensesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/workloads/{WorkloadId}/disassociateLenses", "code" => 200}}
      end)
      service.add_operation(:disassociate_profiles, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#DisassociateProfiles"
        operation.name = "DisassociateProfiles"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateProfilesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/workloads/{WorkloadId}/disassociateProfiles", "code" => 200}}
      end)
      service.add_operation(:export_lens, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ExportLens"
        operation.name = "ExportLens"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportLensInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportLensOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/lenses/{LensAlias}/export", "code" => 200}}
      end)
      service.add_operation(:get_answer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetAnswer"
        operation.name = "GetAnswer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnswerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnswerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers/{QuestionId}", "code" => 200}}
      end)
      service.add_operation(:get_consolidated_report, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetConsolidatedReport"
        operation.name = "GetConsolidatedReport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConsolidatedReportInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConsolidatedReportOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/consolidatedReport", "code" => 200}}
        operation[:paginator] = Paginators::GetConsolidatedReport.new
      end)
      service.add_operation(:get_global_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetGlobalSettings"
        operation.name = "GetGlobalSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGlobalSettingsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-settings", "code" => 200}}
      end)
      service.add_operation(:get_lens, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetLens"
        operation.name = "GetLens"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLensInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLensOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/lenses/{LensAlias}", "code" => 200}}
      end)
      service.add_operation(:get_lens_review, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetLensReview"
        operation.name = "GetLensReview"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLensReviewInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLensReviewOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workloads/{WorkloadId}/lensReviews/{LensAlias}", "code" => 200}}
      end)
      service.add_operation(:get_lens_review_report, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetLensReviewReport"
        operation.name = "GetLensReviewReport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLensReviewReportInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLensReviewReportOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workloads/{WorkloadId}/lensReviews/{LensAlias}/report", "code" => 200}}
      end)
      service.add_operation(:get_lens_version_difference, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetLensVersionDifference"
        operation.name = "GetLensVersionDifference"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLensVersionDifferenceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLensVersionDifferenceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/lenses/{LensAlias}/versionDifference", "code" => 200}}
      end)
      service.add_operation(:get_milestone, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetMilestone"
        operation.name = "GetMilestone"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMilestoneInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMilestoneOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workloads/{WorkloadId}/milestones/{MilestoneNumber}", "code" => 200}}
      end)
      service.add_operation(:get_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetProfile"
        operation.name = "GetProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProfileInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProfileOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/profiles/{ProfileArn}", "code" => 200}}
      end)
      service.add_operation(:get_profile_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetProfileTemplate"
        operation.name = "GetProfileTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProfileTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProfileTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/profileTemplate", "code" => 200}}
      end)
      service.add_operation(:get_review_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetReviewTemplate"
        operation.name = "GetReviewTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReviewTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReviewTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/reviewTemplates/{TemplateArn}", "code" => 200}}
      end)
      service.add_operation(:get_review_template_answer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetReviewTemplateAnswer"
        operation.name = "GetReviewTemplateAnswer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReviewTemplateAnswerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReviewTemplateAnswerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}/answers/{QuestionId}", "code" => 200}}
      end)
      service.add_operation(:get_review_template_lens_review, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetReviewTemplateLensReview"
        operation.name = "GetReviewTemplateLensReview"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReviewTemplateLensReviewInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReviewTemplateLensReviewOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}", "code" => 200}}
      end)
      service.add_operation(:get_workload, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetWorkload"
        operation.name = "GetWorkload"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkloadInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkloadOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workloads/{WorkloadId}", "code" => 200}}
      end)
      service.add_operation(:import_lens, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ImportLens"
        operation.name = "ImportLens"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportLensInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportLensOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/importLens", "code" => 200}}
      end)
      service.add_operation(:list_answers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListAnswers"
        operation.name = "ListAnswers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnswersInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnswersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers", "code" => 200}}
        operation[:paginator] = Paginators::ListAnswers.new
      end)
      service.add_operation(:list_check_details, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListCheckDetails"
        operation.name = "ListCheckDetails"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCheckDetailsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCheckDetailsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workloads/{WorkloadId}/checks", "code" => 200}}
        operation[:paginator] = Paginators::ListCheckDetails.new
      end)
      service.add_operation(:list_check_summaries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListCheckSummaries"
        operation.name = "ListCheckSummaries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCheckSummariesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCheckSummariesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workloads/{WorkloadId}/checkSummaries", "code" => 200}}
        operation[:paginator] = Paginators::ListCheckSummaries.new
      end)
      service.add_operation(:list_lens_review_improvements, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListLensReviewImprovements"
        operation.name = "ListLensReviewImprovements"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLensReviewImprovementsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLensReviewImprovementsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workloads/{WorkloadId}/lensReviews/{LensAlias}/improvements", "code" => 200}}
        operation[:paginator] = Paginators::ListLensReviewImprovements.new
      end)
      service.add_operation(:list_lens_reviews, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListLensReviews"
        operation.name = "ListLensReviews"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLensReviewsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLensReviewsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workloads/{WorkloadId}/lensReviews", "code" => 200}}
        operation[:paginator] = Paginators::ListLensReviews.new
      end)
      service.add_operation(:list_lens_shares, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListLensShares"
        operation.name = "ListLensShares"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLensSharesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLensSharesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/lenses/{LensAlias}/shares", "code" => 200}}
        operation[:paginator] = Paginators::ListLensShares.new
      end)
      service.add_operation(:list_lenses, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListLenses"
        operation.name = "ListLenses"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLensesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLensesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/lenses", "code" => 200}}
        operation[:paginator] = Paginators::ListLenses.new
      end)
      service.add_operation(:list_milestones, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListMilestones"
        operation.name = "ListMilestones"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMilestonesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMilestonesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workloads/{WorkloadId}/milestonesSummaries", "code" => 200}}
        operation[:paginator] = Paginators::ListMilestones.new
      end)
      service.add_operation(:list_notifications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListNotifications"
        operation.name = "ListNotifications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotificationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotificationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/notifications", "code" => 200}}
        operation[:paginator] = Paginators::ListNotifications.new
      end)
      service.add_operation(:list_profile_notifications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListProfileNotifications"
        operation.name = "ListProfileNotifications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProfileNotificationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProfileNotificationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/profileNotifications", "code" => 200}}
        operation[:paginator] = Paginators::ListProfileNotifications.new
      end)
      service.add_operation(:list_profile_shares, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListProfileShares"
        operation.name = "ListProfileShares"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProfileSharesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProfileSharesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/profiles/{ProfileArn}/shares", "code" => 200}}
        operation[:paginator] = Paginators::ListProfileShares.new
      end)
      service.add_operation(:list_profiles, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListProfiles"
        operation.name = "ListProfiles"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProfilesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProfilesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/profileSummaries", "code" => 200}}
        operation[:paginator] = Paginators::ListProfiles.new
      end)
      service.add_operation(:list_review_template_answers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListReviewTemplateAnswers"
        operation.name = "ListReviewTemplateAnswers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReviewTemplateAnswersInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReviewTemplateAnswersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}/answers", "code" => 200}}
        operation[:paginator] = Paginators::ListReviewTemplateAnswers.new
      end)
      service.add_operation(:list_review_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListReviewTemplates"
        operation.name = "ListReviewTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReviewTemplatesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReviewTemplatesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/reviewTemplates", "code" => 200}}
        operation[:paginator] = Paginators::ListReviewTemplates.new
      end)
      service.add_operation(:list_share_invitations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListShareInvitations"
        operation.name = "ListShareInvitations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListShareInvitationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListShareInvitationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/shareInvitations", "code" => 200}}
        operation[:paginator] = Paginators::ListShareInvitations.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{WorkloadArn}", "code" => 200}}
      end)
      service.add_operation(:list_template_shares, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListTemplateShares"
        operation.name = "ListTemplateShares"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplateSharesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplateSharesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/templates/shares/{TemplateArn}", "code" => 200}}
        operation[:paginator] = Paginators::ListTemplateShares.new
      end)
      service.add_operation(:list_workload_shares, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListWorkloadShares"
        operation.name = "ListWorkloadShares"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkloadSharesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkloadSharesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workloads/{WorkloadId}/shares", "code" => 200}}
        operation[:paginator] = Paginators::ListWorkloadShares.new
      end)
      service.add_operation(:list_workloads, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListWorkloads"
        operation.name = "ListWorkloads"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkloadsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkloadsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workloadsSummaries", "code" => 200}}
        operation[:paginator] = Paginators::ListWorkloads.new
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{WorkloadArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{WorkloadArn}", "code" => 200}}
      end)
      service.add_operation(:update_answer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpdateAnswer"
        operation.name = "UpdateAnswer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAnswerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAnswerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers/{QuestionId}", "code" => 200}}
      end)
      service.add_operation(:update_global_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpdateGlobalSettings"
        operation.name = "UpdateGlobalSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGlobalSettingsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/global-settings", "code" => 200}}
      end)
      service.add_operation(:update_integration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpdateIntegration"
        operation.name = "UpdateIntegration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIntegrationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workloads/{WorkloadId}/updateIntegration", "code" => 200}}
      end)
      service.add_operation(:update_lens_review, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpdateLensReview"
        operation.name = "UpdateLensReview"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLensReviewInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLensReviewOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/workloads/{WorkloadId}/lensReviews/{LensAlias}", "code" => 200}}
      end)
      service.add_operation(:update_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpdateProfile"
        operation.name = "UpdateProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProfileInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProfileOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/profiles/{ProfileArn}", "code" => 200}}
      end)
      service.add_operation(:update_review_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpdateReviewTemplate"
        operation.name = "UpdateReviewTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReviewTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReviewTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/reviewTemplates/{TemplateArn}", "code" => 200}}
      end)
      service.add_operation(:update_review_template_answer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpdateReviewTemplateAnswer"
        operation.name = "UpdateReviewTemplateAnswer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReviewTemplateAnswerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReviewTemplateAnswerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}/answers/{QuestionId}", "code" => 200}}
      end)
      service.add_operation(:update_review_template_lens_review, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpdateReviewTemplateLensReview"
        operation.name = "UpdateReviewTemplateLensReview"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReviewTemplateLensReviewInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReviewTemplateLensReviewOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}", "code" => 200}}
      end)
      service.add_operation(:update_share_invitation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpdateShareInvitation"
        operation.name = "UpdateShareInvitation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateShareInvitationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateShareInvitationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/shareInvitations/{ShareInvitationId}", "code" => 200}}
      end)
      service.add_operation(:update_workload, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpdateWorkload"
        operation.name = "UpdateWorkload"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkloadInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkloadOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/workloads/{WorkloadId}", "code" => 200}}
      end)
      service.add_operation(:update_workload_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpdateWorkloadShare"
        operation.name = "UpdateWorkloadShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkloadShareInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkloadShareOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/workloads/{WorkloadId}/shares/{ShareId}", "code" => 200}}
      end)
      service.add_operation(:upgrade_lens_review, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpgradeLensReview"
        operation.name = "UpgradeLensReview"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeLensReviewInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/workloads/{WorkloadId}/lensReviews/{LensAlias}/upgrade", "code" => 200}}
      end)
      service.add_operation(:upgrade_profile_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpgradeProfileVersion"
        operation.name = "UpgradeProfileVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeProfileVersionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/workloads/{WorkloadId}/profiles/{ProfileArn}/upgrade", "code" => 200}}
      end)
      service.add_operation(:upgrade_review_template_lens_review, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpgradeReviewTemplateLensReview"
        operation.name = "UpgradeReviewTemplateLensReview"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeReviewTemplateLensReviewInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}/upgrade", "code" => 200}}
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
