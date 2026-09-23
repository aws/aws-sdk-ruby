# frozen_string_literal: true

# This is generated code!

module Aws::WellArchitected
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountJiraConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#AccountJiraConfigurationInput", name: "AccountJiraConfigurationInput")
    AccountJiraConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#AccountJiraConfigurationOutput", name: "AccountJiraConfigurationOutput")
    AccountJiraIssueManagementStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#AccountJiraIssueManagementStatus", name: "AccountJiraIssueManagementStatus")
    AccountSummary = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.wellarchitected#AccountSummary", name: "AccountSummary")
    AdditionalResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#AdditionalResourceType", name: "AdditionalResourceType")
    AdditionalResources = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#AdditionalResources", name: "AdditionalResources")
    AdditionalResourcesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#AdditionalResourcesList", name: "AdditionalResourcesList")
    Answer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#Answer", name: "Answer")
    AnswerReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#AnswerReason", name: "AnswerReason")
    AnswerSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#AnswerSummaries", name: "AnswerSummaries")
    AnswerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#AnswerSummary", name: "AnswerSummary")
    ApplicationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#ApplicationArn", name: "ApplicationArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 2084}, "smithy.api#pattern" => "^arn:aws[-a-z]*:servicecatalog:[a-z]{2}(-gov)?-[a-z]+-\\d:\\d{12}:/applications/[a-z0-9]+$"})
    AssociateLensesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#AssociateLensesInput", name: "AssociateLensesInput")
    AssociateProfilesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#AssociateProfilesInput", name: "AssociateProfilesInput")
    AwsAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#AwsAccountId", name: "AwsAccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    AwsRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#AwsRegion", name: "AwsRegion", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Base64String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#Base64String", name: "Base64String")
    BestPractice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#BestPractice", name: "BestPractice")
    BestPractices = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#BestPractices", name: "BestPractices")
    CheckDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#CheckDescription", name: "CheckDescription")
    CheckDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#CheckDetail", name: "CheckDetail")
    CheckDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#CheckDetails", name: "CheckDetails")
    CheckFailureReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#CheckFailureReason", name: "CheckFailureReason")
    CheckId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#CheckId", name: "CheckId")
    CheckName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#CheckName", name: "CheckName")
    CheckProvider = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#CheckProvider", name: "CheckProvider")
    CheckStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#CheckStatus", name: "CheckStatus")
    CheckStatusCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wellarchitected#CheckStatusCount", name: "CheckStatusCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 101}})
    CheckSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#CheckSummaries", name: "CheckSummaries")
    CheckSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#CheckSummary", name: "CheckSummary")
    Choice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#Choice", name: "Choice")
    ChoiceAnswer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ChoiceAnswer", name: "ChoiceAnswer")
    ChoiceAnswerSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#ChoiceAnswerSummaries", name: "ChoiceAnswerSummaries")
    ChoiceAnswerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ChoiceAnswerSummary", name: "ChoiceAnswerSummary")
    ChoiceAnswers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#ChoiceAnswers", name: "ChoiceAnswers")
    ChoiceContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ChoiceContent", name: "ChoiceContent")
    ChoiceContentDisplayText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#ChoiceContentDisplayText", name: "ChoiceContentDisplayText", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ChoiceContentUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#ChoiceContentUrl", name: "ChoiceContentUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ChoiceDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#ChoiceDescription", name: "ChoiceDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ChoiceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#ChoiceId", name: "ChoiceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ChoiceImprovementPlan = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ChoiceImprovementPlan", name: "ChoiceImprovementPlan")
    ChoiceImprovementPlans = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#ChoiceImprovementPlans", name: "ChoiceImprovementPlans")
    ChoiceNotes = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#ChoiceNotes", name: "ChoiceNotes", traits: {"smithy.api#length" => {"min" => 0, "max" => 250}})
    ChoiceReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#ChoiceReason", name: "ChoiceReason")
    ChoiceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#ChoiceStatus", name: "ChoiceStatus")
    ChoiceTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#ChoiceTitle", name: "ChoiceTitle", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ChoiceUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ChoiceUpdate", name: "ChoiceUpdate")
    ChoiceUpdates = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.wellarchitected#ChoiceUpdates", name: "ChoiceUpdates")
    Choices = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#Choices", name: "Choices")
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#ClientRequestToken", name: "ClientRequestToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConsolidatedReportMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ConsolidatedReportMetric", name: "ConsolidatedReportMetric")
    ConsolidatedReportMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#ConsolidatedReportMetrics", name: "ConsolidatedReportMetrics")
    Count = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wellarchitected#Count", name: "Count", traits: {"smithy.api#range" => {"min" => 0}})
    CreateLensShareInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#CreateLensShareInput", name: "CreateLensShareInput")
    CreateLensShareOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#CreateLensShareOutput", name: "CreateLensShareOutput")
    CreateLensVersionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#CreateLensVersionInput", name: "CreateLensVersionInput")
    CreateLensVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#CreateLensVersionOutput", name: "CreateLensVersionOutput")
    CreateMilestoneInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#CreateMilestoneInput", name: "CreateMilestoneInput")
    CreateMilestoneOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#CreateMilestoneOutput", name: "CreateMilestoneOutput")
    CreateProfileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#CreateProfileInput", name: "CreateProfileInput")
    CreateProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#CreateProfileOutput", name: "CreateProfileOutput")
    CreateProfileShareInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#CreateProfileShareInput", name: "CreateProfileShareInput")
    CreateProfileShareOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#CreateProfileShareOutput", name: "CreateProfileShareOutput")
    CreateReviewTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#CreateReviewTemplateInput", name: "CreateReviewTemplateInput")
    CreateReviewTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#CreateReviewTemplateOutput", name: "CreateReviewTemplateOutput")
    CreateTemplateShareInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#CreateTemplateShareInput", name: "CreateTemplateShareInput")
    CreateTemplateShareOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#CreateTemplateShareOutput", name: "CreateTemplateShareOutput")
    CreateWorkloadInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#CreateWorkloadInput", name: "CreateWorkloadInput")
    CreateWorkloadOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#CreateWorkloadOutput", name: "CreateWorkloadOutput")
    CreateWorkloadShareInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#CreateWorkloadShareInput", name: "CreateWorkloadShareInput")
    CreateWorkloadShareOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#CreateWorkloadShareOutput", name: "CreateWorkloadShareOutput")
    DefinitionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#DefinitionType", name: "DefinitionType")
    DeleteLensInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#DeleteLensInput", name: "DeleteLensInput")
    DeleteLensShareInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#DeleteLensShareInput", name: "DeleteLensShareInput")
    DeleteProfileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#DeleteProfileInput", name: "DeleteProfileInput")
    DeleteProfileShareInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#DeleteProfileShareInput", name: "DeleteProfileShareInput")
    DeleteReviewTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#DeleteReviewTemplateInput", name: "DeleteReviewTemplateInput")
    DeleteTemplateShareInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#DeleteTemplateShareInput", name: "DeleteTemplateShareInput")
    DeleteWorkloadInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#DeleteWorkloadInput", name: "DeleteWorkloadInput")
    DeleteWorkloadShareInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#DeleteWorkloadShareInput", name: "DeleteWorkloadShareInput")
    DifferenceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#DifferenceStatus", name: "DifferenceStatus")
    DisassociateLensesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#DisassociateLensesInput", name: "DisassociateLensesInput")
    DisassociateProfilesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#DisassociateProfilesInput", name: "DisassociateProfilesInput")
    DiscoveryIntegrationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#DiscoveryIntegrationStatus", name: "DiscoveryIntegrationStatus")
    DisplayText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#DisplayText", name: "DisplayText", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#ExceptionMessage", name: "ExceptionMessage")
    ExceptionResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#ExceptionResourceId", name: "ExceptionResourceId")
    ExceptionResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#ExceptionResourceType", name: "ExceptionResourceType")
    ExportLensInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ExportLensInput", name: "ExportLensInput")
    ExportLensOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ExportLensOutput", name: "ExportLensOutput")
    FlaggedResources = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wellarchitected#FlaggedResources", name: "FlaggedResources", traits: {"smithy.api#range" => {"min" => 1, "max" => 9999}})
    GetAnswerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetAnswerInput", name: "GetAnswerInput")
    GetAnswerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetAnswerOutput", name: "GetAnswerOutput")
    GetConsolidatedReportInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetConsolidatedReportInput", name: "GetConsolidatedReportInput")
    GetConsolidatedReportMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wellarchitected#GetConsolidatedReportMaxResults", name: "GetConsolidatedReportMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 15}})
    GetConsolidatedReportOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetConsolidatedReportOutput", name: "GetConsolidatedReportOutput")
    GetGlobalSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetGlobalSettingsOutput", name: "GetGlobalSettingsOutput")
    GetLensInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetLensInput", name: "GetLensInput")
    GetLensOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetLensOutput", name: "GetLensOutput")
    GetLensReviewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetLensReviewInput", name: "GetLensReviewInput")
    GetLensReviewOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetLensReviewOutput", name: "GetLensReviewOutput")
    GetLensReviewReportInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetLensReviewReportInput", name: "GetLensReviewReportInput")
    GetLensReviewReportOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetLensReviewReportOutput", name: "GetLensReviewReportOutput")
    GetLensVersionDifferenceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetLensVersionDifferenceInput", name: "GetLensVersionDifferenceInput")
    GetLensVersionDifferenceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetLensVersionDifferenceOutput", name: "GetLensVersionDifferenceOutput")
    GetMilestoneInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetMilestoneInput", name: "GetMilestoneInput")
    GetMilestoneOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetMilestoneOutput", name: "GetMilestoneOutput")
    GetProfileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetProfileInput", name: "GetProfileInput")
    GetProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetProfileOutput", name: "GetProfileOutput")
    GetProfileTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetProfileTemplateInput", name: "GetProfileTemplateInput")
    GetProfileTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetProfileTemplateOutput", name: "GetProfileTemplateOutput")
    GetReviewTemplateAnswerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetReviewTemplateAnswerInput", name: "GetReviewTemplateAnswerInput")
    GetReviewTemplateAnswerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetReviewTemplateAnswerOutput", name: "GetReviewTemplateAnswerOutput")
    GetReviewTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetReviewTemplateInput", name: "GetReviewTemplateInput")
    GetReviewTemplateLensReviewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetReviewTemplateLensReviewInput", name: "GetReviewTemplateLensReviewInput")
    GetReviewTemplateLensReviewOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetReviewTemplateLensReviewOutput", name: "GetReviewTemplateLensReviewOutput")
    GetReviewTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetReviewTemplateOutput", name: "GetReviewTemplateOutput")
    GetWorkloadInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetWorkloadInput", name: "GetWorkloadInput")
    GetWorkloadOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#GetWorkloadOutput", name: "GetWorkloadOutput")
    HelpfulResourceUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#HelpfulResourceUrl", name: "HelpfulResourceUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ImportLensInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ImportLensInput", name: "ImportLensInput")
    ImportLensOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ImportLensOutput", name: "ImportLensOutput")
    ImportLensStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#ImportLensStatus", name: "ImportLensStatus")
    ImprovementPlanUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#ImprovementPlanUrl", name: "ImprovementPlanUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ImprovementSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#ImprovementSummaries", name: "ImprovementSummaries")
    ImprovementSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ImprovementSummary", name: "ImprovementSummary")
    IncludeSharedResources = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.wellarchitected#IncludeSharedResources", name: "IncludeSharedResources")
    IntegratingService = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#IntegratingService", name: "IntegratingService")
    IntegrationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#IntegrationStatus", name: "IntegrationStatus")
    IntegrationStatusInput = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#IntegrationStatusInput", name: "IntegrationStatusInput")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IsApplicable = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.wellarchitected#IsApplicable", name: "IsApplicable")
    IsMajorVersion = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.wellarchitected#IsMajorVersion", name: "IsMajorVersion")
    IsReviewOwnerUpdateAcknowledged = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.wellarchitected#IsReviewOwnerUpdateAcknowledged", name: "IsReviewOwnerUpdateAcknowledged")
    IssueManagementType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#IssueManagementType", name: "IssueManagementType")
    JiraConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#JiraConfiguration", name: "JiraConfiguration")
    JiraIssueUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#JiraIssueUrl", name: "JiraIssueUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    JiraProjectKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#JiraProjectKey", name: "JiraProjectKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Z][A-Z0-9_]*$"})
    JiraSelectedQuestionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#JiraSelectedQuestionConfiguration", name: "JiraSelectedQuestionConfiguration")
    Lens = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#Lens", name: "Lens")
    LensAlias = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#LensAlias", name: "LensAlias", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    LensAliases = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#LensAliases", name: "LensAliases", traits: {"smithy.api#length" => {"min" => 1}})
    LensArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#LensArn", name: "LensArn")
    LensDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#LensDescription", name: "LensDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    LensJSON = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#LensJSON", name: "LensJSON", traits: {"smithy.api#length" => {"min" => 2, "max" => 500000}})
    LensMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#LensMetric", name: "LensMetric")
    LensMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#LensMetrics", name: "LensMetrics")
    LensName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#LensName", name: "LensName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    LensNamePrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#LensNamePrefix", name: "LensNamePrefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    LensOwner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#LensOwner", name: "LensOwner")
    LensReview = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#LensReview", name: "LensReview")
    LensReviewReport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#LensReviewReport", name: "LensReviewReport")
    LensReviewSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#LensReviewSummaries", name: "LensReviewSummaries")
    LensReviewSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#LensReviewSummary", name: "LensReviewSummary")
    LensShareSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#LensShareSummaries", name: "LensShareSummaries")
    LensShareSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#LensShareSummary", name: "LensShareSummary")
    LensStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#LensStatus", name: "LensStatus")
    LensStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#LensStatusType", name: "LensStatusType")
    LensSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#LensSummaries", name: "LensSummaries")
    LensSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#LensSummary", name: "LensSummary")
    LensType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#LensType", name: "LensType")
    LensUpgradeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#LensUpgradeSummary", name: "LensUpgradeSummary")
    LensVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#LensVersion", name: "LensVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    LensesAppliedCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wellarchitected#LensesAppliedCount", name: "LensesAppliedCount", traits: {"smithy.api#range" => {"min" => 0}})
    ListAnswersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListAnswersInput", name: "ListAnswersInput")
    ListAnswersMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wellarchitected#ListAnswersMaxResults", name: "ListAnswersMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListAnswersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListAnswersOutput", name: "ListAnswersOutput")
    ListCheckDetailsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListCheckDetailsInput", name: "ListCheckDetailsInput")
    ListCheckDetailsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListCheckDetailsOutput", name: "ListCheckDetailsOutput")
    ListCheckSummariesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListCheckSummariesInput", name: "ListCheckSummariesInput")
    ListCheckSummariesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListCheckSummariesOutput", name: "ListCheckSummariesOutput")
    ListLensReviewImprovementsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListLensReviewImprovementsInput", name: "ListLensReviewImprovementsInput")
    ListLensReviewImprovementsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wellarchitected#ListLensReviewImprovementsMaxResults", name: "ListLensReviewImprovementsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListLensReviewImprovementsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListLensReviewImprovementsOutput", name: "ListLensReviewImprovementsOutput")
    ListLensReviewsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListLensReviewsInput", name: "ListLensReviewsInput")
    ListLensReviewsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListLensReviewsOutput", name: "ListLensReviewsOutput")
    ListLensSharesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListLensSharesInput", name: "ListLensSharesInput")
    ListLensSharesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListLensSharesOutput", name: "ListLensSharesOutput")
    ListLensesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListLensesInput", name: "ListLensesInput")
    ListLensesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListLensesOutput", name: "ListLensesOutput")
    ListMilestonesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListMilestonesInput", name: "ListMilestonesInput")
    ListMilestonesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListMilestonesOutput", name: "ListMilestonesOutput")
    ListNotificationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListNotificationsInput", name: "ListNotificationsInput")
    ListNotificationsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wellarchitected#ListNotificationsMaxResults", name: "ListNotificationsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListNotificationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListNotificationsOutput", name: "ListNotificationsOutput")
    ListProfileNotificationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListProfileNotificationsInput", name: "ListProfileNotificationsInput")
    ListProfileNotificationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListProfileNotificationsOutput", name: "ListProfileNotificationsOutput")
    ListProfileSharesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListProfileSharesInput", name: "ListProfileSharesInput")
    ListProfileSharesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wellarchitected#ListProfileSharesMaxResults", name: "ListProfileSharesMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListProfileSharesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListProfileSharesOutput", name: "ListProfileSharesOutput")
    ListProfilesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListProfilesInput", name: "ListProfilesInput")
    ListProfilesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListProfilesOutput", name: "ListProfilesOutput")
    ListReviewTemplateAnswersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListReviewTemplateAnswersInput", name: "ListReviewTemplateAnswersInput")
    ListReviewTemplateAnswersMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wellarchitected#ListReviewTemplateAnswersMaxResults", name: "ListReviewTemplateAnswersMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListReviewTemplateAnswersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListReviewTemplateAnswersOutput", name: "ListReviewTemplateAnswersOutput")
    ListReviewTemplatesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListReviewTemplatesInput", name: "ListReviewTemplatesInput")
    ListReviewTemplatesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListReviewTemplatesOutput", name: "ListReviewTemplatesOutput")
    ListShareInvitationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListShareInvitationsInput", name: "ListShareInvitationsInput")
    ListShareInvitationsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wellarchitected#ListShareInvitationsMaxResults", name: "ListShareInvitationsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListShareInvitationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListShareInvitationsOutput", name: "ListShareInvitationsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListTemplateSharesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListTemplateSharesInput", name: "ListTemplateSharesInput")
    ListTemplateSharesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wellarchitected#ListTemplateSharesMaxResults", name: "ListTemplateSharesMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListTemplateSharesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListTemplateSharesOutput", name: "ListTemplateSharesOutput")
    ListWorkloadSharesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListWorkloadSharesInput", name: "ListWorkloadSharesInput")
    ListWorkloadSharesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wellarchitected#ListWorkloadSharesMaxResults", name: "ListWorkloadSharesMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListWorkloadSharesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListWorkloadSharesOutput", name: "ListWorkloadSharesOutput")
    ListWorkloadsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListWorkloadsInput", name: "ListWorkloadsInput")
    ListWorkloadsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wellarchitected#ListWorkloadsMaxResults", name: "ListWorkloadsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListWorkloadsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ListWorkloadsOutput", name: "ListWorkloadsOutput")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wellarchitected#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxSelectedProfileChoices = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wellarchitected#MaxSelectedProfileChoices", name: "MaxSelectedProfileChoices", traits: {"smithy.api#range" => {"min" => 0}})
    MetricType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#MetricType", name: "MetricType")
    Milestone = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#Milestone", name: "Milestone")
    MilestoneName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#MilestoneName", name: "MilestoneName", traits: {"smithy.api#length" => {"min" => 3, "max" => 100}})
    MilestoneNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wellarchitected#MilestoneNumber", name: "MilestoneNumber", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MilestoneSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#MilestoneSummaries", name: "MilestoneSummaries")
    MilestoneSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#MilestoneSummary", name: "MilestoneSummary")
    MinSelectedProfileChoices = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.wellarchitected#MinSelectedProfileChoices", name: "MinSelectedProfileChoices", traits: {"smithy.api#range" => {"min" => 0}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#NextToken", name: "NextToken")
    Notes = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#Notes", name: "Notes", traits: {"smithy.api#length" => {"min" => 0, "max" => 2084}})
    NotificationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#NotificationSummaries", name: "NotificationSummaries")
    NotificationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#NotificationSummary", name: "NotificationSummary")
    NotificationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#NotificationType", name: "NotificationType")
    OrganizationSharingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#OrganizationSharingStatus", name: "OrganizationSharingStatus")
    PermissionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#PermissionType", name: "PermissionType")
    PillarDifference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#PillarDifference", name: "PillarDifference")
    PillarDifferences = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#PillarDifferences", name: "PillarDifferences")
    PillarId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#PillarId", name: "PillarId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    PillarMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#PillarMetric", name: "PillarMetric")
    PillarMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#PillarMetrics", name: "PillarMetrics")
    PillarName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#PillarName", name: "PillarName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    PillarNotes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.wellarchitected#PillarNotes", name: "PillarNotes")
    PillarReviewSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#PillarReviewSummaries", name: "PillarReviewSummaries")
    PillarReviewSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#PillarReviewSummary", name: "PillarReviewSummary")
    Profile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#Profile", name: "Profile")
    ProfileArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#ProfileArn", name: "ProfileArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 2084}, "smithy.api#pattern" => "^arn:aws[-a-z]*:wellarchitected:[a-z]{2}(-gov)?-[a-z]+-\\d:\\d{12}:profile/[a-z0-9]+$"})
    ProfileArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#ProfileArns", name: "ProfileArns", traits: {"smithy.api#length" => {"min" => 1}})
    ProfileChoice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ProfileChoice", name: "ProfileChoice")
    ProfileDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#ProfileDescription", name: "ProfileDescription", traits: {"smithy.api#length" => {"min" => 3, "max" => 100}})
    ProfileName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#ProfileName", name: "ProfileName", traits: {"smithy.api#length" => {"min" => 3, "max" => 100}})
    ProfileNamePrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#ProfileNamePrefix", name: "ProfileNamePrefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ProfileNotificationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#ProfileNotificationSummaries", name: "ProfileNotificationSummaries")
    ProfileNotificationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ProfileNotificationSummary", name: "ProfileNotificationSummary")
    ProfileNotificationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#ProfileNotificationType", name: "ProfileNotificationType")
    ProfileOwnerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#ProfileOwnerType", name: "ProfileOwnerType")
    ProfileQuestion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ProfileQuestion", name: "ProfileQuestion")
    ProfileQuestionChoices = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#ProfileQuestionChoices", name: "ProfileQuestionChoices")
    ProfileQuestionUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ProfileQuestionUpdate", name: "ProfileQuestionUpdate")
    ProfileQuestionUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#ProfileQuestionUpdates", name: "ProfileQuestionUpdates")
    ProfileQuestions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#ProfileQuestions", name: "ProfileQuestions")
    ProfileShareSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#ProfileShareSummaries", name: "ProfileShareSummaries")
    ProfileShareSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ProfileShareSummary", name: "ProfileShareSummary")
    ProfileSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#ProfileSummaries", name: "ProfileSummaries")
    ProfileSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ProfileSummary", name: "ProfileSummary")
    ProfileTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ProfileTemplate", name: "ProfileTemplate")
    ProfileTemplateChoice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ProfileTemplateChoice", name: "ProfileTemplateChoice")
    ProfileTemplateQuestion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ProfileTemplateQuestion", name: "ProfileTemplateQuestion")
    ProfileTemplateQuestionChoices = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#ProfileTemplateQuestionChoices", name: "ProfileTemplateQuestionChoices")
    ProfileVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#ProfileVersion", name: "ProfileVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[A-Za-z0-9-]+$"})
    Question = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#Question", name: "Question")
    QuestionCounts = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.wellarchitected#QuestionCounts", name: "QuestionCounts")
    QuestionDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#QuestionDescription", name: "QuestionDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    QuestionDifference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#QuestionDifference", name: "QuestionDifference")
    QuestionDifferences = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#QuestionDifferences", name: "QuestionDifferences")
    QuestionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#QuestionId", name: "QuestionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    QuestionMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#QuestionMetric", name: "QuestionMetric")
    QuestionMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#QuestionMetrics", name: "QuestionMetrics")
    QuestionPriority = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#QuestionPriority", name: "QuestionPriority")
    QuestionTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#QuestionTitle", name: "QuestionTitle", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    QuestionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#QuestionType", name: "QuestionType")
    QuotaCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#QuotaCode", name: "QuotaCode")
    ReportFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#ReportFormat", name: "ReportFormat")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 50, "max" => 250}, "smithy.api#pattern" => "^arn:aws(-us-gov|-iso(-[a-z])?|-cn)?:wellarchitected:[a-z]{2}(-gov|-iso([a-z])?)?-[a-z]+-\\d:\\d{12}:(review-template)/[a-f0-9]{32}$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReviewTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ReviewTemplate", name: "ReviewTemplate")
    ReviewTemplateAnswer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ReviewTemplateAnswer", name: "ReviewTemplateAnswer")
    ReviewTemplateAnswerStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#ReviewTemplateAnswerStatus", name: "ReviewTemplateAnswerStatus")
    ReviewTemplateAnswerSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#ReviewTemplateAnswerSummaries", name: "ReviewTemplateAnswerSummaries")
    ReviewTemplateAnswerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ReviewTemplateAnswerSummary", name: "ReviewTemplateAnswerSummary")
    ReviewTemplateArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#ReviewTemplateArns", name: "ReviewTemplateArns", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    ReviewTemplateLensAliases = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#ReviewTemplateLensAliases", name: "ReviewTemplateLensAliases", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ReviewTemplateLensReview = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ReviewTemplateLensReview", name: "ReviewTemplateLensReview")
    ReviewTemplateLenses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#ReviewTemplateLenses", name: "ReviewTemplateLenses")
    ReviewTemplatePillarReviewSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#ReviewTemplatePillarReviewSummaries", name: "ReviewTemplatePillarReviewSummaries")
    ReviewTemplatePillarReviewSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ReviewTemplatePillarReviewSummary", name: "ReviewTemplatePillarReviewSummary")
    ReviewTemplateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ReviewTemplateSummary", name: "ReviewTemplateSummary")
    ReviewTemplateUpdateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#ReviewTemplateUpdateStatus", name: "ReviewTemplateUpdateStatus")
    ReviewTemplates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#ReviewTemplates", name: "ReviewTemplates")
    Risk = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#Risk", name: "Risk")
    RiskCounts = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.wellarchitected#RiskCounts", name: "RiskCounts")
    SelectedChoiceIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#SelectedChoiceIds", name: "SelectedChoiceIds")
    SelectedChoices = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#SelectedChoices", name: "SelectedChoices")
    SelectedPillar = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#SelectedPillar", name: "SelectedPillar")
    SelectedPillars = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#SelectedPillars", name: "SelectedPillars")
    SelectedProfileChoiceIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#SelectedProfileChoiceIds", name: "SelectedProfileChoiceIds")
    SelectedQuestionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#SelectedQuestionId", name: "SelectedQuestionId")
    SelectedQuestionIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#SelectedQuestionIds", name: "SelectedQuestionIds")
    ServiceCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#ServiceCode", name: "ServiceCode")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ShareId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#ShareId", name: "ShareId", traits: {"smithy.api#pattern" => "^[0-9a-f]{32}$"})
    ShareInvitation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ShareInvitation", name: "ShareInvitation")
    ShareInvitationAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#ShareInvitationAction", name: "ShareInvitationAction")
    ShareInvitationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#ShareInvitationId", name: "ShareInvitationId", traits: {"smithy.api#pattern" => "^[0-9a-f]{32}$"})
    ShareInvitationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#ShareInvitationSummaries", name: "ShareInvitationSummaries")
    ShareInvitationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ShareInvitationSummary", name: "ShareInvitationSummary")
    ShareResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#ShareResourceType", name: "ShareResourceType")
    ShareStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#ShareStatus", name: "ShareStatus")
    SharedWith = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#SharedWith", name: "SharedWith", traits: {"smithy.api#length" => {"min" => 12, "max" => 2048}})
    SharedWithPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#SharedWithPrefix", name: "SharedWithPrefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    StatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#StatusMessage", name: "StatusMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    Subdomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#Subdomain", name: "Subdomain", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.wellarchitected#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TemplateArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#TemplateArn", name: "TemplateArn", traits: {"smithy.api#length" => {"min" => 50, "max" => 250}, "smithy.api#pattern" => "^arn:aws(-us-gov|-iso(-[a-z])?|-cn)?:wellarchitected:[a-z]{2}(-gov|-iso([a-z])?)?-[a-z]+-\\d:\\d{12}:(review-template)/[a-f0-9]{32}$"})
    TemplateDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#TemplateDescription", name: "TemplateDescription", traits: {"smithy.api#length" => {"min" => 3, "max" => 250}, "smithy.api#pattern" => "^[A-Za-z0-9-_.,:/()@!&?#+'’\\s]+$"})
    TemplateName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#TemplateName", name: "TemplateName", traits: {"smithy.api#length" => {"min" => 3, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9-_.,:/()@!&?#+'’\\s]+$"})
    TemplateNamePrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#TemplateNamePrefix", name: "TemplateNamePrefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9-_.,:/()@!&?#+'’\\s]+$"})
    TemplateQuestions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#TemplateQuestions", name: "TemplateQuestions")
    TemplateShareSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#TemplateShareSummaries", name: "TemplateShareSummaries")
    TemplateShareSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#TemplateShareSummary", name: "TemplateShareSummary")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.wellarchitected#Timestamp", name: "Timestamp")
    TrustedAdvisorIntegrationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#TrustedAdvisorIntegrationStatus", name: "TrustedAdvisorIntegrationStatus")
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateAnswerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#UpdateAnswerInput", name: "UpdateAnswerInput")
    UpdateAnswerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#UpdateAnswerOutput", name: "UpdateAnswerOutput")
    UpdateGlobalSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#UpdateGlobalSettingsInput", name: "UpdateGlobalSettingsInput")
    UpdateIntegrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#UpdateIntegrationInput", name: "UpdateIntegrationInput")
    UpdateLensReviewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#UpdateLensReviewInput", name: "UpdateLensReviewInput")
    UpdateLensReviewOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#UpdateLensReviewOutput", name: "UpdateLensReviewOutput")
    UpdateProfileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#UpdateProfileInput", name: "UpdateProfileInput")
    UpdateProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#UpdateProfileOutput", name: "UpdateProfileOutput")
    UpdateReviewTemplateAnswerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#UpdateReviewTemplateAnswerInput", name: "UpdateReviewTemplateAnswerInput")
    UpdateReviewTemplateAnswerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#UpdateReviewTemplateAnswerOutput", name: "UpdateReviewTemplateAnswerOutput")
    UpdateReviewTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#UpdateReviewTemplateInput", name: "UpdateReviewTemplateInput")
    UpdateReviewTemplateLensReviewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#UpdateReviewTemplateLensReviewInput", name: "UpdateReviewTemplateLensReviewInput")
    UpdateReviewTemplateLensReviewOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#UpdateReviewTemplateLensReviewOutput", name: "UpdateReviewTemplateLensReviewOutput")
    UpdateReviewTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#UpdateReviewTemplateOutput", name: "UpdateReviewTemplateOutput")
    UpdateShareInvitationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#UpdateShareInvitationInput", name: "UpdateShareInvitationInput")
    UpdateShareInvitationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#UpdateShareInvitationOutput", name: "UpdateShareInvitationOutput")
    UpdateWorkloadInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#UpdateWorkloadInput", name: "UpdateWorkloadInput")
    UpdateWorkloadOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#UpdateWorkloadOutput", name: "UpdateWorkloadOutput")
    UpdateWorkloadShareInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#UpdateWorkloadShareInput", name: "UpdateWorkloadShareInput")
    UpdateWorkloadShareOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#UpdateWorkloadShareOutput", name: "UpdateWorkloadShareOutput")
    UpgradeLensReviewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#UpgradeLensReviewInput", name: "UpgradeLensReviewInput")
    UpgradeProfileVersionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#UpgradeProfileVersionInput", name: "UpgradeProfileVersionInput")
    UpgradeReviewTemplateLensReviewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#UpgradeReviewTemplateLensReviewInput", name: "UpgradeReviewTemplateLensReviewInput")
    Urls = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#Urls", name: "Urls")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionFieldName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#ValidationExceptionFieldName", name: "ValidationExceptionFieldName")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#ValidationExceptionReason", name: "ValidationExceptionReason")
    VersionDifferences = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#VersionDifferences", name: "VersionDifferences")
    Workload = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#Workload", name: "Workload")
    WorkloadAccountIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#WorkloadAccountIds", name: "WorkloadAccountIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    WorkloadApplications = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#WorkloadApplications", name: "WorkloadApplications", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    WorkloadArchitecturalDesign = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#WorkloadArchitecturalDesign", name: "WorkloadArchitecturalDesign", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^(|(https?|ftp):\\/\\/[^\\s/$.?#].[^\\s]*)$"})
    WorkloadArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#WorkloadArn", name: "WorkloadArn")
    WorkloadAwsRegions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#WorkloadAwsRegions", name: "WorkloadAwsRegions", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    WorkloadDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#WorkloadDescription", name: "WorkloadDescription", traits: {"smithy.api#length" => {"min" => 3, "max" => 250}})
    WorkloadDiscoveryConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#WorkloadDiscoveryConfig", name: "WorkloadDiscoveryConfig")
    WorkloadEnvironment = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#WorkloadEnvironment", name: "WorkloadEnvironment")
    WorkloadId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#WorkloadId", name: "WorkloadId", traits: {"smithy.api#length" => {"min" => 32, "max" => 32}, "smithy.api#pattern" => "^[0-9a-f]{32}$"})
    WorkloadImprovementStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#WorkloadImprovementStatus", name: "WorkloadImprovementStatus")
    WorkloadIndustry = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#WorkloadIndustry", name: "WorkloadIndustry", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    WorkloadIndustryType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#WorkloadIndustryType", name: "WorkloadIndustryType", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    WorkloadIssueManagementStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wellarchitected#WorkloadIssueManagementStatus", name: "WorkloadIssueManagementStatus")
    WorkloadJiraConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#WorkloadJiraConfigurationInput", name: "WorkloadJiraConfigurationInput")
    WorkloadJiraConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#WorkloadJiraConfigurationOutput", name: "WorkloadJiraConfigurationOutput")
    WorkloadLenses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#WorkloadLenses", name: "WorkloadLenses")
    WorkloadName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#WorkloadName", name: "WorkloadName", traits: {"smithy.api#length" => {"min" => 3, "max" => 100}})
    WorkloadNamePrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#WorkloadNamePrefix", name: "WorkloadNamePrefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    WorkloadNonAwsRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#WorkloadNonAwsRegion", name: "WorkloadNonAwsRegion", traits: {"smithy.api#length" => {"min" => 3, "max" => 25}})
    WorkloadNonAwsRegions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#WorkloadNonAwsRegions", name: "WorkloadNonAwsRegions", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    WorkloadPillarPriorities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#WorkloadPillarPriorities", name: "WorkloadPillarPriorities")
    WorkloadProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#WorkloadProfile", name: "WorkloadProfile")
    WorkloadProfileArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#WorkloadProfileArns", name: "WorkloadProfileArns", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    WorkloadProfiles = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#WorkloadProfiles", name: "WorkloadProfiles", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    WorkloadResourceDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#WorkloadResourceDefinition", name: "WorkloadResourceDefinition")
    WorkloadReviewOwner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wellarchitected#WorkloadReviewOwner", name: "WorkloadReviewOwner", traits: {"smithy.api#length" => {"min" => 3, "max" => 255}})
    WorkloadShare = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#WorkloadShare", name: "WorkloadShare")
    WorkloadShareSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#WorkloadShareSummaries", name: "WorkloadShareSummaries")
    WorkloadShareSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#WorkloadShareSummary", name: "WorkloadShareSummary")
    WorkloadSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wellarchitected#WorkloadSummaries", name: "WorkloadSummaries")
    WorkloadSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wellarchitected#WorkloadSummary", name: "WorkloadSummary")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountJiraConfigurationInput.add_member(:issue_management_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountJiraIssueManagementStatus, name: "IssueManagementStatus"))
    AccountJiraConfigurationInput.add_member(:issue_management_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IssueManagementType, name: "IssueManagementType"))
    AccountJiraConfigurationInput.add_member(:jira_project_key, ::Smithy::Schema::Shapes::MemberShape.new(target: JiraProjectKey, name: "JiraProjectKey"))
    AccountJiraConfigurationInput.add_member(:integration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationStatusInput, name: "IntegrationStatus"))
    AccountJiraConfigurationInput.type = Types::AccountJiraConfigurationInput
    AccountJiraConfigurationOutput.add_member(:integration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationStatus, name: "IntegrationStatus"))
    AccountJiraConfigurationOutput.add_member(:issue_management_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountJiraIssueManagementStatus, name: "IssueManagementStatus"))
    AccountJiraConfigurationOutput.add_member(:issue_management_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IssueManagementType, name: "IssueManagementType"))
    AccountJiraConfigurationOutput.add_member(:subdomain, ::Smithy::Schema::Shapes::MemberShape.new(target: Subdomain, name: "Subdomain"))
    AccountJiraConfigurationOutput.add_member(:jira_project_key, ::Smithy::Schema::Shapes::MemberShape.new(target: JiraProjectKey, name: "JiraProjectKey"))
    AccountJiraConfigurationOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
    AccountJiraConfigurationOutput.type = Types::AccountJiraConfigurationOutput
    AccountJiraIssueManagementStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    AccountJiraIssueManagementStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    AccountSummary.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckStatus, name: "key"))
    AccountSummary.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckStatusCount, name: "value"))
    AdditionalResourceType.add_member(:helpful_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HELPFUL_RESOURCE", traits: {"smithy.api#enumValue" => "HELPFUL_RESOURCE"}))
    AdditionalResourceType.add_member(:improvement_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPROVEMENT_PLAN", traits: {"smithy.api#enumValue" => "IMPROVEMENT_PLAN"}))
    AdditionalResources.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalResourceType, name: "Type"))
    AdditionalResources.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: Urls, name: "Content"))
    AdditionalResources.type = Types::AdditionalResources
    AdditionalResourcesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalResources, name: "member"))
    Answer.add_member(:question_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionId, name: "QuestionId"))
    Answer.add_member(:pillar_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarId, name: "PillarId"))
    Answer.add_member(:question_title, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionTitle, name: "QuestionTitle"))
    Answer.add_member(:question_description, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionDescription, name: "QuestionDescription"))
    Answer.add_member(:improvement_plan_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ImprovementPlanUrl, name: "ImprovementPlanUrl"))
    Answer.add_member(:helpful_resource_url, ::Smithy::Schema::Shapes::MemberShape.new(target: HelpfulResourceUrl, name: "HelpfulResourceUrl"))
    Answer.add_member(:helpful_resource_display_text, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayText, name: "HelpfulResourceDisplayText"))
    Answer.add_member(:choices, ::Smithy::Schema::Shapes::MemberShape.new(target: Choices, name: "Choices"))
    Answer.add_member(:selected_choices, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectedChoices, name: "SelectedChoices"))
    Answer.add_member(:choice_answers, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceAnswers, name: "ChoiceAnswers"))
    Answer.add_member(:is_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: IsApplicable, name: "IsApplicable"))
    Answer.add_member(:risk, ::Smithy::Schema::Shapes::MemberShape.new(target: Risk, name: "Risk"))
    Answer.add_member(:notes, ::Smithy::Schema::Shapes::MemberShape.new(target: Notes, name: "Notes"))
    Answer.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AnswerReason, name: "Reason"))
    Answer.add_member(:jira_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JiraConfiguration, name: "JiraConfiguration"))
    Answer.type = Types::Answer
    AnswerReason.add_member(:out_of_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUT_OF_SCOPE", traits: {"smithy.api#enumValue" => "OUT_OF_SCOPE"}))
    AnswerReason.add_member(:business_priorities, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSINESS_PRIORITIES", traits: {"smithy.api#enumValue" => "BUSINESS_PRIORITIES"}))
    AnswerReason.add_member(:architecture_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARCHITECTURE_CONSTRAINTS", traits: {"smithy.api#enumValue" => "ARCHITECTURE_CONSTRAINTS"}))
    AnswerReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    AnswerReason.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    AnswerSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AnswerSummary, name: "member"))
    AnswerSummary.add_member(:question_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionId, name: "QuestionId"))
    AnswerSummary.add_member(:pillar_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarId, name: "PillarId"))
    AnswerSummary.add_member(:question_title, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionTitle, name: "QuestionTitle"))
    AnswerSummary.add_member(:choices, ::Smithy::Schema::Shapes::MemberShape.new(target: Choices, name: "Choices"))
    AnswerSummary.add_member(:selected_choices, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectedChoices, name: "SelectedChoices"))
    AnswerSummary.add_member(:choice_answer_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceAnswerSummaries, name: "ChoiceAnswerSummaries"))
    AnswerSummary.add_member(:is_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: IsApplicable, name: "IsApplicable"))
    AnswerSummary.add_member(:risk, ::Smithy::Schema::Shapes::MemberShape.new(target: Risk, name: "Risk"))
    AnswerSummary.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AnswerReason, name: "Reason"))
    AnswerSummary.add_member(:question_type, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionType, name: "QuestionType"))
    AnswerSummary.add_member(:jira_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JiraConfiguration, name: "JiraConfiguration"))
    AnswerSummary.type = Types::AnswerSummary
    AssociateLensesInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateLensesInput.add_member(:lens_aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAliases, name: "LensAliases", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssociateLensesInput.type = Types::AssociateLensesInput
    AssociateProfilesInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateProfilesInput.add_member(:profile_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileArns, name: "ProfileArns", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssociateProfilesInput.type = Types::AssociateProfilesInput
    BestPractice.add_member(:choice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceId, name: "ChoiceId"))
    BestPractice.add_member(:choice_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceTitle, name: "ChoiceTitle"))
    BestPractice.type = Types::BestPractice
    BestPractices.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BestPractice, name: "member"))
    CheckDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckId, name: "Id"))
    CheckDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckName, name: "Name"))
    CheckDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckDescription, name: "Description"))
    CheckDetail.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckProvider, name: "Provider"))
    CheckDetail.add_member(:lens_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LensArn, name: "LensArn"))
    CheckDetail.add_member(:pillar_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarId, name: "PillarId"))
    CheckDetail.add_member(:question_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionId, name: "QuestionId"))
    CheckDetail.add_member(:choice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceId, name: "ChoiceId"))
    CheckDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckStatus, name: "Status"))
    CheckDetail.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "AccountId"))
    CheckDetail.add_member(:flagged_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: FlaggedResources, name: "FlaggedResources"))
    CheckDetail.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckFailureReason, name: "Reason"))
    CheckDetail.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    CheckDetail.type = Types::CheckDetail
    CheckDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckDetail, name: "member"))
    CheckFailureReason.add_member(:assume_role_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSUME_ROLE_ERROR", traits: {"smithy.api#enumValue" => "ASSUME_ROLE_ERROR"}))
    CheckFailureReason.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    CheckFailureReason.add_member(:unknown_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_ERROR", traits: {"smithy.api#enumValue" => "UNKNOWN_ERROR"}))
    CheckFailureReason.add_member(:premium_support_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREMIUM_SUPPORT_REQUIRED", traits: {"smithy.api#enumValue" => "PREMIUM_SUPPORT_REQUIRED"}))
    CheckProvider.add_member(:trusted_advisor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRUSTED_ADVISOR", traits: {"smithy.api#enumValue" => "TRUSTED_ADVISOR"}))
    CheckStatus.add_member(:okay, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OKAY", traits: {"smithy.api#enumValue" => "OKAY"}))
    CheckStatus.add_member(:warning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARNING", traits: {"smithy.api#enumValue" => "WARNING"}))
    CheckStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    CheckStatus.add_member(:not_available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_AVAILABLE", traits: {"smithy.api#enumValue" => "NOT_AVAILABLE"}))
    CheckStatus.add_member(:fetch_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FETCH_FAILED", traits: {"smithy.api#enumValue" => "FETCH_FAILED"}))
    CheckSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckSummary, name: "member"))
    CheckSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckId, name: "Id"))
    CheckSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckName, name: "Name"))
    CheckSummary.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckProvider, name: "Provider"))
    CheckSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckDescription, name: "Description"))
    CheckSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    CheckSummary.add_member(:lens_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LensArn, name: "LensArn"))
    CheckSummary.add_member(:pillar_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarId, name: "PillarId"))
    CheckSummary.add_member(:question_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionId, name: "QuestionId"))
    CheckSummary.add_member(:choice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceId, name: "ChoiceId"))
    CheckSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckStatus, name: "Status"))
    CheckSummary.add_member(:account_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountSummary, name: "AccountSummary"))
    CheckSummary.type = Types::CheckSummary
    Choice.add_member(:choice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceId, name: "ChoiceId"))
    Choice.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceTitle, name: "Title"))
    Choice.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceDescription, name: "Description"))
    Choice.add_member(:helpful_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceContent, name: "HelpfulResource"))
    Choice.add_member(:improvement_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceContent, name: "ImprovementPlan"))
    Choice.add_member(:additional_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalResourcesList, name: "AdditionalResources"))
    Choice.type = Types::Choice
    ChoiceAnswer.add_member(:choice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceId, name: "ChoiceId"))
    ChoiceAnswer.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceStatus, name: "Status"))
    ChoiceAnswer.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceReason, name: "Reason"))
    ChoiceAnswer.add_member(:notes, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceNotes, name: "Notes"))
    ChoiceAnswer.type = Types::ChoiceAnswer
    ChoiceAnswerSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceAnswerSummary, name: "member"))
    ChoiceAnswerSummary.add_member(:choice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceId, name: "ChoiceId"))
    ChoiceAnswerSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceStatus, name: "Status"))
    ChoiceAnswerSummary.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceReason, name: "Reason"))
    ChoiceAnswerSummary.type = Types::ChoiceAnswerSummary
    ChoiceAnswers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceAnswer, name: "member"))
    ChoiceContent.add_member(:display_text, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceContentDisplayText, name: "DisplayText"))
    ChoiceContent.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceContentUrl, name: "Url"))
    ChoiceContent.type = Types::ChoiceContent
    ChoiceImprovementPlan.add_member(:choice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceId, name: "ChoiceId"))
    ChoiceImprovementPlan.add_member(:display_text, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayText, name: "DisplayText"))
    ChoiceImprovementPlan.add_member(:improvement_plan_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ImprovementPlanUrl, name: "ImprovementPlanUrl"))
    ChoiceImprovementPlan.type = Types::ChoiceImprovementPlan
    ChoiceImprovementPlans.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceImprovementPlan, name: "member"))
    ChoiceReason.add_member(:out_of_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUT_OF_SCOPE", traits: {"smithy.api#enumValue" => "OUT_OF_SCOPE"}))
    ChoiceReason.add_member(:business_priorities, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSINESS_PRIORITIES", traits: {"smithy.api#enumValue" => "BUSINESS_PRIORITIES"}))
    ChoiceReason.add_member(:architecture_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARCHITECTURE_CONSTRAINTS", traits: {"smithy.api#enumValue" => "ARCHITECTURE_CONSTRAINTS"}))
    ChoiceReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    ChoiceReason.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ChoiceStatus.add_member(:selected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SELECTED", traits: {"smithy.api#enumValue" => "SELECTED"}))
    ChoiceStatus.add_member(:not_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_APPLICABLE", traits: {"smithy.api#enumValue" => "NOT_APPLICABLE"}))
    ChoiceStatus.add_member(:unselected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSELECTED", traits: {"smithy.api#enumValue" => "UNSELECTED"}))
    ChoiceUpdate.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceStatus, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ChoiceUpdate.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceReason, name: "Reason"))
    ChoiceUpdate.add_member(:notes, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceNotes, name: "Notes"))
    ChoiceUpdate.type = Types::ChoiceUpdate
    ChoiceUpdates.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceId, name: "key"))
    ChoiceUpdates.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceUpdate, name: "value"))
    Choices.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Choice, name: "member"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionResourceId, name: "ResourceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionResourceType, name: "ResourceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConsolidatedReportMetric.add_member(:metric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricType, name: "MetricType"))
    ConsolidatedReportMetric.add_member(:risk_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskCounts, name: "RiskCounts"))
    ConsolidatedReportMetric.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId"))
    ConsolidatedReportMetric.add_member(:workload_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadName, name: "WorkloadName"))
    ConsolidatedReportMetric.add_member(:workload_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadArn, name: "WorkloadArn"))
    ConsolidatedReportMetric.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    ConsolidatedReportMetric.add_member(:lenses, ::Smithy::Schema::Shapes::MemberShape.new(target: LensMetrics, name: "Lenses"))
    ConsolidatedReportMetric.add_member(:lenses_applied_count, ::Smithy::Schema::Shapes::MemberShape.new(target: LensesAppliedCount, name: "LensesAppliedCount"))
    ConsolidatedReportMetric.type = Types::ConsolidatedReportMetric
    ConsolidatedReportMetrics.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsolidatedReportMetric, name: "member"))
    CreateLensShareInput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLensShareInput.add_member(:shared_with, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedWith, name: "SharedWith", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateLensShareInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#clientOptional" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateLensShareInput.type = Types::CreateLensShareInput
    CreateLensShareOutput.add_member(:share_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareId, name: "ShareId"))
    CreateLensShareOutput.type = Types::CreateLensShareOutput
    CreateLensVersionInput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLensVersionInput.add_member(:lens_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LensVersion, name: "LensVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateLensVersionInput.add_member(:is_major_version, ::Smithy::Schema::Shapes::MemberShape.new(target: IsMajorVersion, name: "IsMajorVersion"))
    CreateLensVersionInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#clientOptional" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateLensVersionInput.type = Types::CreateLensVersionInput
    CreateLensVersionOutput.add_member(:lens_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LensArn, name: "LensArn"))
    CreateLensVersionOutput.add_member(:lens_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LensVersion, name: "LensVersion"))
    CreateLensVersionOutput.type = Types::CreateLensVersionOutput
    CreateMilestoneInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMilestoneInput.add_member(:milestone_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MilestoneName, name: "MilestoneName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateMilestoneInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#clientOptional" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateMilestoneInput.type = Types::CreateMilestoneInput
    CreateMilestoneOutput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId"))
    CreateMilestoneOutput.add_member(:milestone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: MilestoneNumber, name: "MilestoneNumber"))
    CreateMilestoneOutput.type = Types::CreateMilestoneOutput
    CreateProfileInput.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileName, name: "ProfileName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateProfileInput.add_member(:profile_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDescription, name: "ProfileDescription", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateProfileInput.add_member(:profile_questions, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileQuestionUpdates, name: "ProfileQuestions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateProfileInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#clientOptional" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateProfileInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateProfileInput.type = Types::CreateProfileInput
    CreateProfileOutput.add_member(:profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileArn, name: "ProfileArn"))
    CreateProfileOutput.add_member(:profile_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileVersion, name: "ProfileVersion"))
    CreateProfileOutput.type = Types::CreateProfileOutput
    CreateProfileShareInput.add_member(:profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileArn, name: "ProfileArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateProfileShareInput.add_member(:shared_with, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedWith, name: "SharedWith", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateProfileShareInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#clientOptional" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateProfileShareInput.type = Types::CreateProfileShareInput
    CreateProfileShareOutput.add_member(:share_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareId, name: "ShareId"))
    CreateProfileShareOutput.add_member(:profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileArn, name: "ProfileArn"))
    CreateProfileShareOutput.type = Types::CreateProfileShareOutput
    CreateReviewTemplateInput.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, name: "TemplateName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateReviewTemplateInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateDescription, name: "Description", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateReviewTemplateInput.add_member(:lenses, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewTemplateLenses, name: "Lenses", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateReviewTemplateInput.add_member(:notes, ::Smithy::Schema::Shapes::MemberShape.new(target: Notes, name: "Notes"))
    CreateReviewTemplateInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateReviewTemplateInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#clientOptional" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateReviewTemplateInput.type = Types::CreateReviewTemplateInput
    CreateReviewTemplateOutput.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "TemplateArn"))
    CreateReviewTemplateOutput.type = Types::CreateReviewTemplateOutput
    CreateTemplateShareInput.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "TemplateArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTemplateShareInput.add_member(:shared_with, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedWith, name: "SharedWith", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateTemplateShareInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#clientOptional" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateTemplateShareInput.type = Types::CreateTemplateShareInput
    CreateTemplateShareOutput.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "TemplateArn"))
    CreateTemplateShareOutput.add_member(:share_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareId, name: "ShareId"))
    CreateTemplateShareOutput.type = Types::CreateTemplateShareOutput
    CreateWorkloadInput.add_member(:workload_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadName, name: "WorkloadName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateWorkloadInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadDescription, name: "Description", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateWorkloadInput.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadEnvironment, name: "Environment", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateWorkloadInput.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadAccountIds, name: "AccountIds"))
    CreateWorkloadInput.add_member(:aws_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadAwsRegions, name: "AwsRegions"))
    CreateWorkloadInput.add_member(:non_aws_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadNonAwsRegions, name: "NonAwsRegions"))
    CreateWorkloadInput.add_member(:pillar_priorities, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadPillarPriorities, name: "PillarPriorities"))
    CreateWorkloadInput.add_member(:architectural_design, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadArchitecturalDesign, name: "ArchitecturalDesign"))
    CreateWorkloadInput.add_member(:review_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadReviewOwner, name: "ReviewOwner"))
    CreateWorkloadInput.add_member(:industry_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadIndustryType, name: "IndustryType"))
    CreateWorkloadInput.add_member(:industry, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadIndustry, name: "Industry"))
    CreateWorkloadInput.add_member(:lenses, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadLenses, name: "Lenses", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateWorkloadInput.add_member(:notes, ::Smithy::Schema::Shapes::MemberShape.new(target: Notes, name: "Notes"))
    CreateWorkloadInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#clientOptional" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateWorkloadInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateWorkloadInput.add_member(:discovery_config, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadDiscoveryConfig, name: "DiscoveryConfig"))
    CreateWorkloadInput.add_member(:applications, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadApplications, name: "Applications"))
    CreateWorkloadInput.add_member(:profile_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadProfileArns, name: "ProfileArns"))
    CreateWorkloadInput.add_member(:review_template_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewTemplateArns, name: "ReviewTemplateArns"))
    CreateWorkloadInput.add_member(:jira_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadJiraConfigurationInput, name: "JiraConfiguration"))
    CreateWorkloadInput.type = Types::CreateWorkloadInput
    CreateWorkloadOutput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId"))
    CreateWorkloadOutput.add_member(:workload_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadArn, name: "WorkloadArn"))
    CreateWorkloadOutput.type = Types::CreateWorkloadOutput
    CreateWorkloadShareInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWorkloadShareInput.add_member(:shared_with, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedWith, name: "SharedWith", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateWorkloadShareInput.add_member(:permission_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionType, name: "PermissionType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateWorkloadShareInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#clientOptional" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateWorkloadShareInput.type = Types::CreateWorkloadShareInput
    CreateWorkloadShareOutput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId"))
    CreateWorkloadShareOutput.add_member(:share_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareId, name: "ShareId"))
    CreateWorkloadShareOutput.type = Types::CreateWorkloadShareOutput
    DefinitionType.add_member(:workload_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORKLOAD_METADATA", traits: {"smithy.api#enumValue" => "WORKLOAD_METADATA"}))
    DefinitionType.add_member(:app_registry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APP_REGISTRY", traits: {"smithy.api#enumValue" => "APP_REGISTRY"}))
    DeleteLensInput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLensInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "ClientRequestToken", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    DeleteLensInput.add_member(:lens_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LensStatusType, name: "LensStatus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "LensStatus", "smithy.api#required" => {}}))
    DeleteLensInput.type = Types::DeleteLensInput
    DeleteLensShareInput.add_member(:share_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareId, name: "ShareId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLensShareInput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLensShareInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "ClientRequestToken", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    DeleteLensShareInput.type = Types::DeleteLensShareInput
    DeleteProfileInput.add_member(:profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileArn, name: "ProfileArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProfileInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "ClientRequestToken", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    DeleteProfileInput.type = Types::DeleteProfileInput
    DeleteProfileShareInput.add_member(:share_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareId, name: "ShareId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProfileShareInput.add_member(:profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileArn, name: "ProfileArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProfileShareInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "ClientRequestToken", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    DeleteProfileShareInput.type = Types::DeleteProfileShareInput
    DeleteReviewTemplateInput.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "TemplateArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteReviewTemplateInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "ClientRequestToken", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    DeleteReviewTemplateInput.type = Types::DeleteReviewTemplateInput
    DeleteTemplateShareInput.add_member(:share_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareId, name: "ShareId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTemplateShareInput.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "TemplateArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTemplateShareInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "ClientRequestToken", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    DeleteTemplateShareInput.type = Types::DeleteTemplateShareInput
    DeleteWorkloadInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkloadInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "ClientRequestToken", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    DeleteWorkloadInput.type = Types::DeleteWorkloadInput
    DeleteWorkloadShareInput.add_member(:share_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareId, name: "ShareId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkloadShareInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkloadShareInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "ClientRequestToken", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    DeleteWorkloadShareInput.type = Types::DeleteWorkloadShareInput
    DifferenceStatus.add_member(:updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATED", traits: {"smithy.api#enumValue" => "UPDATED"}))
    DifferenceStatus.add_member(:new, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW", traits: {"smithy.api#enumValue" => "NEW"}))
    DifferenceStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    DisassociateLensesInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateLensesInput.add_member(:lens_aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAliases, name: "LensAliases", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisassociateLensesInput.type = Types::DisassociateLensesInput
    DisassociateProfilesInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateProfilesInput.add_member(:profile_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileArns, name: "ProfileArns", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisassociateProfilesInput.type = Types::DisassociateProfilesInput
    DiscoveryIntegrationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    DiscoveryIntegrationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ExportLensInput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportLensInput.add_member(:lens_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LensVersion, name: "LensVersion", traits: {"smithy.api#httpQuery" => "LensVersion"}))
    ExportLensInput.type = Types::ExportLensInput
    ExportLensOutput.add_member(:lens_json, ::Smithy::Schema::Shapes::MemberShape.new(target: LensJSON, name: "LensJSON"))
    ExportLensOutput.type = Types::ExportLensOutput
    GetAnswerInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAnswerInput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAnswerInput.add_member(:question_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionId, name: "QuestionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAnswerInput.add_member(:milestone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: MilestoneNumber, name: "MilestoneNumber", traits: {"smithy.api#httpQuery" => "MilestoneNumber"}))
    GetAnswerInput.type = Types::GetAnswerInput
    GetAnswerOutput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId"))
    GetAnswerOutput.add_member(:milestone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: MilestoneNumber, name: "MilestoneNumber"))
    GetAnswerOutput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias"))
    GetAnswerOutput.add_member(:lens_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LensArn, name: "LensArn"))
    GetAnswerOutput.add_member(:answer, ::Smithy::Schema::Shapes::MemberShape.new(target: Answer, name: "Answer"))
    GetAnswerOutput.type = Types::GetAnswerOutput
    GetConsolidatedReportInput.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportFormat, name: "Format", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "Format", "smithy.api#required" => {}}))
    GetConsolidatedReportInput.add_member(:include_shared_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeSharedResources, name: "IncludeSharedResources", traits: {"smithy.api#httpQuery" => "IncludeSharedResources"}))
    GetConsolidatedReportInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    GetConsolidatedReportInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: GetConsolidatedReportMaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    GetConsolidatedReportInput.type = Types::GetConsolidatedReportInput
    GetConsolidatedReportOutput.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsolidatedReportMetrics, name: "Metrics"))
    GetConsolidatedReportOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetConsolidatedReportOutput.add_member(:base64_string, ::Smithy::Schema::Shapes::MemberShape.new(target: Base64String, name: "Base64String"))
    GetConsolidatedReportOutput.type = Types::GetConsolidatedReportOutput
    GetGlobalSettingsOutput.add_member(:organization_sharing_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationSharingStatus, name: "OrganizationSharingStatus"))
    GetGlobalSettingsOutput.add_member(:discovery_integration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveryIntegrationStatus, name: "DiscoveryIntegrationStatus"))
    GetGlobalSettingsOutput.add_member(:jira_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountJiraConfigurationOutput, name: "JiraConfiguration"))
    GetGlobalSettingsOutput.type = Types::GetGlobalSettingsOutput
    GetLensInput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLensInput.add_member(:lens_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LensVersion, name: "LensVersion", traits: {"smithy.api#httpQuery" => "LensVersion"}))
    GetLensInput.type = Types::GetLensInput
    GetLensOutput.add_member(:lens, ::Smithy::Schema::Shapes::MemberShape.new(target: Lens, name: "Lens"))
    GetLensOutput.type = Types::GetLensOutput
    GetLensReviewInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLensReviewInput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLensReviewInput.add_member(:milestone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: MilestoneNumber, name: "MilestoneNumber", traits: {"smithy.api#httpQuery" => "MilestoneNumber"}))
    GetLensReviewInput.type = Types::GetLensReviewInput
    GetLensReviewOutput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId"))
    GetLensReviewOutput.add_member(:milestone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: MilestoneNumber, name: "MilestoneNumber"))
    GetLensReviewOutput.add_member(:lens_review, ::Smithy::Schema::Shapes::MemberShape.new(target: LensReview, name: "LensReview"))
    GetLensReviewOutput.type = Types::GetLensReviewOutput
    GetLensReviewReportInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLensReviewReportInput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLensReviewReportInput.add_member(:milestone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: MilestoneNumber, name: "MilestoneNumber", traits: {"smithy.api#httpQuery" => "MilestoneNumber"}))
    GetLensReviewReportInput.type = Types::GetLensReviewReportInput
    GetLensReviewReportOutput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId"))
    GetLensReviewReportOutput.add_member(:milestone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: MilestoneNumber, name: "MilestoneNumber"))
    GetLensReviewReportOutput.add_member(:lens_review_report, ::Smithy::Schema::Shapes::MemberShape.new(target: LensReviewReport, name: "LensReviewReport"))
    GetLensReviewReportOutput.type = Types::GetLensReviewReportOutput
    GetLensVersionDifferenceInput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLensVersionDifferenceInput.add_member(:base_lens_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LensVersion, name: "BaseLensVersion", traits: {"smithy.api#httpQuery" => "BaseLensVersion"}))
    GetLensVersionDifferenceInput.add_member(:target_lens_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LensVersion, name: "TargetLensVersion", traits: {"smithy.api#httpQuery" => "TargetLensVersion"}))
    GetLensVersionDifferenceInput.type = Types::GetLensVersionDifferenceInput
    GetLensVersionDifferenceOutput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias"))
    GetLensVersionDifferenceOutput.add_member(:lens_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LensArn, name: "LensArn"))
    GetLensVersionDifferenceOutput.add_member(:base_lens_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LensVersion, name: "BaseLensVersion"))
    GetLensVersionDifferenceOutput.add_member(:target_lens_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LensVersion, name: "TargetLensVersion"))
    GetLensVersionDifferenceOutput.add_member(:latest_lens_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LensVersion, name: "LatestLensVersion"))
    GetLensVersionDifferenceOutput.add_member(:version_differences, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionDifferences, name: "VersionDifferences"))
    GetLensVersionDifferenceOutput.type = Types::GetLensVersionDifferenceOutput
    GetMilestoneInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMilestoneInput.add_member(:milestone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: MilestoneNumber, name: "MilestoneNumber", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMilestoneInput.type = Types::GetMilestoneInput
    GetMilestoneOutput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId"))
    GetMilestoneOutput.add_member(:milestone, ::Smithy::Schema::Shapes::MemberShape.new(target: Milestone, name: "Milestone"))
    GetMilestoneOutput.type = Types::GetMilestoneOutput
    GetProfileInput.add_member(:profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileArn, name: "ProfileArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProfileInput.add_member(:profile_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileVersion, name: "ProfileVersion", traits: {"smithy.api#httpQuery" => "ProfileVersion"}))
    GetProfileInput.type = Types::GetProfileInput
    GetProfileOutput.add_member(:profile, ::Smithy::Schema::Shapes::MemberShape.new(target: Profile, name: "Profile"))
    GetProfileOutput.type = Types::GetProfileOutput
    GetProfileTemplateInput.type = Types::GetProfileTemplateInput
    GetProfileTemplateOutput.add_member(:profile_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileTemplate, name: "ProfileTemplate"))
    GetProfileTemplateOutput.type = Types::GetProfileTemplateOutput
    GetReviewTemplateAnswerInput.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "TemplateArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReviewTemplateAnswerInput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReviewTemplateAnswerInput.add_member(:question_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionId, name: "QuestionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReviewTemplateAnswerInput.type = Types::GetReviewTemplateAnswerInput
    GetReviewTemplateAnswerOutput.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "TemplateArn"))
    GetReviewTemplateAnswerOutput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias"))
    GetReviewTemplateAnswerOutput.add_member(:answer, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewTemplateAnswer, name: "Answer"))
    GetReviewTemplateAnswerOutput.type = Types::GetReviewTemplateAnswerOutput
    GetReviewTemplateInput.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "TemplateArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReviewTemplateInput.type = Types::GetReviewTemplateInput
    GetReviewTemplateLensReviewInput.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "TemplateArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReviewTemplateLensReviewInput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReviewTemplateLensReviewInput.type = Types::GetReviewTemplateLensReviewInput
    GetReviewTemplateLensReviewOutput.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "TemplateArn"))
    GetReviewTemplateLensReviewOutput.add_member(:lens_review, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewTemplateLensReview, name: "LensReview"))
    GetReviewTemplateLensReviewOutput.type = Types::GetReviewTemplateLensReviewOutput
    GetReviewTemplateOutput.add_member(:review_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewTemplate, name: "ReviewTemplate"))
    GetReviewTemplateOutput.type = Types::GetReviewTemplateOutput
    GetWorkloadInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkloadInput.type = Types::GetWorkloadInput
    GetWorkloadOutput.add_member(:workload, ::Smithy::Schema::Shapes::MemberShape.new(target: Workload, name: "Workload"))
    GetWorkloadOutput.type = Types::GetWorkloadOutput
    ImportLensInput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias"))
    ImportLensInput.add_member(:json_string, ::Smithy::Schema::Shapes::MemberShape.new(target: LensJSON, name: "JSONString", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ImportLensInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#clientOptional" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    ImportLensInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    ImportLensInput.type = Types::ImportLensInput
    ImportLensOutput.add_member(:lens_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LensArn, name: "LensArn"))
    ImportLensOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportLensStatus, name: "Status"))
    ImportLensOutput.type = Types::ImportLensOutput
    ImportLensStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ImportLensStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ImportLensStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    ImprovementSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImprovementSummary, name: "member"))
    ImprovementSummary.add_member(:question_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionId, name: "QuestionId"))
    ImprovementSummary.add_member(:pillar_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarId, name: "PillarId"))
    ImprovementSummary.add_member(:question_title, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionTitle, name: "QuestionTitle"))
    ImprovementSummary.add_member(:risk, ::Smithy::Schema::Shapes::MemberShape.new(target: Risk, name: "Risk"))
    ImprovementSummary.add_member(:improvement_plan_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ImprovementPlanUrl, name: "ImprovementPlanUrl"))
    ImprovementSummary.add_member(:improvement_plans, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceImprovementPlans, name: "ImprovementPlans"))
    ImprovementSummary.add_member(:jira_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JiraConfiguration, name: "JiraConfiguration"))
    ImprovementSummary.type = Types::ImprovementSummary
    IntegratingService.add_member(:jira, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JIRA", traits: {"smithy.api#enumValue" => "JIRA"}))
    IntegrationStatus.add_member(:configured, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIGURED", traits: {"smithy.api#enumValue" => "CONFIGURED"}))
    IntegrationStatus.add_member(:not_configured, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_CONFIGURED", traits: {"smithy.api#enumValue" => "NOT_CONFIGURED"}))
    IntegrationStatusInput.add_member(:not_configured, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_CONFIGURED", traits: {"smithy.api#enumValue" => "NOT_CONFIGURED"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    IssueManagementType.add_member(:auto, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO", traits: {"smithy.api#enumValue" => "AUTO"}))
    IssueManagementType.add_member(:manual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANUAL", traits: {"smithy.api#enumValue" => "MANUAL"}))
    JiraConfiguration.add_member(:jira_issue_url, ::Smithy::Schema::Shapes::MemberShape.new(target: JiraIssueUrl, name: "JiraIssueUrl"))
    JiraConfiguration.add_member(:last_synced_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastSyncedTime"))
    JiraConfiguration.type = Types::JiraConfiguration
    JiraSelectedQuestionConfiguration.add_member(:selected_pillars, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectedPillars, name: "SelectedPillars"))
    JiraSelectedQuestionConfiguration.type = Types::JiraSelectedQuestionConfiguration
    Lens.add_member(:lens_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LensArn, name: "LensArn"))
    Lens.add_member(:lens_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LensVersion, name: "LensVersion"))
    Lens.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LensName, name: "Name"))
    Lens.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LensDescription, name: "Description"))
    Lens.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: LensOwner, name: "Owner"))
    Lens.add_member(:share_invitation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareInvitationId, name: "ShareInvitationId"))
    Lens.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    Lens.type = Types::Lens
    LensAliases.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "member"))
    LensMetric.add_member(:lens_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LensArn, name: "LensArn"))
    LensMetric.add_member(:pillars, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarMetrics, name: "Pillars"))
    LensMetric.add_member(:risk_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskCounts, name: "RiskCounts"))
    LensMetric.type = Types::LensMetric
    LensMetrics.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LensMetric, name: "member"))
    LensReview.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias"))
    LensReview.add_member(:lens_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LensArn, name: "LensArn"))
    LensReview.add_member(:lens_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LensVersion, name: "LensVersion"))
    LensReview.add_member(:lens_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LensName, name: "LensName"))
    LensReview.add_member(:lens_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LensStatus, name: "LensStatus"))
    LensReview.add_member(:pillar_review_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarReviewSummaries, name: "PillarReviewSummaries"))
    LensReview.add_member(:jira_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JiraSelectedQuestionConfiguration, name: "JiraConfiguration"))
    LensReview.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    LensReview.add_member(:notes, ::Smithy::Schema::Shapes::MemberShape.new(target: Notes, name: "Notes"))
    LensReview.add_member(:risk_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskCounts, name: "RiskCounts"))
    LensReview.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    LensReview.add_member(:profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadProfiles, name: "Profiles"))
    LensReview.add_member(:prioritized_risk_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskCounts, name: "PrioritizedRiskCounts"))
    LensReview.type = Types::LensReview
    LensReviewReport.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias"))
    LensReviewReport.add_member(:lens_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LensArn, name: "LensArn"))
    LensReviewReport.add_member(:base64_string, ::Smithy::Schema::Shapes::MemberShape.new(target: Base64String, name: "Base64String"))
    LensReviewReport.type = Types::LensReviewReport
    LensReviewSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LensReviewSummary, name: "member"))
    LensReviewSummary.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias"))
    LensReviewSummary.add_member(:lens_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LensArn, name: "LensArn"))
    LensReviewSummary.add_member(:lens_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LensVersion, name: "LensVersion"))
    LensReviewSummary.add_member(:lens_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LensName, name: "LensName"))
    LensReviewSummary.add_member(:lens_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LensStatus, name: "LensStatus"))
    LensReviewSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    LensReviewSummary.add_member(:risk_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskCounts, name: "RiskCounts"))
    LensReviewSummary.add_member(:profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadProfiles, name: "Profiles"))
    LensReviewSummary.add_member(:prioritized_risk_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskCounts, name: "PrioritizedRiskCounts"))
    LensReviewSummary.type = Types::LensReviewSummary
    LensShareSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LensShareSummary, name: "member"))
    LensShareSummary.add_member(:share_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareId, name: "ShareId"))
    LensShareSummary.add_member(:shared_with, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedWith, name: "SharedWith"))
    LensShareSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareStatus, name: "Status"))
    LensShareSummary.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
    LensShareSummary.type = Types::LensShareSummary
    LensStatus.add_member(:current, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT", traits: {"smithy.api#enumValue" => "CURRENT"}))
    LensStatus.add_member(:not_current, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_CURRENT", traits: {"smithy.api#enumValue" => "NOT_CURRENT"}))
    LensStatus.add_member(:deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPRECATED", traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    LensStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    LensStatus.add_member(:unshared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSHARED", traits: {"smithy.api#enumValue" => "UNSHARED"}))
    LensStatusType.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    LensStatusType.add_member(:draft, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DRAFT", traits: {"smithy.api#enumValue" => "DRAFT"}))
    LensStatusType.add_member(:published, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLISHED", traits: {"smithy.api#enumValue" => "PUBLISHED"}))
    LensSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LensSummary, name: "member"))
    LensSummary.add_member(:lens_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LensArn, name: "LensArn"))
    LensSummary.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias"))
    LensSummary.add_member(:lens_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LensName, name: "LensName"))
    LensSummary.add_member(:lens_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LensType, name: "LensType"))
    LensSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LensDescription, name: "Description"))
    LensSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    LensSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    LensSummary.add_member(:lens_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LensVersion, name: "LensVersion"))
    LensSummary.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "Owner"))
    LensSummary.add_member(:lens_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LensStatus, name: "LensStatus"))
    LensSummary.type = Types::LensSummary
    LensType.add_member(:aws_official, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_OFFICIAL", traits: {"smithy.api#enumValue" => "AWS_OFFICIAL"}))
    LensType.add_member(:custom_shared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_SHARED", traits: {"smithy.api#enumValue" => "CUSTOM_SHARED"}))
    LensType.add_member(:custom_self, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_SELF", traits: {"smithy.api#enumValue" => "CUSTOM_SELF"}))
    LensUpgradeSummary.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId"))
    LensUpgradeSummary.add_member(:workload_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadName, name: "WorkloadName"))
    LensUpgradeSummary.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias"))
    LensUpgradeSummary.add_member(:lens_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LensArn, name: "LensArn"))
    LensUpgradeSummary.add_member(:current_lens_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LensVersion, name: "CurrentLensVersion"))
    LensUpgradeSummary.add_member(:latest_lens_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LensVersion, name: "LatestLensVersion"))
    LensUpgradeSummary.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn"))
    LensUpgradeSummary.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadName, name: "ResourceName"))
    LensUpgradeSummary.type = Types::LensUpgradeSummary
    ListAnswersInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAnswersInput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAnswersInput.add_member(:pillar_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarId, name: "PillarId", traits: {"smithy.api#httpQuery" => "PillarId"}))
    ListAnswersInput.add_member(:milestone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: MilestoneNumber, name: "MilestoneNumber", traits: {"smithy.api#httpQuery" => "MilestoneNumber"}))
    ListAnswersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListAnswersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAnswersMaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListAnswersInput.add_member(:question_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionPriority, name: "QuestionPriority", traits: {"smithy.api#httpQuery" => "QuestionPriority"}))
    ListAnswersInput.type = Types::ListAnswersInput
    ListAnswersOutput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId"))
    ListAnswersOutput.add_member(:milestone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: MilestoneNumber, name: "MilestoneNumber"))
    ListAnswersOutput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias"))
    ListAnswersOutput.add_member(:lens_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LensArn, name: "LensArn"))
    ListAnswersOutput.add_member(:answer_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AnswerSummaries, name: "AnswerSummaries"))
    ListAnswersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAnswersOutput.type = Types::ListAnswersOutput
    ListCheckDetailsInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCheckDetailsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListCheckDetailsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListCheckDetailsInput.add_member(:lens_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LensArn, name: "LensArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListCheckDetailsInput.add_member(:pillar_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarId, name: "PillarId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListCheckDetailsInput.add_member(:question_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionId, name: "QuestionId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListCheckDetailsInput.add_member(:choice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceId, name: "ChoiceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListCheckDetailsInput.type = Types::ListCheckDetailsInput
    ListCheckDetailsOutput.add_member(:check_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckDetails, name: "CheckDetails"))
    ListCheckDetailsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListCheckDetailsOutput.type = Types::ListCheckDetailsOutput
    ListCheckSummariesInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCheckSummariesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListCheckSummariesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListCheckSummariesInput.add_member(:lens_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LensArn, name: "LensArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListCheckSummariesInput.add_member(:pillar_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarId, name: "PillarId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListCheckSummariesInput.add_member(:question_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionId, name: "QuestionId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListCheckSummariesInput.add_member(:choice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceId, name: "ChoiceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListCheckSummariesInput.type = Types::ListCheckSummariesInput
    ListCheckSummariesOutput.add_member(:check_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckSummaries, name: "CheckSummaries"))
    ListCheckSummariesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListCheckSummariesOutput.type = Types::ListCheckSummariesOutput
    ListLensReviewImprovementsInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListLensReviewImprovementsInput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListLensReviewImprovementsInput.add_member(:pillar_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarId, name: "PillarId", traits: {"smithy.api#httpQuery" => "PillarId"}))
    ListLensReviewImprovementsInput.add_member(:milestone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: MilestoneNumber, name: "MilestoneNumber", traits: {"smithy.api#httpQuery" => "MilestoneNumber"}))
    ListLensReviewImprovementsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListLensReviewImprovementsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListLensReviewImprovementsMaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListLensReviewImprovementsInput.add_member(:question_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionPriority, name: "QuestionPriority", traits: {"smithy.api#httpQuery" => "QuestionPriority"}))
    ListLensReviewImprovementsInput.type = Types::ListLensReviewImprovementsInput
    ListLensReviewImprovementsOutput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId"))
    ListLensReviewImprovementsOutput.add_member(:milestone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: MilestoneNumber, name: "MilestoneNumber"))
    ListLensReviewImprovementsOutput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias"))
    ListLensReviewImprovementsOutput.add_member(:lens_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LensArn, name: "LensArn"))
    ListLensReviewImprovementsOutput.add_member(:improvement_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ImprovementSummaries, name: "ImprovementSummaries"))
    ListLensReviewImprovementsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListLensReviewImprovementsOutput.type = Types::ListLensReviewImprovementsOutput
    ListLensReviewsInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListLensReviewsInput.add_member(:milestone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: MilestoneNumber, name: "MilestoneNumber", traits: {"smithy.api#httpQuery" => "MilestoneNumber"}))
    ListLensReviewsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListLensReviewsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListLensReviewsInput.type = Types::ListLensReviewsInput
    ListLensReviewsOutput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId"))
    ListLensReviewsOutput.add_member(:milestone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: MilestoneNumber, name: "MilestoneNumber"))
    ListLensReviewsOutput.add_member(:lens_review_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: LensReviewSummaries, name: "LensReviewSummaries"))
    ListLensReviewsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListLensReviewsOutput.type = Types::ListLensReviewsOutput
    ListLensSharesInput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListLensSharesInput.add_member(:shared_with_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedWithPrefix, name: "SharedWithPrefix", traits: {"smithy.api#httpQuery" => "SharedWithPrefix"}))
    ListLensSharesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListLensSharesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListWorkloadSharesMaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListLensSharesInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareStatus, name: "Status", traits: {"smithy.api#httpQuery" => "Status"}))
    ListLensSharesInput.type = Types::ListLensSharesInput
    ListLensSharesOutput.add_member(:lens_share_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: LensShareSummaries, name: "LensShareSummaries"))
    ListLensSharesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListLensSharesOutput.type = Types::ListLensSharesOutput
    ListLensesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListLensesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListLensesInput.add_member(:lens_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LensType, name: "LensType", traits: {"smithy.api#httpQuery" => "LensType"}))
    ListLensesInput.add_member(:lens_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LensStatusType, name: "LensStatus", traits: {"smithy.api#httpQuery" => "LensStatus"}))
    ListLensesInput.add_member(:lens_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LensName, name: "LensName", traits: {"smithy.api#httpQuery" => "LensName"}))
    ListLensesInput.type = Types::ListLensesInput
    ListLensesOutput.add_member(:lens_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: LensSummaries, name: "LensSummaries"))
    ListLensesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListLensesOutput.type = Types::ListLensesOutput
    ListMilestonesInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMilestonesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListMilestonesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListMilestonesInput.type = Types::ListMilestonesInput
    ListMilestonesOutput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId"))
    ListMilestonesOutput.add_member(:milestone_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: MilestoneSummaries, name: "MilestoneSummaries"))
    ListMilestonesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListMilestonesOutput.type = Types::ListMilestonesOutput
    ListNotificationsInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId"))
    ListNotificationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListNotificationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNotificationsMaxResults, name: "MaxResults"))
    ListNotificationsInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn"))
    ListNotificationsInput.type = Types::ListNotificationsInput
    ListNotificationsOutput.add_member(:notification_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationSummaries, name: "NotificationSummaries"))
    ListNotificationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListNotificationsOutput.type = Types::ListNotificationsOutput
    ListProfileNotificationsInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpQuery" => "WorkloadId"}))
    ListProfileNotificationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListProfileNotificationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListProfileNotificationsInput.type = Types::ListProfileNotificationsInput
    ListProfileNotificationsOutput.add_member(:notification_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileNotificationSummaries, name: "NotificationSummaries"))
    ListProfileNotificationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListProfileNotificationsOutput.type = Types::ListProfileNotificationsOutput
    ListProfileSharesInput.add_member(:profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileArn, name: "ProfileArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListProfileSharesInput.add_member(:shared_with_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedWithPrefix, name: "SharedWithPrefix", traits: {"smithy.api#httpQuery" => "SharedWithPrefix"}))
    ListProfileSharesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListProfileSharesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListProfileSharesMaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListProfileSharesInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareStatus, name: "Status", traits: {"smithy.api#httpQuery" => "Status"}))
    ListProfileSharesInput.type = Types::ListProfileSharesInput
    ListProfileSharesOutput.add_member(:profile_share_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileShareSummaries, name: "ProfileShareSummaries"))
    ListProfileSharesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListProfileSharesOutput.type = Types::ListProfileSharesOutput
    ListProfilesInput.add_member(:profile_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileNamePrefix, name: "ProfileNamePrefix", traits: {"smithy.api#httpQuery" => "ProfileNamePrefix"}))
    ListProfilesInput.add_member(:profile_owner_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileOwnerType, name: "ProfileOwnerType", traits: {"smithy.api#httpQuery" => "ProfileOwnerType"}))
    ListProfilesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListProfilesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListProfilesInput.type = Types::ListProfilesInput
    ListProfilesOutput.add_member(:profile_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileSummaries, name: "ProfileSummaries"))
    ListProfilesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListProfilesOutput.type = Types::ListProfilesOutput
    ListReviewTemplateAnswersInput.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "TemplateArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListReviewTemplateAnswersInput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListReviewTemplateAnswersInput.add_member(:pillar_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarId, name: "PillarId", traits: {"smithy.api#httpQuery" => "PillarId"}))
    ListReviewTemplateAnswersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListReviewTemplateAnswersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListReviewTemplateAnswersMaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListReviewTemplateAnswersInput.type = Types::ListReviewTemplateAnswersInput
    ListReviewTemplateAnswersOutput.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "TemplateArn"))
    ListReviewTemplateAnswersOutput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias"))
    ListReviewTemplateAnswersOutput.add_member(:answer_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewTemplateAnswerSummaries, name: "AnswerSummaries"))
    ListReviewTemplateAnswersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListReviewTemplateAnswersOutput.type = Types::ListReviewTemplateAnswersOutput
    ListReviewTemplatesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListReviewTemplatesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListReviewTemplatesInput.type = Types::ListReviewTemplatesInput
    ListReviewTemplatesOutput.add_member(:review_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewTemplates, name: "ReviewTemplates"))
    ListReviewTemplatesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListReviewTemplatesOutput.type = Types::ListReviewTemplatesOutput
    ListShareInvitationsInput.add_member(:workload_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadNamePrefix, name: "WorkloadNamePrefix", traits: {"smithy.api#httpQuery" => "WorkloadNamePrefix"}))
    ListShareInvitationsInput.add_member(:lens_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: LensNamePrefix, name: "LensNamePrefix", traits: {"smithy.api#httpQuery" => "LensNamePrefix"}))
    ListShareInvitationsInput.add_member(:share_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareResourceType, name: "ShareResourceType", traits: {"smithy.api#httpQuery" => "ShareResourceType"}))
    ListShareInvitationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListShareInvitationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListShareInvitationsMaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListShareInvitationsInput.add_member(:profile_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileNamePrefix, name: "ProfileNamePrefix", traits: {"smithy.api#httpQuery" => "ProfileNamePrefix"}))
    ListShareInvitationsInput.add_member(:template_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateNamePrefix, name: "TemplateNamePrefix", traits: {"smithy.api#httpQuery" => "TemplateNamePrefix"}))
    ListShareInvitationsInput.type = Types::ListShareInvitationsInput
    ListShareInvitationsOutput.add_member(:share_invitation_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareInvitationSummaries, name: "ShareInvitationSummaries"))
    ListShareInvitationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListShareInvitationsOutput.type = Types::ListShareInvitationsOutput
    ListTagsForResourceInput.add_member(:workload_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadArn, name: "WorkloadArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTemplateSharesInput.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "TemplateArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTemplateSharesInput.add_member(:shared_with_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedWithPrefix, name: "SharedWithPrefix", traits: {"smithy.api#httpQuery" => "SharedWithPrefix"}))
    ListTemplateSharesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListTemplateSharesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTemplateSharesMaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListTemplateSharesInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareStatus, name: "Status", traits: {"smithy.api#httpQuery" => "Status"}))
    ListTemplateSharesInput.type = Types::ListTemplateSharesInput
    ListTemplateSharesOutput.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "TemplateArn"))
    ListTemplateSharesOutput.add_member(:template_share_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateShareSummaries, name: "TemplateShareSummaries"))
    ListTemplateSharesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTemplateSharesOutput.type = Types::ListTemplateSharesOutput
    ListWorkloadSharesInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWorkloadSharesInput.add_member(:shared_with_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedWithPrefix, name: "SharedWithPrefix", traits: {"smithy.api#httpQuery" => "SharedWithPrefix"}))
    ListWorkloadSharesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListWorkloadSharesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListWorkloadSharesMaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListWorkloadSharesInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareStatus, name: "Status", traits: {"smithy.api#httpQuery" => "Status"}))
    ListWorkloadSharesInput.type = Types::ListWorkloadSharesInput
    ListWorkloadSharesOutput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId"))
    ListWorkloadSharesOutput.add_member(:workload_share_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadShareSummaries, name: "WorkloadShareSummaries"))
    ListWorkloadSharesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListWorkloadSharesOutput.type = Types::ListWorkloadSharesOutput
    ListWorkloadsInput.add_member(:workload_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadNamePrefix, name: "WorkloadNamePrefix"))
    ListWorkloadsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListWorkloadsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListWorkloadsMaxResults, name: "MaxResults"))
    ListWorkloadsInput.type = Types::ListWorkloadsInput
    ListWorkloadsOutput.add_member(:workload_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadSummaries, name: "WorkloadSummaries"))
    ListWorkloadsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListWorkloadsOutput.type = Types::ListWorkloadsOutput
    MetricType.add_member(:workload, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORKLOAD", traits: {"smithy.api#enumValue" => "WORKLOAD"}))
    Milestone.add_member(:milestone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: MilestoneNumber, name: "MilestoneNumber"))
    Milestone.add_member(:milestone_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MilestoneName, name: "MilestoneName"))
    Milestone.add_member(:recorded_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "RecordedAt"))
    Milestone.add_member(:workload, ::Smithy::Schema::Shapes::MemberShape.new(target: Workload, name: "Workload"))
    Milestone.type = Types::Milestone
    MilestoneSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MilestoneSummary, name: "member"))
    MilestoneSummary.add_member(:milestone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: MilestoneNumber, name: "MilestoneNumber"))
    MilestoneSummary.add_member(:milestone_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MilestoneName, name: "MilestoneName"))
    MilestoneSummary.add_member(:recorded_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "RecordedAt"))
    MilestoneSummary.add_member(:workload_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadSummary, name: "WorkloadSummary"))
    MilestoneSummary.type = Types::MilestoneSummary
    NotificationSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationSummary, name: "member"))
    NotificationSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationType, name: "Type"))
    NotificationSummary.add_member(:lens_upgrade_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: LensUpgradeSummary, name: "LensUpgradeSummary"))
    NotificationSummary.type = Types::NotificationSummary
    NotificationType.add_member(:lens_version_upgraded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LENS_VERSION_UPGRADED", traits: {"smithy.api#enumValue" => "LENS_VERSION_UPGRADED"}))
    NotificationType.add_member(:lens_version_deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LENS_VERSION_DEPRECATED", traits: {"smithy.api#enumValue" => "LENS_VERSION_DEPRECATED"}))
    OrganizationSharingStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    OrganizationSharingStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    PermissionType.add_member(:readonly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READONLY", traits: {"smithy.api#enumValue" => "READONLY"}))
    PermissionType.add_member(:contributor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTRIBUTOR", traits: {"smithy.api#enumValue" => "CONTRIBUTOR"}))
    PillarDifference.add_member(:pillar_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarId, name: "PillarId"))
    PillarDifference.add_member(:pillar_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarName, name: "PillarName"))
    PillarDifference.add_member(:difference_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferenceStatus, name: "DifferenceStatus"))
    PillarDifference.add_member(:question_differences, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionDifferences, name: "QuestionDifferences"))
    PillarDifference.type = Types::PillarDifference
    PillarDifferences.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarDifference, name: "member"))
    PillarMetric.add_member(:pillar_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarId, name: "PillarId"))
    PillarMetric.add_member(:risk_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskCounts, name: "RiskCounts"))
    PillarMetric.add_member(:questions, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionMetrics, name: "Questions"))
    PillarMetric.type = Types::PillarMetric
    PillarMetrics.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarMetric, name: "member"))
    PillarNotes.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarId, name: "key"))
    PillarNotes.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Notes, name: "value"))
    PillarReviewSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarReviewSummary, name: "member"))
    PillarReviewSummary.add_member(:pillar_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarId, name: "PillarId"))
    PillarReviewSummary.add_member(:pillar_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarName, name: "PillarName"))
    PillarReviewSummary.add_member(:notes, ::Smithy::Schema::Shapes::MemberShape.new(target: Notes, name: "Notes"))
    PillarReviewSummary.add_member(:risk_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskCounts, name: "RiskCounts"))
    PillarReviewSummary.add_member(:prioritized_risk_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskCounts, name: "PrioritizedRiskCounts"))
    PillarReviewSummary.type = Types::PillarReviewSummary
    Profile.add_member(:profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileArn, name: "ProfileArn"))
    Profile.add_member(:profile_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileVersion, name: "ProfileVersion"))
    Profile.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileName, name: "ProfileName"))
    Profile.add_member(:profile_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDescription, name: "ProfileDescription"))
    Profile.add_member(:profile_questions, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileQuestions, name: "ProfileQuestions"))
    Profile.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "Owner"))
    Profile.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    Profile.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    Profile.add_member(:share_invitation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareInvitationId, name: "ShareInvitationId"))
    Profile.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    Profile.type = Types::Profile
    ProfileArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileArn, name: "member"))
    ProfileChoice.add_member(:choice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceId, name: "ChoiceId"))
    ProfileChoice.add_member(:choice_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceTitle, name: "ChoiceTitle"))
    ProfileChoice.add_member(:choice_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceDescription, name: "ChoiceDescription"))
    ProfileChoice.type = Types::ProfileChoice
    ProfileNotificationSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileNotificationSummary, name: "member"))
    ProfileNotificationSummary.add_member(:current_profile_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileVersion, name: "CurrentProfileVersion"))
    ProfileNotificationSummary.add_member(:latest_profile_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileVersion, name: "LatestProfileVersion"))
    ProfileNotificationSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileNotificationType, name: "Type"))
    ProfileNotificationSummary.add_member(:profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileArn, name: "ProfileArn"))
    ProfileNotificationSummary.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileName, name: "ProfileName"))
    ProfileNotificationSummary.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId"))
    ProfileNotificationSummary.add_member(:workload_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadName, name: "WorkloadName"))
    ProfileNotificationSummary.type = Types::ProfileNotificationSummary
    ProfileNotificationType.add_member(:profile_answers_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROFILE_ANSWERS_UPDATED", traits: {"smithy.api#enumValue" => "PROFILE_ANSWERS_UPDATED"}))
    ProfileNotificationType.add_member(:profile_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROFILE_DELETED", traits: {"smithy.api#enumValue" => "PROFILE_DELETED"}))
    ProfileOwnerType.add_member(:self, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SELF", traits: {"smithy.api#enumValue" => "SELF"}))
    ProfileOwnerType.add_member(:shared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHARED", traits: {"smithy.api#enumValue" => "SHARED"}))
    ProfileQuestion.add_member(:question_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionId, name: "QuestionId"))
    ProfileQuestion.add_member(:question_title, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionTitle, name: "QuestionTitle"))
    ProfileQuestion.add_member(:question_description, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionDescription, name: "QuestionDescription"))
    ProfileQuestion.add_member(:question_choices, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileQuestionChoices, name: "QuestionChoices"))
    ProfileQuestion.add_member(:selected_choice_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectedChoiceIds, name: "SelectedChoiceIds"))
    ProfileQuestion.add_member(:min_selected_choices, ::Smithy::Schema::Shapes::MemberShape.new(target: MinSelectedProfileChoices, name: "MinSelectedChoices"))
    ProfileQuestion.add_member(:max_selected_choices, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSelectedProfileChoices, name: "MaxSelectedChoices"))
    ProfileQuestion.type = Types::ProfileQuestion
    ProfileQuestionChoices.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileChoice, name: "member"))
    ProfileQuestionUpdate.add_member(:question_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionId, name: "QuestionId"))
    ProfileQuestionUpdate.add_member(:selected_choice_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectedProfileChoiceIds, name: "SelectedChoiceIds"))
    ProfileQuestionUpdate.type = Types::ProfileQuestionUpdate
    ProfileQuestionUpdates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileQuestionUpdate, name: "member"))
    ProfileQuestions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileQuestion, name: "member"))
    ProfileShareSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileShareSummary, name: "member"))
    ProfileShareSummary.add_member(:share_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareId, name: "ShareId"))
    ProfileShareSummary.add_member(:shared_with, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedWith, name: "SharedWith"))
    ProfileShareSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareStatus, name: "Status"))
    ProfileShareSummary.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
    ProfileShareSummary.type = Types::ProfileShareSummary
    ProfileSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileSummary, name: "member"))
    ProfileSummary.add_member(:profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileArn, name: "ProfileArn"))
    ProfileSummary.add_member(:profile_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileVersion, name: "ProfileVersion"))
    ProfileSummary.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileName, name: "ProfileName"))
    ProfileSummary.add_member(:profile_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDescription, name: "ProfileDescription"))
    ProfileSummary.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "Owner"))
    ProfileSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    ProfileSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    ProfileSummary.type = Types::ProfileSummary
    ProfileTemplate.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileName, name: "TemplateName"))
    ProfileTemplate.add_member(:template_questions, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateQuestions, name: "TemplateQuestions"))
    ProfileTemplate.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    ProfileTemplate.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    ProfileTemplate.type = Types::ProfileTemplate
    ProfileTemplateChoice.add_member(:choice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceId, name: "ChoiceId"))
    ProfileTemplateChoice.add_member(:choice_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceTitle, name: "ChoiceTitle"))
    ProfileTemplateChoice.add_member(:choice_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceDescription, name: "ChoiceDescription"))
    ProfileTemplateChoice.type = Types::ProfileTemplateChoice
    ProfileTemplateQuestion.add_member(:question_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionId, name: "QuestionId"))
    ProfileTemplateQuestion.add_member(:question_title, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionTitle, name: "QuestionTitle"))
    ProfileTemplateQuestion.add_member(:question_description, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionDescription, name: "QuestionDescription"))
    ProfileTemplateQuestion.add_member(:question_choices, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileTemplateQuestionChoices, name: "QuestionChoices"))
    ProfileTemplateQuestion.add_member(:min_selected_choices, ::Smithy::Schema::Shapes::MemberShape.new(target: MinSelectedProfileChoices, name: "MinSelectedChoices"))
    ProfileTemplateQuestion.add_member(:max_selected_choices, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSelectedProfileChoices, name: "MaxSelectedChoices"))
    ProfileTemplateQuestion.type = Types::ProfileTemplateQuestion
    ProfileTemplateQuestionChoices.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileTemplateChoice, name: "member"))
    Question.add_member(:unanswered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNANSWERED", traits: {"smithy.api#enumValue" => "UNANSWERED"}))
    Question.add_member(:answered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANSWERED", traits: {"smithy.api#enumValue" => "ANSWERED"}))
    QuestionCounts.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Question, name: "key"))
    QuestionCounts.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "value"))
    QuestionDifference.add_member(:question_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionId, name: "QuestionId"))
    QuestionDifference.add_member(:question_title, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionTitle, name: "QuestionTitle"))
    QuestionDifference.add_member(:difference_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferenceStatus, name: "DifferenceStatus"))
    QuestionDifference.type = Types::QuestionDifference
    QuestionDifferences.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionDifference, name: "member"))
    QuestionMetric.add_member(:question_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionId, name: "QuestionId"))
    QuestionMetric.add_member(:risk, ::Smithy::Schema::Shapes::MemberShape.new(target: Risk, name: "Risk"))
    QuestionMetric.add_member(:best_practices, ::Smithy::Schema::Shapes::MemberShape.new(target: BestPractices, name: "BestPractices"))
    QuestionMetric.type = Types::QuestionMetric
    QuestionMetrics.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionMetric, name: "member"))
    QuestionPriority.add_member(:prioritized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIORITIZED", traits: {"smithy.api#enumValue" => "PRIORITIZED"}))
    QuestionPriority.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    QuestionType.add_member(:prioritized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIORITIZED", traits: {"smithy.api#enumValue" => "PRIORITIZED"}))
    QuestionType.add_member(:non_prioritized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NON_PRIORITIZED", traits: {"smithy.api#enumValue" => "NON_PRIORITIZED"}))
    ReportFormat.add_member(:pdf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PDF", traits: {"smithy.api#enumValue" => "PDF"}))
    ReportFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionResourceId, name: "ResourceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionResourceType, name: "ResourceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ReviewTemplate.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateDescription, name: "Description"))
    ReviewTemplate.add_member(:lenses, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewTemplateLenses, name: "Lenses"))
    ReviewTemplate.add_member(:notes, ::Smithy::Schema::Shapes::MemberShape.new(target: Notes, name: "Notes"))
    ReviewTemplate.add_member(:question_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionCounts, name: "QuestionCounts"))
    ReviewTemplate.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "Owner"))
    ReviewTemplate.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    ReviewTemplate.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "TemplateArn"))
    ReviewTemplate.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, name: "TemplateName"))
    ReviewTemplate.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    ReviewTemplate.add_member(:update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewTemplateUpdateStatus, name: "UpdateStatus"))
    ReviewTemplate.add_member(:share_invitation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareInvitationId, name: "ShareInvitationId"))
    ReviewTemplate.type = Types::ReviewTemplate
    ReviewTemplateAnswer.add_member(:question_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionId, name: "QuestionId"))
    ReviewTemplateAnswer.add_member(:pillar_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarId, name: "PillarId"))
    ReviewTemplateAnswer.add_member(:question_title, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionTitle, name: "QuestionTitle"))
    ReviewTemplateAnswer.add_member(:question_description, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionDescription, name: "QuestionDescription"))
    ReviewTemplateAnswer.add_member(:improvement_plan_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ImprovementPlanUrl, name: "ImprovementPlanUrl"))
    ReviewTemplateAnswer.add_member(:helpful_resource_url, ::Smithy::Schema::Shapes::MemberShape.new(target: HelpfulResourceUrl, name: "HelpfulResourceUrl"))
    ReviewTemplateAnswer.add_member(:helpful_resource_display_text, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayText, name: "HelpfulResourceDisplayText"))
    ReviewTemplateAnswer.add_member(:choices, ::Smithy::Schema::Shapes::MemberShape.new(target: Choices, name: "Choices"))
    ReviewTemplateAnswer.add_member(:selected_choices, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectedChoices, name: "SelectedChoices"))
    ReviewTemplateAnswer.add_member(:choice_answers, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceAnswers, name: "ChoiceAnswers"))
    ReviewTemplateAnswer.add_member(:is_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: IsApplicable, name: "IsApplicable"))
    ReviewTemplateAnswer.add_member(:answer_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewTemplateAnswerStatus, name: "AnswerStatus"))
    ReviewTemplateAnswer.add_member(:notes, ::Smithy::Schema::Shapes::MemberShape.new(target: Notes, name: "Notes"))
    ReviewTemplateAnswer.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AnswerReason, name: "Reason"))
    ReviewTemplateAnswer.type = Types::ReviewTemplateAnswer
    ReviewTemplateAnswerStatus.add_member(:unanswered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNANSWERED", traits: {"smithy.api#enumValue" => "UNANSWERED"}))
    ReviewTemplateAnswerStatus.add_member(:answered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANSWERED", traits: {"smithy.api#enumValue" => "ANSWERED"}))
    ReviewTemplateAnswerSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewTemplateAnswerSummary, name: "member"))
    ReviewTemplateAnswerSummary.add_member(:question_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionId, name: "QuestionId"))
    ReviewTemplateAnswerSummary.add_member(:pillar_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarId, name: "PillarId"))
    ReviewTemplateAnswerSummary.add_member(:question_title, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionTitle, name: "QuestionTitle"))
    ReviewTemplateAnswerSummary.add_member(:choices, ::Smithy::Schema::Shapes::MemberShape.new(target: Choices, name: "Choices"))
    ReviewTemplateAnswerSummary.add_member(:selected_choices, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectedChoices, name: "SelectedChoices"))
    ReviewTemplateAnswerSummary.add_member(:choice_answer_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceAnswerSummaries, name: "ChoiceAnswerSummaries"))
    ReviewTemplateAnswerSummary.add_member(:is_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: IsApplicable, name: "IsApplicable"))
    ReviewTemplateAnswerSummary.add_member(:answer_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewTemplateAnswerStatus, name: "AnswerStatus"))
    ReviewTemplateAnswerSummary.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AnswerReason, name: "Reason"))
    ReviewTemplateAnswerSummary.add_member(:question_type, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionType, name: "QuestionType"))
    ReviewTemplateAnswerSummary.type = Types::ReviewTemplateAnswerSummary
    ReviewTemplateArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "member"))
    ReviewTemplateLensAliases.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "member"))
    ReviewTemplateLensReview.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias"))
    ReviewTemplateLensReview.add_member(:lens_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LensArn, name: "LensArn"))
    ReviewTemplateLensReview.add_member(:lens_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LensVersion, name: "LensVersion"))
    ReviewTemplateLensReview.add_member(:lens_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LensName, name: "LensName"))
    ReviewTemplateLensReview.add_member(:lens_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LensStatus, name: "LensStatus"))
    ReviewTemplateLensReview.add_member(:pillar_review_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewTemplatePillarReviewSummaries, name: "PillarReviewSummaries"))
    ReviewTemplateLensReview.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    ReviewTemplateLensReview.add_member(:notes, ::Smithy::Schema::Shapes::MemberShape.new(target: Notes, name: "Notes"))
    ReviewTemplateLensReview.add_member(:question_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionCounts, name: "QuestionCounts"))
    ReviewTemplateLensReview.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ReviewTemplateLensReview.type = Types::ReviewTemplateLensReview
    ReviewTemplateLenses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "member"))
    ReviewTemplatePillarReviewSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewTemplatePillarReviewSummary, name: "member"))
    ReviewTemplatePillarReviewSummary.add_member(:pillar_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarId, name: "PillarId"))
    ReviewTemplatePillarReviewSummary.add_member(:pillar_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarName, name: "PillarName"))
    ReviewTemplatePillarReviewSummary.add_member(:notes, ::Smithy::Schema::Shapes::MemberShape.new(target: Notes, name: "Notes"))
    ReviewTemplatePillarReviewSummary.add_member(:question_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionCounts, name: "QuestionCounts"))
    ReviewTemplatePillarReviewSummary.type = Types::ReviewTemplatePillarReviewSummary
    ReviewTemplateSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateDescription, name: "Description"))
    ReviewTemplateSummary.add_member(:lenses, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewTemplateLenses, name: "Lenses"))
    ReviewTemplateSummary.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "Owner"))
    ReviewTemplateSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    ReviewTemplateSummary.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "TemplateArn"))
    ReviewTemplateSummary.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, name: "TemplateName"))
    ReviewTemplateSummary.add_member(:update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewTemplateUpdateStatus, name: "UpdateStatus"))
    ReviewTemplateSummary.type = Types::ReviewTemplateSummary
    ReviewTemplateUpdateStatus.add_member(:current, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT", traits: {"smithy.api#enumValue" => "CURRENT"}))
    ReviewTemplateUpdateStatus.add_member(:lens_not_current, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LENS_NOT_CURRENT", traits: {"smithy.api#enumValue" => "LENS_NOT_CURRENT"}))
    ReviewTemplates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewTemplateSummary, name: "member"))
    Risk.add_member(:unanswered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNANSWERED", traits: {"smithy.api#enumValue" => "UNANSWERED"}))
    Risk.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    Risk.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    Risk.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    Risk.add_member(:not_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_APPLICABLE", traits: {"smithy.api#enumValue" => "NOT_APPLICABLE"}))
    RiskCounts.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Risk, name: "key"))
    RiskCounts.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "value"))
    SelectedChoiceIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceId, name: "member"))
    SelectedChoices.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceId, name: "member"))
    SelectedPillar.add_member(:pillar_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarId, name: "PillarId"))
    SelectedPillar.add_member(:selected_question_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectedQuestionIds, name: "SelectedQuestionIds"))
    SelectedPillar.type = Types::SelectedPillar
    SelectedPillars.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectedPillar, name: "member"))
    SelectedProfileChoiceIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceId, name: "member"))
    SelectedQuestionIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectedQuestionId, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionResourceId, name: "ResourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionResourceType, name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaCode, name: "QuotaCode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCode, name: "ServiceCode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ShareInvitation.add_member(:share_invitation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareInvitationId, name: "ShareInvitationId"))
    ShareInvitation.add_member(:share_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareResourceType, name: "ShareResourceType"))
    ShareInvitation.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId"))
    ShareInvitation.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias"))
    ShareInvitation.add_member(:lens_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LensArn, name: "LensArn"))
    ShareInvitation.add_member(:profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileArn, name: "ProfileArn"))
    ShareInvitation.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "TemplateArn"))
    ShareInvitation.type = Types::ShareInvitation
    ShareInvitationAction.add_member(:accept, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCEPT", traits: {"smithy.api#enumValue" => "ACCEPT"}))
    ShareInvitationAction.add_member(:reject, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECT", traits: {"smithy.api#enumValue" => "REJECT"}))
    ShareInvitationSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareInvitationSummary, name: "member"))
    ShareInvitationSummary.add_member(:share_invitation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareInvitationId, name: "ShareInvitationId"))
    ShareInvitationSummary.add_member(:shared_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "SharedBy"))
    ShareInvitationSummary.add_member(:shared_with, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedWith, name: "SharedWith"))
    ShareInvitationSummary.add_member(:permission_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionType, name: "PermissionType"))
    ShareInvitationSummary.add_member(:share_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareResourceType, name: "ShareResourceType"))
    ShareInvitationSummary.add_member(:workload_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadName, name: "WorkloadName"))
    ShareInvitationSummary.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId"))
    ShareInvitationSummary.add_member(:lens_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LensName, name: "LensName"))
    ShareInvitationSummary.add_member(:lens_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LensArn, name: "LensArn"))
    ShareInvitationSummary.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileName, name: "ProfileName"))
    ShareInvitationSummary.add_member(:profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileArn, name: "ProfileArn"))
    ShareInvitationSummary.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, name: "TemplateName"))
    ShareInvitationSummary.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "TemplateArn"))
    ShareInvitationSummary.type = Types::ShareInvitationSummary
    ShareResourceType.add_member(:workload, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORKLOAD", traits: {"smithy.api#enumValue" => "WORKLOAD"}))
    ShareResourceType.add_member(:lens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LENS", traits: {"smithy.api#enumValue" => "LENS"}))
    ShareResourceType.add_member(:profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROFILE", traits: {"smithy.api#enumValue" => "PROFILE"}))
    ShareResourceType.add_member(:template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEMPLATE", traits: {"smithy.api#enumValue" => "TEMPLATE"}))
    ShareStatus.add_member(:accepted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCEPTED", traits: {"smithy.api#enumValue" => "ACCEPTED"}))
    ShareStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    ShareStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ShareStatus.add_member(:revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVOKED", traits: {"smithy.api#enumValue" => "REVOKED"}))
    ShareStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    ShareStatus.add_member(:associating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSOCIATING", traits: {"smithy.api#enumValue" => "ASSOCIATING"}))
    ShareStatus.add_member(:associated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSOCIATED", traits: {"smithy.api#enumValue" => "ASSOCIATED"}))
    ShareStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceInput.add_member(:workload_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadArn, name: "WorkloadArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TemplateQuestions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileTemplateQuestion, name: "member"))
    TemplateShareSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateShareSummary, name: "member"))
    TemplateShareSummary.add_member(:share_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareId, name: "ShareId"))
    TemplateShareSummary.add_member(:shared_with, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedWith, name: "SharedWith"))
    TemplateShareSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareStatus, name: "Status"))
    TemplateShareSummary.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
    TemplateShareSummary.type = Types::TemplateShareSummary
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaCode, name: "QuotaCode"))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCode, name: "ServiceCode"))
    ThrottlingException.type = Types::ThrottlingException
    TrustedAdvisorIntegrationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    TrustedAdvisorIntegrationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    UntagResourceInput.add_member(:workload_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadArn, name: "WorkloadArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateAnswerInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAnswerInput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAnswerInput.add_member(:question_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionId, name: "QuestionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAnswerInput.add_member(:selected_choices, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectedChoices, name: "SelectedChoices"))
    UpdateAnswerInput.add_member(:choice_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceUpdates, name: "ChoiceUpdates"))
    UpdateAnswerInput.add_member(:notes, ::Smithy::Schema::Shapes::MemberShape.new(target: Notes, name: "Notes"))
    UpdateAnswerInput.add_member(:is_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: IsApplicable, name: "IsApplicable"))
    UpdateAnswerInput.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AnswerReason, name: "Reason"))
    UpdateAnswerInput.type = Types::UpdateAnswerInput
    UpdateAnswerOutput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId"))
    UpdateAnswerOutput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias"))
    UpdateAnswerOutput.add_member(:lens_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LensArn, name: "LensArn"))
    UpdateAnswerOutput.add_member(:answer, ::Smithy::Schema::Shapes::MemberShape.new(target: Answer, name: "Answer"))
    UpdateAnswerOutput.type = Types::UpdateAnswerOutput
    UpdateGlobalSettingsInput.add_member(:organization_sharing_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationSharingStatus, name: "OrganizationSharingStatus"))
    UpdateGlobalSettingsInput.add_member(:discovery_integration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveryIntegrationStatus, name: "DiscoveryIntegrationStatus"))
    UpdateGlobalSettingsInput.add_member(:jira_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountJiraConfigurationInput, name: "JiraConfiguration"))
    UpdateGlobalSettingsInput.type = Types::UpdateGlobalSettingsInput
    UpdateIntegrationInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIntegrationInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#clientOptional" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    UpdateIntegrationInput.add_member(:integrating_service, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegratingService, name: "IntegratingService", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateIntegrationInput.type = Types::UpdateIntegrationInput
    UpdateLensReviewInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLensReviewInput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLensReviewInput.add_member(:lens_notes, ::Smithy::Schema::Shapes::MemberShape.new(target: Notes, name: "LensNotes"))
    UpdateLensReviewInput.add_member(:pillar_notes, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarNotes, name: "PillarNotes"))
    UpdateLensReviewInput.add_member(:jira_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JiraSelectedQuestionConfiguration, name: "JiraConfiguration"))
    UpdateLensReviewInput.type = Types::UpdateLensReviewInput
    UpdateLensReviewOutput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId"))
    UpdateLensReviewOutput.add_member(:lens_review, ::Smithy::Schema::Shapes::MemberShape.new(target: LensReview, name: "LensReview"))
    UpdateLensReviewOutput.type = Types::UpdateLensReviewOutput
    UpdateProfileInput.add_member(:profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileArn, name: "ProfileArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProfileInput.add_member(:profile_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDescription, name: "ProfileDescription"))
    UpdateProfileInput.add_member(:profile_questions, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileQuestionUpdates, name: "ProfileQuestions"))
    UpdateProfileInput.type = Types::UpdateProfileInput
    UpdateProfileOutput.add_member(:profile, ::Smithy::Schema::Shapes::MemberShape.new(target: Profile, name: "Profile"))
    UpdateProfileOutput.type = Types::UpdateProfileOutput
    UpdateReviewTemplateAnswerInput.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "TemplateArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReviewTemplateAnswerInput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReviewTemplateAnswerInput.add_member(:question_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionId, name: "QuestionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReviewTemplateAnswerInput.add_member(:selected_choices, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectedChoices, name: "SelectedChoices"))
    UpdateReviewTemplateAnswerInput.add_member(:choice_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceUpdates, name: "ChoiceUpdates"))
    UpdateReviewTemplateAnswerInput.add_member(:notes, ::Smithy::Schema::Shapes::MemberShape.new(target: Notes, name: "Notes"))
    UpdateReviewTemplateAnswerInput.add_member(:is_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: IsApplicable, name: "IsApplicable"))
    UpdateReviewTemplateAnswerInput.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AnswerReason, name: "Reason"))
    UpdateReviewTemplateAnswerInput.type = Types::UpdateReviewTemplateAnswerInput
    UpdateReviewTemplateAnswerOutput.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "TemplateArn"))
    UpdateReviewTemplateAnswerOutput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias"))
    UpdateReviewTemplateAnswerOutput.add_member(:answer, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewTemplateAnswer, name: "Answer"))
    UpdateReviewTemplateAnswerOutput.type = Types::UpdateReviewTemplateAnswerOutput
    UpdateReviewTemplateInput.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "TemplateArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReviewTemplateInput.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, name: "TemplateName"))
    UpdateReviewTemplateInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateDescription, name: "Description"))
    UpdateReviewTemplateInput.add_member(:notes, ::Smithy::Schema::Shapes::MemberShape.new(target: Notes, name: "Notes"))
    UpdateReviewTemplateInput.add_member(:lenses_to_associate, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewTemplateLensAliases, name: "LensesToAssociate"))
    UpdateReviewTemplateInput.add_member(:lenses_to_disassociate, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewTemplateLensAliases, name: "LensesToDisassociate"))
    UpdateReviewTemplateInput.type = Types::UpdateReviewTemplateInput
    UpdateReviewTemplateLensReviewInput.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "TemplateArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReviewTemplateLensReviewInput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReviewTemplateLensReviewInput.add_member(:lens_notes, ::Smithy::Schema::Shapes::MemberShape.new(target: Notes, name: "LensNotes"))
    UpdateReviewTemplateLensReviewInput.add_member(:pillar_notes, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarNotes, name: "PillarNotes"))
    UpdateReviewTemplateLensReviewInput.type = Types::UpdateReviewTemplateLensReviewInput
    UpdateReviewTemplateLensReviewOutput.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "TemplateArn"))
    UpdateReviewTemplateLensReviewOutput.add_member(:lens_review, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewTemplateLensReview, name: "LensReview"))
    UpdateReviewTemplateLensReviewOutput.type = Types::UpdateReviewTemplateLensReviewOutput
    UpdateReviewTemplateOutput.add_member(:review_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewTemplate, name: "ReviewTemplate"))
    UpdateReviewTemplateOutput.type = Types::UpdateReviewTemplateOutput
    UpdateShareInvitationInput.add_member(:share_invitation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareInvitationId, name: "ShareInvitationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateShareInvitationInput.add_member(:share_invitation_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareInvitationAction, name: "ShareInvitationAction", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateShareInvitationInput.type = Types::UpdateShareInvitationInput
    UpdateShareInvitationOutput.add_member(:share_invitation, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareInvitation, name: "ShareInvitation"))
    UpdateShareInvitationOutput.type = Types::UpdateShareInvitationOutput
    UpdateWorkloadInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkloadInput.add_member(:workload_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadName, name: "WorkloadName"))
    UpdateWorkloadInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadDescription, name: "Description"))
    UpdateWorkloadInput.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadEnvironment, name: "Environment"))
    UpdateWorkloadInput.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadAccountIds, name: "AccountIds"))
    UpdateWorkloadInput.add_member(:aws_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadAwsRegions, name: "AwsRegions"))
    UpdateWorkloadInput.add_member(:non_aws_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadNonAwsRegions, name: "NonAwsRegions"))
    UpdateWorkloadInput.add_member(:pillar_priorities, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadPillarPriorities, name: "PillarPriorities"))
    UpdateWorkloadInput.add_member(:architectural_design, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadArchitecturalDesign, name: "ArchitecturalDesign"))
    UpdateWorkloadInput.add_member(:review_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadReviewOwner, name: "ReviewOwner"))
    UpdateWorkloadInput.add_member(:is_review_owner_update_acknowledged, ::Smithy::Schema::Shapes::MemberShape.new(target: IsReviewOwnerUpdateAcknowledged, name: "IsReviewOwnerUpdateAcknowledged"))
    UpdateWorkloadInput.add_member(:industry_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadIndustryType, name: "IndustryType"))
    UpdateWorkloadInput.add_member(:industry, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadIndustry, name: "Industry"))
    UpdateWorkloadInput.add_member(:notes, ::Smithy::Schema::Shapes::MemberShape.new(target: Notes, name: "Notes"))
    UpdateWorkloadInput.add_member(:improvement_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadImprovementStatus, name: "ImprovementStatus"))
    UpdateWorkloadInput.add_member(:discovery_config, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadDiscoveryConfig, name: "DiscoveryConfig"))
    UpdateWorkloadInput.add_member(:applications, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadApplications, name: "Applications"))
    UpdateWorkloadInput.add_member(:jira_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadJiraConfigurationInput, name: "JiraConfiguration"))
    UpdateWorkloadInput.type = Types::UpdateWorkloadInput
    UpdateWorkloadOutput.add_member(:workload, ::Smithy::Schema::Shapes::MemberShape.new(target: Workload, name: "Workload"))
    UpdateWorkloadOutput.type = Types::UpdateWorkloadOutput
    UpdateWorkloadShareInput.add_member(:share_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareId, name: "ShareId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkloadShareInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkloadShareInput.add_member(:permission_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionType, name: "PermissionType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateWorkloadShareInput.type = Types::UpdateWorkloadShareInput
    UpdateWorkloadShareOutput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId"))
    UpdateWorkloadShareOutput.add_member(:workload_share, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadShare, name: "WorkloadShare"))
    UpdateWorkloadShareOutput.type = Types::UpdateWorkloadShareOutput
    UpgradeLensReviewInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpgradeLensReviewInput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpgradeLensReviewInput.add_member(:milestone_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MilestoneName, name: "MilestoneName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpgradeLensReviewInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken"))
    UpgradeLensReviewInput.type = Types::UpgradeLensReviewInput
    UpgradeProfileVersionInput.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpgradeProfileVersionInput.add_member(:profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileArn, name: "ProfileArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpgradeProfileVersionInput.add_member(:milestone_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MilestoneName, name: "MilestoneName"))
    UpgradeProfileVersionInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpgradeProfileVersionInput.type = Types::UpgradeProfileVersionInput
    UpgradeReviewTemplateLensReviewInput.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "TemplateArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpgradeReviewTemplateLensReviewInput.add_member(:lens_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "LensAlias", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpgradeReviewTemplateLensReviewInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken"))
    UpgradeReviewTemplateLensReviewInput.type = Types::UpgradeReviewTemplateLensReviewInput
    Urls.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChoiceContent, name: "member"))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "Reason"))
    ValidationException.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "Fields"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "UNKNOWN_OPERATION"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "CANNOT_PARSE"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    VersionDifferences.add_member(:pillar_differences, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarDifferences, name: "PillarDifferences"))
    VersionDifferences.type = Types::VersionDifferences
    Workload.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId"))
    Workload.add_member(:workload_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadArn, name: "WorkloadArn"))
    Workload.add_member(:workload_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadName, name: "WorkloadName"))
    Workload.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadDescription, name: "Description"))
    Workload.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadEnvironment, name: "Environment"))
    Workload.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    Workload.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadAccountIds, name: "AccountIds"))
    Workload.add_member(:aws_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadAwsRegions, name: "AwsRegions"))
    Workload.add_member(:non_aws_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadNonAwsRegions, name: "NonAwsRegions"))
    Workload.add_member(:architectural_design, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadArchitecturalDesign, name: "ArchitecturalDesign"))
    Workload.add_member(:review_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadReviewOwner, name: "ReviewOwner"))
    Workload.add_member(:review_restriction_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ReviewRestrictionDate"))
    Workload.add_member(:is_review_owner_update_acknowledged, ::Smithy::Schema::Shapes::MemberShape.new(target: IsReviewOwnerUpdateAcknowledged, name: "IsReviewOwnerUpdateAcknowledged"))
    Workload.add_member(:industry_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadIndustryType, name: "IndustryType"))
    Workload.add_member(:industry, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadIndustry, name: "Industry"))
    Workload.add_member(:notes, ::Smithy::Schema::Shapes::MemberShape.new(target: Notes, name: "Notes"))
    Workload.add_member(:improvement_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadImprovementStatus, name: "ImprovementStatus"))
    Workload.add_member(:risk_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskCounts, name: "RiskCounts"))
    Workload.add_member(:pillar_priorities, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadPillarPriorities, name: "PillarPriorities"))
    Workload.add_member(:lenses, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadLenses, name: "Lenses"))
    Workload.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "Owner"))
    Workload.add_member(:share_invitation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareInvitationId, name: "ShareInvitationId"))
    Workload.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    Workload.add_member(:discovery_config, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadDiscoveryConfig, name: "DiscoveryConfig"))
    Workload.add_member(:applications, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadApplications, name: "Applications"))
    Workload.add_member(:profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadProfiles, name: "Profiles"))
    Workload.add_member(:prioritized_risk_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskCounts, name: "PrioritizedRiskCounts"))
    Workload.add_member(:jira_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadJiraConfigurationOutput, name: "JiraConfiguration"))
    Workload.type = Types::Workload
    WorkloadAccountIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "member"))
    WorkloadApplications.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "member"))
    WorkloadAwsRegions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "member"))
    WorkloadDiscoveryConfig.add_member(:trusted_advisor_integration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedAdvisorIntegrationStatus, name: "TrustedAdvisorIntegrationStatus"))
    WorkloadDiscoveryConfig.add_member(:workload_resource_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadResourceDefinition, name: "WorkloadResourceDefinition"))
    WorkloadDiscoveryConfig.type = Types::WorkloadDiscoveryConfig
    WorkloadEnvironment.add_member(:production, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRODUCTION", traits: {"smithy.api#enumValue" => "PRODUCTION"}))
    WorkloadEnvironment.add_member(:preproduction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREPRODUCTION", traits: {"smithy.api#enumValue" => "PREPRODUCTION"}))
    WorkloadImprovementStatus.add_member(:not_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_APPLICABLE", traits: {"smithy.api#enumValue" => "NOT_APPLICABLE"}))
    WorkloadImprovementStatus.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_STARTED", traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    WorkloadImprovementStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    WorkloadImprovementStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    WorkloadImprovementStatus.add_member(:risk_acknowledged, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RISK_ACKNOWLEDGED", traits: {"smithy.api#enumValue" => "RISK_ACKNOWLEDGED"}))
    WorkloadIssueManagementStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    WorkloadIssueManagementStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    WorkloadIssueManagementStatus.add_member(:inherit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INHERIT", traits: {"smithy.api#enumValue" => "INHERIT"}))
    WorkloadJiraConfigurationInput.add_member(:issue_management_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadIssueManagementStatus, name: "IssueManagementStatus"))
    WorkloadJiraConfigurationInput.add_member(:issue_management_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IssueManagementType, name: "IssueManagementType"))
    WorkloadJiraConfigurationInput.add_member(:jira_project_key, ::Smithy::Schema::Shapes::MemberShape.new(target: JiraProjectKey, name: "JiraProjectKey"))
    WorkloadJiraConfigurationInput.type = Types::WorkloadJiraConfigurationInput
    WorkloadJiraConfigurationOutput.add_member(:issue_management_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadIssueManagementStatus, name: "IssueManagementStatus"))
    WorkloadJiraConfigurationOutput.add_member(:issue_management_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IssueManagementType, name: "IssueManagementType"))
    WorkloadJiraConfigurationOutput.add_member(:jira_project_key, ::Smithy::Schema::Shapes::MemberShape.new(target: JiraProjectKey, name: "JiraProjectKey"))
    WorkloadJiraConfigurationOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
    WorkloadJiraConfigurationOutput.type = Types::WorkloadJiraConfigurationOutput
    WorkloadLenses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LensAlias, name: "member"))
    WorkloadNonAwsRegions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadNonAwsRegion, name: "member"))
    WorkloadPillarPriorities.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PillarId, name: "member"))
    WorkloadProfile.add_member(:profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileArn, name: "ProfileArn"))
    WorkloadProfile.add_member(:profile_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileVersion, name: "ProfileVersion"))
    WorkloadProfile.type = Types::WorkloadProfile
    WorkloadProfileArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileArn, name: "member"))
    WorkloadProfiles.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadProfile, name: "member"))
    WorkloadResourceDefinition.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DefinitionType, name: "member"))
    WorkloadShare.add_member(:share_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareId, name: "ShareId"))
    WorkloadShare.add_member(:shared_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "SharedBy"))
    WorkloadShare.add_member(:shared_with, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedWith, name: "SharedWith"))
    WorkloadShare.add_member(:permission_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionType, name: "PermissionType"))
    WorkloadShare.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareStatus, name: "Status"))
    WorkloadShare.add_member(:workload_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadName, name: "WorkloadName"))
    WorkloadShare.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId"))
    WorkloadShare.type = Types::WorkloadShare
    WorkloadShareSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadShareSummary, name: "member"))
    WorkloadShareSummary.add_member(:share_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareId, name: "ShareId"))
    WorkloadShareSummary.add_member(:shared_with, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedWith, name: "SharedWith"))
    WorkloadShareSummary.add_member(:permission_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionType, name: "PermissionType"))
    WorkloadShareSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareStatus, name: "Status"))
    WorkloadShareSummary.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
    WorkloadShareSummary.type = Types::WorkloadShareSummary
    WorkloadSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadSummary, name: "member"))
    WorkloadSummary.add_member(:workload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadId, name: "WorkloadId"))
    WorkloadSummary.add_member(:workload_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadArn, name: "WorkloadArn"))
    WorkloadSummary.add_member(:workload_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadName, name: "WorkloadName"))
    WorkloadSummary.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "Owner"))
    WorkloadSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    WorkloadSummary.add_member(:lenses, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadLenses, name: "Lenses"))
    WorkloadSummary.add_member(:risk_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskCounts, name: "RiskCounts"))
    WorkloadSummary.add_member(:improvement_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadImprovementStatus, name: "ImprovementStatus"))
    WorkloadSummary.add_member(:profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadProfiles, name: "Profiles"))
    WorkloadSummary.add_member(:prioritized_risk_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskCounts, name: "PrioritizedRiskCounts"))
    WorkloadSummary.type = Types::WorkloadSummary

    WellArchitectedApiServiceLambda = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.wellarchitected#WellArchitectedApiServiceLambda"
      service.name = "WellArchitectedApiServiceLambda"
      service.version = "2020-03-31"
      service.traits = {"aws.api#service" => {"sdkId" => "WellArchitected", "arnNamespace" => "wellarchitected", "cloudFormationName" => "WellArchitected", "cloudTrailEventSource" => "wellarchitected.amazonaws.com", "endpointPrefix" => "wellarchitected"}, "aws.auth#sigv4" => {"name" => "wellarchitected"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Well-Architected Tool"}
      service.add_operation(:associate_lenses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#AssociateLenses"
        operation.name = "AssociateLenses"
        operation.input = AssociateLensesInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/workloads/{WorkloadId}/associateLenses", "code" => 200}}
      end)
      service.add_operation(:associate_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#AssociateProfiles"
        operation.name = "AssociateProfiles"
        operation.input = AssociateProfilesInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/workloads/{WorkloadId}/associateProfiles", "code" => 200}}
      end)
      service.add_operation(:create_lens_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#CreateLensShare"
        operation.name = "CreateLensShare"
        operation.input = CreateLensShareInput
        operation.output = CreateLensShareOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/lenses/{LensAlias}/shares", "code" => 200}}
      end)
      service.add_operation(:create_lens_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#CreateLensVersion"
        operation.name = "CreateLensVersion"
        operation.input = CreateLensVersionInput
        operation.output = CreateLensVersionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/lenses/{LensAlias}/versions", "code" => 200}}
      end)
      service.add_operation(:create_milestone, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#CreateMilestone"
        operation.name = "CreateMilestone"
        operation.input = CreateMilestoneInput
        operation.output = CreateMilestoneOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workloads/{WorkloadId}/milestones", "code" => 200}}
      end)
      service.add_operation(:create_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#CreateProfile"
        operation.name = "CreateProfile"
        operation.input = CreateProfileInput
        operation.output = CreateProfileOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/profiles", "code" => 200}}
      end)
      service.add_operation(:create_profile_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#CreateProfileShare"
        operation.name = "CreateProfileShare"
        operation.input = CreateProfileShareInput
        operation.output = CreateProfileShareOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/profiles/{ProfileArn}/shares", "code" => 200}}
      end)
      service.add_operation(:create_review_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#CreateReviewTemplate"
        operation.name = "CreateReviewTemplate"
        operation.input = CreateReviewTemplateInput
        operation.output = CreateReviewTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/reviewTemplates", "code" => 200}}
      end)
      service.add_operation(:create_template_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#CreateTemplateShare"
        operation.name = "CreateTemplateShare"
        operation.input = CreateTemplateShareInput
        operation.output = CreateTemplateShareOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/templates/shares/{TemplateArn}", "code" => 200}}
      end)
      service.add_operation(:create_workload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#CreateWorkload"
        operation.name = "CreateWorkload"
        operation.input = CreateWorkloadInput
        operation.output = CreateWorkloadOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workloads", "code" => 200}}
      end)
      service.add_operation(:create_workload_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#CreateWorkloadShare"
        operation.name = "CreateWorkloadShare"
        operation.input = CreateWorkloadShareInput
        operation.output = CreateWorkloadShareOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workloads/{WorkloadId}/shares", "code" => 200}}
      end)
      service.add_operation(:delete_lens, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#DeleteLens"
        operation.name = "DeleteLens"
        operation.input = DeleteLensInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/lenses/{LensAlias}", "code" => 200}}
      end)
      service.add_operation(:delete_lens_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#DeleteLensShare"
        operation.name = "DeleteLensShare"
        operation.input = DeleteLensShareInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/lenses/{LensAlias}/shares/{ShareId}", "code" => 200}}
      end)
      service.add_operation(:delete_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#DeleteProfile"
        operation.name = "DeleteProfile"
        operation.input = DeleteProfileInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/profiles/{ProfileArn}", "code" => 200}}
      end)
      service.add_operation(:delete_profile_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#DeleteProfileShare"
        operation.name = "DeleteProfileShare"
        operation.input = DeleteProfileShareInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/profiles/{ProfileArn}/shares/{ShareId}", "code" => 200}}
      end)
      service.add_operation(:delete_review_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#DeleteReviewTemplate"
        operation.name = "DeleteReviewTemplate"
        operation.input = DeleteReviewTemplateInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/reviewTemplates/{TemplateArn}", "code" => 200}}
      end)
      service.add_operation(:delete_template_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#DeleteTemplateShare"
        operation.name = "DeleteTemplateShare"
        operation.input = DeleteTemplateShareInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/templates/shares/{TemplateArn}/{ShareId}", "code" => 200}}
      end)
      service.add_operation(:delete_workload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#DeleteWorkload"
        operation.name = "DeleteWorkload"
        operation.input = DeleteWorkloadInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/workloads/{WorkloadId}", "code" => 200}}
      end)
      service.add_operation(:delete_workload_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#DeleteWorkloadShare"
        operation.name = "DeleteWorkloadShare"
        operation.input = DeleteWorkloadShareInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/workloads/{WorkloadId}/shares/{ShareId}", "code" => 200}}
      end)
      service.add_operation(:disassociate_lenses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#DisassociateLenses"
        operation.name = "DisassociateLenses"
        operation.input = DisassociateLensesInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/workloads/{WorkloadId}/disassociateLenses", "code" => 200}}
      end)
      service.add_operation(:disassociate_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#DisassociateProfiles"
        operation.name = "DisassociateProfiles"
        operation.input = DisassociateProfilesInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/workloads/{WorkloadId}/disassociateProfiles", "code" => 200}}
      end)
      service.add_operation(:export_lens, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ExportLens"
        operation.name = "ExportLens"
        operation.input = ExportLensInput
        operation.output = ExportLensOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/lenses/{LensAlias}/export", "code" => 200}}
      end)
      service.add_operation(:get_answer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetAnswer"
        operation.name = "GetAnswer"
        operation.input = GetAnswerInput
        operation.output = GetAnswerOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers/{QuestionId}", "code" => 200}}
      end)
      service.add_operation(:get_consolidated_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetConsolidatedReport"
        operation.name = "GetConsolidatedReport"
        operation.input = GetConsolidatedReportInput
        operation.output = GetConsolidatedReportOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/consolidatedReport", "code" => 200}}
        operation[:paginator] = Paginators::GetConsolidatedReport.new
      end)
      service.add_operation(:get_global_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetGlobalSettings"
        operation.name = "GetGlobalSettings"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetGlobalSettingsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/global-settings", "code" => 200}}
      end)
      service.add_operation(:get_lens, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetLens"
        operation.name = "GetLens"
        operation.input = GetLensInput
        operation.output = GetLensOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/lenses/{LensAlias}", "code" => 200}}
      end)
      service.add_operation(:get_lens_review, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetLensReview"
        operation.name = "GetLensReview"
        operation.input = GetLensReviewInput
        operation.output = GetLensReviewOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workloads/{WorkloadId}/lensReviews/{LensAlias}", "code" => 200}}
      end)
      service.add_operation(:get_lens_review_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetLensReviewReport"
        operation.name = "GetLensReviewReport"
        operation.input = GetLensReviewReportInput
        operation.output = GetLensReviewReportOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workloads/{WorkloadId}/lensReviews/{LensAlias}/report", "code" => 200}}
      end)
      service.add_operation(:get_lens_version_difference, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetLensVersionDifference"
        operation.name = "GetLensVersionDifference"
        operation.input = GetLensVersionDifferenceInput
        operation.output = GetLensVersionDifferenceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/lenses/{LensAlias}/versionDifference", "code" => 200}}
      end)
      service.add_operation(:get_milestone, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetMilestone"
        operation.name = "GetMilestone"
        operation.input = GetMilestoneInput
        operation.output = GetMilestoneOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workloads/{WorkloadId}/milestones/{MilestoneNumber}", "code" => 200}}
      end)
      service.add_operation(:get_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetProfile"
        operation.name = "GetProfile"
        operation.input = GetProfileInput
        operation.output = GetProfileOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/profiles/{ProfileArn}", "code" => 200}}
      end)
      service.add_operation(:get_profile_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetProfileTemplate"
        operation.name = "GetProfileTemplate"
        operation.input = GetProfileTemplateInput
        operation.output = GetProfileTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/profileTemplate", "code" => 200}}
      end)
      service.add_operation(:get_review_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetReviewTemplate"
        operation.name = "GetReviewTemplate"
        operation.input = GetReviewTemplateInput
        operation.output = GetReviewTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/reviewTemplates/{TemplateArn}", "code" => 200}}
      end)
      service.add_operation(:get_review_template_answer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetReviewTemplateAnswer"
        operation.name = "GetReviewTemplateAnswer"
        operation.input = GetReviewTemplateAnswerInput
        operation.output = GetReviewTemplateAnswerOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}/answers/{QuestionId}", "code" => 200}}
      end)
      service.add_operation(:get_review_template_lens_review, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetReviewTemplateLensReview"
        operation.name = "GetReviewTemplateLensReview"
        operation.input = GetReviewTemplateLensReviewInput
        operation.output = GetReviewTemplateLensReviewOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}", "code" => 200}}
      end)
      service.add_operation(:get_workload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#GetWorkload"
        operation.name = "GetWorkload"
        operation.input = GetWorkloadInput
        operation.output = GetWorkloadOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workloads/{WorkloadId}", "code" => 200}}
      end)
      service.add_operation(:import_lens, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ImportLens"
        operation.name = "ImportLens"
        operation.input = ImportLensInput
        operation.output = ImportLensOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/importLens", "code" => 200}}
      end)
      service.add_operation(:list_answers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListAnswers"
        operation.name = "ListAnswers"
        operation.input = ListAnswersInput
        operation.output = ListAnswersOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers", "code" => 200}}
        operation[:paginator] = Paginators::ListAnswers.new
      end)
      service.add_operation(:list_check_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListCheckDetails"
        operation.name = "ListCheckDetails"
        operation.input = ListCheckDetailsInput
        operation.output = ListCheckDetailsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workloads/{WorkloadId}/checks", "code" => 200}}
        operation[:paginator] = Paginators::ListCheckDetails.new
      end)
      service.add_operation(:list_check_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListCheckSummaries"
        operation.name = "ListCheckSummaries"
        operation.input = ListCheckSummariesInput
        operation.output = ListCheckSummariesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workloads/{WorkloadId}/checkSummaries", "code" => 200}}
        operation[:paginator] = Paginators::ListCheckSummaries.new
      end)
      service.add_operation(:list_lens_review_improvements, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListLensReviewImprovements"
        operation.name = "ListLensReviewImprovements"
        operation.input = ListLensReviewImprovementsInput
        operation.output = ListLensReviewImprovementsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workloads/{WorkloadId}/lensReviews/{LensAlias}/improvements", "code" => 200}}
        operation[:paginator] = Paginators::ListLensReviewImprovements.new
      end)
      service.add_operation(:list_lens_reviews, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListLensReviews"
        operation.name = "ListLensReviews"
        operation.input = ListLensReviewsInput
        operation.output = ListLensReviewsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workloads/{WorkloadId}/lensReviews", "code" => 200}}
        operation[:paginator] = Paginators::ListLensReviews.new
      end)
      service.add_operation(:list_lens_shares, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListLensShares"
        operation.name = "ListLensShares"
        operation.input = ListLensSharesInput
        operation.output = ListLensSharesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/lenses/{LensAlias}/shares", "code" => 200}}
        operation[:paginator] = Paginators::ListLensShares.new
      end)
      service.add_operation(:list_lenses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListLenses"
        operation.name = "ListLenses"
        operation.input = ListLensesInput
        operation.output = ListLensesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/lenses", "code" => 200}}
        operation[:paginator] = Paginators::ListLenses.new
      end)
      service.add_operation(:list_milestones, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListMilestones"
        operation.name = "ListMilestones"
        operation.input = ListMilestonesInput
        operation.output = ListMilestonesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workloads/{WorkloadId}/milestonesSummaries", "code" => 200}}
        operation[:paginator] = Paginators::ListMilestones.new
      end)
      service.add_operation(:list_notifications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListNotifications"
        operation.name = "ListNotifications"
        operation.input = ListNotificationsInput
        operation.output = ListNotificationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/notifications", "code" => 200}}
        operation[:paginator] = Paginators::ListNotifications.new
      end)
      service.add_operation(:list_profile_notifications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListProfileNotifications"
        operation.name = "ListProfileNotifications"
        operation.input = ListProfileNotificationsInput
        operation.output = ListProfileNotificationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/profileNotifications", "code" => 200}}
        operation[:paginator] = Paginators::ListProfileNotifications.new
      end)
      service.add_operation(:list_profile_shares, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListProfileShares"
        operation.name = "ListProfileShares"
        operation.input = ListProfileSharesInput
        operation.output = ListProfileSharesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/profiles/{ProfileArn}/shares", "code" => 200}}
        operation[:paginator] = Paginators::ListProfileShares.new
      end)
      service.add_operation(:list_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListProfiles"
        operation.name = "ListProfiles"
        operation.input = ListProfilesInput
        operation.output = ListProfilesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/profileSummaries", "code" => 200}}
        operation[:paginator] = Paginators::ListProfiles.new
      end)
      service.add_operation(:list_review_template_answers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListReviewTemplateAnswers"
        operation.name = "ListReviewTemplateAnswers"
        operation.input = ListReviewTemplateAnswersInput
        operation.output = ListReviewTemplateAnswersOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}/answers", "code" => 200}}
        operation[:paginator] = Paginators::ListReviewTemplateAnswers.new
      end)
      service.add_operation(:list_review_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListReviewTemplates"
        operation.name = "ListReviewTemplates"
        operation.input = ListReviewTemplatesInput
        operation.output = ListReviewTemplatesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/reviewTemplates", "code" => 200}}
        operation[:paginator] = Paginators::ListReviewTemplates.new
      end)
      service.add_operation(:list_share_invitations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListShareInvitations"
        operation.name = "ListShareInvitations"
        operation.input = ListShareInvitationsInput
        operation.output = ListShareInvitationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/shareInvitations", "code" => 200}}
        operation[:paginator] = Paginators::ListShareInvitations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{WorkloadArn}", "code" => 200}}
      end)
      service.add_operation(:list_template_shares, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListTemplateShares"
        operation.name = "ListTemplateShares"
        operation.input = ListTemplateSharesInput
        operation.output = ListTemplateSharesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/templates/shares/{TemplateArn}", "code" => 200}}
        operation[:paginator] = Paginators::ListTemplateShares.new
      end)
      service.add_operation(:list_workload_shares, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListWorkloadShares"
        operation.name = "ListWorkloadShares"
        operation.input = ListWorkloadSharesInput
        operation.output = ListWorkloadSharesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workloads/{WorkloadId}/shares", "code" => 200}}
        operation[:paginator] = Paginators::ListWorkloadShares.new
      end)
      service.add_operation(:list_workloads, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#ListWorkloads"
        operation.name = "ListWorkloads"
        operation.input = ListWorkloadsInput
        operation.output = ListWorkloadsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workloadsSummaries", "code" => 200}}
        operation[:paginator] = Paginators::ListWorkloads.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{WorkloadArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{WorkloadArn}", "code" => 200}}
      end)
      service.add_operation(:update_answer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpdateAnswer"
        operation.name = "UpdateAnswer"
        operation.input = UpdateAnswerInput
        operation.output = UpdateAnswerOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers/{QuestionId}", "code" => 200}}
      end)
      service.add_operation(:update_global_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpdateGlobalSettings"
        operation.name = "UpdateGlobalSettings"
        operation.input = UpdateGlobalSettingsInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/global-settings", "code" => 200}}
      end)
      service.add_operation(:update_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpdateIntegration"
        operation.name = "UpdateIntegration"
        operation.input = UpdateIntegrationInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workloads/{WorkloadId}/updateIntegration", "code" => 200}}
      end)
      service.add_operation(:update_lens_review, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpdateLensReview"
        operation.name = "UpdateLensReview"
        operation.input = UpdateLensReviewInput
        operation.output = UpdateLensReviewOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/workloads/{WorkloadId}/lensReviews/{LensAlias}", "code" => 200}}
      end)
      service.add_operation(:update_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpdateProfile"
        operation.name = "UpdateProfile"
        operation.input = UpdateProfileInput
        operation.output = UpdateProfileOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/profiles/{ProfileArn}", "code" => 200}}
      end)
      service.add_operation(:update_review_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpdateReviewTemplate"
        operation.name = "UpdateReviewTemplate"
        operation.input = UpdateReviewTemplateInput
        operation.output = UpdateReviewTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/reviewTemplates/{TemplateArn}", "code" => 200}}
      end)
      service.add_operation(:update_review_template_answer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpdateReviewTemplateAnswer"
        operation.name = "UpdateReviewTemplateAnswer"
        operation.input = UpdateReviewTemplateAnswerInput
        operation.output = UpdateReviewTemplateAnswerOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}/answers/{QuestionId}", "code" => 200}}
      end)
      service.add_operation(:update_review_template_lens_review, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpdateReviewTemplateLensReview"
        operation.name = "UpdateReviewTemplateLensReview"
        operation.input = UpdateReviewTemplateLensReviewInput
        operation.output = UpdateReviewTemplateLensReviewOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}", "code" => 200}}
      end)
      service.add_operation(:update_share_invitation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpdateShareInvitation"
        operation.name = "UpdateShareInvitation"
        operation.input = UpdateShareInvitationInput
        operation.output = UpdateShareInvitationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/shareInvitations/{ShareInvitationId}", "code" => 200}}
      end)
      service.add_operation(:update_workload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpdateWorkload"
        operation.name = "UpdateWorkload"
        operation.input = UpdateWorkloadInput
        operation.output = UpdateWorkloadOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/workloads/{WorkloadId}", "code" => 200}}
      end)
      service.add_operation(:update_workload_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpdateWorkloadShare"
        operation.name = "UpdateWorkloadShare"
        operation.input = UpdateWorkloadShareInput
        operation.output = UpdateWorkloadShareOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/workloads/{WorkloadId}/shares/{ShareId}", "code" => 200}}
      end)
      service.add_operation(:upgrade_lens_review, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpgradeLensReview"
        operation.name = "UpgradeLensReview"
        operation.input = UpgradeLensReviewInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/workloads/{WorkloadId}/lensReviews/{LensAlias}/upgrade", "code" => 200}}
      end)
      service.add_operation(:upgrade_profile_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpgradeProfileVersion"
        operation.name = "UpgradeProfileVersion"
        operation.input = UpgradeProfileVersionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/workloads/{WorkloadId}/profiles/{ProfileArn}/upgrade", "code" => 200}}
      end)
      service.add_operation(:upgrade_review_template_lens_review, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wellarchitected#UpgradeReviewTemplateLensReview"
        operation.name = "UpgradeReviewTemplateLensReview"
        operation.input = UpgradeReviewTemplateLensReviewInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}/upgrade", "code" => 200}}
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
