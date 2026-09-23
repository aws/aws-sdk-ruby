# frozen_string_literal: true

# This is generated code!

module Aws::CloudFormation
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptTermsAndConditions = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudformation#AcceptTermsAndConditions", name: "AcceptTermsAndConditions")
    Account = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#Account", name: "Account", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    AccountFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#AccountFilterType", name: "AccountFilterType")
    AccountGateResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#AccountGateResult", name: "AccountGateResult")
    AccountGateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#AccountGateStatus", name: "AccountGateStatus")
    AccountGateStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#AccountGateStatusReason", name: "AccountGateStatusReason")
    AccountLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#AccountLimit", name: "AccountLimit")
    AccountLimitList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#AccountLimitList", name: "AccountLimitList")
    AccountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#AccountList", name: "AccountList")
    AccountsUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#AccountsUrl", name: "AccountsUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 5120}, "smithy.api#pattern" => "^(s3://|http(s?)://).+$"})
    ActivateOrganizationsAccessInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ActivateOrganizationsAccessInput", name: "ActivateOrganizationsAccessInput")
    ActivateOrganizationsAccessOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ActivateOrganizationsAccessOutput", name: "ActivateOrganizationsAccessOutput")
    ActivateTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ActivateTypeInput", name: "ActivateTypeInput")
    ActivateTypeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ActivateTypeOutput", name: "ActivateTypeOutput")
    AfterContext = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#AfterContext", name: "AfterContext")
    AfterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#AfterValue", name: "AfterValue")
    AllowedValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#AllowedValue", name: "AllowedValue")
    AllowedValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#AllowedValues", name: "AllowedValues")
    AlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#AlreadyExistsException", name: "AlreadyExistsException", traits: {"aws.protocols#awsQueryError" => {"code" => "AlreadyExistsException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#Arn", name: "Arn")
    AttributeChangeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#AttributeChangeType", name: "AttributeChangeType")
    AutoDeployment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#AutoDeployment", name: "AutoDeployment")
    AutoDeploymentNullable = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudformation#AutoDeploymentNullable", name: "AutoDeploymentNullable")
    AutoUpdate = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudformation#AutoUpdate", name: "AutoUpdate")
    BatchDescribeTypeConfigurationsError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#BatchDescribeTypeConfigurationsError", name: "BatchDescribeTypeConfigurationsError")
    BatchDescribeTypeConfigurationsErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#BatchDescribeTypeConfigurationsErrors", name: "BatchDescribeTypeConfigurationsErrors")
    BatchDescribeTypeConfigurationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#BatchDescribeTypeConfigurationsInput", name: "BatchDescribeTypeConfigurationsInput")
    BatchDescribeTypeConfigurationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#BatchDescribeTypeConfigurationsOutput", name: "BatchDescribeTypeConfigurationsOutput")
    BeforeContext = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#BeforeContext", name: "BeforeContext")
    BeforeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#BeforeValue", name: "BeforeValue")
    BoxedInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#BoxedInteger", name: "BoxedInteger")
    BoxedMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#BoxedMaxResults", name: "BoxedMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    CFNRegistryException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#CFNRegistryException", name: "CFNRegistryException", traits: {"aws.protocols#awsQueryError" => {"code" => "CFNRegistryException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CallAs = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#CallAs", name: "CallAs")
    CancelUpdateStackInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#CancelUpdateStackInput", name: "CancelUpdateStackInput")
    Capabilities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#Capabilities", name: "Capabilities")
    CapabilitiesReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#CapabilitiesReason", name: "CapabilitiesReason")
    Capability = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#Capability", name: "Capability")
    Category = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#Category", name: "Category")
    CausingEntity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#CausingEntity", name: "CausingEntity")
    Change = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#Change", name: "Change")
    ChangeAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#ChangeAction", name: "ChangeAction")
    ChangeSetHook = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ChangeSetHook", name: "ChangeSetHook")
    ChangeSetHookResourceTargetDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ChangeSetHookResourceTargetDetails", name: "ChangeSetHookResourceTargetDetails")
    ChangeSetHookTargetDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ChangeSetHookTargetDetails", name: "ChangeSetHookTargetDetails")
    ChangeSetHooks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#ChangeSetHooks", name: "ChangeSetHooks")
    ChangeSetHooksStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#ChangeSetHooksStatus", name: "ChangeSetHooksStatus")
    ChangeSetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ChangeSetId", name: "ChangeSetId", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^arn:[-a-zA-Z0-9:/]*$"})
    ChangeSetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ChangeSetName", name: "ChangeSetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z][-a-zA-Z0-9]*$"})
    ChangeSetNameOrId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ChangeSetNameOrId", name: "ChangeSetNameOrId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^[a-zA-Z][-a-zA-Z0-9]*|arn:[-a-zA-Z0-9:/]*$"})
    ChangeSetNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ChangeSetNotFoundException", name: "ChangeSetNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "ChangeSetNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ChangeSetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#ChangeSetStatus", name: "ChangeSetStatus")
    ChangeSetStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ChangeSetStatusReason", name: "ChangeSetStatusReason")
    ChangeSetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#ChangeSetSummaries", name: "ChangeSetSummaries")
    ChangeSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ChangeSetSummary", name: "ChangeSetSummary")
    ChangeSetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#ChangeSetType", name: "ChangeSetType")
    ChangeSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#ChangeSource", name: "ChangeSource")
    ChangeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#ChangeType", name: "ChangeType")
    Changes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#Changes", name: "Changes")
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ClientRequestToken", name: "ClientRequestToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9][-a-zA-Z0-9]*$"})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ConcurrencyMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#ConcurrencyMode", name: "ConcurrencyMode")
    ConcurrentResourcesLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ConcurrentResourcesLimitExceededException", name: "ConcurrentResourcesLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "ConcurrentResourcesLimitExceeded", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ConfigurationSchema = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ConfigurationSchema", name: "ConfigurationSchema", traits: {"smithy.api#length" => {"min" => 1, "max" => 60000}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    ConnectionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ConnectionArn", name: "ConnectionArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:.+:.+:[0-9]{12}:.+$"})
    ContinueUpdateRollbackInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ContinueUpdateRollbackInput", name: "ContinueUpdateRollbackInput")
    ContinueUpdateRollbackOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ContinueUpdateRollbackOutput", name: "ContinueUpdateRollbackOutput")
    CreateChangeSetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#CreateChangeSetInput", name: "CreateChangeSetInput")
    CreateChangeSetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#CreateChangeSetOutput", name: "CreateChangeSetOutput")
    CreateGeneratedTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#CreateGeneratedTemplateInput", name: "CreateGeneratedTemplateInput")
    CreateGeneratedTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#CreateGeneratedTemplateOutput", name: "CreateGeneratedTemplateOutput")
    CreateStackInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#CreateStackInput", name: "CreateStackInput")
    CreateStackInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#CreateStackInstancesInput", name: "CreateStackInstancesInput")
    CreateStackInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#CreateStackInstancesOutput", name: "CreateStackInstancesOutput")
    CreateStackOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#CreateStackOutput", name: "CreateStackOutput")
    CreateStackRefactorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#CreateStackRefactorInput", name: "CreateStackRefactorInput")
    CreateStackRefactorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#CreateStackRefactorOutput", name: "CreateStackRefactorOutput")
    CreateStackSetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#CreateStackSetInput", name: "CreateStackSetInput")
    CreateStackSetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#CreateStackSetOutput", name: "CreateStackSetOutput")
    CreatedButModifiedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#CreatedButModifiedException", name: "CreatedButModifiedException", traits: {"aws.protocols#awsQueryError" => {"code" => "CreatedButModifiedException", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreationTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.cloudformation#CreationTime", name: "CreationTime")
    DeactivateOrganizationsAccessInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DeactivateOrganizationsAccessInput", name: "DeactivateOrganizationsAccessInput")
    DeactivateOrganizationsAccessOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DeactivateOrganizationsAccessOutput", name: "DeactivateOrganizationsAccessOutput")
    DeactivateTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DeactivateTypeInput", name: "DeactivateTypeInput")
    DeactivateTypeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DeactivateTypeOutput", name: "DeactivateTypeOutput")
    DeleteChangeSetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DeleteChangeSetInput", name: "DeleteChangeSetInput")
    DeleteChangeSetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DeleteChangeSetOutput", name: "DeleteChangeSetOutput")
    DeleteGeneratedTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DeleteGeneratedTemplateInput", name: "DeleteGeneratedTemplateInput")
    DeleteStackInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DeleteStackInput", name: "DeleteStackInput")
    DeleteStackInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DeleteStackInstancesInput", name: "DeleteStackInstancesInput")
    DeleteStackInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DeleteStackInstancesOutput", name: "DeleteStackInstancesOutput")
    DeleteStackSetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DeleteStackSetInput", name: "DeleteStackSetInput")
    DeleteStackSetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DeleteStackSetOutput", name: "DeleteStackSetOutput")
    DeletionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#DeletionMode", name: "DeletionMode")
    DeletionTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.cloudformation#DeletionTime", name: "DeletionTime")
    DeploymentTargets = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DeploymentTargets", name: "DeploymentTargets")
    DeprecatedStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#DeprecatedStatus", name: "DeprecatedStatus")
    DeregisterTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DeregisterTypeInput", name: "DeregisterTypeInput")
    DeregisterTypeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DeregisterTypeOutput", name: "DeregisterTypeOutput")
    DescribeAccountLimitsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeAccountLimitsInput", name: "DescribeAccountLimitsInput")
    DescribeAccountLimitsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeAccountLimitsOutput", name: "DescribeAccountLimitsOutput")
    DescribeChangeSetHooksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeChangeSetHooksInput", name: "DescribeChangeSetHooksInput")
    DescribeChangeSetHooksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeChangeSetHooksOutput", name: "DescribeChangeSetHooksOutput")
    DescribeChangeSetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeChangeSetInput", name: "DescribeChangeSetInput")
    DescribeChangeSetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeChangeSetOutput", name: "DescribeChangeSetOutput")
    DescribeGeneratedTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeGeneratedTemplateInput", name: "DescribeGeneratedTemplateInput")
    DescribeGeneratedTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeGeneratedTemplateOutput", name: "DescribeGeneratedTemplateOutput")
    DescribeOrganizationsAccessInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeOrganizationsAccessInput", name: "DescribeOrganizationsAccessInput")
    DescribeOrganizationsAccessOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeOrganizationsAccessOutput", name: "DescribeOrganizationsAccessOutput")
    DescribePublisherInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribePublisherInput", name: "DescribePublisherInput")
    DescribePublisherOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribePublisherOutput", name: "DescribePublisherOutput")
    DescribeResourceScanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeResourceScanInput", name: "DescribeResourceScanInput")
    DescribeResourceScanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeResourceScanOutput", name: "DescribeResourceScanOutput")
    DescribeStackDriftDetectionStatusInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeStackDriftDetectionStatusInput", name: "DescribeStackDriftDetectionStatusInput")
    DescribeStackDriftDetectionStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeStackDriftDetectionStatusOutput", name: "DescribeStackDriftDetectionStatusOutput")
    DescribeStackEventsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeStackEventsInput", name: "DescribeStackEventsInput")
    DescribeStackEventsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeStackEventsOutput", name: "DescribeStackEventsOutput")
    DescribeStackInstanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeStackInstanceInput", name: "DescribeStackInstanceInput")
    DescribeStackInstanceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeStackInstanceOutput", name: "DescribeStackInstanceOutput")
    DescribeStackRefactorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeStackRefactorInput", name: "DescribeStackRefactorInput")
    DescribeStackRefactorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeStackRefactorOutput", name: "DescribeStackRefactorOutput")
    DescribeStackResourceDriftsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeStackResourceDriftsInput", name: "DescribeStackResourceDriftsInput")
    DescribeStackResourceDriftsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeStackResourceDriftsOutput", name: "DescribeStackResourceDriftsOutput")
    DescribeStackResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeStackResourceInput", name: "DescribeStackResourceInput")
    DescribeStackResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeStackResourceOutput", name: "DescribeStackResourceOutput")
    DescribeStackResourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeStackResourcesInput", name: "DescribeStackResourcesInput")
    DescribeStackResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeStackResourcesOutput", name: "DescribeStackResourcesOutput")
    DescribeStackSetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeStackSetInput", name: "DescribeStackSetInput")
    DescribeStackSetOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeStackSetOperationInput", name: "DescribeStackSetOperationInput")
    DescribeStackSetOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeStackSetOperationOutput", name: "DescribeStackSetOperationOutput")
    DescribeStackSetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeStackSetOutput", name: "DescribeStackSetOutput")
    DescribeStacksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeStacksInput", name: "DescribeStacksInput")
    DescribeStacksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeStacksOutput", name: "DescribeStacksOutput")
    DescribeTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeTypeInput", name: "DescribeTypeInput")
    DescribeTypeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeTypeOutput", name: "DescribeTypeOutput")
    DescribeTypeRegistrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeTypeRegistrationInput", name: "DescribeTypeRegistrationInput")
    DescribeTypeRegistrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DescribeTypeRegistrationOutput", name: "DescribeTypeRegistrationOutput")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    DetailedStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#DetailedStatus", name: "DetailedStatus")
    DetectStackDriftInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DetectStackDriftInput", name: "DetectStackDriftInput")
    DetectStackDriftOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DetectStackDriftOutput", name: "DetectStackDriftOutput")
    DetectStackResourceDriftInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DetectStackResourceDriftInput", name: "DetectStackResourceDriftInput")
    DetectStackResourceDriftOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DetectStackResourceDriftOutput", name: "DetectStackResourceDriftOutput")
    DetectStackSetDriftInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DetectStackSetDriftInput", name: "DetectStackSetDriftInput")
    DetectStackSetDriftOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#DetectStackSetDriftOutput", name: "DetectStackSetDriftOutput")
    DetectionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#DetectionReason", name: "DetectionReason")
    DifferenceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#DifferenceType", name: "DifferenceType")
    DisableRollback = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudformation#DisableRollback", name: "DisableRollback")
    DriftedStackInstancesCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#DriftedStackInstancesCount", name: "DriftedStackInstancesCount", traits: {"smithy.api#range" => {"min" => 0}})
    EnableStackCreation = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudformation#EnableStackCreation", name: "EnableStackCreation")
    EnableTerminationProtection = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudformation#EnableTerminationProtection", name: "EnableTerminationProtection")
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ErrorCode", name: "ErrorCode", traits: {"smithy.api#length" => {"min" => 3, "max" => 3}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    EstimateTemplateCostInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#EstimateTemplateCostInput", name: "EstimateTemplateCostInput")
    EstimateTemplateCostOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#EstimateTemplateCostOutput", name: "EstimateTemplateCostOutput")
    EvaluationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#EvaluationType", name: "EvaluationType")
    EventId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#EventId", name: "EventId")
    ExecuteChangeSetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ExecuteChangeSetInput", name: "ExecuteChangeSetInput")
    ExecuteChangeSetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ExecuteChangeSetOutput", name: "ExecuteChangeSetOutput")
    ExecuteStackRefactorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ExecuteStackRefactorInput", name: "ExecuteStackRefactorInput")
    ExecutionRoleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ExecutionRoleName", name: "ExecutionRoleName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z_0-9+=,.@-]+$"})
    ExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#ExecutionStatus", name: "ExecutionStatus")
    ExecutionStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ExecutionStatusReason", name: "ExecutionStatusReason")
    Export = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#Export", name: "Export")
    ExportName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ExportName", name: "ExportName")
    ExportValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ExportValue", name: "ExportValue")
    Exports = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#Exports", name: "Exports")
    FailedStackInstancesCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#FailedStackInstancesCount", name: "FailedStackInstancesCount", traits: {"smithy.api#range" => {"min" => 0}})
    FailureToleranceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#FailureToleranceCount", name: "FailureToleranceCount", traits: {"smithy.api#range" => {"min" => 0}})
    FailureTolerancePercentage = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#FailureTolerancePercentage", name: "FailureTolerancePercentage", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    GeneratedTemplateDeletionPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#GeneratedTemplateDeletionPolicy", name: "GeneratedTemplateDeletionPolicy")
    GeneratedTemplateId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#GeneratedTemplateId", name: "GeneratedTemplateId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    GeneratedTemplateName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#GeneratedTemplateName", name: "GeneratedTemplateName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    GeneratedTemplateNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#GeneratedTemplateNotFoundException", name: "GeneratedTemplateNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "GeneratedTemplateNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    GeneratedTemplateResourceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#GeneratedTemplateResourceStatus", name: "GeneratedTemplateResourceStatus")
    GeneratedTemplateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#GeneratedTemplateStatus", name: "GeneratedTemplateStatus")
    GeneratedTemplateUpdateReplacePolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#GeneratedTemplateUpdateReplacePolicy", name: "GeneratedTemplateUpdateReplacePolicy")
    GetGeneratedTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#GetGeneratedTemplateInput", name: "GetGeneratedTemplateInput")
    GetGeneratedTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#GetGeneratedTemplateOutput", name: "GetGeneratedTemplateOutput")
    GetStackPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#GetStackPolicyInput", name: "GetStackPolicyInput")
    GetStackPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#GetStackPolicyOutput", name: "GetStackPolicyOutput")
    GetTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#GetTemplateInput", name: "GetTemplateInput")
    GetTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#GetTemplateOutput", name: "GetTemplateOutput")
    GetTemplateSummaryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#GetTemplateSummaryInput", name: "GetTemplateSummaryInput")
    GetTemplateSummaryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#GetTemplateSummaryOutput", name: "GetTemplateSummaryOutput")
    HandlerErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#HandlerErrorCode", name: "HandlerErrorCode")
    HookFailureMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#HookFailureMode", name: "HookFailureMode")
    HookInvocationCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#HookInvocationCount", name: "HookInvocationCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    HookInvocationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#HookInvocationId", name: "HookInvocationId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    HookInvocationPoint = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#HookInvocationPoint", name: "HookInvocationPoint")
    HookResultId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#HookResultId", name: "HookResultId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^[a-zA-Z][-a-zA-Z0-9]*|arn:[-a-zA-Z0-9:/]*|^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    HookResultNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#HookResultNotFoundException", name: "HookResultNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "HookResultNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    HookResultSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#HookResultSummaries", name: "HookResultSummaries")
    HookResultSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#HookResultSummary", name: "HookResultSummary")
    HookStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#HookStatus", name: "HookStatus")
    HookStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#HookStatusReason", name: "HookStatusReason", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    HookTargetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#HookTargetType", name: "HookTargetType")
    HookTargetTypeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#HookTargetTypeName", name: "HookTargetTypeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9]{2,64}::[a-zA-Z0-9]{2,64}::[a-zA-Z0-9]{2,64}$"})
    HookType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#HookType", name: "HookType", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    HookTypeArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#HookTypeArn", name: "HookTypeArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^arn:aws[A-Za-z0-9-]{0,64}:cloudformation:[A-Za-z0-9-]{1,64}:([0-9]{12})?:type/hook/[A-Za-z0-9-]+/?$"})
    HookTypeConfigurationVersionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#HookTypeConfigurationVersionId", name: "HookTypeConfigurationVersionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9-]+$"})
    HookTypeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#HookTypeName", name: "HookTypeName", traits: {"smithy.api#length" => {"min" => 10, "max" => 196}})
    HookTypeVersionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#HookTypeVersionId", name: "HookTypeVersionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9-]+$"})
    IdentityProvider = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#IdentityProvider", name: "IdentityProvider")
    ImportExistingResources = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudformation#ImportExistingResources", name: "ImportExistingResources")
    ImportStacksToStackSetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ImportStacksToStackSetInput", name: "ImportStacksToStackSetInput")
    ImportStacksToStackSetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ImportStacksToStackSetOutput", name: "ImportStacksToStackSetOutput")
    Imports = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#Imports", name: "Imports")
    InProgressStackInstancesCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#InProgressStackInstancesCount", name: "InProgressStackInstancesCount", traits: {"smithy.api#range" => {"min" => 0}})
    InSyncStackInstancesCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#InSyncStackInstancesCount", name: "InSyncStackInstancesCount", traits: {"smithy.api#range" => {"min" => 0}})
    IncludeNestedStacks = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudformation#IncludeNestedStacks", name: "IncludeNestedStacks")
    IncludePropertyValues = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudformation#IncludePropertyValues", name: "IncludePropertyValues")
    InsufficientCapabilitiesException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#InsufficientCapabilitiesException", name: "InsufficientCapabilitiesException", traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientCapabilitiesException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidChangeSetStatusException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#InvalidChangeSetStatusException", name: "InvalidChangeSetStatusException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidChangeSetStatus", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#InvalidOperationException", name: "InvalidOperationException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidOperationException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidStateTransitionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#InvalidStateTransitionException", name: "InvalidStateTransitionException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidStateTransition", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IsActivated = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudformation#IsActivated", name: "IsActivated")
    IsDefaultConfiguration = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudformation#IsDefaultConfiguration", name: "IsDefaultConfiguration")
    IsDefaultVersion = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudformation#IsDefaultVersion", name: "IsDefaultVersion")
    JazzLogicalResourceIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#JazzLogicalResourceIds", name: "JazzLogicalResourceIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    JazzResourceIdentifierProperties = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudformation#JazzResourceIdentifierProperties", name: "JazzResourceIdentifierProperties")
    JazzResourceIdentifierPropertyKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#JazzResourceIdentifierPropertyKey", name: "JazzResourceIdentifierPropertyKey")
    JazzResourceIdentifierPropertyValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#JazzResourceIdentifierPropertyValue", name: "JazzResourceIdentifierPropertyValue")
    Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#Key", name: "Key")
    LastUpdatedTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.cloudformation#LastUpdatedTime", name: "LastUpdatedTime")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#LimitExceededException", name: "LimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "LimitExceededException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LimitName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#LimitName", name: "LimitName")
    LimitValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#LimitValue", name: "LimitValue")
    ListChangeSetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListChangeSetsInput", name: "ListChangeSetsInput")
    ListChangeSetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListChangeSetsOutput", name: "ListChangeSetsOutput")
    ListExportsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListExportsInput", name: "ListExportsInput")
    ListExportsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListExportsOutput", name: "ListExportsOutput")
    ListGeneratedTemplatesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListGeneratedTemplatesInput", name: "ListGeneratedTemplatesInput")
    ListGeneratedTemplatesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListGeneratedTemplatesOutput", name: "ListGeneratedTemplatesOutput")
    ListHookResultsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListHookResultsInput", name: "ListHookResultsInput")
    ListHookResultsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListHookResultsOutput", name: "ListHookResultsOutput")
    ListHookResultsTargetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#ListHookResultsTargetType", name: "ListHookResultsTargetType")
    ListImportsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListImportsInput", name: "ListImportsInput")
    ListImportsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListImportsOutput", name: "ListImportsOutput")
    ListResourceScanRelatedResourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListResourceScanRelatedResourcesInput", name: "ListResourceScanRelatedResourcesInput")
    ListResourceScanRelatedResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListResourceScanRelatedResourcesOutput", name: "ListResourceScanRelatedResourcesOutput")
    ListResourceScanResourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListResourceScanResourcesInput", name: "ListResourceScanResourcesInput")
    ListResourceScanResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListResourceScanResourcesOutput", name: "ListResourceScanResourcesOutput")
    ListResourceScansInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListResourceScansInput", name: "ListResourceScansInput")
    ListResourceScansOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListResourceScansOutput", name: "ListResourceScansOutput")
    ListStackInstanceResourceDriftsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListStackInstanceResourceDriftsInput", name: "ListStackInstanceResourceDriftsInput")
    ListStackInstanceResourceDriftsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListStackInstanceResourceDriftsOutput", name: "ListStackInstanceResourceDriftsOutput")
    ListStackInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListStackInstancesInput", name: "ListStackInstancesInput")
    ListStackInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListStackInstancesOutput", name: "ListStackInstancesOutput")
    ListStackRefactorActionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListStackRefactorActionsInput", name: "ListStackRefactorActionsInput")
    ListStackRefactorActionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListStackRefactorActionsOutput", name: "ListStackRefactorActionsOutput")
    ListStackRefactorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListStackRefactorsInput", name: "ListStackRefactorsInput")
    ListStackRefactorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListStackRefactorsOutput", name: "ListStackRefactorsOutput")
    ListStackResourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListStackResourcesInput", name: "ListStackResourcesInput")
    ListStackResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListStackResourcesOutput", name: "ListStackResourcesOutput")
    ListStackSetAutoDeploymentTargetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListStackSetAutoDeploymentTargetsInput", name: "ListStackSetAutoDeploymentTargetsInput")
    ListStackSetAutoDeploymentTargetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListStackSetAutoDeploymentTargetsOutput", name: "ListStackSetAutoDeploymentTargetsOutput")
    ListStackSetOperationResultsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListStackSetOperationResultsInput", name: "ListStackSetOperationResultsInput")
    ListStackSetOperationResultsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListStackSetOperationResultsOutput", name: "ListStackSetOperationResultsOutput")
    ListStackSetOperationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListStackSetOperationsInput", name: "ListStackSetOperationsInput")
    ListStackSetOperationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListStackSetOperationsOutput", name: "ListStackSetOperationsOutput")
    ListStackSetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListStackSetsInput", name: "ListStackSetsInput")
    ListStackSetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListStackSetsOutput", name: "ListStackSetsOutput")
    ListStacksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListStacksInput", name: "ListStacksInput")
    ListStacksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListStacksOutput", name: "ListStacksOutput")
    ListTypeRegistrationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListTypeRegistrationsInput", name: "ListTypeRegistrationsInput")
    ListTypeRegistrationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListTypeRegistrationsOutput", name: "ListTypeRegistrationsOutput")
    ListTypeVersionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListTypeVersionsInput", name: "ListTypeVersionsInput")
    ListTypeVersionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListTypeVersionsOutput", name: "ListTypeVersionsOutput")
    ListTypesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListTypesInput", name: "ListTypesInput")
    ListTypesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ListTypesOutput", name: "ListTypesOutput")
    LogGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#LogGroupName", name: "LogGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    LoggingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#LoggingConfig", name: "LoggingConfig")
    LogicalIdHierarchy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#LogicalIdHierarchy", name: "LogicalIdHierarchy")
    LogicalResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#LogicalResourceId", name: "LogicalResourceId")
    LogicalResourceIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#LogicalResourceIds", name: "LogicalResourceIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    MajorVersion = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#MajorVersion", name: "MajorVersion", traits: {"smithy.api#range" => {"min" => 1, "max" => 100000}})
    ManagedByStack = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudformation#ManagedByStack", name: "ManagedByStack")
    ManagedExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ManagedExecution", name: "ManagedExecution")
    ManagedExecutionNullable = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudformation#ManagedExecutionNullable", name: "ManagedExecutionNullable")
    MaxConcurrentCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#MaxConcurrentCount", name: "MaxConcurrentCount", traits: {"smithy.api#range" => {"min" => 1}})
    MaxConcurrentPercentage = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#MaxConcurrentPercentage", name: "MaxConcurrentPercentage", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Metadata = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#Metadata", name: "Metadata")
    ModuleInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ModuleInfo", name: "ModuleInfo")
    MonitoringTimeInMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#MonitoringTimeInMinutes", name: "MonitoringTimeInMinutes", traits: {"smithy.api#range" => {"min" => 0, "max" => 180}})
    NameAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#NameAlreadyExistsException", name: "NameAlreadyExistsException", traits: {"aws.protocols#awsQueryError" => {"code" => "NameAlreadyExistsException", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    NoEcho = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudformation#NoEcho", name: "NoEcho")
    NotificationARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#NotificationARN", name: "NotificationARN")
    NotificationARNs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#NotificationARNs", name: "NotificationARNs", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    NumberOfResources = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#NumberOfResources", name: "NumberOfResources", traits: {"smithy.api#range" => {"min" => 0}})
    OnFailure = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#OnFailure", name: "OnFailure")
    OnStackFailure = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#OnStackFailure", name: "OnStackFailure")
    OperationIdAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#OperationIdAlreadyExistsException", name: "OperationIdAlreadyExistsException", traits: {"aws.protocols#awsQueryError" => {"code" => "OperationIdAlreadyExistsException", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    OperationInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#OperationInProgressException", name: "OperationInProgressException", traits: {"aws.protocols#awsQueryError" => {"code" => "OperationInProgressException", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    OperationNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#OperationNotFoundException", name: "OperationNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "OperationNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OperationResultFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#OperationResultFilter", name: "OperationResultFilter")
    OperationResultFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#OperationResultFilterName", name: "OperationResultFilterName")
    OperationResultFilterValues = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#OperationResultFilterValues", name: "OperationResultFilterValues", traits: {"smithy.api#length" => {"min" => 6, "max" => 9}, "smithy.api#pattern" => "^\\S{6,9}$"})
    OperationResultFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#OperationResultFilters", name: "OperationResultFilters", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    OperationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#OperationStatus", name: "OperationStatus")
    OperationStatusCheckFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#OperationStatusCheckFailedException", name: "OperationStatusCheckFailedException", traits: {"aws.protocols#awsQueryError" => {"code" => "ConditionalCheckFailed", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OptionalSecureUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#OptionalSecureUrl", name: "OptionalSecureUrl", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    OrganizationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#OrganizationStatus", name: "OrganizationStatus")
    OrganizationalUnitId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#OrganizationalUnitId", name: "OrganizationalUnitId", traits: {"smithy.api#pattern" => "^(ou-[a-z0-9]{4,32}-[a-z0-9]{8,32}|r-[a-z0-9]{4,32})$"})
    OrganizationalUnitIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#OrganizationalUnitIdList", name: "OrganizationalUnitIdList")
    Output = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#Output", name: "Output")
    OutputKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#OutputKey", name: "OutputKey")
    OutputValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#OutputValue", name: "OutputValue")
    Outputs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#Outputs", name: "Outputs")
    Parameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#Parameter", name: "Parameter")
    ParameterConstraints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ParameterConstraints", name: "ParameterConstraints")
    ParameterDeclaration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ParameterDeclaration", name: "ParameterDeclaration")
    ParameterDeclarations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#ParameterDeclarations", name: "ParameterDeclarations")
    ParameterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ParameterKey", name: "ParameterKey")
    ParameterType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ParameterType", name: "ParameterType")
    ParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ParameterValue", name: "ParameterValue")
    Parameters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#Parameters", name: "Parameters")
    PercentageCompleted = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.cloudformation#PercentageCompleted", name: "PercentageCompleted")
    PermissionModels = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#PermissionModels", name: "PermissionModels")
    PhysicalResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#PhysicalResourceId", name: "PhysicalResourceId")
    PhysicalResourceIdContext = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#PhysicalResourceIdContext", name: "PhysicalResourceIdContext", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    PhysicalResourceIdContextKeyValuePair = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#PhysicalResourceIdContextKeyValuePair", name: "PhysicalResourceIdContextKeyValuePair")
    PolicyAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#PolicyAction", name: "PolicyAction")
    PrivateTypeArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#PrivateTypeArn", name: "PrivateTypeArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^arn:aws[A-Za-z0-9-]{0,64}:cloudformation:[A-Za-z0-9-]{1,64}:[0-9]{12}:type/.+$"})
    Properties = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#Properties", name: "Properties")
    PropertyDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#PropertyDescription", name: "PropertyDescription")
    PropertyDifference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#PropertyDifference", name: "PropertyDifference")
    PropertyDifferences = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#PropertyDifferences", name: "PropertyDifferences")
    PropertyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#PropertyName", name: "PropertyName")
    PropertyPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#PropertyPath", name: "PropertyPath")
    PropertyValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#PropertyValue", name: "PropertyValue")
    ProvisioningType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#ProvisioningType", name: "ProvisioningType")
    PublicVersionNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#PublicVersionNumber", name: "PublicVersionNumber", traits: {"smithy.api#length" => {"min" => 5}, "smithy.api#pattern" => "^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(.*)$"})
    PublishTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#PublishTypeInput", name: "PublishTypeInput")
    PublishTypeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#PublishTypeOutput", name: "PublishTypeOutput")
    PublisherId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#PublisherId", name: "PublisherId", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}, "smithy.api#pattern" => "^[0-9a-zA-Z]{12,40}$"})
    PublisherName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#PublisherName", name: "PublisherName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    PublisherProfile = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#PublisherProfile", name: "PublisherProfile", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^(http:|https:)+[^\\s]+[\\w]$"})
    PublisherStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#PublisherStatus", name: "PublisherStatus")
    Reason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#Reason", name: "Reason")
    RecordHandlerProgressInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#RecordHandlerProgressInput", name: "RecordHandlerProgressInput")
    RecordHandlerProgressOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#RecordHandlerProgressOutput", name: "RecordHandlerProgressOutput")
    RefreshAllResources = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudformation#RefreshAllResources", name: "RefreshAllResources")
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#Region", name: "Region", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9-]{1,128}$"})
    RegionConcurrencyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#RegionConcurrencyType", name: "RegionConcurrencyType")
    RegionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#RegionList", name: "RegionList")
    RegisterPublisherInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#RegisterPublisherInput", name: "RegisterPublisherInput")
    RegisterPublisherOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#RegisterPublisherOutput", name: "RegisterPublisherOutput")
    RegisterTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#RegisterTypeInput", name: "RegisterTypeInput")
    RegisterTypeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#RegisterTypeOutput", name: "RegisterTypeOutput")
    RegistrationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#RegistrationStatus", name: "RegistrationStatus")
    RegistrationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#RegistrationToken", name: "RegistrationToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9][-a-zA-Z0-9]*$"})
    RegistrationTokenList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#RegistrationTokenList", name: "RegistrationTokenList")
    RegistryType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#RegistryType", name: "RegistryType")
    RelatedResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#RelatedResources", name: "RelatedResources")
    Replacement = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#Replacement", name: "Replacement")
    RequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#RequestToken", name: "RequestToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9][-a-zA-Z0-9]*$"})
    RequiredActivatedType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#RequiredActivatedType", name: "RequiredActivatedType")
    RequiredActivatedTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#RequiredActivatedTypes", name: "RequiredActivatedTypes")
    RequiredProperty = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudformation#RequiredProperty", name: "RequiredProperty")
    RequiresRecreation = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#RequiresRecreation", name: "RequiresRecreation")
    ResourceAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#ResourceAttribute", name: "ResourceAttribute")
    ResourceChange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ResourceChange", name: "ResourceChange")
    ResourceChangeDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ResourceChangeDetail", name: "ResourceChangeDetail")
    ResourceChangeDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#ResourceChangeDetails", name: "ResourceChangeDetails")
    ResourceDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ResourceDefinition", name: "ResourceDefinition")
    ResourceDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#ResourceDefinitions", name: "ResourceDefinitions", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    ResourceDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ResourceDetail", name: "ResourceDetail")
    ResourceDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#ResourceDetails", name: "ResourceDetails", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    ResourceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ResourceIdentifier", name: "ResourceIdentifier")
    ResourceIdentifierProperties = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudformation#ResourceIdentifierProperties", name: "ResourceIdentifierProperties", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ResourceIdentifierPropertyKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ResourceIdentifierPropertyKey", name: "ResourceIdentifierPropertyKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ResourceIdentifierPropertyValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ResourceIdentifierPropertyValue", name: "ResourceIdentifierPropertyValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ResourceIdentifierSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#ResourceIdentifierSummaries", name: "ResourceIdentifierSummaries")
    ResourceIdentifierSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ResourceIdentifierSummary", name: "ResourceIdentifierSummary")
    ResourceIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#ResourceIdentifiers", name: "ResourceIdentifiers")
    ResourceLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ResourceLocation", name: "ResourceLocation")
    ResourceMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ResourceMapping", name: "ResourceMapping")
    ResourceMappings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#ResourceMappings", name: "ResourceMappings")
    ResourceModel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ResourceModel", name: "ResourceModel", traits: {"smithy.api#length" => {"min" => 1, "max" => 16384}})
    ResourceProperties = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ResourceProperties", name: "ResourceProperties")
    ResourcePropertyPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ResourcePropertyPath", name: "ResourcePropertyPath")
    ResourceScanId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ResourceScanId", name: "ResourceScanId")
    ResourceScanInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ResourceScanInProgressException", name: "ResourceScanInProgressException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceScanInProgress", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceScanLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ResourceScanLimitExceededException", name: "ResourceScanLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceScanLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceScanNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ResourceScanNotFoundException", name: "ResourceScanNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceScanNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceScanStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#ResourceScanStatus", name: "ResourceScanStatus")
    ResourceScanStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ResourceScanStatusReason", name: "ResourceScanStatusReason")
    ResourceScanSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#ResourceScanSummaries", name: "ResourceScanSummaries")
    ResourceScanSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ResourceScanSummary", name: "ResourceScanSummary")
    ResourceScannerMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#ResourceScannerMaxResults", name: "ResourceScannerMaxResults")
    ResourceSignalStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#ResourceSignalStatus", name: "ResourceSignalStatus")
    ResourceSignalUniqueId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ResourceSignalUniqueId", name: "ResourceSignalUniqueId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ResourceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#ResourceStatus", name: "ResourceStatus")
    ResourceStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ResourceStatusReason", name: "ResourceStatusReason")
    ResourceTargetDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ResourceTargetDefinition", name: "ResourceTargetDefinition")
    ResourceToImport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ResourceToImport", name: "ResourceToImport")
    ResourceToSkip = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ResourceToSkip", name: "ResourceToSkip", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]+|[a-zA-Z][-a-zA-Z0-9]*\\.[a-zA-Z0-9]+$"})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ResourceType", name: "ResourceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ResourceTypeFilter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ResourceTypeFilter", name: "ResourceTypeFilter", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ResourceTypeFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#ResourceTypeFilters", name: "ResourceTypeFilters", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ResourceTypePrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ResourceTypePrefix", name: "ResourceTypePrefix")
    ResourceTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#ResourceTypes", name: "ResourceTypes")
    ResourcesFailed = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#ResourcesFailed", name: "ResourcesFailed", traits: {"smithy.api#range" => {"min" => 0}})
    ResourcesPending = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#ResourcesPending", name: "ResourcesPending", traits: {"smithy.api#range" => {"min" => 0}})
    ResourcesProcessing = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#ResourcesProcessing", name: "ResourcesProcessing", traits: {"smithy.api#range" => {"min" => 0}})
    ResourcesRead = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#ResourcesRead", name: "ResourcesRead")
    ResourcesScanned = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#ResourcesScanned", name: "ResourcesScanned")
    ResourcesSucceeded = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#ResourcesSucceeded", name: "ResourcesSucceeded", traits: {"smithy.api#range" => {"min" => 0}})
    ResourcesToImport = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#ResourcesToImport", name: "ResourcesToImport", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ResourcesToSkip = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#ResourcesToSkip", name: "ResourcesToSkip")
    RetainExceptOnCreate = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudformation#RetainExceptOnCreate", name: "RetainExceptOnCreate")
    RetainResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#RetainResources", name: "RetainResources")
    RetainStacks = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudformation#RetainStacks", name: "RetainStacks")
    RetainStacksNullable = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudformation#RetainStacksNullable", name: "RetainStacksNullable")
    RetainStacksOnAccountRemovalNullable = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudformation#RetainStacksOnAccountRemovalNullable", name: "RetainStacksOnAccountRemovalNullable")
    RoleARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#RoleARN", name: "RoleARN", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    RoleARN2 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#RoleARN2", name: "RoleARN2", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn:.+:iam::[0-9]{12}:role/.+$"})
    RollbackConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#RollbackConfiguration", name: "RollbackConfiguration")
    RollbackStackInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#RollbackStackInput", name: "RollbackStackInput")
    RollbackStackOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#RollbackStackOutput", name: "RollbackStackOutput")
    RollbackTrigger = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#RollbackTrigger", name: "RollbackTrigger")
    RollbackTriggers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#RollbackTriggers", name: "RollbackTriggers", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    S3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#S3Bucket", name: "S3Bucket", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    S3Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#S3Url", name: "S3Url", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    ScanFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ScanFilter", name: "ScanFilter")
    ScanFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#ScanFilters", name: "ScanFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ScanType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#ScanType", name: "ScanType")
    ScannedResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ScannedResource", name: "ScannedResource")
    ScannedResourceIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ScannedResourceIdentifier", name: "ScannedResourceIdentifier")
    ScannedResourceIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#ScannedResourceIdentifiers", name: "ScannedResourceIdentifiers")
    ScannedResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#ScannedResources", name: "ScannedResources")
    Scope = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#Scope", name: "Scope")
    SetStackPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#SetStackPolicyInput", name: "SetStackPolicyInput")
    SetTypeConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#SetTypeConfigurationInput", name: "SetTypeConfigurationInput")
    SetTypeConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#SetTypeConfigurationOutput", name: "SetTypeConfigurationOutput")
    SetTypeDefaultVersionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#SetTypeDefaultVersionInput", name: "SetTypeDefaultVersionInput")
    SetTypeDefaultVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#SetTypeDefaultVersionOutput", name: "SetTypeDefaultVersionOutput")
    SignalResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#SignalResourceInput", name: "SignalResourceInput")
    Stack = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#Stack", name: "Stack")
    StackDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackDefinition", name: "StackDefinition")
    StackDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#StackDefinitions", name: "StackDefinitions")
    StackDriftDetectionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#StackDriftDetectionId", name: "StackDriftDetectionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}})
    StackDriftDetectionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#StackDriftDetectionStatus", name: "StackDriftDetectionStatus")
    StackDriftDetectionStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#StackDriftDetectionStatusReason", name: "StackDriftDetectionStatusReason")
    StackDriftInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackDriftInformation", name: "StackDriftInformation")
    StackDriftInformationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackDriftInformationSummary", name: "StackDriftInformationSummary")
    StackDriftStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#StackDriftStatus", name: "StackDriftStatus")
    StackEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackEvent", name: "StackEvent")
    StackEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#StackEvents", name: "StackEvents")
    StackId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#StackId", name: "StackId")
    StackIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#StackIdList", name: "StackIdList")
    StackIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#StackIds", name: "StackIds")
    StackIdsUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#StackIdsUrl", name: "StackIdsUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 5120}, "smithy.api#pattern" => "^(s3://|http(s?)://).+$"})
    StackInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackInstance", name: "StackInstance")
    StackInstanceComprehensiveStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackInstanceComprehensiveStatus", name: "StackInstanceComprehensiveStatus")
    StackInstanceDetailedStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#StackInstanceDetailedStatus", name: "StackInstanceDetailedStatus")
    StackInstanceFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackInstanceFilter", name: "StackInstanceFilter")
    StackInstanceFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#StackInstanceFilterName", name: "StackInstanceFilterName")
    StackInstanceFilterValues = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#StackInstanceFilterValues", name: "StackInstanceFilterValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^\\S{1,128}$"})
    StackInstanceFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#StackInstanceFilters", name: "StackInstanceFilters", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    StackInstanceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackInstanceNotFoundException", name: "StackInstanceNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "StackInstanceNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    StackInstanceResourceDriftsSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#StackInstanceResourceDriftsSummaries", name: "StackInstanceResourceDriftsSummaries")
    StackInstanceResourceDriftsSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackInstanceResourceDriftsSummary", name: "StackInstanceResourceDriftsSummary")
    StackInstanceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#StackInstanceStatus", name: "StackInstanceStatus")
    StackInstanceSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#StackInstanceSummaries", name: "StackInstanceSummaries")
    StackInstanceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackInstanceSummary", name: "StackInstanceSummary")
    StackName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#StackName", name: "StackName")
    StackNameOrId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#StackNameOrId", name: "StackNameOrId", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^([a-zA-Z][-a-zA-Z0-9]*)|(arn:\\b(aws|aws-us-gov|aws-cn)\\b:[-a-zA-Z0-9:/._+]*)$"})
    StackNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackNotFoundException", name: "StackNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "StackNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    StackPolicyBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#StackPolicyBody", name: "StackPolicyBody", traits: {"smithy.api#length" => {"min" => 1, "max" => 16384}})
    StackPolicyDuringUpdateBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#StackPolicyDuringUpdateBody", name: "StackPolicyDuringUpdateBody", traits: {"smithy.api#length" => {"min" => 1, "max" => 16384}})
    StackPolicyDuringUpdateURL = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#StackPolicyDuringUpdateURL", name: "StackPolicyDuringUpdateURL", traits: {"smithy.api#length" => {"min" => 1, "max" => 5120}})
    StackPolicyURL = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#StackPolicyURL", name: "StackPolicyURL", traits: {"smithy.api#length" => {"min" => 1, "max" => 5120}})
    StackRefactorAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackRefactorAction", name: "StackRefactorAction")
    StackRefactorActionEntity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#StackRefactorActionEntity", name: "StackRefactorActionEntity")
    StackRefactorActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#StackRefactorActionType", name: "StackRefactorActionType")
    StackRefactorActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#StackRefactorActions", name: "StackRefactorActions")
    StackRefactorDetection = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#StackRefactorDetection", name: "StackRefactorDetection")
    StackRefactorExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#StackRefactorExecutionStatus", name: "StackRefactorExecutionStatus")
    StackRefactorExecutionStatusFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#StackRefactorExecutionStatusFilter", name: "StackRefactorExecutionStatusFilter")
    StackRefactorId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#StackRefactorId", name: "StackRefactorId")
    StackRefactorNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackRefactorNotFoundException", name: "StackRefactorNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "StackRefactorNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    StackRefactorResourceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#StackRefactorResourceIdentifier", name: "StackRefactorResourceIdentifier")
    StackRefactorStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#StackRefactorStatus", name: "StackRefactorStatus")
    StackRefactorStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#StackRefactorStatusReason", name: "StackRefactorStatusReason")
    StackRefactorSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#StackRefactorSummaries", name: "StackRefactorSummaries")
    StackRefactorSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackRefactorSummary", name: "StackRefactorSummary")
    StackRefactorTagResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#StackRefactorTagResources", name: "StackRefactorTagResources")
    StackRefactorUntagResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#StackRefactorUntagResources", name: "StackRefactorUntagResources")
    StackResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackResource", name: "StackResource")
    StackResourceDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackResourceDetail", name: "StackResourceDetail")
    StackResourceDrift = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackResourceDrift", name: "StackResourceDrift")
    StackResourceDriftInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackResourceDriftInformation", name: "StackResourceDriftInformation")
    StackResourceDriftInformationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackResourceDriftInformationSummary", name: "StackResourceDriftInformationSummary")
    StackResourceDriftStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#StackResourceDriftStatus", name: "StackResourceDriftStatus")
    StackResourceDriftStatusFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#StackResourceDriftStatusFilters", name: "StackResourceDriftStatusFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    StackResourceDriftStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#StackResourceDriftStatusReason", name: "StackResourceDriftStatusReason")
    StackResourceDrifts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#StackResourceDrifts", name: "StackResourceDrifts")
    StackResourceSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#StackResourceSummaries", name: "StackResourceSummaries")
    StackResourceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackResourceSummary", name: "StackResourceSummary")
    StackResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#StackResources", name: "StackResources")
    StackSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackSet", name: "StackSet")
    StackSetARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#StackSetARN", name: "StackSetARN")
    StackSetAutoDeploymentTargetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#StackSetAutoDeploymentTargetSummaries", name: "StackSetAutoDeploymentTargetSummaries")
    StackSetAutoDeploymentTargetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackSetAutoDeploymentTargetSummary", name: "StackSetAutoDeploymentTargetSummary")
    StackSetDriftDetectionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackSetDriftDetectionDetails", name: "StackSetDriftDetectionDetails")
    StackSetDriftDetectionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#StackSetDriftDetectionStatus", name: "StackSetDriftDetectionStatus")
    StackSetDriftStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#StackSetDriftStatus", name: "StackSetDriftStatus")
    StackSetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#StackSetId", name: "StackSetId")
    StackSetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#StackSetName", name: "StackSetName")
    StackSetNameOrId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#StackSetNameOrId", name: "StackSetNameOrId", traits: {"smithy.api#pattern" => "^[a-zA-Z][-a-zA-Z0-9]*(?::[a-zA-Z0-9]{8}-[a-zA-Z0-9]{4}-[a-zA-Z0-9]{4}-[a-zA-Z0-9]{4}-[a-zA-Z0-9]{12})?$"})
    StackSetNotEmptyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackSetNotEmptyException", name: "StackSetNotEmptyException", traits: {"aws.protocols#awsQueryError" => {"code" => "StackSetNotEmptyException", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    StackSetNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackSetNotFoundException", name: "StackSetNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "StackSetNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    StackSetOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackSetOperation", name: "StackSetOperation")
    StackSetOperationAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#StackSetOperationAction", name: "StackSetOperationAction")
    StackSetOperationPreferences = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackSetOperationPreferences", name: "StackSetOperationPreferences")
    StackSetOperationResultStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#StackSetOperationResultStatus", name: "StackSetOperationResultStatus")
    StackSetOperationResultSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#StackSetOperationResultSummaries", name: "StackSetOperationResultSummaries")
    StackSetOperationResultSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackSetOperationResultSummary", name: "StackSetOperationResultSummary")
    StackSetOperationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#StackSetOperationStatus", name: "StackSetOperationStatus")
    StackSetOperationStatusDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackSetOperationStatusDetails", name: "StackSetOperationStatusDetails")
    StackSetOperationStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#StackSetOperationStatusReason", name: "StackSetOperationStatusReason")
    StackSetOperationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#StackSetOperationSummaries", name: "StackSetOperationSummaries")
    StackSetOperationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackSetOperationSummary", name: "StackSetOperationSummary")
    StackSetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#StackSetStatus", name: "StackSetStatus")
    StackSetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#StackSetSummaries", name: "StackSetSummaries")
    StackSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackSetSummary", name: "StackSetSummary")
    StackStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#StackStatus", name: "StackStatus")
    StackStatusFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#StackStatusFilter", name: "StackStatusFilter")
    StackStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#StackStatusReason", name: "StackStatusReason")
    StackSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#StackSummaries", name: "StackSummaries")
    StackSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StackSummary", name: "StackSummary")
    Stacks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#Stacks", name: "Stacks")
    StageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#StageList", name: "StageList")
    StaleRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StaleRequestException", name: "StaleRequestException", traits: {"aws.protocols#awsQueryError" => {"code" => "StaleRequestException", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    StartResourceScanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StartResourceScanInput", name: "StartResourceScanInput")
    StartResourceScanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StartResourceScanOutput", name: "StartResourceScanOutput")
    StatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#StatusMessage", name: "StatusMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    StopStackSetOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StopStackSetOperationInput", name: "StopStackSetOperationInput")
    StopStackSetOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#StopStackSetOperationOutput", name: "StopStackSetOperationOutput")
    SupportedMajorVersion = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#SupportedMajorVersion", name: "SupportedMajorVersion", traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    SupportedMajorVersions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#SupportedMajorVersions", name: "SupportedMajorVersions")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TemplateBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#TemplateBody", name: "TemplateBody", traits: {"smithy.api#length" => {"min" => 1}})
    TemplateConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#TemplateConfiguration", name: "TemplateConfiguration")
    TemplateDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#TemplateDescription", name: "TemplateDescription")
    TemplateFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#TemplateFormat", name: "TemplateFormat")
    TemplateParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#TemplateParameter", name: "TemplateParameter")
    TemplateParameters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#TemplateParameters", name: "TemplateParameters")
    TemplateProgress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#TemplateProgress", name: "TemplateProgress")
    TemplateStage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#TemplateStage", name: "TemplateStage")
    TemplateStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#TemplateStatusReason", name: "TemplateStatusReason", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    TemplateSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#TemplateSummaries", name: "TemplateSummaries")
    TemplateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#TemplateSummary", name: "TemplateSummary")
    TemplateSummaryConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#TemplateSummaryConfig", name: "TemplateSummaryConfig")
    TemplateURL = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#TemplateURL", name: "TemplateURL", traits: {"smithy.api#length" => {"min" => 1, "max" => 5120}})
    TestTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#TestTypeInput", name: "TestTypeInput")
    TestTypeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#TestTypeOutput", name: "TestTypeOutput")
    ThirdPartyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#ThirdPartyType", name: "ThirdPartyType")
    ThirdPartyTypeArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#ThirdPartyTypeArn", name: "ThirdPartyTypeArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^arn:aws[A-Za-z0-9-]{0,64}:cloudformation:[A-Za-z0-9-]{1,64}::type/.+/[0-9a-zA-Z]{12,40}/.+$"})
    TimeoutMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#TimeoutMinutes", name: "TimeoutMinutes", traits: {"smithy.api#range" => {"min" => 1}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.cloudformation#Timestamp", name: "Timestamp")
    TokenAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#TokenAlreadyExistsException", name: "TokenAlreadyExistsException", traits: {"aws.protocols#awsQueryError" => {"code" => "TokenAlreadyExistsException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TotalStackInstancesCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#TotalStackInstancesCount", name: "TotalStackInstancesCount", traits: {"smithy.api#range" => {"min" => 0}})
    TotalWarnings = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudformation#TotalWarnings", name: "TotalWarnings", traits: {"smithy.api#range" => {"min" => 0}})
    TransformName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#TransformName", name: "TransformName")
    TransformsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#TransformsList", name: "TransformsList")
    TreatUnrecognizedResourceTypesAsWarnings = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudformation#TreatUnrecognizedResourceTypesAsWarnings", name: "TreatUnrecognizedResourceTypesAsWarnings")
    Type = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#Type", name: "Type")
    TypeArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#TypeArn", name: "TypeArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^arn:aws[A-Za-z0-9-]{0,64}:cloudformation:[A-Za-z0-9-]{1,64}:([0-9]{12})?:type/.+$"})
    TypeConfiguration = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#TypeConfiguration", name: "TypeConfiguration", traits: {"smithy.api#length" => {"min" => 1, "max" => 204800}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    TypeConfigurationAlias = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#TypeConfigurationAlias", name: "TypeConfigurationAlias", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9]{1,256}$"})
    TypeConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#TypeConfigurationArn", name: "TypeConfigurationArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^arn:aws[A-Za-z0-9-]{0,64}:cloudformation:[A-Za-z0-9-]{1,64}:([0-9]{12})?:type-configuration/.+$"})
    TypeConfigurationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#TypeConfigurationDetails", name: "TypeConfigurationDetails")
    TypeConfigurationDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#TypeConfigurationDetailsList", name: "TypeConfigurationDetailsList")
    TypeConfigurationIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#TypeConfigurationIdentifier", name: "TypeConfigurationIdentifier")
    TypeConfigurationIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#TypeConfigurationIdentifiers", name: "TypeConfigurationIdentifiers", traits: {"smithy.api#length" => {"min" => 1}})
    TypeConfigurationNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#TypeConfigurationNotFoundException", name: "TypeConfigurationNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "TypeConfigurationNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    TypeFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#TypeFilters", name: "TypeFilters")
    TypeHierarchy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#TypeHierarchy", name: "TypeHierarchy")
    TypeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#TypeName", name: "TypeName", traits: {"smithy.api#length" => {"min" => 10, "max" => 204}, "smithy.api#pattern" => "^[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}(::MODULE){0,1}$"})
    TypeNamePrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#TypeNamePrefix", name: "TypeNamePrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 204}, "smithy.api#pattern" => "^([A-Za-z0-9]{2,64}::){0,2}([A-Za-z0-9]{2,64}:?){0,1}$"})
    TypeNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#TypeNotFoundException", name: "TypeNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "TypeNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    TypeSchema = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#TypeSchema", name: "TypeSchema", traits: {"smithy.api#length" => {"min" => 1, "max" => 16777216}})
    TypeSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#TypeSummaries", name: "TypeSummaries")
    TypeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#TypeSummary", name: "TypeSummary")
    TypeTestsStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#TypeTestsStatus", name: "TypeTestsStatus")
    TypeTestsStatusDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#TypeTestsStatusDescription", name: "TypeTestsStatusDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    TypeVersionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#TypeVersionId", name: "TypeVersionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9-]+$"})
    TypeVersionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#TypeVersionSummaries", name: "TypeVersionSummaries")
    TypeVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#TypeVersionSummary", name: "TypeVersionSummary")
    UnprocessedTypeConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#UnprocessedTypeConfigurations", name: "UnprocessedTypeConfigurations")
    UpdateGeneratedTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#UpdateGeneratedTemplateInput", name: "UpdateGeneratedTemplateInput")
    UpdateGeneratedTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#UpdateGeneratedTemplateOutput", name: "UpdateGeneratedTemplateOutput")
    UpdateStackInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#UpdateStackInput", name: "UpdateStackInput")
    UpdateStackInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#UpdateStackInstancesInput", name: "UpdateStackInstancesInput")
    UpdateStackInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#UpdateStackInstancesOutput", name: "UpdateStackInstancesOutput")
    UpdateStackOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#UpdateStackOutput", name: "UpdateStackOutput")
    UpdateStackSetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#UpdateStackSetInput", name: "UpdateStackSetInput")
    UpdateStackSetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#UpdateStackSetOutput", name: "UpdateStackSetOutput")
    UpdateTerminationProtectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#UpdateTerminationProtectionInput", name: "UpdateTerminationProtectionInput")
    UpdateTerminationProtectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#UpdateTerminationProtectionOutput", name: "UpdateTerminationProtectionOutput")
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#Url", name: "Url")
    UsePreviousTemplate = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudformation#UsePreviousTemplate", name: "UsePreviousTemplate")
    UsePreviousValue = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudformation#UsePreviousValue", name: "UsePreviousValue")
    ValidateTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ValidateTemplateInput", name: "ValidateTemplateInput")
    ValidateTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#ValidateTemplateOutput", name: "ValidateTemplateOutput")
    Value = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#Value", name: "Value")
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudformation#Version", name: "Version")
    VersionBump = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#VersionBump", name: "VersionBump")
    Visibility = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#Visibility", name: "Visibility")
    WarningDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#WarningDetail", name: "WarningDetail")
    WarningDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#WarningDetails", name: "WarningDetails")
    WarningProperties = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudformation#WarningProperties", name: "WarningProperties")
    WarningProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#WarningProperty", name: "WarningProperty")
    WarningType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudformation#WarningType", name: "WarningType")
    Warnings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudformation#Warnings", name: "Warnings")

    AccountFilterType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    AccountFilterType.add_member(:intersection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERSECTION", traits: {"smithy.api#enumValue" => "INTERSECTION"}))
    AccountFilterType.add_member(:difference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIFFERENCE", traits: {"smithy.api#enumValue" => "DIFFERENCE"}))
    AccountFilterType.add_member(:union, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNION", traits: {"smithy.api#enumValue" => "UNION"}))
    AccountGateResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountGateStatus, name: "Status"))
    AccountGateResult.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountGateStatusReason, name: "StatusReason"))
    AccountGateResult.type = Types::AccountGateResult
    AccountGateStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    AccountGateStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AccountGateStatus.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIPPED", traits: {"smithy.api#enumValue" => "SKIPPED"}))
    AccountLimit.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitName, name: "Name"))
    AccountLimit.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitValue, name: "Value"))
    AccountLimit.type = Types::AccountLimit
    AccountLimitList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountLimit, name: "member"))
    AccountList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Account, name: "member"))
    ActivateOrganizationsAccessInput.type = Types::ActivateOrganizationsAccessInput
    ActivateOrganizationsAccessOutput.type = Types::ActivateOrganizationsAccessOutput
    ActivateTypeInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyType, name: "Type"))
    ActivateTypeInput.add_member(:public_type_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyTypeArn, name: "PublicTypeArn"))
    ActivateTypeInput.add_member(:publisher_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PublisherId, name: "PublisherId"))
    ActivateTypeInput.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeName"))
    ActivateTypeInput.add_member(:type_name_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeNameAlias"))
    ActivateTypeInput.add_member(:auto_update, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoUpdate, name: "AutoUpdate"))
    ActivateTypeInput.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfig, name: "LoggingConfig"))
    ActivateTypeInput.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN2, name: "ExecutionRoleArn"))
    ActivateTypeInput.add_member(:version_bump, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionBump, name: "VersionBump"))
    ActivateTypeInput.add_member(:major_version, ::Smithy::Schema::Shapes::MemberShape.new(target: MajorVersion, name: "MajorVersion"))
    ActivateTypeInput.type = Types::ActivateTypeInput
    ActivateTypeOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateTypeArn, name: "Arn"))
    ActivateTypeOutput.type = Types::ActivateTypeOutput
    AllowedValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedValue, name: "member"))
    AlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    AlreadyExistsException.type = Types::AlreadyExistsException
    AttributeChangeType.add_member(:add, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Add", traits: {"smithy.api#enumValue" => "Add"}))
    AttributeChangeType.add_member(:remove, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Remove", traits: {"smithy.api#enumValue" => "Remove"}))
    AttributeChangeType.add_member(:modify, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Modify", traits: {"smithy.api#enumValue" => "Modify"}))
    AutoDeployment.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoDeploymentNullable, name: "Enabled"))
    AutoDeployment.add_member(:retain_stacks_on_account_removal, ::Smithy::Schema::Shapes::MemberShape.new(target: RetainStacksOnAccountRemovalNullable, name: "RetainStacksOnAccountRemoval"))
    AutoDeployment.type = Types::AutoDeployment
    BatchDescribeTypeConfigurationsError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    BatchDescribeTypeConfigurationsError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    BatchDescribeTypeConfigurationsError.add_member(:type_configuration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeConfigurationIdentifier, name: "TypeConfigurationIdentifier"))
    BatchDescribeTypeConfigurationsError.type = Types::BatchDescribeTypeConfigurationsError
    BatchDescribeTypeConfigurationsErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDescribeTypeConfigurationsError, name: "member"))
    BatchDescribeTypeConfigurationsInput.add_member(:type_configuration_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeConfigurationIdentifiers, name: "TypeConfigurationIdentifiers", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchDescribeTypeConfigurationsInput.type = Types::BatchDescribeTypeConfigurationsInput
    BatchDescribeTypeConfigurationsOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDescribeTypeConfigurationsErrors, name: "Errors"))
    BatchDescribeTypeConfigurationsOutput.add_member(:unprocessed_type_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedTypeConfigurations, name: "UnprocessedTypeConfigurations"))
    BatchDescribeTypeConfigurationsOutput.add_member(:type_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeConfigurationDetailsList, name: "TypeConfigurations"))
    BatchDescribeTypeConfigurationsOutput.type = Types::BatchDescribeTypeConfigurationsOutput
    CFNRegistryException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    CFNRegistryException.type = Types::CFNRegistryException
    CallAs.add_member(:self, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SELF", traits: {"smithy.api#enumValue" => "SELF"}))
    CallAs.add_member(:delegated_admin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELEGATED_ADMIN", traits: {"smithy.api#enumValue" => "DELEGATED_ADMIN"}))
    CancelUpdateStackInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CancelUpdateStackInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken"))
    CancelUpdateStackInput.type = Types::CancelUpdateStackInput
    Capabilities.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Capability, name: "member"))
    Capability.add_member(:capability_iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAPABILITY_IAM", traits: {"smithy.api#enumValue" => "CAPABILITY_IAM"}))
    Capability.add_member(:capability_named_iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAPABILITY_NAMED_IAM", traits: {"smithy.api#enumValue" => "CAPABILITY_NAMED_IAM"}))
    Capability.add_member(:capability_auto_expand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAPABILITY_AUTO_EXPAND", traits: {"smithy.api#enumValue" => "CAPABILITY_AUTO_EXPAND"}))
    Category.add_member(:registered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGISTERED", traits: {"smithy.api#enumValue" => "REGISTERED"}))
    Category.add_member(:activated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVATED", traits: {"smithy.api#enumValue" => "ACTIVATED"}))
    Category.add_member(:third_party, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THIRD_PARTY", traits: {"smithy.api#enumValue" => "THIRD_PARTY"}))
    Category.add_member(:aws_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_TYPES", traits: {"smithy.api#enumValue" => "AWS_TYPES"}))
    Change.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeType, name: "Type"))
    Change.add_member(:hook_invocation_count, ::Smithy::Schema::Shapes::MemberShape.new(target: HookInvocationCount, name: "HookInvocationCount"))
    Change.add_member(:resource_change, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceChange, name: "ResourceChange"))
    Change.type = Types::Change
    ChangeAction.add_member(:add, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Add", traits: {"smithy.api#enumValue" => "Add"}))
    ChangeAction.add_member(:modify, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Modify", traits: {"smithy.api#enumValue" => "Modify"}))
    ChangeAction.add_member(:remove, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Remove", traits: {"smithy.api#enumValue" => "Remove"}))
    ChangeAction.add_member(:import, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Import", traits: {"smithy.api#enumValue" => "Import"}))
    ChangeAction.add_member(:dynamic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Dynamic", traits: {"smithy.api#enumValue" => "Dynamic"}))
    ChangeSetHook.add_member(:invocation_point, ::Smithy::Schema::Shapes::MemberShape.new(target: HookInvocationPoint, name: "InvocationPoint"))
    ChangeSetHook.add_member(:failure_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: HookFailureMode, name: "FailureMode"))
    ChangeSetHook.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: HookTypeName, name: "TypeName"))
    ChangeSetHook.add_member(:type_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HookTypeVersionId, name: "TypeVersionId"))
    ChangeSetHook.add_member(:type_configuration_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HookTypeConfigurationVersionId, name: "TypeConfigurationVersionId"))
    ChangeSetHook.add_member(:target_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetHookTargetDetails, name: "TargetDetails"))
    ChangeSetHook.type = Types::ChangeSetHook
    ChangeSetHookResourceTargetDetails.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "LogicalResourceId"))
    ChangeSetHookResourceTargetDetails.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: HookTargetTypeName, name: "ResourceType"))
    ChangeSetHookResourceTargetDetails.add_member(:resource_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeAction, name: "ResourceAction"))
    ChangeSetHookResourceTargetDetails.type = Types::ChangeSetHookResourceTargetDetails
    ChangeSetHookTargetDetails.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: HookTargetType, name: "TargetType"))
    ChangeSetHookTargetDetails.add_member(:resource_target_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetHookResourceTargetDetails, name: "ResourceTargetDetails"))
    ChangeSetHookTargetDetails.type = Types::ChangeSetHookTargetDetails
    ChangeSetHooks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetHook, name: "member"))
    ChangeSetHooksStatus.add_member(:planning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLANNING", traits: {"smithy.api#enumValue" => "PLANNING"}))
    ChangeSetHooksStatus.add_member(:planned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLANNED", traits: {"smithy.api#enumValue" => "PLANNED"}))
    ChangeSetHooksStatus.add_member(:unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNAVAILABLE", traits: {"smithy.api#enumValue" => "UNAVAILABLE"}))
    ChangeSetNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ChangeSetNotFoundException.type = Types::ChangeSetNotFoundException
    ChangeSetStatus.add_member(:create_pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_PENDING", traits: {"smithy.api#enumValue" => "CREATE_PENDING"}))
    ChangeSetStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    ChangeSetStatus.add_member(:create_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_COMPLETE", traits: {"smithy.api#enumValue" => "CREATE_COMPLETE"}))
    ChangeSetStatus.add_member(:delete_pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_PENDING", traits: {"smithy.api#enumValue" => "DELETE_PENDING"}))
    ChangeSetStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    ChangeSetStatus.add_member(:delete_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_COMPLETE", traits: {"smithy.api#enumValue" => "DELETE_COMPLETE"}))
    ChangeSetStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    ChangeSetStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ChangeSetSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetSummary, name: "member"))
    ChangeSetSummary.add_member(:stack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "StackId"))
    ChangeSetSummary.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "StackName"))
    ChangeSetSummary.add_member(:change_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetId, name: "ChangeSetId"))
    ChangeSetSummary.add_member(:change_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetName, name: "ChangeSetName"))
    ChangeSetSummary.add_member(:execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStatus, name: "ExecutionStatus"))
    ChangeSetSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetStatus, name: "Status"))
    ChangeSetSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetStatusReason, name: "StatusReason"))
    ChangeSetSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, name: "CreationTime"))
    ChangeSetSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    ChangeSetSummary.add_member(:include_nested_stacks, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeNestedStacks, name: "IncludeNestedStacks"))
    ChangeSetSummary.add_member(:parent_change_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetId, name: "ParentChangeSetId"))
    ChangeSetSummary.add_member(:root_change_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetId, name: "RootChangeSetId"))
    ChangeSetSummary.add_member(:import_existing_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportExistingResources, name: "ImportExistingResources"))
    ChangeSetSummary.type = Types::ChangeSetSummary
    ChangeSetType.add_member(:create, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE", traits: {"smithy.api#enumValue" => "CREATE"}))
    ChangeSetType.add_member(:update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE", traits: {"smithy.api#enumValue" => "UPDATE"}))
    ChangeSetType.add_member(:import, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORT", traits: {"smithy.api#enumValue" => "IMPORT"}))
    ChangeSource.add_member(:resource_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceReference", traits: {"smithy.api#enumValue" => "ResourceReference"}))
    ChangeSource.add_member(:parameter_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ParameterReference", traits: {"smithy.api#enumValue" => "ParameterReference"}))
    ChangeSource.add_member(:resource_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceAttribute", traits: {"smithy.api#enumValue" => "ResourceAttribute"}))
    ChangeSource.add_member(:direct_modification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DirectModification", traits: {"smithy.api#enumValue" => "DirectModification"}))
    ChangeSource.add_member(:automatic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Automatic", traits: {"smithy.api#enumValue" => "Automatic"}))
    ChangeType.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Resource", traits: {"smithy.api#enumValue" => "Resource"}))
    Changes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Change, name: "member"))
    ConcurrencyMode.add_member(:strict_failure_tolerance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRICT_FAILURE_TOLERANCE", traits: {"smithy.api#enumValue" => "STRICT_FAILURE_TOLERANCE"}))
    ConcurrencyMode.add_member(:soft_failure_tolerance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOFT_FAILURE_TOLERANCE", traits: {"smithy.api#enumValue" => "SOFT_FAILURE_TOLERANCE"}))
    ConcurrentResourcesLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ConcurrentResourcesLimitExceededException.type = Types::ConcurrentResourcesLimitExceededException
    ContinueUpdateRollbackInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackNameOrId, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ContinueUpdateRollbackInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    ContinueUpdateRollbackInput.add_member(:resources_to_skip, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcesToSkip, name: "ResourcesToSkip"))
    ContinueUpdateRollbackInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken"))
    ContinueUpdateRollbackInput.type = Types::ContinueUpdateRollbackInput
    ContinueUpdateRollbackOutput.type = Types::ContinueUpdateRollbackOutput
    CreateChangeSetInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackNameOrId, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateChangeSetInput.add_member(:template_body, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateBody, name: "TemplateBody"))
    CreateChangeSetInput.add_member(:template_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateURL, name: "TemplateURL"))
    CreateChangeSetInput.add_member(:use_previous_template, ::Smithy::Schema::Shapes::MemberShape.new(target: UsePreviousTemplate, name: "UsePreviousTemplate"))
    CreateChangeSetInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "Parameters"))
    CreateChangeSetInput.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: Capabilities, name: "Capabilities"))
    CreateChangeSetInput.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypes, name: "ResourceTypes"))
    CreateChangeSetInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    CreateChangeSetInput.add_member(:rollback_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RollbackConfiguration, name: "RollbackConfiguration"))
    CreateChangeSetInput.add_member(:notification_ar_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationARNs, name: "NotificationARNs"))
    CreateChangeSetInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateChangeSetInput.add_member(:change_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetName, name: "ChangeSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateChangeSetInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken"))
    CreateChangeSetInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateChangeSetInput.add_member(:change_set_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetType, name: "ChangeSetType"))
    CreateChangeSetInput.add_member(:resources_to_import, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcesToImport, name: "ResourcesToImport"))
    CreateChangeSetInput.add_member(:include_nested_stacks, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeNestedStacks, name: "IncludeNestedStacks"))
    CreateChangeSetInput.add_member(:on_stack_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: OnStackFailure, name: "OnStackFailure"))
    CreateChangeSetInput.add_member(:import_existing_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportExistingResources, name: "ImportExistingResources"))
    CreateChangeSetInput.type = Types::CreateChangeSetInput
    CreateChangeSetOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetId, name: "Id"))
    CreateChangeSetOutput.add_member(:stack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "StackId"))
    CreateChangeSetOutput.type = Types::CreateChangeSetOutput
    CreateGeneratedTemplateInput.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDefinitions, name: "Resources"))
    CreateGeneratedTemplateInput.add_member(:generated_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedTemplateName, name: "GeneratedTemplateName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateGeneratedTemplateInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "StackName"))
    CreateGeneratedTemplateInput.add_member(:template_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateConfiguration, name: "TemplateConfiguration"))
    CreateGeneratedTemplateInput.type = Types::CreateGeneratedTemplateInput
    CreateGeneratedTemplateOutput.add_member(:generated_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedTemplateId, name: "GeneratedTemplateId"))
    CreateGeneratedTemplateOutput.type = Types::CreateGeneratedTemplateOutput
    CreateStackInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStackInput.add_member(:template_body, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateBody, name: "TemplateBody"))
    CreateStackInput.add_member(:template_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateURL, name: "TemplateURL"))
    CreateStackInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "Parameters"))
    CreateStackInput.add_member(:disable_rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: DisableRollback, name: "DisableRollback"))
    CreateStackInput.add_member(:rollback_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RollbackConfiguration, name: "RollbackConfiguration"))
    CreateStackInput.add_member(:timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeoutMinutes, name: "TimeoutInMinutes"))
    CreateStackInput.add_member(:notification_ar_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationARNs, name: "NotificationARNs"))
    CreateStackInput.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: Capabilities, name: "Capabilities"))
    CreateStackInput.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypes, name: "ResourceTypes"))
    CreateStackInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    CreateStackInput.add_member(:on_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: OnFailure, name: "OnFailure"))
    CreateStackInput.add_member(:stack_policy_body, ::Smithy::Schema::Shapes::MemberShape.new(target: StackPolicyBody, name: "StackPolicyBody"))
    CreateStackInput.add_member(:stack_policy_url, ::Smithy::Schema::Shapes::MemberShape.new(target: StackPolicyURL, name: "StackPolicyURL"))
    CreateStackInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateStackInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken"))
    CreateStackInput.add_member(:enable_termination_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableTerminationProtection, name: "EnableTerminationProtection"))
    CreateStackInput.add_member(:retain_except_on_create, ::Smithy::Schema::Shapes::MemberShape.new(target: RetainExceptOnCreate, name: "RetainExceptOnCreate"))
    CreateStackInput.type = Types::CreateStackInput
    CreateStackInstancesInput.add_member(:stack_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetName, name: "StackSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStackInstancesInput.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountList, name: "Accounts"))
    CreateStackInstancesInput.add_member(:deployment_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentTargets, name: "DeploymentTargets"))
    CreateStackInstancesInput.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "Regions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStackInstancesInput.add_member(:parameter_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "ParameterOverrides"))
    CreateStackInstancesInput.add_member(:operation_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetOperationPreferences, name: "OperationPreferences"))
    CreateStackInstancesInput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "OperationId", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateStackInstancesInput.add_member(:call_as, ::Smithy::Schema::Shapes::MemberShape.new(target: CallAs, name: "CallAs"))
    CreateStackInstancesInput.type = Types::CreateStackInstancesInput
    CreateStackInstancesOutput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "OperationId"))
    CreateStackInstancesOutput.type = Types::CreateStackInstancesOutput
    CreateStackOutput.add_member(:stack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "StackId"))
    CreateStackOutput.type = Types::CreateStackOutput
    CreateStackRefactorInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateStackRefactorInput.add_member(:enable_stack_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableStackCreation, name: "EnableStackCreation"))
    CreateStackRefactorInput.add_member(:resource_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceMappings, name: "ResourceMappings"))
    CreateStackRefactorInput.add_member(:stack_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: StackDefinitions, name: "StackDefinitions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStackRefactorInput.type = Types::CreateStackRefactorInput
    CreateStackRefactorOutput.add_member(:stack_refactor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackRefactorId, name: "StackRefactorId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStackRefactorOutput.type = Types::CreateStackRefactorOutput
    CreateStackSetInput.add_member(:stack_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetName, name: "StackSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStackSetInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateStackSetInput.add_member(:template_body, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateBody, name: "TemplateBody"))
    CreateStackSetInput.add_member(:template_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateURL, name: "TemplateURL"))
    CreateStackSetInput.add_member(:stack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "StackId"))
    CreateStackSetInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "Parameters"))
    CreateStackSetInput.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: Capabilities, name: "Capabilities"))
    CreateStackSetInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateStackSetInput.add_member(:administration_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "AdministrationRoleARN"))
    CreateStackSetInput.add_member(:execution_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionRoleName, name: "ExecutionRoleName"))
    CreateStackSetInput.add_member(:permission_model, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionModels, name: "PermissionModel"))
    CreateStackSetInput.add_member(:auto_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoDeployment, name: "AutoDeployment"))
    CreateStackSetInput.add_member(:call_as, ::Smithy::Schema::Shapes::MemberShape.new(target: CallAs, name: "CallAs"))
    CreateStackSetInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateStackSetInput.add_member(:managed_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedExecution, name: "ManagedExecution"))
    CreateStackSetInput.type = Types::CreateStackSetInput
    CreateStackSetOutput.add_member(:stack_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetId, name: "StackSetId"))
    CreateStackSetOutput.type = Types::CreateStackSetOutput
    CreatedButModifiedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    CreatedButModifiedException.type = Types::CreatedButModifiedException
    DeactivateOrganizationsAccessInput.type = Types::DeactivateOrganizationsAccessInput
    DeactivateOrganizationsAccessOutput.type = Types::DeactivateOrganizationsAccessOutput
    DeactivateTypeInput.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeName"))
    DeactivateTypeInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyType, name: "Type"))
    DeactivateTypeInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateTypeArn, name: "Arn"))
    DeactivateTypeInput.type = Types::DeactivateTypeInput
    DeactivateTypeOutput.type = Types::DeactivateTypeOutput
    DeleteChangeSetInput.add_member(:change_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetNameOrId, name: "ChangeSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteChangeSetInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackNameOrId, name: "StackName"))
    DeleteChangeSetInput.type = Types::DeleteChangeSetInput
    DeleteChangeSetOutput.type = Types::DeleteChangeSetOutput
    DeleteGeneratedTemplateInput.add_member(:generated_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedTemplateName, name: "GeneratedTemplateName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteGeneratedTemplateInput.type = Types::DeleteGeneratedTemplateInput
    DeleteStackInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteStackInput.add_member(:retain_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: RetainResources, name: "RetainResources"))
    DeleteStackInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    DeleteStackInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken"))
    DeleteStackInput.add_member(:deletion_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionMode, name: "DeletionMode"))
    DeleteStackInput.type = Types::DeleteStackInput
    DeleteStackInstancesInput.add_member(:stack_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetName, name: "StackSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteStackInstancesInput.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountList, name: "Accounts"))
    DeleteStackInstancesInput.add_member(:deployment_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentTargets, name: "DeploymentTargets"))
    DeleteStackInstancesInput.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "Regions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteStackInstancesInput.add_member(:operation_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetOperationPreferences, name: "OperationPreferences"))
    DeleteStackInstancesInput.add_member(:retain_stacks, ::Smithy::Schema::Shapes::MemberShape.new(target: RetainStacks, name: "RetainStacks", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteStackInstancesInput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "OperationId", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteStackInstancesInput.add_member(:call_as, ::Smithy::Schema::Shapes::MemberShape.new(target: CallAs, name: "CallAs"))
    DeleteStackInstancesInput.type = Types::DeleteStackInstancesInput
    DeleteStackInstancesOutput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "OperationId"))
    DeleteStackInstancesOutput.type = Types::DeleteStackInstancesOutput
    DeleteStackSetInput.add_member(:stack_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetName, name: "StackSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteStackSetInput.add_member(:call_as, ::Smithy::Schema::Shapes::MemberShape.new(target: CallAs, name: "CallAs"))
    DeleteStackSetInput.type = Types::DeleteStackSetInput
    DeleteStackSetOutput.type = Types::DeleteStackSetOutput
    DeletionMode.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    DeletionMode.add_member(:force_delete_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FORCE_DELETE_STACK", traits: {"smithy.api#enumValue" => "FORCE_DELETE_STACK"}))
    DeploymentTargets.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountList, name: "Accounts"))
    DeploymentTargets.add_member(:accounts_url, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountsUrl, name: "AccountsUrl"))
    DeploymentTargets.add_member(:organizational_unit_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitIdList, name: "OrganizationalUnitIds"))
    DeploymentTargets.add_member(:account_filter_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountFilterType, name: "AccountFilterType"))
    DeploymentTargets.type = Types::DeploymentTargets
    DeprecatedStatus.add_member(:live, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIVE", traits: {"smithy.api#enumValue" => "LIVE"}))
    DeprecatedStatus.add_member(:deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPRECATED", traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    DeregisterTypeInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateTypeArn, name: "Arn"))
    DeregisterTypeInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryType, name: "Type"))
    DeregisterTypeInput.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeName"))
    DeregisterTypeInput.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeVersionId, name: "VersionId"))
    DeregisterTypeInput.type = Types::DeregisterTypeInput
    DeregisterTypeOutput.type = Types::DeregisterTypeOutput
    DescribeAccountLimitsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAccountLimitsInput.type = Types::DescribeAccountLimitsInput
    DescribeAccountLimitsOutput.add_member(:account_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountLimitList, name: "AccountLimits"))
    DescribeAccountLimitsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAccountLimitsOutput.type = Types::DescribeAccountLimitsOutput
    DescribeChangeSetHooksInput.add_member(:change_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetNameOrId, name: "ChangeSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeChangeSetHooksInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackNameOrId, name: "StackName"))
    DescribeChangeSetHooksInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeChangeSetHooksInput.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "LogicalResourceId"))
    DescribeChangeSetHooksInput.type = Types::DescribeChangeSetHooksInput
    DescribeChangeSetHooksOutput.add_member(:change_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetId, name: "ChangeSetId"))
    DescribeChangeSetHooksOutput.add_member(:change_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetName, name: "ChangeSetName"))
    DescribeChangeSetHooksOutput.add_member(:hooks, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetHooks, name: "Hooks"))
    DescribeChangeSetHooksOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetHooksStatus, name: "Status"))
    DescribeChangeSetHooksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeChangeSetHooksOutput.add_member(:stack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "StackId"))
    DescribeChangeSetHooksOutput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "StackName"))
    DescribeChangeSetHooksOutput.type = Types::DescribeChangeSetHooksOutput
    DescribeChangeSetInput.add_member(:change_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetNameOrId, name: "ChangeSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeChangeSetInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackNameOrId, name: "StackName"))
    DescribeChangeSetInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeChangeSetInput.add_member(:include_property_values, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludePropertyValues, name: "IncludePropertyValues"))
    DescribeChangeSetInput.type = Types::DescribeChangeSetInput
    DescribeChangeSetOutput.add_member(:change_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetName, name: "ChangeSetName"))
    DescribeChangeSetOutput.add_member(:change_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetId, name: "ChangeSetId"))
    DescribeChangeSetOutput.add_member(:stack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "StackId"))
    DescribeChangeSetOutput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "StackName"))
    DescribeChangeSetOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DescribeChangeSetOutput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "Parameters"))
    DescribeChangeSetOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, name: "CreationTime"))
    DescribeChangeSetOutput.add_member(:execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStatus, name: "ExecutionStatus"))
    DescribeChangeSetOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetStatus, name: "Status"))
    DescribeChangeSetOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetStatusReason, name: "StatusReason"))
    DescribeChangeSetOutput.add_member(:notification_ar_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationARNs, name: "NotificationARNs"))
    DescribeChangeSetOutput.add_member(:rollback_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RollbackConfiguration, name: "RollbackConfiguration"))
    DescribeChangeSetOutput.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: Capabilities, name: "Capabilities"))
    DescribeChangeSetOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    DescribeChangeSetOutput.add_member(:changes, ::Smithy::Schema::Shapes::MemberShape.new(target: Changes, name: "Changes"))
    DescribeChangeSetOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeChangeSetOutput.add_member(:include_nested_stacks, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeNestedStacks, name: "IncludeNestedStacks"))
    DescribeChangeSetOutput.add_member(:parent_change_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetId, name: "ParentChangeSetId"))
    DescribeChangeSetOutput.add_member(:root_change_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetId, name: "RootChangeSetId"))
    DescribeChangeSetOutput.add_member(:on_stack_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: OnStackFailure, name: "OnStackFailure"))
    DescribeChangeSetOutput.add_member(:import_existing_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportExistingResources, name: "ImportExistingResources"))
    DescribeChangeSetOutput.type = Types::DescribeChangeSetOutput
    DescribeGeneratedTemplateInput.add_member(:generated_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedTemplateName, name: "GeneratedTemplateName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeGeneratedTemplateInput.type = Types::DescribeGeneratedTemplateInput
    DescribeGeneratedTemplateOutput.add_member(:generated_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedTemplateId, name: "GeneratedTemplateId"))
    DescribeGeneratedTemplateOutput.add_member(:generated_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedTemplateName, name: "GeneratedTemplateName"))
    DescribeGeneratedTemplateOutput.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDetails, name: "Resources"))
    DescribeGeneratedTemplateOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedTemplateStatus, name: "Status"))
    DescribeGeneratedTemplateOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateStatusReason, name: "StatusReason"))
    DescribeGeneratedTemplateOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, name: "CreationTime"))
    DescribeGeneratedTemplateOutput.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedTime, name: "LastUpdatedTime"))
    DescribeGeneratedTemplateOutput.add_member(:progress, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateProgress, name: "Progress"))
    DescribeGeneratedTemplateOutput.add_member(:stack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "StackId"))
    DescribeGeneratedTemplateOutput.add_member(:template_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateConfiguration, name: "TemplateConfiguration"))
    DescribeGeneratedTemplateOutput.add_member(:total_warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: TotalWarnings, name: "TotalWarnings"))
    DescribeGeneratedTemplateOutput.type = Types::DescribeGeneratedTemplateOutput
    DescribeOrganizationsAccessInput.add_member(:call_as, ::Smithy::Schema::Shapes::MemberShape.new(target: CallAs, name: "CallAs"))
    DescribeOrganizationsAccessInput.type = Types::DescribeOrganizationsAccessInput
    DescribeOrganizationsAccessOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationStatus, name: "Status"))
    DescribeOrganizationsAccessOutput.type = Types::DescribeOrganizationsAccessOutput
    DescribePublisherInput.add_member(:publisher_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PublisherId, name: "PublisherId"))
    DescribePublisherInput.type = Types::DescribePublisherInput
    DescribePublisherOutput.add_member(:publisher_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PublisherId, name: "PublisherId"))
    DescribePublisherOutput.add_member(:publisher_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PublisherStatus, name: "PublisherStatus"))
    DescribePublisherOutput.add_member(:identity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProvider, name: "IdentityProvider"))
    DescribePublisherOutput.add_member(:publisher_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: PublisherProfile, name: "PublisherProfile"))
    DescribePublisherOutput.type = Types::DescribePublisherOutput
    DescribeResourceScanInput.add_member(:resource_scan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceScanId, name: "ResourceScanId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeResourceScanInput.type = Types::DescribeResourceScanInput
    DescribeResourceScanOutput.add_member(:resource_scan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceScanId, name: "ResourceScanId"))
    DescribeResourceScanOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceScanStatus, name: "Status"))
    DescribeResourceScanOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceScanStatusReason, name: "StatusReason"))
    DescribeResourceScanOutput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime"))
    DescribeResourceScanOutput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    DescribeResourceScanOutput.add_member(:percentage_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: PercentageCompleted, name: "PercentageCompleted"))
    DescribeResourceScanOutput.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypes, name: "ResourceTypes"))
    DescribeResourceScanOutput.add_member(:resources_scanned, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcesScanned, name: "ResourcesScanned"))
    DescribeResourceScanOutput.add_member(:resources_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcesRead, name: "ResourcesRead"))
    DescribeResourceScanOutput.add_member(:scan_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanFilters, name: "ScanFilters"))
    DescribeResourceScanOutput.type = Types::DescribeResourceScanOutput
    DescribeStackDriftDetectionStatusInput.add_member(:stack_drift_detection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackDriftDetectionId, name: "StackDriftDetectionId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeStackDriftDetectionStatusInput.type = Types::DescribeStackDriftDetectionStatusInput
    DescribeStackDriftDetectionStatusOutput.add_member(:stack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "StackId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeStackDriftDetectionStatusOutput.add_member(:stack_drift_detection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackDriftDetectionId, name: "StackDriftDetectionId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeStackDriftDetectionStatusOutput.add_member(:stack_drift_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackDriftStatus, name: "StackDriftStatus"))
    DescribeStackDriftDetectionStatusOutput.add_member(:detection_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackDriftDetectionStatus, name: "DetectionStatus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeStackDriftDetectionStatusOutput.add_member(:detection_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StackDriftDetectionStatusReason, name: "DetectionStatusReason"))
    DescribeStackDriftDetectionStatusOutput.add_member(:drifted_stack_resource_count, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "DriftedStackResourceCount"))
    DescribeStackDriftDetectionStatusOutput.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeStackDriftDetectionStatusOutput.type = Types::DescribeStackDriftDetectionStatusOutput
    DescribeStackEventsInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "StackName"))
    DescribeStackEventsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeStackEventsInput.type = Types::DescribeStackEventsInput
    DescribeStackEventsOutput.add_member(:stack_events, ::Smithy::Schema::Shapes::MemberShape.new(target: StackEvents, name: "StackEvents"))
    DescribeStackEventsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeStackEventsOutput.type = Types::DescribeStackEventsOutput
    DescribeStackInstanceInput.add_member(:stack_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetName, name: "StackSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeStackInstanceInput.add_member(:stack_instance_account, ::Smithy::Schema::Shapes::MemberShape.new(target: Account, name: "StackInstanceAccount", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeStackInstanceInput.add_member(:stack_instance_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "StackInstanceRegion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeStackInstanceInput.add_member(:call_as, ::Smithy::Schema::Shapes::MemberShape.new(target: CallAs, name: "CallAs"))
    DescribeStackInstanceInput.type = Types::DescribeStackInstanceInput
    DescribeStackInstanceOutput.add_member(:stack_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: StackInstance, name: "StackInstance"))
    DescribeStackInstanceOutput.type = Types::DescribeStackInstanceOutput
    DescribeStackRefactorInput.add_member(:stack_refactor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackRefactorId, name: "StackRefactorId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeStackRefactorInput.type = Types::DescribeStackRefactorInput
    DescribeStackRefactorOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DescribeStackRefactorOutput.add_member(:stack_refactor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackRefactorId, name: "StackRefactorId"))
    DescribeStackRefactorOutput.add_member(:stack_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StackIds, name: "StackIds"))
    DescribeStackRefactorOutput.add_member(:execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackRefactorExecutionStatus, name: "ExecutionStatus"))
    DescribeStackRefactorOutput.add_member(:execution_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStatusReason, name: "ExecutionStatusReason"))
    DescribeStackRefactorOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackRefactorStatus, name: "Status"))
    DescribeStackRefactorOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StackRefactorStatusReason, name: "StatusReason"))
    DescribeStackRefactorOutput.type = Types::DescribeStackRefactorOutput
    DescribeStackResourceDriftsInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackNameOrId, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeStackResourceDriftsInput.add_member(:stack_resource_drift_status_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: StackResourceDriftStatusFilters, name: "StackResourceDriftStatusFilters"))
    DescribeStackResourceDriftsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeStackResourceDriftsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedMaxResults, name: "MaxResults"))
    DescribeStackResourceDriftsInput.type = Types::DescribeStackResourceDriftsInput
    DescribeStackResourceDriftsOutput.add_member(:stack_resource_drifts, ::Smithy::Schema::Shapes::MemberShape.new(target: StackResourceDrifts, name: "StackResourceDrifts", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeStackResourceDriftsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeStackResourceDriftsOutput.type = Types::DescribeStackResourceDriftsOutput
    DescribeStackResourceInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeStackResourceInput.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "LogicalResourceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeStackResourceInput.type = Types::DescribeStackResourceInput
    DescribeStackResourceOutput.add_member(:stack_resource_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: StackResourceDetail, name: "StackResourceDetail"))
    DescribeStackResourceOutput.type = Types::DescribeStackResourceOutput
    DescribeStackResourcesInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "StackName"))
    DescribeStackResourcesInput.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "LogicalResourceId"))
    DescribeStackResourcesInput.add_member(:physical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalResourceId, name: "PhysicalResourceId"))
    DescribeStackResourcesInput.type = Types::DescribeStackResourcesInput
    DescribeStackResourcesOutput.add_member(:stack_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: StackResources, name: "StackResources"))
    DescribeStackResourcesOutput.type = Types::DescribeStackResourcesOutput
    DescribeStackSetInput.add_member(:stack_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetName, name: "StackSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeStackSetInput.add_member(:call_as, ::Smithy::Schema::Shapes::MemberShape.new(target: CallAs, name: "CallAs"))
    DescribeStackSetInput.type = Types::DescribeStackSetInput
    DescribeStackSetOperationInput.add_member(:stack_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetName, name: "StackSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeStackSetOperationInput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "OperationId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeStackSetOperationInput.add_member(:call_as, ::Smithy::Schema::Shapes::MemberShape.new(target: CallAs, name: "CallAs"))
    DescribeStackSetOperationInput.type = Types::DescribeStackSetOperationInput
    DescribeStackSetOperationOutput.add_member(:stack_set_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetOperation, name: "StackSetOperation"))
    DescribeStackSetOperationOutput.type = Types::DescribeStackSetOperationOutput
    DescribeStackSetOutput.add_member(:stack_set, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSet, name: "StackSet"))
    DescribeStackSetOutput.type = Types::DescribeStackSetOutput
    DescribeStacksInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "StackName"))
    DescribeStacksInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeStacksInput.type = Types::DescribeStacksInput
    DescribeStacksOutput.add_member(:stacks, ::Smithy::Schema::Shapes::MemberShape.new(target: Stacks, name: "Stacks"))
    DescribeStacksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeStacksOutput.type = Types::DescribeStacksOutput
    DescribeTypeInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryType, name: "Type"))
    DescribeTypeInput.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeName"))
    DescribeTypeInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeArn, name: "Arn"))
    DescribeTypeInput.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeVersionId, name: "VersionId"))
    DescribeTypeInput.add_member(:publisher_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PublisherId, name: "PublisherId"))
    DescribeTypeInput.add_member(:public_version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicVersionNumber, name: "PublicVersionNumber"))
    DescribeTypeInput.type = Types::DescribeTypeInput
    DescribeTypeOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeArn, name: "Arn"))
    DescribeTypeOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryType, name: "Type"))
    DescribeTypeOutput.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeName"))
    DescribeTypeOutput.add_member(:default_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeVersionId, name: "DefaultVersionId"))
    DescribeTypeOutput.add_member(:is_default_version, ::Smithy::Schema::Shapes::MemberShape.new(target: IsDefaultVersion, name: "IsDefaultVersion"))
    DescribeTypeOutput.add_member(:type_tests_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeTestsStatus, name: "TypeTestsStatus"))
    DescribeTypeOutput.add_member(:type_tests_status_description, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeTestsStatusDescription, name: "TypeTestsStatusDescription"))
    DescribeTypeOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DescribeTypeOutput.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeSchema, name: "Schema"))
    DescribeTypeOutput.add_member(:provisioning_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningType, name: "ProvisioningType"))
    DescribeTypeOutput.add_member(:deprecated_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeprecatedStatus, name: "DeprecatedStatus"))
    DescribeTypeOutput.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfig, name: "LoggingConfig"))
    DescribeTypeOutput.add_member(:required_activated_types, ::Smithy::Schema::Shapes::MemberShape.new(target: RequiredActivatedTypes, name: "RequiredActivatedTypes"))
    DescribeTypeOutput.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN2, name: "ExecutionRoleArn"))
    DescribeTypeOutput.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: Visibility, name: "Visibility"))
    DescribeTypeOutput.add_member(:source_url, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalSecureUrl, name: "SourceUrl"))
    DescribeTypeOutput.add_member(:documentation_url, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalSecureUrl, name: "DocumentationUrl"))
    DescribeTypeOutput.add_member(:last_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdated"))
    DescribeTypeOutput.add_member(:time_created, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "TimeCreated"))
    DescribeTypeOutput.add_member(:configuration_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSchema, name: "ConfigurationSchema"))
    DescribeTypeOutput.add_member(:publisher_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PublisherId, name: "PublisherId"))
    DescribeTypeOutput.add_member(:original_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "OriginalTypeName"))
    DescribeTypeOutput.add_member(:original_type_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeArn, name: "OriginalTypeArn"))
    DescribeTypeOutput.add_member(:public_version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicVersionNumber, name: "PublicVersionNumber"))
    DescribeTypeOutput.add_member(:latest_public_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicVersionNumber, name: "LatestPublicVersion"))
    DescribeTypeOutput.add_member(:is_activated, ::Smithy::Schema::Shapes::MemberShape.new(target: IsActivated, name: "IsActivated"))
    DescribeTypeOutput.add_member(:auto_update, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoUpdate, name: "AutoUpdate"))
    DescribeTypeOutput.type = Types::DescribeTypeOutput
    DescribeTypeRegistrationInput.add_member(:registration_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationToken, name: "RegistrationToken", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeTypeRegistrationInput.type = Types::DescribeTypeRegistrationInput
    DescribeTypeRegistrationOutput.add_member(:progress_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationStatus, name: "ProgressStatus"))
    DescribeTypeRegistrationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DescribeTypeRegistrationOutput.add_member(:type_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeArn, name: "TypeArn"))
    DescribeTypeRegistrationOutput.add_member(:type_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeArn, name: "TypeVersionArn"))
    DescribeTypeRegistrationOutput.type = Types::DescribeTypeRegistrationOutput
    DetailedStatus.add_member(:configuration_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIGURATION_COMPLETE", traits: {"smithy.api#enumValue" => "CONFIGURATION_COMPLETE"}))
    DetailedStatus.add_member(:validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "VALIDATION_FAILED"}))
    DetectStackDriftInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackNameOrId, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DetectStackDriftInput.add_member(:logical_resource_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceIds, name: "LogicalResourceIds"))
    DetectStackDriftInput.type = Types::DetectStackDriftInput
    DetectStackDriftOutput.add_member(:stack_drift_detection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackDriftDetectionId, name: "StackDriftDetectionId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DetectStackDriftOutput.type = Types::DetectStackDriftOutput
    DetectStackResourceDriftInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackNameOrId, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DetectStackResourceDriftInput.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "LogicalResourceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DetectStackResourceDriftInput.type = Types::DetectStackResourceDriftInput
    DetectStackResourceDriftOutput.add_member(:stack_resource_drift, ::Smithy::Schema::Shapes::MemberShape.new(target: StackResourceDrift, name: "StackResourceDrift", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DetectStackResourceDriftOutput.type = Types::DetectStackResourceDriftOutput
    DetectStackSetDriftInput.add_member(:stack_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetNameOrId, name: "StackSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DetectStackSetDriftInput.add_member(:operation_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetOperationPreferences, name: "OperationPreferences"))
    DetectStackSetDriftInput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "OperationId", traits: {"smithy.api#idempotencyToken" => {}}))
    DetectStackSetDriftInput.add_member(:call_as, ::Smithy::Schema::Shapes::MemberShape.new(target: CallAs, name: "CallAs"))
    DetectStackSetDriftInput.type = Types::DetectStackSetDriftInput
    DetectStackSetDriftOutput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "OperationId"))
    DetectStackSetDriftOutput.type = Types::DetectStackSetDriftOutput
    DifferenceType.add_member(:add, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADD", traits: {"smithy.api#enumValue" => "ADD"}))
    DifferenceType.add_member(:remove, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOVE", traits: {"smithy.api#enumValue" => "REMOVE"}))
    DifferenceType.add_member(:not_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EQUAL", traits: {"smithy.api#enumValue" => "NOT_EQUAL"}))
    EstimateTemplateCostInput.add_member(:template_body, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateBody, name: "TemplateBody"))
    EstimateTemplateCostInput.add_member(:template_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateURL, name: "TemplateURL"))
    EstimateTemplateCostInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "Parameters"))
    EstimateTemplateCostInput.type = Types::EstimateTemplateCostInput
    EstimateTemplateCostOutput.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "Url"))
    EstimateTemplateCostOutput.type = Types::EstimateTemplateCostOutput
    EvaluationType.add_member(:static, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Static", traits: {"smithy.api#enumValue" => "Static"}))
    EvaluationType.add_member(:dynamic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Dynamic", traits: {"smithy.api#enumValue" => "Dynamic"}))
    ExecuteChangeSetInput.add_member(:change_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetNameOrId, name: "ChangeSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ExecuteChangeSetInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackNameOrId, name: "StackName"))
    ExecuteChangeSetInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken"))
    ExecuteChangeSetInput.add_member(:disable_rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: DisableRollback, name: "DisableRollback"))
    ExecuteChangeSetInput.add_member(:retain_except_on_create, ::Smithy::Schema::Shapes::MemberShape.new(target: RetainExceptOnCreate, name: "RetainExceptOnCreate"))
    ExecuteChangeSetInput.type = Types::ExecuteChangeSetInput
    ExecuteChangeSetOutput.type = Types::ExecuteChangeSetOutput
    ExecuteStackRefactorInput.add_member(:stack_refactor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackRefactorId, name: "StackRefactorId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ExecuteStackRefactorInput.type = Types::ExecuteStackRefactorInput
    ExecutionStatus.add_member(:unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNAVAILABLE", traits: {"smithy.api#enumValue" => "UNAVAILABLE"}))
    ExecutionStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ExecutionStatus.add_member(:execute_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "EXECUTE_IN_PROGRESS"}))
    ExecutionStatus.add_member(:execute_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTE_COMPLETE", traits: {"smithy.api#enumValue" => "EXECUTE_COMPLETE"}))
    ExecutionStatus.add_member(:execute_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTE_FAILED", traits: {"smithy.api#enumValue" => "EXECUTE_FAILED"}))
    ExecutionStatus.add_member(:obsolete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OBSOLETE", traits: {"smithy.api#enumValue" => "OBSOLETE"}))
    Export.add_member(:exporting_stack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "ExportingStackId"))
    Export.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportName, name: "Name"))
    Export.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportValue, name: "Value"))
    Export.type = Types::Export
    Exports.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Export, name: "member"))
    GeneratedTemplateDeletionPolicy.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    GeneratedTemplateDeletionPolicy.add_member(:retain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETAIN", traits: {"smithy.api#enumValue" => "RETAIN"}))
    GeneratedTemplateNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    GeneratedTemplateNotFoundException.type = Types::GeneratedTemplateNotFoundException
    GeneratedTemplateResourceStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    GeneratedTemplateResourceStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    GeneratedTemplateResourceStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    GeneratedTemplateResourceStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    GeneratedTemplateStatus.add_member(:create_pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_PENDING", traits: {"smithy.api#enumValue" => "CREATE_PENDING"}))
    GeneratedTemplateStatus.add_member(:update_pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_PENDING", traits: {"smithy.api#enumValue" => "UPDATE_PENDING"}))
    GeneratedTemplateStatus.add_member(:delete_pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_PENDING", traits: {"smithy.api#enumValue" => "DELETE_PENDING"}))
    GeneratedTemplateStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    GeneratedTemplateStatus.add_member(:update_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    GeneratedTemplateStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    GeneratedTemplateStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    GeneratedTemplateStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    GeneratedTemplateUpdateReplacePolicy.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    GeneratedTemplateUpdateReplacePolicy.add_member(:retain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETAIN", traits: {"smithy.api#enumValue" => "RETAIN"}))
    GetGeneratedTemplateInput.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateFormat, name: "Format"))
    GetGeneratedTemplateInput.add_member(:generated_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedTemplateName, name: "GeneratedTemplateName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetGeneratedTemplateInput.type = Types::GetGeneratedTemplateInput
    GetGeneratedTemplateOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedTemplateStatus, name: "Status"))
    GetGeneratedTemplateOutput.add_member(:template_body, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateBody, name: "TemplateBody"))
    GetGeneratedTemplateOutput.type = Types::GetGeneratedTemplateOutput
    GetStackPolicyInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetStackPolicyInput.type = Types::GetStackPolicyInput
    GetStackPolicyOutput.add_member(:stack_policy_body, ::Smithy::Schema::Shapes::MemberShape.new(target: StackPolicyBody, name: "StackPolicyBody"))
    GetStackPolicyOutput.type = Types::GetStackPolicyOutput
    GetTemplateInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "StackName"))
    GetTemplateInput.add_member(:change_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetNameOrId, name: "ChangeSetName"))
    GetTemplateInput.add_member(:template_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateStage, name: "TemplateStage"))
    GetTemplateInput.type = Types::GetTemplateInput
    GetTemplateOutput.add_member(:template_body, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateBody, name: "TemplateBody"))
    GetTemplateOutput.add_member(:stages_available, ::Smithy::Schema::Shapes::MemberShape.new(target: StageList, name: "StagesAvailable"))
    GetTemplateOutput.type = Types::GetTemplateOutput
    GetTemplateSummaryInput.add_member(:template_body, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateBody, name: "TemplateBody"))
    GetTemplateSummaryInput.add_member(:template_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateURL, name: "TemplateURL"))
    GetTemplateSummaryInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackNameOrId, name: "StackName"))
    GetTemplateSummaryInput.add_member(:stack_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetNameOrId, name: "StackSetName"))
    GetTemplateSummaryInput.add_member(:call_as, ::Smithy::Schema::Shapes::MemberShape.new(target: CallAs, name: "CallAs"))
    GetTemplateSummaryInput.add_member(:template_summary_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateSummaryConfig, name: "TemplateSummaryConfig"))
    GetTemplateSummaryInput.type = Types::GetTemplateSummaryInput
    GetTemplateSummaryOutput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterDeclarations, name: "Parameters"))
    GetTemplateSummaryOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetTemplateSummaryOutput.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: Capabilities, name: "Capabilities"))
    GetTemplateSummaryOutput.add_member(:capabilities_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilitiesReason, name: "CapabilitiesReason"))
    GetTemplateSummaryOutput.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypes, name: "ResourceTypes"))
    GetTemplateSummaryOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "Version"))
    GetTemplateSummaryOutput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "Metadata"))
    GetTemplateSummaryOutput.add_member(:declared_transforms, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformsList, name: "DeclaredTransforms"))
    GetTemplateSummaryOutput.add_member(:resource_identifier_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifierSummaries, name: "ResourceIdentifierSummaries"))
    GetTemplateSummaryOutput.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: Warnings, name: "Warnings"))
    GetTemplateSummaryOutput.type = Types::GetTemplateSummaryOutput
    HandlerErrorCode.add_member(:not_updatable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotUpdatable", traits: {"smithy.api#enumValue" => "NotUpdatable"}))
    HandlerErrorCode.add_member(:invalid_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidRequest", traits: {"smithy.api#enumValue" => "InvalidRequest"}))
    HandlerErrorCode.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AccessDenied", traits: {"smithy.api#enumValue" => "AccessDenied"}))
    HandlerErrorCode.add_member(:invalid_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidCredentials", traits: {"smithy.api#enumValue" => "InvalidCredentials"}))
    HandlerErrorCode.add_member(:already_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AlreadyExists", traits: {"smithy.api#enumValue" => "AlreadyExists"}))
    HandlerErrorCode.add_member(:not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotFound", traits: {"smithy.api#enumValue" => "NotFound"}))
    HandlerErrorCode.add_member(:resource_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceConflict", traits: {"smithy.api#enumValue" => "ResourceConflict"}))
    HandlerErrorCode.add_member(:throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Throttling", traits: {"smithy.api#enumValue" => "Throttling"}))
    HandlerErrorCode.add_member(:service_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ServiceLimitExceeded", traits: {"smithy.api#enumValue" => "ServiceLimitExceeded"}))
    HandlerErrorCode.add_member(:service_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ServiceTimeout", traits: {"smithy.api#enumValue" => "NotStabilized"}))
    HandlerErrorCode.add_member(:general_service_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GeneralServiceException", traits: {"smithy.api#enumValue" => "GeneralServiceException"}))
    HandlerErrorCode.add_member(:service_internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ServiceInternalError", traits: {"smithy.api#enumValue" => "ServiceInternalError"}))
    HandlerErrorCode.add_member(:network_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkFailure", traits: {"smithy.api#enumValue" => "NetworkFailure"}))
    HandlerErrorCode.add_member(:internal_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InternalFailure", traits: {"smithy.api#enumValue" => "InternalFailure"}))
    HandlerErrorCode.add_member(:invalid_type_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidTypeConfiguration", traits: {"smithy.api#enumValue" => "InvalidTypeConfiguration"}))
    HandlerErrorCode.add_member(:handler_internal_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HandlerInternalFailure", traits: {"smithy.api#enumValue" => "HandlerInternalFailure"}))
    HandlerErrorCode.add_member(:non_compliant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NonCompliant", traits: {"smithy.api#enumValue" => "NonCompliant"}))
    HandlerErrorCode.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unknown", traits: {"smithy.api#enumValue" => "Unknown"}))
    HandlerErrorCode.add_member(:unsupported_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UnsupportedTarget", traits: {"smithy.api#enumValue" => "UnsupportedTarget"}))
    HookFailureMode.add_member(:fail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAIL", traits: {"smithy.api#enumValue" => "FAIL"}))
    HookFailureMode.add_member(:warn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARN", traits: {"smithy.api#enumValue" => "WARN"}))
    HookInvocationPoint.add_member(:pre_provision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_PROVISION", traits: {"smithy.api#enumValue" => "PRE_PROVISION"}))
    HookResultNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    HookResultNotFoundException.type = Types::HookResultNotFoundException
    HookResultSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HookResultSummary, name: "member"))
    HookResultSummary.add_member(:hook_result_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HookInvocationId, name: "HookResultId"))
    HookResultSummary.add_member(:invocation_point, ::Smithy::Schema::Shapes::MemberShape.new(target: HookInvocationPoint, name: "InvocationPoint"))
    HookResultSummary.add_member(:failure_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: HookFailureMode, name: "FailureMode"))
    HookResultSummary.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: HookTypeName, name: "TypeName"))
    HookResultSummary.add_member(:type_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HookTypeVersionId, name: "TypeVersionId"))
    HookResultSummary.add_member(:type_configuration_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HookTypeConfigurationVersionId, name: "TypeConfigurationVersionId"))
    HookResultSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: HookStatus, name: "Status"))
    HookResultSummary.add_member(:hook_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: HookStatusReason, name: "HookStatusReason"))
    HookResultSummary.add_member(:invoked_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "InvokedAt"))
    HookResultSummary.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ListHookResultsTargetType, name: "TargetType"))
    HookResultSummary.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HookResultId, name: "TargetId"))
    HookResultSummary.add_member(:type_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: HookTypeArn, name: "TypeArn"))
    HookResultSummary.add_member(:hook_execution_target, ::Smithy::Schema::Shapes::MemberShape.new(target: HookResultId, name: "HookExecutionTarget"))
    HookResultSummary.type = Types::HookResultSummary
    HookStatus.add_member(:hook_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOOK_IN_PROGRESS", traits: {"smithy.api#enumValue" => "HOOK_IN_PROGRESS"}))
    HookStatus.add_member(:hook_complete_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOOK_COMPLETE_SUCCEEDED", traits: {"smithy.api#enumValue" => "HOOK_COMPLETE_SUCCEEDED"}))
    HookStatus.add_member(:hook_complete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOOK_COMPLETE_FAILED", traits: {"smithy.api#enumValue" => "HOOK_COMPLETE_FAILED"}))
    HookStatus.add_member(:hook_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOOK_FAILED", traits: {"smithy.api#enumValue" => "HOOK_FAILED"}))
    HookTargetType.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE", traits: {"smithy.api#enumValue" => "RESOURCE"}))
    IdentityProvider.add_member(:aws_marketplace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_Marketplace", traits: {"smithy.api#enumValue" => "AWS_Marketplace"}))
    IdentityProvider.add_member(:git_hub, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GitHub", traits: {"smithy.api#enumValue" => "GitHub"}))
    IdentityProvider.add_member(:bitbucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Bitbucket", traits: {"smithy.api#enumValue" => "Bitbucket"}))
    ImportStacksToStackSetInput.add_member(:stack_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetNameOrId, name: "StackSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ImportStacksToStackSetInput.add_member(:stack_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StackIdList, name: "StackIds"))
    ImportStacksToStackSetInput.add_member(:stack_ids_url, ::Smithy::Schema::Shapes::MemberShape.new(target: StackIdsUrl, name: "StackIdsUrl"))
    ImportStacksToStackSetInput.add_member(:organizational_unit_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitIdList, name: "OrganizationalUnitIds"))
    ImportStacksToStackSetInput.add_member(:operation_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetOperationPreferences, name: "OperationPreferences"))
    ImportStacksToStackSetInput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "OperationId", traits: {"smithy.api#idempotencyToken" => {}}))
    ImportStacksToStackSetInput.add_member(:call_as, ::Smithy::Schema::Shapes::MemberShape.new(target: CallAs, name: "CallAs"))
    ImportStacksToStackSetInput.type = Types::ImportStacksToStackSetInput
    ImportStacksToStackSetOutput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "OperationId"))
    ImportStacksToStackSetOutput.type = Types::ImportStacksToStackSetOutput
    Imports.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "member"))
    InsufficientCapabilitiesException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InsufficientCapabilitiesException.type = Types::InsufficientCapabilitiesException
    InvalidChangeSetStatusException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidChangeSetStatusException.type = Types::InvalidChangeSetStatusException
    InvalidOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidOperationException.type = Types::InvalidOperationException
    InvalidStateTransitionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidStateTransitionException.type = Types::InvalidStateTransitionException
    JazzLogicalResourceIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "member"))
    JazzResourceIdentifierProperties.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: JazzResourceIdentifierPropertyKey, name: "key"))
    JazzResourceIdentifierProperties.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: JazzResourceIdentifierPropertyValue, name: "value"))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    ListChangeSetsInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackNameOrId, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListChangeSetsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListChangeSetsInput.type = Types::ListChangeSetsInput
    ListChangeSetsOutput.add_member(:summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetSummaries, name: "Summaries"))
    ListChangeSetsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListChangeSetsOutput.type = Types::ListChangeSetsOutput
    ListExportsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListExportsInput.type = Types::ListExportsInput
    ListExportsOutput.add_member(:exports, ::Smithy::Schema::Shapes::MemberShape.new(target: Exports, name: "Exports"))
    ListExportsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListExportsOutput.type = Types::ListExportsOutput
    ListGeneratedTemplatesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListGeneratedTemplatesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListGeneratedTemplatesInput.type = Types::ListGeneratedTemplatesInput
    ListGeneratedTemplatesOutput.add_member(:summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateSummaries, name: "Summaries"))
    ListGeneratedTemplatesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListGeneratedTemplatesOutput.type = Types::ListGeneratedTemplatesOutput
    ListHookResultsInput.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ListHookResultsTargetType, name: "TargetType"))
    ListHookResultsInput.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HookResultId, name: "TargetId"))
    ListHookResultsInput.add_member(:type_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: HookTypeArn, name: "TypeArn"))
    ListHookResultsInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: HookStatus, name: "Status"))
    ListHookResultsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListHookResultsInput.type = Types::ListHookResultsInput
    ListHookResultsOutput.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ListHookResultsTargetType, name: "TargetType"))
    ListHookResultsOutput.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HookResultId, name: "TargetId"))
    ListHookResultsOutput.add_member(:hook_results, ::Smithy::Schema::Shapes::MemberShape.new(target: HookResultSummaries, name: "HookResults"))
    ListHookResultsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListHookResultsOutput.type = Types::ListHookResultsOutput
    ListHookResultsTargetType.add_member(:change_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHANGE_SET", traits: {"smithy.api#enumValue" => "CHANGE_SET"}))
    ListHookResultsTargetType.add_member(:stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STACK", traits: {"smithy.api#enumValue" => "STACK"}))
    ListHookResultsTargetType.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE", traits: {"smithy.api#enumValue" => "RESOURCE"}))
    ListHookResultsTargetType.add_member(:cloud_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUD_CONTROL", traits: {"smithy.api#enumValue" => "CLOUD_CONTROL"}))
    ListImportsInput.add_member(:export_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportName, name: "ExportName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListImportsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListImportsInput.type = Types::ListImportsInput
    ListImportsOutput.add_member(:imports, ::Smithy::Schema::Shapes::MemberShape.new(target: Imports, name: "Imports"))
    ListImportsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListImportsOutput.type = Types::ListImportsOutput
    ListResourceScanRelatedResourcesInput.add_member(:resource_scan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceScanId, name: "ResourceScanId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListResourceScanRelatedResourcesInput.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ScannedResourceIdentifiers, name: "Resources", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListResourceScanRelatedResourcesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResourceScanRelatedResourcesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedMaxResults, name: "MaxResults"))
    ListResourceScanRelatedResourcesInput.type = Types::ListResourceScanRelatedResourcesInput
    ListResourceScanRelatedResourcesOutput.add_member(:related_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedResources, name: "RelatedResources"))
    ListResourceScanRelatedResourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResourceScanRelatedResourcesOutput.type = Types::ListResourceScanRelatedResourcesOutput
    ListResourceScanResourcesInput.add_member(:resource_scan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceScanId, name: "ResourceScanId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListResourceScanResourcesInput.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "ResourceIdentifier"))
    ListResourceScanResourcesInput.add_member(:resource_type_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypePrefix, name: "ResourceTypePrefix"))
    ListResourceScanResourcesInput.add_member(:tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "TagKey"))
    ListResourceScanResourcesInput.add_member(:tag_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "TagValue"))
    ListResourceScanResourcesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResourceScanResourcesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceScannerMaxResults, name: "MaxResults"))
    ListResourceScanResourcesInput.type = Types::ListResourceScanResourcesInput
    ListResourceScanResourcesOutput.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ScannedResources, name: "Resources"))
    ListResourceScanResourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResourceScanResourcesOutput.type = Types::ListResourceScanResourcesOutput
    ListResourceScansInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResourceScansInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceScannerMaxResults, name: "MaxResults"))
    ListResourceScansInput.add_member(:scan_type_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanType, name: "ScanTypeFilter"))
    ListResourceScansInput.type = Types::ListResourceScansInput
    ListResourceScansOutput.add_member(:resource_scan_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceScanSummaries, name: "ResourceScanSummaries"))
    ListResourceScansOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResourceScansOutput.type = Types::ListResourceScansOutput
    ListStackInstanceResourceDriftsInput.add_member(:stack_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetNameOrId, name: "StackSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListStackInstanceResourceDriftsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStackInstanceResourceDriftsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListStackInstanceResourceDriftsInput.add_member(:stack_instance_resource_drift_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: StackResourceDriftStatusFilters, name: "StackInstanceResourceDriftStatuses"))
    ListStackInstanceResourceDriftsInput.add_member(:stack_instance_account, ::Smithy::Schema::Shapes::MemberShape.new(target: Account, name: "StackInstanceAccount", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListStackInstanceResourceDriftsInput.add_member(:stack_instance_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "StackInstanceRegion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListStackInstanceResourceDriftsInput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "OperationId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListStackInstanceResourceDriftsInput.add_member(:call_as, ::Smithy::Schema::Shapes::MemberShape.new(target: CallAs, name: "CallAs"))
    ListStackInstanceResourceDriftsInput.type = Types::ListStackInstanceResourceDriftsInput
    ListStackInstanceResourceDriftsOutput.add_member(:summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: StackInstanceResourceDriftsSummaries, name: "Summaries"))
    ListStackInstanceResourceDriftsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStackInstanceResourceDriftsOutput.type = Types::ListStackInstanceResourceDriftsOutput
    ListStackInstancesInput.add_member(:stack_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetName, name: "StackSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListStackInstancesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStackInstancesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListStackInstancesInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: StackInstanceFilters, name: "Filters"))
    ListStackInstancesInput.add_member(:stack_instance_account, ::Smithy::Schema::Shapes::MemberShape.new(target: Account, name: "StackInstanceAccount"))
    ListStackInstancesInput.add_member(:stack_instance_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "StackInstanceRegion"))
    ListStackInstancesInput.add_member(:call_as, ::Smithy::Schema::Shapes::MemberShape.new(target: CallAs, name: "CallAs"))
    ListStackInstancesInput.type = Types::ListStackInstancesInput
    ListStackInstancesOutput.add_member(:summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: StackInstanceSummaries, name: "Summaries"))
    ListStackInstancesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStackInstancesOutput.type = Types::ListStackInstancesOutput
    ListStackRefactorActionsInput.add_member(:stack_refactor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackRefactorId, name: "StackRefactorId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListStackRefactorActionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStackRefactorActionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListStackRefactorActionsInput.type = Types::ListStackRefactorActionsInput
    ListStackRefactorActionsOutput.add_member(:stack_refactor_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: StackRefactorActions, name: "StackRefactorActions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListStackRefactorActionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStackRefactorActionsOutput.type = Types::ListStackRefactorActionsOutput
    ListStackRefactorsInput.add_member(:execution_status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: StackRefactorExecutionStatusFilter, name: "ExecutionStatusFilter"))
    ListStackRefactorsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStackRefactorsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListStackRefactorsInput.type = Types::ListStackRefactorsInput
    ListStackRefactorsOutput.add_member(:stack_refactor_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: StackRefactorSummaries, name: "StackRefactorSummaries", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListStackRefactorsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStackRefactorsOutput.type = Types::ListStackRefactorsOutput
    ListStackResourcesInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListStackResourcesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStackResourcesInput.type = Types::ListStackResourcesInput
    ListStackResourcesOutput.add_member(:stack_resource_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: StackResourceSummaries, name: "StackResourceSummaries"))
    ListStackResourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStackResourcesOutput.type = Types::ListStackResourcesOutput
    ListStackSetAutoDeploymentTargetsInput.add_member(:stack_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetNameOrId, name: "StackSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListStackSetAutoDeploymentTargetsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStackSetAutoDeploymentTargetsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListStackSetAutoDeploymentTargetsInput.add_member(:call_as, ::Smithy::Schema::Shapes::MemberShape.new(target: CallAs, name: "CallAs"))
    ListStackSetAutoDeploymentTargetsInput.type = Types::ListStackSetAutoDeploymentTargetsInput
    ListStackSetAutoDeploymentTargetsOutput.add_member(:summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetAutoDeploymentTargetSummaries, name: "Summaries"))
    ListStackSetAutoDeploymentTargetsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStackSetAutoDeploymentTargetsOutput.type = Types::ListStackSetAutoDeploymentTargetsOutput
    ListStackSetOperationResultsInput.add_member(:stack_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetName, name: "StackSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListStackSetOperationResultsInput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "OperationId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListStackSetOperationResultsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStackSetOperationResultsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListStackSetOperationResultsInput.add_member(:call_as, ::Smithy::Schema::Shapes::MemberShape.new(target: CallAs, name: "CallAs"))
    ListStackSetOperationResultsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationResultFilters, name: "Filters"))
    ListStackSetOperationResultsInput.type = Types::ListStackSetOperationResultsInput
    ListStackSetOperationResultsOutput.add_member(:summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetOperationResultSummaries, name: "Summaries"))
    ListStackSetOperationResultsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStackSetOperationResultsOutput.type = Types::ListStackSetOperationResultsOutput
    ListStackSetOperationsInput.add_member(:stack_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetName, name: "StackSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListStackSetOperationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStackSetOperationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListStackSetOperationsInput.add_member(:call_as, ::Smithy::Schema::Shapes::MemberShape.new(target: CallAs, name: "CallAs"))
    ListStackSetOperationsInput.type = Types::ListStackSetOperationsInput
    ListStackSetOperationsOutput.add_member(:summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetOperationSummaries, name: "Summaries"))
    ListStackSetOperationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStackSetOperationsOutput.type = Types::ListStackSetOperationsOutput
    ListStackSetsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStackSetsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListStackSetsInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetStatus, name: "Status"))
    ListStackSetsInput.add_member(:call_as, ::Smithy::Schema::Shapes::MemberShape.new(target: CallAs, name: "CallAs"))
    ListStackSetsInput.type = Types::ListStackSetsInput
    ListStackSetsOutput.add_member(:summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetSummaries, name: "Summaries"))
    ListStackSetsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStackSetsOutput.type = Types::ListStackSetsOutput
    ListStacksInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStacksInput.add_member(:stack_status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: StackStatusFilter, name: "StackStatusFilter"))
    ListStacksInput.type = Types::ListStacksInput
    ListStacksOutput.add_member(:stack_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSummaries, name: "StackSummaries"))
    ListStacksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStacksOutput.type = Types::ListStacksOutput
    ListTypeRegistrationsInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryType, name: "Type"))
    ListTypeRegistrationsInput.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeName"))
    ListTypeRegistrationsInput.add_member(:type_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeArn, name: "TypeArn"))
    ListTypeRegistrationsInput.add_member(:registration_status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationStatus, name: "RegistrationStatusFilter"))
    ListTypeRegistrationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListTypeRegistrationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTypeRegistrationsInput.type = Types::ListTypeRegistrationsInput
    ListTypeRegistrationsOutput.add_member(:registration_token_list, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationTokenList, name: "RegistrationTokenList"))
    ListTypeRegistrationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTypeRegistrationsOutput.type = Types::ListTypeRegistrationsOutput
    ListTypeVersionsInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryType, name: "Type"))
    ListTypeVersionsInput.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeName"))
    ListTypeVersionsInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeArn, name: "Arn"))
    ListTypeVersionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListTypeVersionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTypeVersionsInput.add_member(:deprecated_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeprecatedStatus, name: "DeprecatedStatus"))
    ListTypeVersionsInput.add_member(:publisher_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PublisherId, name: "PublisherId"))
    ListTypeVersionsInput.type = Types::ListTypeVersionsInput
    ListTypeVersionsOutput.add_member(:type_version_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeVersionSummaries, name: "TypeVersionSummaries"))
    ListTypeVersionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTypeVersionsOutput.type = Types::ListTypeVersionsOutput
    ListTypesInput.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: Visibility, name: "Visibility"))
    ListTypesInput.add_member(:provisioning_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningType, name: "ProvisioningType"))
    ListTypesInput.add_member(:deprecated_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeprecatedStatus, name: "DeprecatedStatus"))
    ListTypesInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryType, name: "Type"))
    ListTypesInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeFilters, name: "Filters"))
    ListTypesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListTypesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTypesInput.type = Types::ListTypesInput
    ListTypesOutput.add_member(:type_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeSummaries, name: "TypeSummaries"))
    ListTypesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTypesOutput.type = Types::ListTypesOutput
    LoggingConfig.add_member(:log_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN2, name: "LogRoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    LoggingConfig.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, name: "LogGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    LoggingConfig.type = Types::LoggingConfig
    LogicalResourceIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "member"))
    ManagedExecution.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedExecutionNullable, name: "Active"))
    ManagedExecution.type = Types::ManagedExecution
    ModuleInfo.add_member(:type_hierarchy, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeHierarchy, name: "TypeHierarchy"))
    ModuleInfo.add_member(:logical_id_hierarchy, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalIdHierarchy, name: "LogicalIdHierarchy"))
    ModuleInfo.type = Types::ModuleInfo
    NameAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    NameAlreadyExistsException.type = Types::NameAlreadyExistsException
    NotificationARNs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationARN, name: "member"))
    OnFailure.add_member(:do_nothing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DO_NOTHING", traits: {"smithy.api#enumValue" => "DO_NOTHING"}))
    OnFailure.add_member(:rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK", traits: {"smithy.api#enumValue" => "ROLLBACK"}))
    OnFailure.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    OnStackFailure.add_member(:do_nothing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DO_NOTHING", traits: {"smithy.api#enumValue" => "DO_NOTHING"}))
    OnStackFailure.add_member(:rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK", traits: {"smithy.api#enumValue" => "ROLLBACK"}))
    OnStackFailure.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    OperationIdAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    OperationIdAlreadyExistsException.type = Types::OperationIdAlreadyExistsException
    OperationInProgressException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    OperationInProgressException.type = Types::OperationInProgressException
    OperationNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    OperationNotFoundException.type = Types::OperationNotFoundException
    OperationResultFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationResultFilterName, name: "Name"))
    OperationResultFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationResultFilterValues, name: "Values"))
    OperationResultFilter.type = Types::OperationResultFilter
    OperationResultFilterName.add_member(:operation_result_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATION_RESULT_STATUS", traits: {"smithy.api#enumValue" => "OPERATION_RESULT_STATUS"}))
    OperationResultFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationResultFilter, name: "member"))
    OperationStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    OperationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    OperationStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    OperationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    OperationStatusCheckFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    OperationStatusCheckFailedException.type = Types::OperationStatusCheckFailedException
    OrganizationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    OrganizationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    OrganizationStatus.add_member(:disabled_permanently, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED_PERMANENTLY", traits: {"smithy.api#enumValue" => "DISABLED_PERMANENTLY"}))
    OrganizationalUnitIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitId, name: "member"))
    Output.add_member(:output_key, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputKey, name: "OutputKey"))
    Output.add_member(:output_value, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputValue, name: "OutputValue"))
    Output.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    Output.add_member(:export_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportName, name: "ExportName"))
    Output.type = Types::Output
    Outputs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Output, name: "member"))
    Parameter.add_member(:parameter_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterKey, name: "ParameterKey"))
    Parameter.add_member(:parameter_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue, name: "ParameterValue"))
    Parameter.add_member(:use_previous_value, ::Smithy::Schema::Shapes::MemberShape.new(target: UsePreviousValue, name: "UsePreviousValue"))
    Parameter.add_member(:resolved_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue, name: "ResolvedValue"))
    Parameter.type = Types::Parameter
    ParameterConstraints.add_member(:allowed_values, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedValues, name: "AllowedValues"))
    ParameterConstraints.type = Types::ParameterConstraints
    ParameterDeclaration.add_member(:parameter_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterKey, name: "ParameterKey"))
    ParameterDeclaration.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue, name: "DefaultValue"))
    ParameterDeclaration.add_member(:parameter_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterType, name: "ParameterType"))
    ParameterDeclaration.add_member(:no_echo, ::Smithy::Schema::Shapes::MemberShape.new(target: NoEcho, name: "NoEcho"))
    ParameterDeclaration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    ParameterDeclaration.add_member(:parameter_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterConstraints, name: "ParameterConstraints"))
    ParameterDeclaration.type = Types::ParameterDeclaration
    ParameterDeclarations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterDeclaration, name: "member"))
    Parameters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameter, name: "member"))
    PermissionModels.add_member(:service_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_MANAGED", traits: {"smithy.api#enumValue" => "SERVICE_MANAGED"}))
    PermissionModels.add_member(:self_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SELF_MANAGED", traits: {"smithy.api#enumValue" => "SELF_MANAGED"}))
    PhysicalResourceIdContext.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalResourceIdContextKeyValuePair, name: "member"))
    PhysicalResourceIdContextKeyValuePair.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "Key", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PhysicalResourceIdContextKeyValuePair.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "Value", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PhysicalResourceIdContextKeyValuePair.type = Types::PhysicalResourceIdContextKeyValuePair
    PolicyAction.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Delete", traits: {"smithy.api#enumValue" => "Delete"}))
    PolicyAction.add_member(:retain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Retain", traits: {"smithy.api#enumValue" => "Retain"}))
    PolicyAction.add_member(:snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Snapshot", traits: {"smithy.api#enumValue" => "Snapshot"}))
    PolicyAction.add_member(:replace_and_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReplaceAndDelete", traits: {"smithy.api#enumValue" => "ReplaceAndDelete"}))
    PolicyAction.add_member(:replace_and_retain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReplaceAndRetain", traits: {"smithy.api#enumValue" => "ReplaceAndRetain"}))
    PolicyAction.add_member(:replace_and_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReplaceAndSnapshot", traits: {"smithy.api#enumValue" => "ReplaceAndSnapshot"}))
    PropertyDifference.add_member(:property_path, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyPath, name: "PropertyPath", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PropertyDifference.add_member(:expected_value, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyValue, name: "ExpectedValue", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PropertyDifference.add_member(:actual_value, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyValue, name: "ActualValue", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PropertyDifference.add_member(:difference_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferenceType, name: "DifferenceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PropertyDifference.type = Types::PropertyDifference
    PropertyDifferences.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyDifference, name: "member"))
    ProvisioningType.add_member(:non_provisionable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NON_PROVISIONABLE", traits: {"smithy.api#enumValue" => "NON_PROVISIONABLE"}))
    ProvisioningType.add_member(:immutable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMMUTABLE", traits: {"smithy.api#enumValue" => "IMMUTABLE"}))
    ProvisioningType.add_member(:fully_mutable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULLY_MUTABLE", traits: {"smithy.api#enumValue" => "FULLY_MUTABLE"}))
    PublishTypeInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyType, name: "Type"))
    PublishTypeInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateTypeArn, name: "Arn"))
    PublishTypeInput.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeName"))
    PublishTypeInput.add_member(:public_version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicVersionNumber, name: "PublicVersionNumber"))
    PublishTypeInput.type = Types::PublishTypeInput
    PublishTypeOutput.add_member(:public_type_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeArn, name: "PublicTypeArn"))
    PublishTypeOutput.type = Types::PublishTypeOutput
    PublisherStatus.add_member(:verified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERIFIED", traits: {"smithy.api#enumValue" => "VERIFIED"}))
    PublisherStatus.add_member(:unverified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNVERIFIED", traits: {"smithy.api#enumValue" => "UNVERIFIED"}))
    RecordHandlerProgressInput.add_member(:bearer_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "BearerToken", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RecordHandlerProgressInput.add_member(:operation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationStatus, name: "OperationStatus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RecordHandlerProgressInput.add_member(:current_operation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationStatus, name: "CurrentOperationStatus"))
    RecordHandlerProgressInput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
    RecordHandlerProgressInput.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: HandlerErrorCode, name: "ErrorCode"))
    RecordHandlerProgressInput.add_member(:resource_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceModel, name: "ResourceModel"))
    RecordHandlerProgressInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken"))
    RecordHandlerProgressInput.type = Types::RecordHandlerProgressInput
    RecordHandlerProgressOutput.type = Types::RecordHandlerProgressOutput
    RegionConcurrencyType.add_member(:sequential, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEQUENTIAL", traits: {"smithy.api#enumValue" => "SEQUENTIAL"}))
    RegionConcurrencyType.add_member(:parallel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARALLEL", traits: {"smithy.api#enumValue" => "PARALLEL"}))
    RegionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "member"))
    RegisterPublisherInput.add_member(:accept_terms_and_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptTermsAndConditions, name: "AcceptTermsAndConditions"))
    RegisterPublisherInput.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, name: "ConnectionArn"))
    RegisterPublisherInput.type = Types::RegisterPublisherInput
    RegisterPublisherOutput.add_member(:publisher_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PublisherId, name: "PublisherId"))
    RegisterPublisherOutput.type = Types::RegisterPublisherOutput
    RegisterTypeInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryType, name: "Type"))
    RegisterTypeInput.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegisterTypeInput.add_member(:schema_handler_package, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "SchemaHandlerPackage", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegisterTypeInput.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfig, name: "LoggingConfig"))
    RegisterTypeInput.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN2, name: "ExecutionRoleArn"))
    RegisterTypeInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestToken, name: "ClientRequestToken"))
    RegisterTypeInput.type = Types::RegisterTypeInput
    RegisterTypeOutput.add_member(:registration_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationToken, name: "RegistrationToken"))
    RegisterTypeOutput.type = Types::RegisterTypeOutput
    RegistrationStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    RegistrationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    RegistrationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    RegistrationTokenList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationToken, name: "member"))
    RegistryType.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE", traits: {"smithy.api#enumValue" => "RESOURCE"}))
    RegistryType.add_member(:module, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODULE", traits: {"smithy.api#enumValue" => "MODULE"}))
    RegistryType.add_member(:hook, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOOK", traits: {"smithy.api#enumValue" => "HOOK"}))
    RelatedResources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScannedResource, name: "member"))
    Replacement.add_member(:true, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "True", traits: {"smithy.api#enumValue" => "True"}))
    Replacement.add_member(:false, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "False", traits: {"smithy.api#enumValue" => "False"}))
    Replacement.add_member(:conditional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Conditional", traits: {"smithy.api#enumValue" => "Conditional"}))
    RequiredActivatedType.add_member(:type_name_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeNameAlias"))
    RequiredActivatedType.add_member(:original_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "OriginalTypeName"))
    RequiredActivatedType.add_member(:publisher_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PublisherId, name: "PublisherId"))
    RequiredActivatedType.add_member(:supported_major_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedMajorVersions, name: "SupportedMajorVersions"))
    RequiredActivatedType.type = Types::RequiredActivatedType
    RequiredActivatedTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RequiredActivatedType, name: "member"))
    RequiresRecreation.add_member(:never, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Never", traits: {"smithy.api#enumValue" => "Never"}))
    RequiresRecreation.add_member(:conditionally, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Conditionally", traits: {"smithy.api#enumValue" => "Conditionally"}))
    RequiresRecreation.add_member(:always, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Always", traits: {"smithy.api#enumValue" => "Always"}))
    ResourceAttribute.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Properties", traits: {"smithy.api#enumValue" => "Properties"}))
    ResourceAttribute.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Metadata", traits: {"smithy.api#enumValue" => "Metadata"}))
    ResourceAttribute.add_member(:creation_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreationPolicy", traits: {"smithy.api#enumValue" => "CreationPolicy"}))
    ResourceAttribute.add_member(:update_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpdatePolicy", traits: {"smithy.api#enumValue" => "UpdatePolicy"}))
    ResourceAttribute.add_member(:deletion_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeletionPolicy", traits: {"smithy.api#enumValue" => "DeletionPolicy"}))
    ResourceAttribute.add_member(:update_replace_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpdateReplacePolicy", traits: {"smithy.api#enumValue" => "UpdateReplacePolicy"}))
    ResourceAttribute.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Tags", traits: {"smithy.api#enumValue" => "Tags"}))
    ResourceChange.add_member(:policy_action, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyAction, name: "PolicyAction"))
    ResourceChange.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeAction, name: "Action"))
    ResourceChange.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "LogicalResourceId"))
    ResourceChange.add_member(:physical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalResourceId, name: "PhysicalResourceId"))
    ResourceChange.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ResourceChange.add_member(:replacement, ::Smithy::Schema::Shapes::MemberShape.new(target: Replacement, name: "Replacement"))
    ResourceChange.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope"))
    ResourceChange.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceChangeDetails, name: "Details"))
    ResourceChange.add_member(:change_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetId, name: "ChangeSetId"))
    ResourceChange.add_member(:module_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ModuleInfo, name: "ModuleInfo"))
    ResourceChange.add_member(:before_context, ::Smithy::Schema::Shapes::MemberShape.new(target: BeforeContext, name: "BeforeContext"))
    ResourceChange.add_member(:after_context, ::Smithy::Schema::Shapes::MemberShape.new(target: AfterContext, name: "AfterContext"))
    ResourceChange.type = Types::ResourceChange
    ResourceChangeDetail.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTargetDefinition, name: "Target"))
    ResourceChangeDetail.add_member(:evaluation, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationType, name: "Evaluation"))
    ResourceChangeDetail.add_member(:change_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSource, name: "ChangeSource"))
    ResourceChangeDetail.add_member(:causing_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: CausingEntity, name: "CausingEntity"))
    ResourceChangeDetail.type = Types::ResourceChangeDetail
    ResourceChangeDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceChangeDetail, name: "member"))
    ResourceDefinition.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceDefinition.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "LogicalResourceId"))
    ResourceDefinition.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifierProperties, name: "ResourceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceDefinition.type = Types::ResourceDefinition
    ResourceDefinitions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDefinition, name: "member"))
    ResourceDetail.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ResourceDetail.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "LogicalResourceId"))
    ResourceDetail.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifierProperties, name: "ResourceIdentifier"))
    ResourceDetail.add_member(:resource_status, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedTemplateResourceStatus, name: "ResourceStatus"))
    ResourceDetail.add_member(:resource_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatusReason, name: "ResourceStatusReason"))
    ResourceDetail.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: WarningDetails, name: "Warnings"))
    ResourceDetail.type = Types::ResourceDetail
    ResourceDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDetail, name: "member"))
    ResourceIdentifierProperties.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifierPropertyKey, name: "key"))
    ResourceIdentifierProperties.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifierPropertyValue, name: "value"))
    ResourceIdentifierSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifierSummary, name: "member"))
    ResourceIdentifierSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ResourceIdentifierSummary.add_member(:logical_resource_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceIds, name: "LogicalResourceIds"))
    ResourceIdentifierSummary.add_member(:resource_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifiers, name: "ResourceIdentifiers"))
    ResourceIdentifierSummary.type = Types::ResourceIdentifierSummary
    ResourceIdentifiers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifierPropertyKey, name: "member"))
    ResourceLocation.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceLocation.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "LogicalResourceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceLocation.type = Types::ResourceLocation
    ResourceMapping.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocation, name: "Source", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceMapping.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocation, name: "Destination", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceMapping.type = Types::ResourceMapping
    ResourceMappings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceMapping, name: "member"))
    ResourceScanInProgressException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceScanInProgressException.type = Types::ResourceScanInProgressException
    ResourceScanLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceScanLimitExceededException.type = Types::ResourceScanLimitExceededException
    ResourceScanNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceScanNotFoundException.type = Types::ResourceScanNotFoundException
    ResourceScanStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ResourceScanStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ResourceScanStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ResourceScanStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    ResourceScanSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceScanSummary, name: "member"))
    ResourceScanSummary.add_member(:resource_scan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceScanId, name: "ResourceScanId"))
    ResourceScanSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceScanStatus, name: "Status"))
    ResourceScanSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceScanStatusReason, name: "StatusReason"))
    ResourceScanSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime"))
    ResourceScanSummary.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    ResourceScanSummary.add_member(:percentage_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: PercentageCompleted, name: "PercentageCompleted"))
    ResourceScanSummary.add_member(:scan_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanType, name: "ScanType"))
    ResourceScanSummary.type = Types::ResourceScanSummary
    ResourceSignalStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    ResourceSignalStatus.add_member(:failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILURE", traits: {"smithy.api#enumValue" => "FAILURE"}))
    ResourceStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    ResourceStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    ResourceStatus.add_member(:create_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_COMPLETE", traits: {"smithy.api#enumValue" => "CREATE_COMPLETE"}))
    ResourceStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    ResourceStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    ResourceStatus.add_member(:delete_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_COMPLETE", traits: {"smithy.api#enumValue" => "DELETE_COMPLETE"}))
    ResourceStatus.add_member(:delete_skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_SKIPPED", traits: {"smithy.api#enumValue" => "DELETE_SKIPPED"}))
    ResourceStatus.add_member(:update_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    ResourceStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    ResourceStatus.add_member(:update_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_COMPLETE", traits: {"smithy.api#enumValue" => "UPDATE_COMPLETE"}))
    ResourceStatus.add_member(:import_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORT_FAILED", traits: {"smithy.api#enumValue" => "IMPORT_FAILED"}))
    ResourceStatus.add_member(:import_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORT_COMPLETE", traits: {"smithy.api#enumValue" => "IMPORT_COMPLETE"}))
    ResourceStatus.add_member(:import_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORT_IN_PROGRESS", traits: {"smithy.api#enumValue" => "IMPORT_IN_PROGRESS"}))
    ResourceStatus.add_member(:import_rollback_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORT_ROLLBACK_IN_PROGRESS", traits: {"smithy.api#enumValue" => "IMPORT_ROLLBACK_IN_PROGRESS"}))
    ResourceStatus.add_member(:import_rollback_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORT_ROLLBACK_FAILED", traits: {"smithy.api#enumValue" => "IMPORT_ROLLBACK_FAILED"}))
    ResourceStatus.add_member(:import_rollback_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORT_ROLLBACK_COMPLETE", traits: {"smithy.api#enumValue" => "IMPORT_ROLLBACK_COMPLETE"}))
    ResourceStatus.add_member(:export_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPORT_FAILED", traits: {"smithy.api#enumValue" => "EXPORT_FAILED"}))
    ResourceStatus.add_member(:export_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPORT_COMPLETE", traits: {"smithy.api#enumValue" => "EXPORT_COMPLETE"}))
    ResourceStatus.add_member(:export_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPORT_IN_PROGRESS", traits: {"smithy.api#enumValue" => "EXPORT_IN_PROGRESS"}))
    ResourceStatus.add_member(:export_rollback_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPORT_ROLLBACK_IN_PROGRESS", traits: {"smithy.api#enumValue" => "EXPORT_ROLLBACK_IN_PROGRESS"}))
    ResourceStatus.add_member(:export_rollback_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPORT_ROLLBACK_FAILED", traits: {"smithy.api#enumValue" => "EXPORT_ROLLBACK_FAILED"}))
    ResourceStatus.add_member(:export_rollback_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPORT_ROLLBACK_COMPLETE", traits: {"smithy.api#enumValue" => "EXPORT_ROLLBACK_COMPLETE"}))
    ResourceStatus.add_member(:update_rollback_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_ROLLBACK_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_ROLLBACK_IN_PROGRESS"}))
    ResourceStatus.add_member(:update_rollback_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_ROLLBACK_COMPLETE", traits: {"smithy.api#enumValue" => "UPDATE_ROLLBACK_COMPLETE"}))
    ResourceStatus.add_member(:update_rollback_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_ROLLBACK_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_ROLLBACK_FAILED"}))
    ResourceStatus.add_member(:rollback_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK_IN_PROGRESS", traits: {"smithy.api#enumValue" => "ROLLBACK_IN_PROGRESS"}))
    ResourceStatus.add_member(:rollback_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK_COMPLETE", traits: {"smithy.api#enumValue" => "ROLLBACK_COMPLETE"}))
    ResourceStatus.add_member(:rollback_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK_FAILED", traits: {"smithy.api#enumValue" => "ROLLBACK_FAILED"}))
    ResourceTargetDefinition.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceAttribute, name: "Attribute"))
    ResourceTargetDefinition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyName, name: "Name"))
    ResourceTargetDefinition.add_member(:requires_recreation, ::Smithy::Schema::Shapes::MemberShape.new(target: RequiresRecreation, name: "RequiresRecreation"))
    ResourceTargetDefinition.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePropertyPath, name: "Path"))
    ResourceTargetDefinition.add_member(:before_value, ::Smithy::Schema::Shapes::MemberShape.new(target: BeforeValue, name: "BeforeValue"))
    ResourceTargetDefinition.add_member(:after_value, ::Smithy::Schema::Shapes::MemberShape.new(target: AfterValue, name: "AfterValue"))
    ResourceTargetDefinition.add_member(:attribute_change_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeChangeType, name: "AttributeChangeType"))
    ResourceTargetDefinition.type = Types::ResourceTargetDefinition
    ResourceToImport.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceToImport.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "LogicalResourceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceToImport.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifierProperties, name: "ResourceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceToImport.type = Types::ResourceToImport
    ResourceTypeFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeFilter, name: "member"))
    ResourceTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "member"))
    ResourcesToImport.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceToImport, name: "member"))
    ResourcesToSkip.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceToSkip, name: "member"))
    RetainResources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "member"))
    RollbackConfiguration.add_member(:rollback_triggers, ::Smithy::Schema::Shapes::MemberShape.new(target: RollbackTriggers, name: "RollbackTriggers"))
    RollbackConfiguration.add_member(:monitoring_time_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringTimeInMinutes, name: "MonitoringTimeInMinutes"))
    RollbackConfiguration.type = Types::RollbackConfiguration
    RollbackStackInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackNameOrId, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RollbackStackInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    RollbackStackInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken"))
    RollbackStackInput.add_member(:retain_except_on_create, ::Smithy::Schema::Shapes::MemberShape.new(target: RetainExceptOnCreate, name: "RetainExceptOnCreate"))
    RollbackStackInput.type = Types::RollbackStackInput
    RollbackStackOutput.add_member(:stack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "StackId"))
    RollbackStackOutput.type = Types::RollbackStackOutput
    RollbackTrigger.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RollbackTrigger.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "Type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RollbackTrigger.type = Types::RollbackTrigger
    RollbackTriggers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RollbackTrigger, name: "member"))
    ScanFilter.add_member(:types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeFilters, name: "Types"))
    ScanFilter.type = Types::ScanFilter
    ScanFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanFilter, name: "member"))
    ScanType.add_member(:full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL", traits: {"smithy.api#enumValue" => "FULL"}))
    ScanType.add_member(:partial, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTIAL", traits: {"smithy.api#enumValue" => "PARTIAL"}))
    ScannedResource.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ScannedResource.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: JazzResourceIdentifierProperties, name: "ResourceIdentifier"))
    ScannedResource.add_member(:managed_by_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedByStack, name: "ManagedByStack"))
    ScannedResource.type = Types::ScannedResource
    ScannedResourceIdentifier.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScannedResourceIdentifier.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: JazzResourceIdentifierProperties, name: "ResourceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScannedResourceIdentifier.type = Types::ScannedResourceIdentifier
    ScannedResourceIdentifiers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScannedResourceIdentifier, name: "member"))
    ScannedResources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScannedResource, name: "member"))
    Scope.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceAttribute, name: "member"))
    SetStackPolicyInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetStackPolicyInput.add_member(:stack_policy_body, ::Smithy::Schema::Shapes::MemberShape.new(target: StackPolicyBody, name: "StackPolicyBody"))
    SetStackPolicyInput.add_member(:stack_policy_url, ::Smithy::Schema::Shapes::MemberShape.new(target: StackPolicyURL, name: "StackPolicyURL"))
    SetStackPolicyInput.type = Types::SetStackPolicyInput
    SetTypeConfigurationInput.add_member(:type_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeArn, name: "TypeArn"))
    SetTypeConfigurationInput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeConfiguration, name: "Configuration", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetTypeConfigurationInput.add_member(:configuration_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeConfigurationAlias, name: "ConfigurationAlias"))
    SetTypeConfigurationInput.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeName"))
    SetTypeConfigurationInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyType, name: "Type"))
    SetTypeConfigurationInput.type = Types::SetTypeConfigurationInput
    SetTypeConfigurationOutput.add_member(:configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeConfigurationArn, name: "ConfigurationArn"))
    SetTypeConfigurationOutput.type = Types::SetTypeConfigurationOutput
    SetTypeDefaultVersionInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateTypeArn, name: "Arn"))
    SetTypeDefaultVersionInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryType, name: "Type"))
    SetTypeDefaultVersionInput.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeName"))
    SetTypeDefaultVersionInput.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeVersionId, name: "VersionId"))
    SetTypeDefaultVersionInput.type = Types::SetTypeDefaultVersionInput
    SetTypeDefaultVersionOutput.type = Types::SetTypeDefaultVersionOutput
    SignalResourceInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackNameOrId, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SignalResourceInput.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "LogicalResourceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SignalResourceInput.add_member(:unique_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSignalUniqueId, name: "UniqueId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SignalResourceInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSignalStatus, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SignalResourceInput.type = Types::SignalResourceInput
    Stack.add_member(:stack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "StackId"))
    Stack.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Stack.add_member(:change_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetId, name: "ChangeSetId"))
    Stack.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    Stack.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "Parameters"))
    Stack.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, name: "CreationTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Stack.add_member(:deletion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionTime, name: "DeletionTime"))
    Stack.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedTime, name: "LastUpdatedTime"))
    Stack.add_member(:rollback_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RollbackConfiguration, name: "RollbackConfiguration"))
    Stack.add_member(:stack_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackStatus, name: "StackStatus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Stack.add_member(:stack_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StackStatusReason, name: "StackStatusReason"))
    Stack.add_member(:disable_rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: DisableRollback, name: "DisableRollback"))
    Stack.add_member(:notification_ar_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationARNs, name: "NotificationARNs"))
    Stack.add_member(:timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeoutMinutes, name: "TimeoutInMinutes"))
    Stack.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: Capabilities, name: "Capabilities"))
    Stack.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: Outputs, name: "Outputs"))
    Stack.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    Stack.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    Stack.add_member(:enable_termination_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableTerminationProtection, name: "EnableTerminationProtection"))
    Stack.add_member(:parent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "ParentId"))
    Stack.add_member(:root_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "RootId"))
    Stack.add_member(:drift_information, ::Smithy::Schema::Shapes::MemberShape.new(target: StackDriftInformation, name: "DriftInformation"))
    Stack.add_member(:retain_except_on_create, ::Smithy::Schema::Shapes::MemberShape.new(target: RetainExceptOnCreate, name: "RetainExceptOnCreate"))
    Stack.add_member(:deletion_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionMode, name: "DeletionMode"))
    Stack.add_member(:detailed_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DetailedStatus, name: "DetailedStatus"))
    Stack.type = Types::Stack
    StackDefinition.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "StackName"))
    StackDefinition.add_member(:template_body, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateBody, name: "TemplateBody"))
    StackDefinition.add_member(:template_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateURL, name: "TemplateURL"))
    StackDefinition.type = Types::StackDefinition
    StackDefinitions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackDefinition, name: "member"))
    StackDriftDetectionStatus.add_member(:detection_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DETECTION_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DETECTION_IN_PROGRESS"}))
    StackDriftDetectionStatus.add_member(:detection_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DETECTION_FAILED", traits: {"smithy.api#enumValue" => "DETECTION_FAILED"}))
    StackDriftDetectionStatus.add_member(:detection_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DETECTION_COMPLETE", traits: {"smithy.api#enumValue" => "DETECTION_COMPLETE"}))
    StackDriftInformation.add_member(:stack_drift_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackDriftStatus, name: "StackDriftStatus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackDriftInformation.add_member(:last_check_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastCheckTimestamp"))
    StackDriftInformation.type = Types::StackDriftInformation
    StackDriftInformationSummary.add_member(:stack_drift_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackDriftStatus, name: "StackDriftStatus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackDriftInformationSummary.add_member(:last_check_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastCheckTimestamp"))
    StackDriftInformationSummary.type = Types::StackDriftInformationSummary
    StackDriftStatus.add_member(:drifted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DRIFTED", traits: {"smithy.api#enumValue" => "DRIFTED"}))
    StackDriftStatus.add_member(:in_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_SYNC", traits: {"smithy.api#enumValue" => "IN_SYNC"}))
    StackDriftStatus.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    StackDriftStatus.add_member(:not_checked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_CHECKED", traits: {"smithy.api#enumValue" => "NOT_CHECKED"}))
    StackEvent.add_member(:stack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "StackId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackEvent.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "EventId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackEvent.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackEvent.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "LogicalResourceId"))
    StackEvent.add_member(:physical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalResourceId, name: "PhysicalResourceId"))
    StackEvent.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    StackEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackEvent.add_member(:resource_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "ResourceStatus"))
    StackEvent.add_member(:resource_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatusReason, name: "ResourceStatusReason"))
    StackEvent.add_member(:resource_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceProperties, name: "ResourceProperties"))
    StackEvent.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken"))
    StackEvent.add_member(:hook_type, ::Smithy::Schema::Shapes::MemberShape.new(target: HookType, name: "HookType"))
    StackEvent.add_member(:hook_status, ::Smithy::Schema::Shapes::MemberShape.new(target: HookStatus, name: "HookStatus"))
    StackEvent.add_member(:hook_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: HookStatusReason, name: "HookStatusReason"))
    StackEvent.add_member(:hook_invocation_point, ::Smithy::Schema::Shapes::MemberShape.new(target: HookInvocationPoint, name: "HookInvocationPoint"))
    StackEvent.add_member(:hook_invocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HookInvocationId, name: "HookInvocationId"))
    StackEvent.add_member(:hook_failure_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: HookFailureMode, name: "HookFailureMode"))
    StackEvent.add_member(:detailed_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DetailedStatus, name: "DetailedStatus"))
    StackEvent.type = Types::StackEvent
    StackEvents.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackEvent, name: "member"))
    StackIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "member"))
    StackIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "member"))
    StackInstance.add_member(:stack_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetId, name: "StackSetId"))
    StackInstance.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "Region"))
    StackInstance.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: Account, name: "Account"))
    StackInstance.add_member(:stack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "StackId"))
    StackInstance.add_member(:parameter_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "ParameterOverrides"))
    StackInstance.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackInstanceStatus, name: "Status"))
    StackInstance.add_member(:stack_instance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackInstanceComprehensiveStatus, name: "StackInstanceStatus"))
    StackInstance.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: Reason, name: "StatusReason"))
    StackInstance.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitId, name: "OrganizationalUnitId"))
    StackInstance.add_member(:drift_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackDriftStatus, name: "DriftStatus"))
    StackInstance.add_member(:last_drift_check_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastDriftCheckTimestamp"))
    StackInstance.add_member(:last_operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "LastOperationId"))
    StackInstance.type = Types::StackInstance
    StackInstanceComprehensiveStatus.add_member(:detailed_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackInstanceDetailedStatus, name: "DetailedStatus"))
    StackInstanceComprehensiveStatus.type = Types::StackInstanceComprehensiveStatus
    StackInstanceDetailedStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    StackInstanceDetailedStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    StackInstanceDetailedStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    StackInstanceDetailedStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    StackInstanceDetailedStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    StackInstanceDetailedStatus.add_member(:inoperable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INOPERABLE", traits: {"smithy.api#enumValue" => "INOPERABLE"}))
    StackInstanceDetailedStatus.add_member(:skipped_suspended_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIPPED_SUSPENDED_ACCOUNT", traits: {"smithy.api#enumValue" => "SKIPPED_SUSPENDED_ACCOUNT"}))
    StackInstanceDetailedStatus.add_member(:failed_import, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED_IMPORT", traits: {"smithy.api#enumValue" => "FAILED_IMPORT"}))
    StackInstanceFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackInstanceFilterName, name: "Name"))
    StackInstanceFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: StackInstanceFilterValues, name: "Values"))
    StackInstanceFilter.type = Types::StackInstanceFilter
    StackInstanceFilterName.add_member(:detailed_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DETAILED_STATUS", traits: {"smithy.api#enumValue" => "DETAILED_STATUS"}))
    StackInstanceFilterName.add_member(:last_operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_OPERATION_ID", traits: {"smithy.api#enumValue" => "LAST_OPERATION_ID"}))
    StackInstanceFilterName.add_member(:drift_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DRIFT_STATUS", traits: {"smithy.api#enumValue" => "DRIFT_STATUS"}))
    StackInstanceFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackInstanceFilter, name: "member"))
    StackInstanceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    StackInstanceNotFoundException.type = Types::StackInstanceNotFoundException
    StackInstanceResourceDriftsSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackInstanceResourceDriftsSummary, name: "member"))
    StackInstanceResourceDriftsSummary.add_member(:stack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "StackId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackInstanceResourceDriftsSummary.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "LogicalResourceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackInstanceResourceDriftsSummary.add_member(:physical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalResourceId, name: "PhysicalResourceId"))
    StackInstanceResourceDriftsSummary.add_member(:physical_resource_id_context, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalResourceIdContext, name: "PhysicalResourceIdContext"))
    StackInstanceResourceDriftsSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackInstanceResourceDriftsSummary.add_member(:property_differences, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyDifferences, name: "PropertyDifferences"))
    StackInstanceResourceDriftsSummary.add_member(:stack_resource_drift_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackResourceDriftStatus, name: "StackResourceDriftStatus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackInstanceResourceDriftsSummary.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackInstanceResourceDriftsSummary.type = Types::StackInstanceResourceDriftsSummary
    StackInstanceStatus.add_member(:current, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT", traits: {"smithy.api#enumValue" => "CURRENT"}))
    StackInstanceStatus.add_member(:outdated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTDATED", traits: {"smithy.api#enumValue" => "OUTDATED"}))
    StackInstanceStatus.add_member(:inoperable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INOPERABLE", traits: {"smithy.api#enumValue" => "INOPERABLE"}))
    StackInstanceSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackInstanceSummary, name: "member"))
    StackInstanceSummary.add_member(:stack_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetId, name: "StackSetId"))
    StackInstanceSummary.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "Region"))
    StackInstanceSummary.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: Account, name: "Account"))
    StackInstanceSummary.add_member(:stack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "StackId"))
    StackInstanceSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackInstanceStatus, name: "Status"))
    StackInstanceSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: Reason, name: "StatusReason"))
    StackInstanceSummary.add_member(:stack_instance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackInstanceComprehensiveStatus, name: "StackInstanceStatus"))
    StackInstanceSummary.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitId, name: "OrganizationalUnitId"))
    StackInstanceSummary.add_member(:drift_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackDriftStatus, name: "DriftStatus"))
    StackInstanceSummary.add_member(:last_drift_check_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastDriftCheckTimestamp"))
    StackInstanceSummary.add_member(:last_operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "LastOperationId"))
    StackInstanceSummary.type = Types::StackInstanceSummary
    StackNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    StackNotFoundException.type = Types::StackNotFoundException
    StackRefactorAction.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: StackRefactorActionType, name: "Action"))
    StackRefactorAction.add_member(:entity, ::Smithy::Schema::Shapes::MemberShape.new(target: StackRefactorActionEntity, name: "Entity"))
    StackRefactorAction.add_member(:physical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalResourceId, name: "PhysicalResourceId"))
    StackRefactorAction.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: StackRefactorResourceIdentifier, name: "ResourceIdentifier"))
    StackRefactorAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    StackRefactorAction.add_member(:detection, ::Smithy::Schema::Shapes::MemberShape.new(target: StackRefactorDetection, name: "Detection"))
    StackRefactorAction.add_member(:detection_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionReason, name: "DetectionReason"))
    StackRefactorAction.add_member(:tag_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: StackRefactorTagResources, name: "TagResources"))
    StackRefactorAction.add_member(:untag_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: StackRefactorUntagResources, name: "UntagResources"))
    StackRefactorAction.add_member(:resource_mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceMapping, name: "ResourceMapping"))
    StackRefactorAction.type = Types::StackRefactorAction
    StackRefactorActionEntity.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE", traits: {"smithy.api#enumValue" => "RESOURCE"}))
    StackRefactorActionEntity.add_member(:stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STACK", traits: {"smithy.api#enumValue" => "STACK"}))
    StackRefactorActionType.add_member(:move, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MOVE", traits: {"smithy.api#enumValue" => "MOVE"}))
    StackRefactorActionType.add_member(:create, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE", traits: {"smithy.api#enumValue" => "CREATE"}))
    StackRefactorActions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackRefactorAction, name: "member"))
    StackRefactorDetection.add_member(:auto, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO", traits: {"smithy.api#enumValue" => "AUTO"}))
    StackRefactorDetection.add_member(:manual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANUAL", traits: {"smithy.api#enumValue" => "MANUAL"}))
    StackRefactorExecutionStatus.add_member(:unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNAVAILABLE", traits: {"smithy.api#enumValue" => "UNAVAILABLE"}))
    StackRefactorExecutionStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    StackRefactorExecutionStatus.add_member(:obsolete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OBSOLETE", traits: {"smithy.api#enumValue" => "OBSOLETE"}))
    StackRefactorExecutionStatus.add_member(:execute_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "EXECUTE_IN_PROGRESS"}))
    StackRefactorExecutionStatus.add_member(:execute_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTE_COMPLETE", traits: {"smithy.api#enumValue" => "EXECUTE_COMPLETE"}))
    StackRefactorExecutionStatus.add_member(:execute_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTE_FAILED", traits: {"smithy.api#enumValue" => "EXECUTE_FAILED"}))
    StackRefactorExecutionStatus.add_member(:rollback_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK_IN_PROGRESS", traits: {"smithy.api#enumValue" => "ROLLBACK_IN_PROGRESS"}))
    StackRefactorExecutionStatus.add_member(:rollback_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK_COMPLETE", traits: {"smithy.api#enumValue" => "ROLLBACK_COMPLETE"}))
    StackRefactorExecutionStatus.add_member(:rollback_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK_FAILED", traits: {"smithy.api#enumValue" => "ROLLBACK_FAILED"}))
    StackRefactorExecutionStatusFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackRefactorExecutionStatus, name: "member"))
    StackRefactorNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    StackRefactorNotFoundException.type = Types::StackRefactorNotFoundException
    StackRefactorStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    StackRefactorStatus.add_member(:create_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_COMPLETE", traits: {"smithy.api#enumValue" => "CREATE_COMPLETE"}))
    StackRefactorStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    StackRefactorStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    StackRefactorStatus.add_member(:delete_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_COMPLETE", traits: {"smithy.api#enumValue" => "DELETE_COMPLETE"}))
    StackRefactorStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    StackRefactorSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackRefactorSummary, name: "member"))
    StackRefactorSummary.add_member(:stack_refactor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackRefactorId, name: "StackRefactorId"))
    StackRefactorSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    StackRefactorSummary.add_member(:execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackRefactorExecutionStatus, name: "ExecutionStatus"))
    StackRefactorSummary.add_member(:execution_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStatusReason, name: "ExecutionStatusReason"))
    StackRefactorSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackRefactorStatus, name: "Status"))
    StackRefactorSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StackRefactorStatusReason, name: "StatusReason"))
    StackRefactorSummary.type = Types::StackRefactorSummary
    StackRefactorTagResources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    StackRefactorUntagResources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    StackResource.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "StackName"))
    StackResource.add_member(:stack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "StackId"))
    StackResource.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "LogicalResourceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackResource.add_member(:physical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalResourceId, name: "PhysicalResourceId"))
    StackResource.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackResource.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackResource.add_member(:resource_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "ResourceStatus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackResource.add_member(:resource_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatusReason, name: "ResourceStatusReason"))
    StackResource.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    StackResource.add_member(:drift_information, ::Smithy::Schema::Shapes::MemberShape.new(target: StackResourceDriftInformation, name: "DriftInformation"))
    StackResource.add_member(:module_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ModuleInfo, name: "ModuleInfo"))
    StackResource.type = Types::StackResource
    StackResourceDetail.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "StackName"))
    StackResourceDetail.add_member(:stack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "StackId"))
    StackResourceDetail.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "LogicalResourceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackResourceDetail.add_member(:physical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalResourceId, name: "PhysicalResourceId"))
    StackResourceDetail.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackResourceDetail.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTimestamp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackResourceDetail.add_member(:resource_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "ResourceStatus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackResourceDetail.add_member(:resource_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatusReason, name: "ResourceStatusReason"))
    StackResourceDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    StackResourceDetail.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "Metadata"))
    StackResourceDetail.add_member(:drift_information, ::Smithy::Schema::Shapes::MemberShape.new(target: StackResourceDriftInformation, name: "DriftInformation"))
    StackResourceDetail.add_member(:module_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ModuleInfo, name: "ModuleInfo"))
    StackResourceDetail.type = Types::StackResourceDetail
    StackResourceDrift.add_member(:stack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "StackId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackResourceDrift.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "LogicalResourceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackResourceDrift.add_member(:physical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalResourceId, name: "PhysicalResourceId"))
    StackResourceDrift.add_member(:physical_resource_id_context, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalResourceIdContext, name: "PhysicalResourceIdContext"))
    StackResourceDrift.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackResourceDrift.add_member(:expected_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: Properties, name: "ExpectedProperties"))
    StackResourceDrift.add_member(:actual_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: Properties, name: "ActualProperties"))
    StackResourceDrift.add_member(:property_differences, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyDifferences, name: "PropertyDifferences"))
    StackResourceDrift.add_member(:stack_resource_drift_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackResourceDriftStatus, name: "StackResourceDriftStatus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackResourceDrift.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackResourceDrift.add_member(:module_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ModuleInfo, name: "ModuleInfo"))
    StackResourceDrift.add_member(:drift_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StackResourceDriftStatusReason, name: "DriftStatusReason"))
    StackResourceDrift.type = Types::StackResourceDrift
    StackResourceDriftInformation.add_member(:stack_resource_drift_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackResourceDriftStatus, name: "StackResourceDriftStatus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackResourceDriftInformation.add_member(:last_check_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastCheckTimestamp"))
    StackResourceDriftInformation.type = Types::StackResourceDriftInformation
    StackResourceDriftInformationSummary.add_member(:stack_resource_drift_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackResourceDriftStatus, name: "StackResourceDriftStatus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackResourceDriftInformationSummary.add_member(:last_check_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastCheckTimestamp"))
    StackResourceDriftInformationSummary.type = Types::StackResourceDriftInformationSummary
    StackResourceDriftStatus.add_member(:in_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_SYNC", traits: {"smithy.api#enumValue" => "IN_SYNC"}))
    StackResourceDriftStatus.add_member(:modified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFIED", traits: {"smithy.api#enumValue" => "MODIFIED"}))
    StackResourceDriftStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    StackResourceDriftStatus.add_member(:not_checked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_CHECKED", traits: {"smithy.api#enumValue" => "NOT_CHECKED"}))
    StackResourceDriftStatus.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    StackResourceDriftStatusFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackResourceDriftStatus, name: "member"))
    StackResourceDrifts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackResourceDrift, name: "member"))
    StackResourceSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackResourceSummary, name: "member"))
    StackResourceSummary.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "LogicalResourceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackResourceSummary.add_member(:physical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalResourceId, name: "PhysicalResourceId"))
    StackResourceSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackResourceSummary.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTimestamp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackResourceSummary.add_member(:resource_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "ResourceStatus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackResourceSummary.add_member(:resource_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatusReason, name: "ResourceStatusReason"))
    StackResourceSummary.add_member(:drift_information, ::Smithy::Schema::Shapes::MemberShape.new(target: StackResourceDriftInformationSummary, name: "DriftInformation"))
    StackResourceSummary.add_member(:module_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ModuleInfo, name: "ModuleInfo"))
    StackResourceSummary.type = Types::StackResourceSummary
    StackResources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackResource, name: "member"))
    StackSet.add_member(:stack_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetName, name: "StackSetName"))
    StackSet.add_member(:stack_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetId, name: "StackSetId"))
    StackSet.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    StackSet.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetStatus, name: "Status"))
    StackSet.add_member(:template_body, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateBody, name: "TemplateBody"))
    StackSet.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "Parameters"))
    StackSet.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: Capabilities, name: "Capabilities"))
    StackSet.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    StackSet.add_member(:stack_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetARN, name: "StackSetARN"))
    StackSet.add_member(:administration_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "AdministrationRoleARN"))
    StackSet.add_member(:execution_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionRoleName, name: "ExecutionRoleName"))
    StackSet.add_member(:stack_set_drift_detection_details, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetDriftDetectionDetails, name: "StackSetDriftDetectionDetails"))
    StackSet.add_member(:auto_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoDeployment, name: "AutoDeployment"))
    StackSet.add_member(:permission_model, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionModels, name: "PermissionModel"))
    StackSet.add_member(:organizational_unit_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitIdList, name: "OrganizationalUnitIds"))
    StackSet.add_member(:managed_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedExecution, name: "ManagedExecution"))
    StackSet.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "Regions"))
    StackSet.type = Types::StackSet
    StackSetAutoDeploymentTargetSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetAutoDeploymentTargetSummary, name: "member"))
    StackSetAutoDeploymentTargetSummary.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitId, name: "OrganizationalUnitId"))
    StackSetAutoDeploymentTargetSummary.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "Regions"))
    StackSetAutoDeploymentTargetSummary.type = Types::StackSetAutoDeploymentTargetSummary
    StackSetDriftDetectionDetails.add_member(:drift_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetDriftStatus, name: "DriftStatus"))
    StackSetDriftDetectionDetails.add_member(:drift_detection_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetDriftDetectionStatus, name: "DriftDetectionStatus"))
    StackSetDriftDetectionDetails.add_member(:last_drift_check_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastDriftCheckTimestamp"))
    StackSetDriftDetectionDetails.add_member(:total_stack_instances_count, ::Smithy::Schema::Shapes::MemberShape.new(target: TotalStackInstancesCount, name: "TotalStackInstancesCount"))
    StackSetDriftDetectionDetails.add_member(:drifted_stack_instances_count, ::Smithy::Schema::Shapes::MemberShape.new(target: DriftedStackInstancesCount, name: "DriftedStackInstancesCount"))
    StackSetDriftDetectionDetails.add_member(:in_sync_stack_instances_count, ::Smithy::Schema::Shapes::MemberShape.new(target: InSyncStackInstancesCount, name: "InSyncStackInstancesCount"))
    StackSetDriftDetectionDetails.add_member(:in_progress_stack_instances_count, ::Smithy::Schema::Shapes::MemberShape.new(target: InProgressStackInstancesCount, name: "InProgressStackInstancesCount"))
    StackSetDriftDetectionDetails.add_member(:failed_stack_instances_count, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedStackInstancesCount, name: "FailedStackInstancesCount"))
    StackSetDriftDetectionDetails.type = Types::StackSetDriftDetectionDetails
    StackSetDriftDetectionStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    StackSetDriftDetectionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    StackSetDriftDetectionStatus.add_member(:partial_success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTIAL_SUCCESS", traits: {"smithy.api#enumValue" => "PARTIAL_SUCCESS"}))
    StackSetDriftDetectionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    StackSetDriftDetectionStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    StackSetDriftStatus.add_member(:drifted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DRIFTED", traits: {"smithy.api#enumValue" => "DRIFTED"}))
    StackSetDriftStatus.add_member(:in_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_SYNC", traits: {"smithy.api#enumValue" => "IN_SYNC"}))
    StackSetDriftStatus.add_member(:not_checked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_CHECKED", traits: {"smithy.api#enumValue" => "NOT_CHECKED"}))
    StackSetNotEmptyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    StackSetNotEmptyException.type = Types::StackSetNotEmptyException
    StackSetNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    StackSetNotFoundException.type = Types::StackSetNotFoundException
    StackSetOperation.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "OperationId"))
    StackSetOperation.add_member(:stack_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetId, name: "StackSetId"))
    StackSetOperation.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetOperationAction, name: "Action"))
    StackSetOperation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetOperationStatus, name: "Status"))
    StackSetOperation.add_member(:operation_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetOperationPreferences, name: "OperationPreferences"))
    StackSetOperation.add_member(:retain_stacks, ::Smithy::Schema::Shapes::MemberShape.new(target: RetainStacksNullable, name: "RetainStacks"))
    StackSetOperation.add_member(:administration_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "AdministrationRoleARN"))
    StackSetOperation.add_member(:execution_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionRoleName, name: "ExecutionRoleName"))
    StackSetOperation.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTimestamp"))
    StackSetOperation.add_member(:end_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTimestamp"))
    StackSetOperation.add_member(:deployment_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentTargets, name: "DeploymentTargets"))
    StackSetOperation.add_member(:stack_set_drift_detection_details, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetDriftDetectionDetails, name: "StackSetDriftDetectionDetails"))
    StackSetOperation.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetOperationStatusReason, name: "StatusReason"))
    StackSetOperation.add_member(:status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetOperationStatusDetails, name: "StatusDetails"))
    StackSetOperation.type = Types::StackSetOperation
    StackSetOperationAction.add_member(:create, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE", traits: {"smithy.api#enumValue" => "CREATE"}))
    StackSetOperationAction.add_member(:update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE", traits: {"smithy.api#enumValue" => "UPDATE"}))
    StackSetOperationAction.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    StackSetOperationAction.add_member(:detect_drift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DETECT_DRIFT", traits: {"smithy.api#enumValue" => "DETECT_DRIFT"}))
    StackSetOperationPreferences.add_member(:region_concurrency_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionConcurrencyType, name: "RegionConcurrencyType"))
    StackSetOperationPreferences.add_member(:region_order, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "RegionOrder"))
    StackSetOperationPreferences.add_member(:failure_tolerance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureToleranceCount, name: "FailureToleranceCount"))
    StackSetOperationPreferences.add_member(:failure_tolerance_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureTolerancePercentage, name: "FailureTolerancePercentage"))
    StackSetOperationPreferences.add_member(:max_concurrent_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrentCount, name: "MaxConcurrentCount"))
    StackSetOperationPreferences.add_member(:max_concurrent_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrentPercentage, name: "MaxConcurrentPercentage"))
    StackSetOperationPreferences.add_member(:concurrency_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ConcurrencyMode, name: "ConcurrencyMode"))
    StackSetOperationPreferences.type = Types::StackSetOperationPreferences
    StackSetOperationResultStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    StackSetOperationResultStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    StackSetOperationResultStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    StackSetOperationResultStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    StackSetOperationResultStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    StackSetOperationResultSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetOperationResultSummary, name: "member"))
    StackSetOperationResultSummary.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: Account, name: "Account"))
    StackSetOperationResultSummary.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "Region"))
    StackSetOperationResultSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetOperationResultStatus, name: "Status"))
    StackSetOperationResultSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: Reason, name: "StatusReason"))
    StackSetOperationResultSummary.add_member(:account_gate_result, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountGateResult, name: "AccountGateResult"))
    StackSetOperationResultSummary.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitId, name: "OrganizationalUnitId"))
    StackSetOperationResultSummary.type = Types::StackSetOperationResultSummary
    StackSetOperationStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    StackSetOperationStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    StackSetOperationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    StackSetOperationStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    StackSetOperationStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    StackSetOperationStatus.add_member(:queued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    StackSetOperationStatusDetails.add_member(:failed_stack_instances_count, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedStackInstancesCount, name: "FailedStackInstancesCount"))
    StackSetOperationStatusDetails.type = Types::StackSetOperationStatusDetails
    StackSetOperationSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetOperationSummary, name: "member"))
    StackSetOperationSummary.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "OperationId"))
    StackSetOperationSummary.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetOperationAction, name: "Action"))
    StackSetOperationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetOperationStatus, name: "Status"))
    StackSetOperationSummary.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTimestamp"))
    StackSetOperationSummary.add_member(:end_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTimestamp"))
    StackSetOperationSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetOperationStatusReason, name: "StatusReason"))
    StackSetOperationSummary.add_member(:status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetOperationStatusDetails, name: "StatusDetails"))
    StackSetOperationSummary.add_member(:operation_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetOperationPreferences, name: "OperationPreferences"))
    StackSetOperationSummary.type = Types::StackSetOperationSummary
    StackSetStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    StackSetStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    StackSetSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetSummary, name: "member"))
    StackSetSummary.add_member(:stack_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetName, name: "StackSetName"))
    StackSetSummary.add_member(:stack_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetId, name: "StackSetId"))
    StackSetSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    StackSetSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetStatus, name: "Status"))
    StackSetSummary.add_member(:auto_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoDeployment, name: "AutoDeployment"))
    StackSetSummary.add_member(:permission_model, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionModels, name: "PermissionModel"))
    StackSetSummary.add_member(:drift_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackDriftStatus, name: "DriftStatus"))
    StackSetSummary.add_member(:last_drift_check_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastDriftCheckTimestamp"))
    StackSetSummary.add_member(:managed_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedExecution, name: "ManagedExecution"))
    StackSetSummary.type = Types::StackSetSummary
    StackStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    StackStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    StackStatus.add_member(:create_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_COMPLETE", traits: {"smithy.api#enumValue" => "CREATE_COMPLETE"}))
    StackStatus.add_member(:rollback_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK_IN_PROGRESS", traits: {"smithy.api#enumValue" => "ROLLBACK_IN_PROGRESS"}))
    StackStatus.add_member(:rollback_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK_FAILED", traits: {"smithy.api#enumValue" => "ROLLBACK_FAILED"}))
    StackStatus.add_member(:rollback_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK_COMPLETE", traits: {"smithy.api#enumValue" => "ROLLBACK_COMPLETE"}))
    StackStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    StackStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    StackStatus.add_member(:delete_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_COMPLETE", traits: {"smithy.api#enumValue" => "DELETE_COMPLETE"}))
    StackStatus.add_member(:update_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    StackStatus.add_member(:update_complete_cleanup_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS"}))
    StackStatus.add_member(:update_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_COMPLETE", traits: {"smithy.api#enumValue" => "UPDATE_COMPLETE"}))
    StackStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    StackStatus.add_member(:update_rollback_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_ROLLBACK_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_ROLLBACK_IN_PROGRESS"}))
    StackStatus.add_member(:update_rollback_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_ROLLBACK_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_ROLLBACK_FAILED"}))
    StackStatus.add_member(:update_rollback_complete_cleanup_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS"}))
    StackStatus.add_member(:update_rollback_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_ROLLBACK_COMPLETE", traits: {"smithy.api#enumValue" => "UPDATE_ROLLBACK_COMPLETE"}))
    StackStatus.add_member(:review_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVIEW_IN_PROGRESS", traits: {"smithy.api#enumValue" => "REVIEW_IN_PROGRESS"}))
    StackStatus.add_member(:import_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORT_IN_PROGRESS", traits: {"smithy.api#enumValue" => "IMPORT_IN_PROGRESS"}))
    StackStatus.add_member(:import_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORT_COMPLETE", traits: {"smithy.api#enumValue" => "IMPORT_COMPLETE"}))
    StackStatus.add_member(:import_rollback_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORT_ROLLBACK_IN_PROGRESS", traits: {"smithy.api#enumValue" => "IMPORT_ROLLBACK_IN_PROGRESS"}))
    StackStatus.add_member(:import_rollback_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORT_ROLLBACK_FAILED", traits: {"smithy.api#enumValue" => "IMPORT_ROLLBACK_FAILED"}))
    StackStatus.add_member(:import_rollback_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORT_ROLLBACK_COMPLETE", traits: {"smithy.api#enumValue" => "IMPORT_ROLLBACK_COMPLETE"}))
    StackStatusFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackStatus, name: "member"))
    StackSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSummary, name: "member"))
    StackSummary.add_member(:stack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "StackId"))
    StackSummary.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackSummary.add_member(:template_description, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateDescription, name: "TemplateDescription"))
    StackSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, name: "CreationTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackSummary.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedTime, name: "LastUpdatedTime"))
    StackSummary.add_member(:deletion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionTime, name: "DeletionTime"))
    StackSummary.add_member(:stack_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackStatus, name: "StackStatus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StackSummary.add_member(:stack_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StackStatusReason, name: "StackStatusReason"))
    StackSummary.add_member(:parent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "ParentId"))
    StackSummary.add_member(:root_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "RootId"))
    StackSummary.add_member(:drift_information, ::Smithy::Schema::Shapes::MemberShape.new(target: StackDriftInformationSummary, name: "DriftInformation"))
    StackSummary.type = Types::StackSummary
    Stacks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Stack, name: "member"))
    StageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateStage, name: "member"))
    StaleRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    StaleRequestException.type = Types::StaleRequestException
    StartResourceScanInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken"))
    StartResourceScanInput.add_member(:scan_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanFilters, name: "ScanFilters"))
    StartResourceScanInput.type = Types::StartResourceScanInput
    StartResourceScanOutput.add_member(:resource_scan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceScanId, name: "ResourceScanId"))
    StartResourceScanOutput.type = Types::StartResourceScanOutput
    StopStackSetOperationInput.add_member(:stack_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetName, name: "StackSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StopStackSetOperationInput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "OperationId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StopStackSetOperationInput.add_member(:call_as, ::Smithy::Schema::Shapes::MemberShape.new(target: CallAs, name: "CallAs"))
    StopStackSetOperationInput.type = Types::StopStackSetOperationInput
    StopStackSetOperationOutput.type = Types::StopStackSetOperationOutput
    SupportedMajorVersions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedMajorVersion, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    Tags.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TemplateConfiguration.add_member(:deletion_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedTemplateDeletionPolicy, name: "DeletionPolicy"))
    TemplateConfiguration.add_member(:update_replace_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedTemplateUpdateReplacePolicy, name: "UpdateReplacePolicy"))
    TemplateConfiguration.type = Types::TemplateConfiguration
    TemplateFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    TemplateFormat.add_member(:yaml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YAML", traits: {"smithy.api#enumValue" => "YAML"}))
    TemplateParameter.add_member(:parameter_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterKey, name: "ParameterKey"))
    TemplateParameter.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue, name: "DefaultValue"))
    TemplateParameter.add_member(:no_echo, ::Smithy::Schema::Shapes::MemberShape.new(target: NoEcho, name: "NoEcho"))
    TemplateParameter.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    TemplateParameter.type = Types::TemplateParameter
    TemplateParameters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateParameter, name: "member"))
    TemplateProgress.add_member(:resources_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcesSucceeded, name: "ResourcesSucceeded"))
    TemplateProgress.add_member(:resources_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcesFailed, name: "ResourcesFailed"))
    TemplateProgress.add_member(:resources_processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcesProcessing, name: "ResourcesProcessing"))
    TemplateProgress.add_member(:resources_pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcesPending, name: "ResourcesPending"))
    TemplateProgress.type = Types::TemplateProgress
    TemplateStage.add_member(:original, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Original", traits: {"smithy.api#enumValue" => "Original"}))
    TemplateStage.add_member(:processed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Processed", traits: {"smithy.api#enumValue" => "Processed"}))
    TemplateSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateSummary, name: "member"))
    TemplateSummary.add_member(:generated_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedTemplateId, name: "GeneratedTemplateId"))
    TemplateSummary.add_member(:generated_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedTemplateName, name: "GeneratedTemplateName"))
    TemplateSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedTemplateStatus, name: "Status"))
    TemplateSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateStatusReason, name: "StatusReason"))
    TemplateSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, name: "CreationTime"))
    TemplateSummary.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedTime, name: "LastUpdatedTime"))
    TemplateSummary.add_member(:number_of_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfResources, name: "NumberOfResources"))
    TemplateSummary.type = Types::TemplateSummary
    TemplateSummaryConfig.add_member(:treat_unrecognized_resource_types_as_warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: TreatUnrecognizedResourceTypesAsWarnings, name: "TreatUnrecognizedResourceTypesAsWarnings"))
    TemplateSummaryConfig.type = Types::TemplateSummaryConfig
    TestTypeInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeArn, name: "Arn"))
    TestTypeInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyType, name: "Type"))
    TestTypeInput.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeName"))
    TestTypeInput.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeVersionId, name: "VersionId"))
    TestTypeInput.add_member(:log_delivery_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, name: "LogDeliveryBucket"))
    TestTypeInput.type = Types::TestTypeInput
    TestTypeOutput.add_member(:type_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeArn, name: "TypeVersionArn"))
    TestTypeOutput.type = Types::TestTypeOutput
    ThirdPartyType.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE", traits: {"smithy.api#enumValue" => "RESOURCE"}))
    ThirdPartyType.add_member(:module, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODULE", traits: {"smithy.api#enumValue" => "MODULE"}))
    ThirdPartyType.add_member(:hook, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOOK", traits: {"smithy.api#enumValue" => "HOOK"}))
    TokenAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    TokenAlreadyExistsException.type = Types::TokenAlreadyExistsException
    TransformsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformName, name: "member"))
    TypeConfigurationDetails.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeConfigurationArn, name: "Arn"))
    TypeConfigurationDetails.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeConfigurationAlias, name: "Alias"))
    TypeConfigurationDetails.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeConfiguration, name: "Configuration"))
    TypeConfigurationDetails.add_member(:last_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdated"))
    TypeConfigurationDetails.add_member(:type_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeArn, name: "TypeArn"))
    TypeConfigurationDetails.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeName"))
    TypeConfigurationDetails.add_member(:is_default_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IsDefaultConfiguration, name: "IsDefaultConfiguration"))
    TypeConfigurationDetails.type = Types::TypeConfigurationDetails
    TypeConfigurationDetailsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeConfigurationDetails, name: "member"))
    TypeConfigurationIdentifier.add_member(:type_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeArn, name: "TypeArn"))
    TypeConfigurationIdentifier.add_member(:type_configuration_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeConfigurationAlias, name: "TypeConfigurationAlias"))
    TypeConfigurationIdentifier.add_member(:type_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeConfigurationArn, name: "TypeConfigurationArn"))
    TypeConfigurationIdentifier.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyType, name: "Type"))
    TypeConfigurationIdentifier.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeName"))
    TypeConfigurationIdentifier.type = Types::TypeConfigurationIdentifier
    TypeConfigurationIdentifiers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeConfigurationIdentifier, name: "member"))
    TypeConfigurationNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    TypeConfigurationNotFoundException.type = Types::TypeConfigurationNotFoundException
    TypeFilters.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: Category, name: "Category"))
    TypeFilters.add_member(:publisher_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PublisherId, name: "PublisherId"))
    TypeFilters.add_member(:type_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeNamePrefix, name: "TypeNamePrefix"))
    TypeFilters.type = Types::TypeFilters
    TypeNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    TypeNotFoundException.type = Types::TypeNotFoundException
    TypeSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeSummary, name: "member"))
    TypeSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryType, name: "Type"))
    TypeSummary.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeName"))
    TypeSummary.add_member(:default_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeVersionId, name: "DefaultVersionId"))
    TypeSummary.add_member(:type_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeArn, name: "TypeArn"))
    TypeSummary.add_member(:last_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdated"))
    TypeSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    TypeSummary.add_member(:publisher_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PublisherId, name: "PublisherId"))
    TypeSummary.add_member(:original_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "OriginalTypeName"))
    TypeSummary.add_member(:public_version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicVersionNumber, name: "PublicVersionNumber"))
    TypeSummary.add_member(:latest_public_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicVersionNumber, name: "LatestPublicVersion"))
    TypeSummary.add_member(:publisher_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProvider, name: "PublisherIdentity"))
    TypeSummary.add_member(:publisher_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PublisherName, name: "PublisherName"))
    TypeSummary.add_member(:is_activated, ::Smithy::Schema::Shapes::MemberShape.new(target: IsActivated, name: "IsActivated"))
    TypeSummary.type = Types::TypeSummary
    TypeTestsStatus.add_member(:passed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSED", traits: {"smithy.api#enumValue" => "PASSED"}))
    TypeTestsStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    TypeTestsStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    TypeTestsStatus.add_member(:not_tested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_TESTED", traits: {"smithy.api#enumValue" => "NOT_TESTED"}))
    TypeVersionSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeVersionSummary, name: "member"))
    TypeVersionSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryType, name: "Type"))
    TypeVersionSummary.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeName"))
    TypeVersionSummary.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeVersionId, name: "VersionId"))
    TypeVersionSummary.add_member(:is_default_version, ::Smithy::Schema::Shapes::MemberShape.new(target: IsDefaultVersion, name: "IsDefaultVersion"))
    TypeVersionSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeArn, name: "Arn"))
    TypeVersionSummary.add_member(:time_created, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "TimeCreated"))
    TypeVersionSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    TypeVersionSummary.add_member(:public_version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicVersionNumber, name: "PublicVersionNumber"))
    TypeVersionSummary.type = Types::TypeVersionSummary
    UnprocessedTypeConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeConfigurationIdentifier, name: "member"))
    UpdateGeneratedTemplateInput.add_member(:generated_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedTemplateName, name: "GeneratedTemplateName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateGeneratedTemplateInput.add_member(:new_generated_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedTemplateName, name: "NewGeneratedTemplateName"))
    UpdateGeneratedTemplateInput.add_member(:add_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDefinitions, name: "AddResources"))
    UpdateGeneratedTemplateInput.add_member(:remove_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: JazzLogicalResourceIds, name: "RemoveResources"))
    UpdateGeneratedTemplateInput.add_member(:refresh_all_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshAllResources, name: "RefreshAllResources"))
    UpdateGeneratedTemplateInput.add_member(:template_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateConfiguration, name: "TemplateConfiguration"))
    UpdateGeneratedTemplateInput.type = Types::UpdateGeneratedTemplateInput
    UpdateGeneratedTemplateOutput.add_member(:generated_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedTemplateId, name: "GeneratedTemplateId"))
    UpdateGeneratedTemplateOutput.type = Types::UpdateGeneratedTemplateOutput
    UpdateStackInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateStackInput.add_member(:template_body, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateBody, name: "TemplateBody"))
    UpdateStackInput.add_member(:template_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateURL, name: "TemplateURL"))
    UpdateStackInput.add_member(:use_previous_template, ::Smithy::Schema::Shapes::MemberShape.new(target: UsePreviousTemplate, name: "UsePreviousTemplate"))
    UpdateStackInput.add_member(:stack_policy_during_update_body, ::Smithy::Schema::Shapes::MemberShape.new(target: StackPolicyDuringUpdateBody, name: "StackPolicyDuringUpdateBody"))
    UpdateStackInput.add_member(:stack_policy_during_update_url, ::Smithy::Schema::Shapes::MemberShape.new(target: StackPolicyDuringUpdateURL, name: "StackPolicyDuringUpdateURL"))
    UpdateStackInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "Parameters"))
    UpdateStackInput.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: Capabilities, name: "Capabilities"))
    UpdateStackInput.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypes, name: "ResourceTypes"))
    UpdateStackInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    UpdateStackInput.add_member(:rollback_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RollbackConfiguration, name: "RollbackConfiguration"))
    UpdateStackInput.add_member(:stack_policy_body, ::Smithy::Schema::Shapes::MemberShape.new(target: StackPolicyBody, name: "StackPolicyBody"))
    UpdateStackInput.add_member(:stack_policy_url, ::Smithy::Schema::Shapes::MemberShape.new(target: StackPolicyURL, name: "StackPolicyURL"))
    UpdateStackInput.add_member(:notification_ar_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationARNs, name: "NotificationARNs"))
    UpdateStackInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    UpdateStackInput.add_member(:disable_rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: DisableRollback, name: "DisableRollback"))
    UpdateStackInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken"))
    UpdateStackInput.add_member(:retain_except_on_create, ::Smithy::Schema::Shapes::MemberShape.new(target: RetainExceptOnCreate, name: "RetainExceptOnCreate"))
    UpdateStackInput.type = Types::UpdateStackInput
    UpdateStackInstancesInput.add_member(:stack_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetNameOrId, name: "StackSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateStackInstancesInput.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountList, name: "Accounts"))
    UpdateStackInstancesInput.add_member(:deployment_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentTargets, name: "DeploymentTargets"))
    UpdateStackInstancesInput.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "Regions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateStackInstancesInput.add_member(:parameter_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "ParameterOverrides"))
    UpdateStackInstancesInput.add_member(:operation_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetOperationPreferences, name: "OperationPreferences"))
    UpdateStackInstancesInput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "OperationId", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateStackInstancesInput.add_member(:call_as, ::Smithy::Schema::Shapes::MemberShape.new(target: CallAs, name: "CallAs"))
    UpdateStackInstancesInput.type = Types::UpdateStackInstancesInput
    UpdateStackInstancesOutput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "OperationId"))
    UpdateStackInstancesOutput.type = Types::UpdateStackInstancesOutput
    UpdateStackOutput.add_member(:stack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "StackId"))
    UpdateStackOutput.type = Types::UpdateStackOutput
    UpdateStackSetInput.add_member(:stack_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetName, name: "StackSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateStackSetInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateStackSetInput.add_member(:template_body, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateBody, name: "TemplateBody"))
    UpdateStackSetInput.add_member(:template_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateURL, name: "TemplateURL"))
    UpdateStackSetInput.add_member(:use_previous_template, ::Smithy::Schema::Shapes::MemberShape.new(target: UsePreviousTemplate, name: "UsePreviousTemplate"))
    UpdateStackSetInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "Parameters"))
    UpdateStackSetInput.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: Capabilities, name: "Capabilities"))
    UpdateStackSetInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    UpdateStackSetInput.add_member(:operation_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetOperationPreferences, name: "OperationPreferences"))
    UpdateStackSetInput.add_member(:administration_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "AdministrationRoleARN"))
    UpdateStackSetInput.add_member(:execution_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionRoleName, name: "ExecutionRoleName"))
    UpdateStackSetInput.add_member(:deployment_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentTargets, name: "DeploymentTargets"))
    UpdateStackSetInput.add_member(:permission_model, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionModels, name: "PermissionModel"))
    UpdateStackSetInput.add_member(:auto_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoDeployment, name: "AutoDeployment"))
    UpdateStackSetInput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "OperationId", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateStackSetInput.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountList, name: "Accounts"))
    UpdateStackSetInput.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "Regions"))
    UpdateStackSetInput.add_member(:call_as, ::Smithy::Schema::Shapes::MemberShape.new(target: CallAs, name: "CallAs"))
    UpdateStackSetInput.add_member(:managed_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedExecution, name: "ManagedExecution"))
    UpdateStackSetInput.type = Types::UpdateStackSetInput
    UpdateStackSetOutput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "OperationId"))
    UpdateStackSetOutput.type = Types::UpdateStackSetOutput
    UpdateTerminationProtectionInput.add_member(:enable_termination_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableTerminationProtection, name: "EnableTerminationProtection", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateTerminationProtectionInput.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackNameOrId, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateTerminationProtectionInput.type = Types::UpdateTerminationProtectionInput
    UpdateTerminationProtectionOutput.add_member(:stack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StackId, name: "StackId"))
    UpdateTerminationProtectionOutput.type = Types::UpdateTerminationProtectionOutput
    ValidateTemplateInput.add_member(:template_body, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateBody, name: "TemplateBody"))
    ValidateTemplateInput.add_member(:template_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateURL, name: "TemplateURL"))
    ValidateTemplateInput.type = Types::ValidateTemplateInput
    ValidateTemplateOutput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateParameters, name: "Parameters"))
    ValidateTemplateOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    ValidateTemplateOutput.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: Capabilities, name: "Capabilities"))
    ValidateTemplateOutput.add_member(:capabilities_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilitiesReason, name: "CapabilitiesReason"))
    ValidateTemplateOutput.add_member(:declared_transforms, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformsList, name: "DeclaredTransforms"))
    ValidateTemplateOutput.type = Types::ValidateTemplateOutput
    VersionBump.add_member(:major, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAJOR", traits: {"smithy.api#enumValue" => "MAJOR"}))
    VersionBump.add_member(:minor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MINOR", traits: {"smithy.api#enumValue" => "MINOR"}))
    Visibility.add_member(:public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC", traits: {"smithy.api#enumValue" => "PUBLIC"}))
    Visibility.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIVATE", traits: {"smithy.api#enumValue" => "PRIVATE"}))
    WarningDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WarningType, name: "Type"))
    WarningDetail.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: WarningProperties, name: "Properties"))
    WarningDetail.type = Types::WarningDetail
    WarningDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WarningDetail, name: "member"))
    WarningProperties.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WarningProperty, name: "member"))
    WarningProperty.add_member(:property_path, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyPath, name: "PropertyPath"))
    WarningProperty.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: RequiredProperty, name: "Required"))
    WarningProperty.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyDescription, name: "Description"))
    WarningProperty.type = Types::WarningProperty
    WarningType.add_member(:mutually_exclusive_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MUTUALLY_EXCLUSIVE_PROPERTIES", traits: {"smithy.api#enumValue" => "MUTUALLY_EXCLUSIVE_PROPERTIES"}))
    WarningType.add_member(:unsupported_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_PROPERTIES", traits: {"smithy.api#enumValue" => "UNSUPPORTED_PROPERTIES"}))
    WarningType.add_member(:mutually_exclusive_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MUTUALLY_EXCLUSIVE_TYPES", traits: {"smithy.api#enumValue" => "MUTUALLY_EXCLUSIVE_TYPES"}))
    WarningType.add_member(:excluded_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXCLUDED_PROPERTIES", traits: {"smithy.api#enumValue" => "EXCLUDED_PROPERTIES"}))
    WarningType.add_member(:excluded_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXCLUDED_RESOURCES", traits: {"smithy.api#enumValue" => "EXCLUDED_RESOURCES"}))
    Warnings.add_member(:unrecognized_resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypes, name: "UnrecognizedResourceTypes"))
    Warnings.type = Types::Warnings

    CloudFormation = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cloudformation#CloudFormation"
      service.name = "CloudFormation"
      service.version = "2010-05-15"
      service.traits = {"aws.api#service" => {"sdkId" => "CloudFormation", "arnNamespace" => "cloudformation", "cloudFormationName" => "CloudFormation", "cloudTrailEventSource" => "cloudformation.amazonaws.com", "endpointPrefix" => "cloudformation"}, "aws.auth#sigv4" => {"name" => "cloudformation"}, "aws.protocols#awsQuery" => {}, "smithy.api#title" => "AWS CloudFormation", "smithy.api#xmlNamespace" => {"uri" => "http://cloudformation.amazonaws.com/doc/2010-05-15/"}}
      service.add_operation(:activate_organizations_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ActivateOrganizationsAccess"
        operation.name = "ActivateOrganizationsAccess"
        operation.input = ActivateOrganizationsAccessInput
        operation.output = ActivateOrganizationsAccessOutput
        operation.errors << InvalidOperationException
        operation.errors << OperationNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:activate_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ActivateType"
        operation.name = "ActivateType"
        operation.input = ActivateTypeInput
        operation.output = ActivateTypeOutput
        operation.errors << CFNRegistryException
        operation.errors << TypeNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_describe_type_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#BatchDescribeTypeConfigurations"
        operation.name = "BatchDescribeTypeConfigurations"
        operation.input = BatchDescribeTypeConfigurationsInput
        operation.output = BatchDescribeTypeConfigurationsOutput
        operation.errors << CFNRegistryException
        operation.errors << TypeConfigurationNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:cancel_update_stack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#CancelUpdateStack"
        operation.name = "CancelUpdateStack"
        operation.input = CancelUpdateStackInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << TokenAlreadyExistsException
        operation.traits = {}
      end)
      service.add_operation(:continue_update_rollback, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ContinueUpdateRollback"
        operation.name = "ContinueUpdateRollback"
        operation.input = ContinueUpdateRollbackInput
        operation.output = ContinueUpdateRollbackOutput
        operation.errors << TokenAlreadyExistsException
        operation.traits = {}
      end)
      service.add_operation(:create_change_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#CreateChangeSet"
        operation.name = "CreateChangeSet"
        operation.input = CreateChangeSetInput
        operation.output = CreateChangeSetOutput
        operation.errors << AlreadyExistsException
        operation.errors << InsufficientCapabilitiesException
        operation.errors << LimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_generated_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#CreateGeneratedTemplate"
        operation.name = "CreateGeneratedTemplate"
        operation.input = CreateGeneratedTemplateInput
        operation.output = CreateGeneratedTemplateOutput
        operation.errors << AlreadyExistsException
        operation.errors << ConcurrentResourcesLimitExceededException
        operation.errors << LimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_stack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#CreateStack"
        operation.name = "CreateStack"
        operation.input = CreateStackInput
        operation.output = CreateStackOutput
        operation.errors << AlreadyExistsException
        operation.errors << InsufficientCapabilitiesException
        operation.errors << LimitExceededException
        operation.errors << TokenAlreadyExistsException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "CreateStackFailure", "params" => {"StackName" => "fakestack", "TemplateURL" => "http://s3.amazonaws.com/foo/bar"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
      end)
      service.add_operation(:create_stack_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#CreateStackInstances"
        operation.name = "CreateStackInstances"
        operation.input = CreateStackInstancesInput
        operation.output = CreateStackInstancesOutput
        operation.errors << InvalidOperationException
        operation.errors << LimitExceededException
        operation.errors << OperationIdAlreadyExistsException
        operation.errors << OperationInProgressException
        operation.errors << StackSetNotFoundException
        operation.errors << StaleRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_stack_refactor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#CreateStackRefactor"
        operation.name = "CreateStackRefactor"
        operation.input = CreateStackRefactorInput
        operation.output = CreateStackRefactorOutput
        operation.traits = {}
      end)
      service.add_operation(:create_stack_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#CreateStackSet"
        operation.name = "CreateStackSet"
        operation.input = CreateStackSetInput
        operation.output = CreateStackSetOutput
        operation.errors << CreatedButModifiedException
        operation.errors << LimitExceededException
        operation.errors << NameAlreadyExistsException
        operation.traits = {}
      end)
      service.add_operation(:deactivate_organizations_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DeactivateOrganizationsAccess"
        operation.name = "DeactivateOrganizationsAccess"
        operation.input = DeactivateOrganizationsAccessInput
        operation.output = DeactivateOrganizationsAccessOutput
        operation.errors << InvalidOperationException
        operation.errors << OperationNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:deactivate_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DeactivateType"
        operation.name = "DeactivateType"
        operation.input = DeactivateTypeInput
        operation.output = DeactivateTypeOutput
        operation.errors << CFNRegistryException
        operation.errors << TypeNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_change_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DeleteChangeSet"
        operation.name = "DeleteChangeSet"
        operation.input = DeleteChangeSetInput
        operation.output = DeleteChangeSetOutput
        operation.errors << InvalidChangeSetStatusException
        operation.traits = {}
      end)
      service.add_operation(:delete_generated_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DeleteGeneratedTemplate"
        operation.name = "DeleteGeneratedTemplate"
        operation.input = DeleteGeneratedTemplateInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentResourcesLimitExceededException
        operation.errors << GeneratedTemplateNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_stack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DeleteStack"
        operation.name = "DeleteStack"
        operation.input = DeleteStackInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << TokenAlreadyExistsException
        operation.traits = {}
      end)
      service.add_operation(:delete_stack_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DeleteStackInstances"
        operation.name = "DeleteStackInstances"
        operation.input = DeleteStackInstancesInput
        operation.output = DeleteStackInstancesOutput
        operation.errors << InvalidOperationException
        operation.errors << OperationIdAlreadyExistsException
        operation.errors << OperationInProgressException
        operation.errors << StackSetNotFoundException
        operation.errors << StaleRequestException
        operation.traits = {}
      end)
      service.add_operation(:delete_stack_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DeleteStackSet"
        operation.name = "DeleteStackSet"
        operation.input = DeleteStackSetInput
        operation.output = DeleteStackSetOutput
        operation.errors << OperationInProgressException
        operation.errors << StackSetNotEmptyException
        operation.traits = {}
      end)
      service.add_operation(:deregister_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DeregisterType"
        operation.name = "DeregisterType"
        operation.input = DeregisterTypeInput
        operation.output = DeregisterTypeOutput
        operation.errors << CFNRegistryException
        operation.errors << TypeNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_account_limits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DescribeAccountLimits"
        operation.name = "DescribeAccountLimits"
        operation.input = DescribeAccountLimitsInput
        operation.output = DescribeAccountLimitsOutput
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAccountLimits.new
      end)
      service.add_operation(:describe_change_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DescribeChangeSet"
        operation.name = "DescribeChangeSet"
        operation.input = DescribeChangeSetInput
        operation.output = DescribeChangeSetOutput
        operation.errors << ChangeSetNotFoundException
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
      end)
      service.add_operation(:describe_change_set_hooks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DescribeChangeSetHooks"
        operation.name = "DescribeChangeSetHooks"
        operation.input = DescribeChangeSetHooksInput
        operation.output = DescribeChangeSetHooksOutput
        operation.errors << ChangeSetNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_generated_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DescribeGeneratedTemplate"
        operation.name = "DescribeGeneratedTemplate"
        operation.input = DescribeGeneratedTemplateInput
        operation.output = DescribeGeneratedTemplateOutput
        operation.errors << GeneratedTemplateNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_organizations_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DescribeOrganizationsAccess"
        operation.name = "DescribeOrganizationsAccess"
        operation.input = DescribeOrganizationsAccessInput
        operation.output = DescribeOrganizationsAccessOutput
        operation.errors << InvalidOperationException
        operation.errors << OperationNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_publisher, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DescribePublisher"
        operation.name = "DescribePublisher"
        operation.input = DescribePublisherInput
        operation.output = DescribePublisherOutput
        operation.errors << CFNRegistryException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_resource_scan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DescribeResourceScan"
        operation.name = "DescribeResourceScan"
        operation.input = DescribeResourceScanInput
        operation.output = DescribeResourceScanOutput
        operation.errors << ResourceScanNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_stack_drift_detection_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DescribeStackDriftDetectionStatus"
        operation.name = "DescribeStackDriftDetectionStatus"
        operation.input = DescribeStackDriftDetectionStatusInput
        operation.output = DescribeStackDriftDetectionStatusOutput
        operation.traits = {}
      end)
      service.add_operation(:describe_stack_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DescribeStackEvents"
        operation.name = "DescribeStackEvents"
        operation.input = DescribeStackEventsInput
        operation.output = DescribeStackEventsOutput
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeStackEvents.new
      end)
      service.add_operation(:describe_stack_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DescribeStackInstance"
        operation.name = "DescribeStackInstance"
        operation.input = DescribeStackInstanceInput
        operation.output = DescribeStackInstanceOutput
        operation.errors << StackInstanceNotFoundException
        operation.errors << StackSetNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_stack_refactor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DescribeStackRefactor"
        operation.name = "DescribeStackRefactor"
        operation.input = DescribeStackRefactorInput
        operation.output = DescribeStackRefactorOutput
        operation.errors << StackRefactorNotFoundException
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
      end)
      service.add_operation(:describe_stack_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DescribeStackResource"
        operation.name = "DescribeStackResource"
        operation.input = DescribeStackResourceInput
        operation.output = DescribeStackResourceOutput
        operation.traits = {}
      end)
      service.add_operation(:describe_stack_resource_drifts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DescribeStackResourceDrifts"
        operation.name = "DescribeStackResourceDrifts"
        operation.input = DescribeStackResourceDriftsInput
        operation.output = DescribeStackResourceDriftsOutput
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeStackResourceDrifts.new
      end)
      service.add_operation(:describe_stack_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DescribeStackResources"
        operation.name = "DescribeStackResources"
        operation.input = DescribeStackResourcesInput
        operation.output = DescribeStackResourcesOutput
        operation.traits = {}
      end)
      service.add_operation(:describe_stack_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DescribeStackSet"
        operation.name = "DescribeStackSet"
        operation.input = DescribeStackSetInput
        operation.output = DescribeStackSetOutput
        operation.errors << StackSetNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_stack_set_operation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DescribeStackSetOperation"
        operation.name = "DescribeStackSetOperation"
        operation.input = DescribeStackSetOperationInput
        operation.output = DescribeStackSetOperationOutput
        operation.errors << OperationNotFoundException
        operation.errors << StackSetNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_stacks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DescribeStacks"
        operation.name = "DescribeStacks"
        operation.input = DescribeStacksInput
        operation.output = DescribeStacksOutput
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
        operation[:paginator] = Paginators::DescribeStacks.new
      end)
      service.add_operation(:describe_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DescribeType"
        operation.name = "DescribeType"
        operation.input = DescribeTypeInput
        operation.output = DescribeTypeOutput
        operation.errors << CFNRegistryException
        operation.errors << TypeNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_type_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DescribeTypeRegistration"
        operation.name = "DescribeTypeRegistration"
        operation.input = DescribeTypeRegistrationInput
        operation.output = DescribeTypeRegistrationOutput
        operation.errors << CFNRegistryException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:detect_stack_drift, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DetectStackDrift"
        operation.name = "DetectStackDrift"
        operation.input = DetectStackDriftInput
        operation.output = DetectStackDriftOutput
        operation.traits = {}
      end)
      service.add_operation(:detect_stack_resource_drift, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DetectStackResourceDrift"
        operation.name = "DetectStackResourceDrift"
        operation.input = DetectStackResourceDriftInput
        operation.output = DetectStackResourceDriftOutput
        operation.traits = {}
      end)
      service.add_operation(:detect_stack_set_drift, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#DetectStackSetDrift"
        operation.name = "DetectStackSetDrift"
        operation.input = DetectStackSetDriftInput
        operation.output = DetectStackSetDriftOutput
        operation.errors << InvalidOperationException
        operation.errors << OperationInProgressException
        operation.errors << StackSetNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:estimate_template_cost, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#EstimateTemplateCost"
        operation.name = "EstimateTemplateCost"
        operation.input = EstimateTemplateCostInput
        operation.output = EstimateTemplateCostOutput
        operation.traits = {}
      end)
      service.add_operation(:execute_change_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ExecuteChangeSet"
        operation.name = "ExecuteChangeSet"
        operation.input = ExecuteChangeSetInput
        operation.output = ExecuteChangeSetOutput
        operation.errors << ChangeSetNotFoundException
        operation.errors << InsufficientCapabilitiesException
        operation.errors << InvalidChangeSetStatusException
        operation.errors << TokenAlreadyExistsException
        operation.traits = {}
      end)
      service.add_operation(:execute_stack_refactor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ExecuteStackRefactor"
        operation.name = "ExecuteStackRefactor"
        operation.input = ExecuteStackRefactorInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {}
      end)
      service.add_operation(:get_generated_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#GetGeneratedTemplate"
        operation.name = "GetGeneratedTemplate"
        operation.input = GetGeneratedTemplateInput
        operation.output = GetGeneratedTemplateOutput
        operation.errors << GeneratedTemplateNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_stack_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#GetStackPolicy"
        operation.name = "GetStackPolicy"
        operation.input = GetStackPolicyInput
        operation.output = GetStackPolicyOutput
        operation.traits = {}
      end)
      service.add_operation(:get_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#GetTemplate"
        operation.name = "GetTemplate"
        operation.input = GetTemplateInput
        operation.output = GetTemplateOutput
        operation.errors << ChangeSetNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_template_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#GetTemplateSummary"
        operation.name = "GetTemplateSummary"
        operation.input = GetTemplateSummaryInput
        operation.output = GetTemplateSummaryOutput
        operation.errors << StackSetNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:import_stacks_to_stack_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ImportStacksToStackSet"
        operation.name = "ImportStacksToStackSet"
        operation.input = ImportStacksToStackSetInput
        operation.output = ImportStacksToStackSetOutput
        operation.errors << InvalidOperationException
        operation.errors << LimitExceededException
        operation.errors << OperationIdAlreadyExistsException
        operation.errors << OperationInProgressException
        operation.errors << StackNotFoundException
        operation.errors << StackSetNotFoundException
        operation.errors << StaleRequestException
        operation.traits = {}
      end)
      service.add_operation(:list_change_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ListChangeSets"
        operation.name = "ListChangeSets"
        operation.input = ListChangeSetsInput
        operation.output = ListChangeSetsOutput
        operation.traits = {}
        operation[:paginator] = Paginators::ListChangeSets.new
      end)
      service.add_operation(:list_exports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ListExports"
        operation.name = "ListExports"
        operation.input = ListExportsInput
        operation.output = ListExportsOutput
        operation.traits = {}
        operation[:paginator] = Paginators::ListExports.new
      end)
      service.add_operation(:list_generated_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ListGeneratedTemplates"
        operation.name = "ListGeneratedTemplates"
        operation.input = ListGeneratedTemplatesInput
        operation.output = ListGeneratedTemplatesOutput
        operation.traits = {}
        operation[:paginator] = Paginators::ListGeneratedTemplates.new
      end)
      service.add_operation(:list_hook_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ListHookResults"
        operation.name = "ListHookResults"
        operation.input = ListHookResultsInput
        operation.output = ListHookResultsOutput
        operation.errors << HookResultNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_imports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ListImports"
        operation.name = "ListImports"
        operation.input = ListImportsInput
        operation.output = ListImportsOutput
        operation.traits = {}
        operation[:paginator] = Paginators::ListImports.new
      end)
      service.add_operation(:list_resource_scan_related_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ListResourceScanRelatedResources"
        operation.name = "ListResourceScanRelatedResources"
        operation.input = ListResourceScanRelatedResourcesInput
        operation.output = ListResourceScanRelatedResourcesOutput
        operation.errors << ResourceScanInProgressException
        operation.errors << ResourceScanNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListResourceScanRelatedResources.new
      end)
      service.add_operation(:list_resource_scan_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ListResourceScanResources"
        operation.name = "ListResourceScanResources"
        operation.input = ListResourceScanResourcesInput
        operation.output = ListResourceScanResourcesOutput
        operation.errors << ResourceScanInProgressException
        operation.errors << ResourceScanNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListResourceScanResources.new
      end)
      service.add_operation(:list_resource_scans, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ListResourceScans"
        operation.name = "ListResourceScans"
        operation.input = ListResourceScansInput
        operation.output = ListResourceScansOutput
        operation.traits = {}
        operation[:paginator] = Paginators::ListResourceScans.new
      end)
      service.add_operation(:list_stack_instance_resource_drifts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ListStackInstanceResourceDrifts"
        operation.name = "ListStackInstanceResourceDrifts"
        operation.input = ListStackInstanceResourceDriftsInput
        operation.output = ListStackInstanceResourceDriftsOutput
        operation.errors << OperationNotFoundException
        operation.errors << StackInstanceNotFoundException
        operation.errors << StackSetNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_stack_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ListStackInstances"
        operation.name = "ListStackInstances"
        operation.input = ListStackInstancesInput
        operation.output = ListStackInstancesOutput
        operation.errors << StackSetNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListStackInstances.new
      end)
      service.add_operation(:list_stack_refactor_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ListStackRefactorActions"
        operation.name = "ListStackRefactorActions"
        operation.input = ListStackRefactorActionsInput
        operation.output = ListStackRefactorActionsOutput
        operation.traits = {}
        operation[:paginator] = Paginators::ListStackRefactorActions.new
      end)
      service.add_operation(:list_stack_refactors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ListStackRefactors"
        operation.name = "ListStackRefactors"
        operation.input = ListStackRefactorsInput
        operation.output = ListStackRefactorsOutput
        operation.traits = {}
        operation[:paginator] = Paginators::ListStackRefactors.new
      end)
      service.add_operation(:list_stack_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ListStackResources"
        operation.name = "ListStackResources"
        operation.input = ListStackResourcesInput
        operation.output = ListStackResourcesOutput
        operation.traits = {}
        operation[:paginator] = Paginators::ListStackResources.new
      end)
      service.add_operation(:list_stack_set_auto_deployment_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ListStackSetAutoDeploymentTargets"
        operation.name = "ListStackSetAutoDeploymentTargets"
        operation.input = ListStackSetAutoDeploymentTargetsInput
        operation.output = ListStackSetAutoDeploymentTargetsOutput
        operation.errors << StackSetNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_stack_set_operation_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ListStackSetOperationResults"
        operation.name = "ListStackSetOperationResults"
        operation.input = ListStackSetOperationResultsInput
        operation.output = ListStackSetOperationResultsOutput
        operation.errors << OperationNotFoundException
        operation.errors << StackSetNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListStackSetOperationResults.new
      end)
      service.add_operation(:list_stack_set_operations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ListStackSetOperations"
        operation.name = "ListStackSetOperations"
        operation.input = ListStackSetOperationsInput
        operation.output = ListStackSetOperationsOutput
        operation.errors << StackSetNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListStackSetOperations.new
      end)
      service.add_operation(:list_stack_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ListStackSets"
        operation.name = "ListStackSets"
        operation.input = ListStackSetsInput
        operation.output = ListStackSetsOutput
        operation.traits = {}
        operation[:paginator] = Paginators::ListStackSets.new
      end)
      service.add_operation(:list_stacks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ListStacks"
        operation.name = "ListStacks"
        operation.input = ListStacksInput
        operation.output = ListStacksOutput
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListStacksSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListStacks.new
      end)
      service.add_operation(:list_type_registrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ListTypeRegistrations"
        operation.name = "ListTypeRegistrations"
        operation.input = ListTypeRegistrationsInput
        operation.output = ListTypeRegistrationsOutput
        operation.errors << CFNRegistryException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListTypeRegistrations.new
      end)
      service.add_operation(:list_type_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ListTypeVersions"
        operation.name = "ListTypeVersions"
        operation.input = ListTypeVersionsInput
        operation.output = ListTypeVersionsOutput
        operation.errors << CFNRegistryException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListTypeVersions.new
      end)
      service.add_operation(:list_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ListTypes"
        operation.name = "ListTypes"
        operation.input = ListTypesInput
        operation.output = ListTypesOutput
        operation.errors << CFNRegistryException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListTypes.new
      end)
      service.add_operation(:publish_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#PublishType"
        operation.name = "PublishType"
        operation.input = PublishTypeInput
        operation.output = PublishTypeOutput
        operation.errors << CFNRegistryException
        operation.errors << TypeNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:record_handler_progress, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#RecordHandlerProgress"
        operation.name = "RecordHandlerProgress"
        operation.input = RecordHandlerProgressInput
        operation.output = RecordHandlerProgressOutput
        operation.errors << InvalidStateTransitionException
        operation.errors << OperationStatusCheckFailedException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:register_publisher, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#RegisterPublisher"
        operation.name = "RegisterPublisher"
        operation.input = RegisterPublisherInput
        operation.output = RegisterPublisherOutput
        operation.errors << CFNRegistryException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:register_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#RegisterType"
        operation.name = "RegisterType"
        operation.input = RegisterTypeInput
        operation.output = RegisterTypeOutput
        operation.errors << CFNRegistryException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:rollback_stack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#RollbackStack"
        operation.name = "RollbackStack"
        operation.input = RollbackStackInput
        operation.output = RollbackStackOutput
        operation.errors << TokenAlreadyExistsException
        operation.traits = {}
      end)
      service.add_operation(:set_stack_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#SetStackPolicy"
        operation.name = "SetStackPolicy"
        operation.input = SetStackPolicyInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {}
      end)
      service.add_operation(:set_type_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#SetTypeConfiguration"
        operation.name = "SetTypeConfiguration"
        operation.input = SetTypeConfigurationInput
        operation.output = SetTypeConfigurationOutput
        operation.errors << CFNRegistryException
        operation.errors << TypeNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:set_type_default_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#SetTypeDefaultVersion"
        operation.name = "SetTypeDefaultVersion"
        operation.input = SetTypeDefaultVersionInput
        operation.output = SetTypeDefaultVersionOutput
        operation.errors << CFNRegistryException
        operation.errors << TypeNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:signal_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#SignalResource"
        operation.name = "SignalResource"
        operation.input = SignalResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {}
      end)
      service.add_operation(:start_resource_scan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#StartResourceScan"
        operation.name = "StartResourceScan"
        operation.input = StartResourceScanInput
        operation.output = StartResourceScanOutput
        operation.errors << ResourceScanInProgressException
        operation.errors << ResourceScanLimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:stop_stack_set_operation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#StopStackSetOperation"
        operation.name = "StopStackSetOperation"
        operation.input = StopStackSetOperationInput
        operation.output = StopStackSetOperationOutput
        operation.errors << InvalidOperationException
        operation.errors << OperationNotFoundException
        operation.errors << StackSetNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:test_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#TestType"
        operation.name = "TestType"
        operation.input = TestTypeInput
        operation.output = TestTypeOutput
        operation.errors << CFNRegistryException
        operation.errors << TypeNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_generated_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#UpdateGeneratedTemplate"
        operation.name = "UpdateGeneratedTemplate"
        operation.input = UpdateGeneratedTemplateInput
        operation.output = UpdateGeneratedTemplateOutput
        operation.errors << AlreadyExistsException
        operation.errors << GeneratedTemplateNotFoundException
        operation.errors << LimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:update_stack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#UpdateStack"
        operation.name = "UpdateStack"
        operation.input = UpdateStackInput
        operation.output = UpdateStackOutput
        operation.errors << InsufficientCapabilitiesException
        operation.errors << TokenAlreadyExistsException
        operation.traits = {}
      end)
      service.add_operation(:update_stack_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#UpdateStackInstances"
        operation.name = "UpdateStackInstances"
        operation.input = UpdateStackInstancesInput
        operation.output = UpdateStackInstancesOutput
        operation.errors << InvalidOperationException
        operation.errors << OperationIdAlreadyExistsException
        operation.errors << OperationInProgressException
        operation.errors << StackInstanceNotFoundException
        operation.errors << StackSetNotFoundException
        operation.errors << StaleRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_stack_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#UpdateStackSet"
        operation.name = "UpdateStackSet"
        operation.input = UpdateStackSetInput
        operation.output = UpdateStackSetOutput
        operation.errors << InvalidOperationException
        operation.errors << OperationIdAlreadyExistsException
        operation.errors << OperationInProgressException
        operation.errors << StackInstanceNotFoundException
        operation.errors << StackSetNotFoundException
        operation.errors << StaleRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_termination_protection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#UpdateTerminationProtection"
        operation.name = "UpdateTerminationProtection"
        operation.input = UpdateTerminationProtectionInput
        operation.output = UpdateTerminationProtectionOutput
        operation.traits = {}
      end)
      service.add_operation(:validate_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudformation#ValidateTemplate"
        operation.name = "ValidateTemplate"
        operation.input = ValidateTemplateInput
        operation.output = ValidateTemplateOutput
        operation.traits = {}
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
