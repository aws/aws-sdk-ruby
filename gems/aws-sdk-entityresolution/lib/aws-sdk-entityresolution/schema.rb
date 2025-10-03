# frozen_string_literal: true

# This is generated code!

module Aws::EntityResolution
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AddPolicyStatementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#AddPolicyStatementInput', name: 'AddPolicyStatementInput')
    AddPolicyStatementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#AddPolicyStatementOutput', name: 'AddPolicyStatementOutput')
    AttributeMatchingModel = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.entityresolution#AttributeMatchingModel', name: 'AttributeMatchingModel')
    AttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#AttributeName', name: 'AttributeName', traits: {"smithy.api#length" => {"max" => 255}, "smithy.api#pattern" => "^[a-zA-Z_0-9- ]*$"})
    AwsAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#AwsAccountId', name: 'AwsAccountId', traits: {"smithy.api#pattern" => "^\\d{12}$"})
    AwsAccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#AwsAccountIdList', name: 'AwsAccountIdList')
    BatchDeleteUniqueIdInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#BatchDeleteUniqueIdInput', name: 'BatchDeleteUniqueIdInput')
    BatchDeleteUniqueIdOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#BatchDeleteUniqueIdOutput', name: 'BatchDeleteUniqueIdOutput')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CreateIdMappingWorkflowInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#CreateIdMappingWorkflowInput', name: 'CreateIdMappingWorkflowInput')
    CreateIdMappingWorkflowOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#CreateIdMappingWorkflowOutput', name: 'CreateIdMappingWorkflowOutput')
    CreateIdNamespaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#CreateIdNamespaceInput', name: 'CreateIdNamespaceInput')
    CreateIdNamespaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#CreateIdNamespaceOutput', name: 'CreateIdNamespaceOutput')
    CreateMatchingWorkflowInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#CreateMatchingWorkflowInput', name: 'CreateMatchingWorkflowInput')
    CreateMatchingWorkflowOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#CreateMatchingWorkflowOutput', name: 'CreateMatchingWorkflowOutput')
    CreateSchemaMappingInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#CreateSchemaMappingInput', name: 'CreateSchemaMappingInput')
    CreateSchemaMappingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#CreateSchemaMappingOutput', name: 'CreateSchemaMappingOutput')
    DeleteIdMappingWorkflowInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#DeleteIdMappingWorkflowInput', name: 'DeleteIdMappingWorkflowInput')
    DeleteIdMappingWorkflowOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#DeleteIdMappingWorkflowOutput', name: 'DeleteIdMappingWorkflowOutput')
    DeleteIdNamespaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#DeleteIdNamespaceInput', name: 'DeleteIdNamespaceInput')
    DeleteIdNamespaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#DeleteIdNamespaceOutput', name: 'DeleteIdNamespaceOutput')
    DeleteMatchingWorkflowInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#DeleteMatchingWorkflowInput', name: 'DeleteMatchingWorkflowInput')
    DeleteMatchingWorkflowOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#DeleteMatchingWorkflowOutput', name: 'DeleteMatchingWorkflowOutput')
    DeletePolicyStatementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#DeletePolicyStatementInput', name: 'DeletePolicyStatementInput')
    DeletePolicyStatementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#DeletePolicyStatementOutput', name: 'DeletePolicyStatementOutput')
    DeleteSchemaMappingInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#DeleteSchemaMappingInput', name: 'DeleteSchemaMappingInput')
    DeleteSchemaMappingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#DeleteSchemaMappingOutput', name: 'DeleteSchemaMappingOutput')
    DeleteUniqueIdError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#DeleteUniqueIdError', name: 'DeleteUniqueIdError')
    DeleteUniqueIdErrorType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.entityresolution#DeleteUniqueIdErrorType', name: 'DeleteUniqueIdErrorType')
    DeleteUniqueIdErrorsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#DeleteUniqueIdErrorsList', name: 'DeleteUniqueIdErrorsList')
    DeleteUniqueIdStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.entityresolution#DeleteUniqueIdStatus', name: 'DeleteUniqueIdStatus')
    DeletedUniqueId = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#DeletedUniqueId', name: 'DeletedUniqueId')
    DeletedUniqueIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#DeletedUniqueIdList', name: 'DeletedUniqueIdList')
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#Description', name: 'Description', traits: {"smithy.api#length" => {"max" => 255}})
    DisconnectedUniqueIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#DisconnectedUniqueIdsList', name: 'DisconnectedUniqueIdsList')
    EntityName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#EntityName', name: 'EntityName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z_0-9-]*$"})
    EntityNameOrIdMappingWorkflowArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#EntityNameOrIdMappingWorkflowArn', name: 'EntityNameOrIdMappingWorkflowArn', traits: {"smithy.api#pattern" => "^[a-zA-Z_0-9-=+/]*$|^arn:(aws|aws-us-gov|aws-cn):entityresolution:[a-z]{2}-[a-z]{1,10}-[0-9]:[0-9]{12}:(idmappingworkflow/[a-zA-Z_0-9-]{1,255})$"})
    EntityNameOrIdNamespaceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#EntityNameOrIdNamespaceArn', name: 'EntityNameOrIdNamespaceArn', traits: {"smithy.api#pattern" => "^[a-zA-Z_0-9-=+/]*$|^arn:(aws|aws-us-gov|aws-cn):entityresolution:[a-z]{2}-[a-z]{1,10}-[0-9]:[0-9]{12}:(idnamespace/[a-zA-Z_0-9-]{1,255})$"})
    ErrorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ErrorDetails', name: 'ErrorDetails')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ExceedsLimitException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ExceedsLimitException', name: 'ExceedsLimitException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    FailedRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#FailedRecord', name: 'FailedRecord')
    FailedRecordsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#FailedRecordsList', name: 'FailedRecordsList')
    GenerateMatchIdInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#GenerateMatchIdInput', name: 'GenerateMatchIdInput')
    GenerateMatchIdOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#GenerateMatchIdOutput', name: 'GenerateMatchIdOutput')
    GetIdMappingJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#GetIdMappingJobInput', name: 'GetIdMappingJobInput')
    GetIdMappingJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#GetIdMappingJobOutput', name: 'GetIdMappingJobOutput')
    GetIdMappingWorkflowInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#GetIdMappingWorkflowInput', name: 'GetIdMappingWorkflowInput')
    GetIdMappingWorkflowOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#GetIdMappingWorkflowOutput', name: 'GetIdMappingWorkflowOutput')
    GetIdNamespaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#GetIdNamespaceInput', name: 'GetIdNamespaceInput')
    GetIdNamespaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#GetIdNamespaceOutput', name: 'GetIdNamespaceOutput')
    GetMatchIdInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#GetMatchIdInput', name: 'GetMatchIdInput')
    GetMatchIdOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#GetMatchIdOutput', name: 'GetMatchIdOutput')
    GetMatchingJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#GetMatchingJobInput', name: 'GetMatchingJobInput')
    GetMatchingJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#GetMatchingJobOutput', name: 'GetMatchingJobOutput')
    GetMatchingWorkflowInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#GetMatchingWorkflowInput', name: 'GetMatchingWorkflowInput')
    GetMatchingWorkflowOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#GetMatchingWorkflowOutput', name: 'GetMatchingWorkflowOutput')
    GetPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#GetPolicyInput', name: 'GetPolicyInput')
    GetPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#GetPolicyOutput', name: 'GetPolicyOutput')
    GetProviderServiceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#GetProviderServiceInput', name: 'GetProviderServiceInput')
    GetProviderServiceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#GetProviderServiceOutput', name: 'GetProviderServiceOutput')
    GetSchemaMappingInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#GetSchemaMappingInput', name: 'GetSchemaMappingInput')
    GetSchemaMappingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#GetSchemaMappingOutput', name: 'GetSchemaMappingOutput')
    HeaderSafeUniqueId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#HeaderSafeUniqueId', name: 'HeaderSafeUniqueId', traits: {"smithy.api#length" => {"min" => 1, "max" => 780}, "smithy.api#pattern" => "^[a-zA-Z_0-9-+=/,]*$"})
    IdMappingIncrementalRunConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#IdMappingIncrementalRunConfig', name: 'IdMappingIncrementalRunConfig')
    IdMappingIncrementalRunType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.entityresolution#IdMappingIncrementalRunType', name: 'IdMappingIncrementalRunType')
    IdMappingJobMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#IdMappingJobMetrics', name: 'IdMappingJobMetrics')
    IdMappingJobOutputSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#IdMappingJobOutputSource', name: 'IdMappingJobOutputSource')
    IdMappingJobOutputSourceConfig = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#IdMappingJobOutputSourceConfig', name: 'IdMappingJobOutputSourceConfig', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    IdMappingRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#IdMappingRoleArn', name: 'IdMappingRoleArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^$|^arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    IdMappingRuleBasedProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#IdMappingRuleBasedProperties', name: 'IdMappingRuleBasedProperties')
    IdMappingTechniques = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#IdMappingTechniques', name: 'IdMappingTechniques')
    IdMappingType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.entityresolution#IdMappingType', name: 'IdMappingType')
    IdMappingWorkflowArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#IdMappingWorkflowArn', name: 'IdMappingWorkflowArn', traits: {"smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn):entityresolution:[a-z]{2}-[a-z]{1,10}-[0-9]:[0-9]{12}:(idmappingworkflow/[a-zA-Z_0-9-]{1,255})$"})
    IdMappingWorkflowInputSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#IdMappingWorkflowInputSource', name: 'IdMappingWorkflowInputSource')
    IdMappingWorkflowInputSourceConfig = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#IdMappingWorkflowInputSourceConfig', name: 'IdMappingWorkflowInputSourceConfig', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    IdMappingWorkflowList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#IdMappingWorkflowList', name: 'IdMappingWorkflowList')
    IdMappingWorkflowOutputSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#IdMappingWorkflowOutputSource', name: 'IdMappingWorkflowOutputSource')
    IdMappingWorkflowOutputSourceConfig = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#IdMappingWorkflowOutputSourceConfig', name: 'IdMappingWorkflowOutputSourceConfig', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    IdMappingWorkflowRuleDefinitionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.entityresolution#IdMappingWorkflowRuleDefinitionType', name: 'IdMappingWorkflowRuleDefinitionType')
    IdMappingWorkflowRuleDefinitionTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#IdMappingWorkflowRuleDefinitionTypeList', name: 'IdMappingWorkflowRuleDefinitionTypeList')
    IdMappingWorkflowSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#IdMappingWorkflowSummary', name: 'IdMappingWorkflowSummary')
    IdNamespaceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#IdNamespaceArn', name: 'IdNamespaceArn', traits: {"smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn):entityresolution:[a-z]{2}-[a-z]{1,10}-[0-9]:[0-9]{12}:(idnamespace/[a-zA-Z_0-9-]{1,255})$"})
    IdNamespaceIdMappingWorkflowMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#IdNamespaceIdMappingWorkflowMetadata', name: 'IdNamespaceIdMappingWorkflowMetadata')
    IdNamespaceIdMappingWorkflowMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#IdNamespaceIdMappingWorkflowMetadataList', name: 'IdNamespaceIdMappingWorkflowMetadataList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    IdNamespaceIdMappingWorkflowProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#IdNamespaceIdMappingWorkflowProperties', name: 'IdNamespaceIdMappingWorkflowProperties')
    IdNamespaceIdMappingWorkflowPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#IdNamespaceIdMappingWorkflowPropertiesList', name: 'IdNamespaceIdMappingWorkflowPropertiesList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    IdNamespaceInputSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#IdNamespaceInputSource', name: 'IdNamespaceInputSource')
    IdNamespaceInputSourceConfig = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#IdNamespaceInputSourceConfig', name: 'IdNamespaceInputSourceConfig', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    IdNamespaceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#IdNamespaceList', name: 'IdNamespaceList')
    IdNamespaceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#IdNamespaceSummary', name: 'IdNamespaceSummary')
    IdNamespaceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.entityresolution#IdNamespaceType', name: 'IdNamespaceType')
    IncrementalRunConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#IncrementalRunConfig', name: 'IncrementalRunConfig')
    IncrementalRunType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.entityresolution#IncrementalRunType', name: 'IncrementalRunType')
    InputSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#InputSource', name: 'InputSource')
    InputSourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#InputSourceARN', name: 'InputSourceARN', traits: {"smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn):entityresolution:[a-z]{2}-[a-z]{1,10}-[0-9]:[0-9]{12}:(idnamespace/[a-zA-Z_0-9-]{1,255})$|^arn:(aws|aws-us-gov|aws-cn):entityresolution:[a-z]{2}-[a-z]{1,10}-[0-9]:[0-9]{12}:(matchingworkflow/[a-zA-Z_0-9-]{1,255})$|^arn:(aws|aws-us-gov|aws-cn):glue:[a-z]{2}-[a-z]{1,10}-[0-9]:[0-9]{12}:(table/[a-zA-Z_0-9-]{1,255}/[a-zA-Z_0-9-]{1,255})$"})
    InputSourceConfig = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#InputSourceConfig', name: 'InputSourceConfig', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    IntermediateSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#IntermediateSourceConfiguration', name: 'IntermediateSourceConfiguration')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#JobId', name: 'JobId', traits: {"smithy.api#pattern" => "^[a-f0-9]{32}$"})
    JobList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#JobList', name: 'JobList')
    JobMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#JobMetrics', name: 'JobMetrics')
    JobOutputSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#JobOutputSource', name: 'JobOutputSource')
    JobOutputSourceConfig = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#JobOutputSourceConfig', name: 'JobOutputSourceConfig', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    JobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.entityresolution#JobStatus', name: 'JobStatus')
    JobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#JobSummary', name: 'JobSummary')
    JobType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.entityresolution#JobType', name: 'JobType')
    KMSArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#KMSArn', name: 'KMSArn', traits: {"smithy.api#pattern" => "^arn:aws:kms:.*:[0-9]+:.*$"})
    ListIdMappingJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ListIdMappingJobsInput', name: 'ListIdMappingJobsInput')
    ListIdMappingJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ListIdMappingJobsOutput', name: 'ListIdMappingJobsOutput')
    ListIdMappingWorkflowsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ListIdMappingWorkflowsInput', name: 'ListIdMappingWorkflowsInput')
    ListIdMappingWorkflowsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ListIdMappingWorkflowsOutput', name: 'ListIdMappingWorkflowsOutput')
    ListIdNamespacesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ListIdNamespacesInput', name: 'ListIdNamespacesInput')
    ListIdNamespacesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ListIdNamespacesOutput', name: 'ListIdNamespacesOutput')
    ListMatchingJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ListMatchingJobsInput', name: 'ListMatchingJobsInput')
    ListMatchingJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ListMatchingJobsOutput', name: 'ListMatchingJobsOutput')
    ListMatchingWorkflowsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ListMatchingWorkflowsInput', name: 'ListMatchingWorkflowsInput')
    ListMatchingWorkflowsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ListMatchingWorkflowsOutput', name: 'ListMatchingWorkflowsOutput')
    ListProviderServicesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ListProviderServicesInput', name: 'ListProviderServicesInput')
    ListProviderServicesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ListProviderServicesOutput', name: 'ListProviderServicesOutput')
    ListSchemaMappingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ListSchemaMappingsInput', name: 'ListSchemaMappingsInput')
    ListSchemaMappingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ListSchemaMappingsOutput', name: 'ListSchemaMappingsOutput')
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    MatchGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#MatchGroup', name: 'MatchGroup')
    MatchGroupsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#MatchGroupsList', name: 'MatchGroupsList')
    MatchPurpose = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.entityresolution#MatchPurpose', name: 'MatchPurpose')
    MatchedRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#MatchedRecord', name: 'MatchedRecord')
    MatchedRecordsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#MatchedRecordsList', name: 'MatchedRecordsList')
    MatchingKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#MatchingKeys', name: 'MatchingKeys')
    MatchingWorkflowArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#MatchingWorkflowArn', name: 'MatchingWorkflowArn', traits: {"smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn):entityresolution:[a-z]{2}-[a-z]{1,10}-[0-9]:[0-9]{12}:(matchingworkflow/[a-zA-Z_0-9-]{1,255})$"})
    MatchingWorkflowList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#MatchingWorkflowList', name: 'MatchingWorkflowList')
    MatchingWorkflowSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#MatchingWorkflowSummary', name: 'MatchingWorkflowSummary')
    NamespaceProviderProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#NamespaceProviderProperties', name: 'NamespaceProviderProperties')
    NamespaceRuleBasedProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#NamespaceRuleBasedProperties', name: 'NamespaceRuleBasedProperties')
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z_0-9-=+/]*$"})
    OutputAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#OutputAttribute', name: 'OutputAttribute')
    OutputAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#OutputAttributes', name: 'OutputAttributes')
    OutputSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#OutputSource', name: 'OutputSource')
    OutputSourceConfig = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#OutputSourceConfig', name: 'OutputSourceConfig', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    PolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#PolicyDocument', name: 'PolicyDocument', traits: {"smithy.api#length" => {"min" => 1, "max" => 40960}})
    PolicyToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#PolicyToken', name: 'PolicyToken', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"})
    ProcessingType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.entityresolution#ProcessingType', name: 'ProcessingType')
    ProviderComponentSchema = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ProviderComponentSchema', name: 'ProviderComponentSchema')
    ProviderEndpointConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.entityresolution#ProviderEndpointConfiguration', name: 'ProviderEndpointConfiguration')
    ProviderIdNameSpaceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ProviderIdNameSpaceConfiguration', name: 'ProviderIdNameSpaceConfiguration')
    ProviderIntermediateDataAccessConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ProviderIntermediateDataAccessConfiguration', name: 'ProviderIntermediateDataAccessConfiguration')
    ProviderMarketplaceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ProviderMarketplaceConfiguration', name: 'ProviderMarketplaceConfiguration')
    ProviderProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ProviderProperties', name: 'ProviderProperties')
    ProviderSchemaAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ProviderSchemaAttribute', name: 'ProviderSchemaAttribute')
    ProviderSchemaAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#ProviderSchemaAttributes', name: 'ProviderSchemaAttributes')
    ProviderServiceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#ProviderServiceArn', name: 'ProviderServiceArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 255}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn):(entityresolution):([a-z]{2}-[a-z]{1,10}-[0-9])::providerservice/([a-zA-Z0-9_-]{1,255})/([a-zA-Z0-9_-]{1,255})$"})
    ProviderServiceDisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#ProviderServiceDisplayName', name: 'ProviderServiceDisplayName', traits: {"smithy.api#length" => {"max" => 255}})
    ProviderServiceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#ProviderServiceList', name: 'ProviderServiceList')
    ProviderServiceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ProviderServiceSummary', name: 'ProviderServiceSummary')
    PutPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#PutPolicyInput', name: 'PutPolicyInput')
    PutPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#PutPolicyOutput', name: 'PutPolicyOutput')
    Record = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#Record', name: 'Record')
    RecordAttributeMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.entityresolution#RecordAttributeMap', name: 'RecordAttributeMap', traits: {"smithy.api#sensitive" => {}})
    RecordAttributeMapString255 = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.entityresolution#RecordAttributeMapString255', name: 'RecordAttributeMapString255', traits: {"smithy.api#sensitive" => {}})
    RecordList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#RecordList', name: 'RecordList')
    RecordMatchingModel = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.entityresolution#RecordMatchingModel', name: 'RecordMatchingModel')
    RecordMatchingModelList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#RecordMatchingModelList', name: 'RecordMatchingModelList')
    RequiredBucketActionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#RequiredBucketActionsList', name: 'RequiredBucketActionsList')
    ResolutionTechniques = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ResolutionTechniques', name: 'ResolutionTechniques')
    ResolutionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.entityresolution#ResolutionType', name: 'ResolutionType')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 32, "max" => 512}, "smithy.api#pattern" => "^arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    Rule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#Rule', name: 'Rule')
    RuleBasedProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#RuleBasedProperties', name: 'RuleBasedProperties')
    RuleCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#RuleCondition', name: 'RuleCondition')
    RuleConditionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#RuleConditionList', name: 'RuleConditionList')
    RuleConditionProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#RuleConditionProperties', name: 'RuleConditionProperties')
    RuleList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#RuleList', name: 'RuleList')
    S3Path = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#S3Path', name: 'S3Path', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?$"})
    SchemaAttributeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.entityresolution#SchemaAttributeType', name: 'SchemaAttributeType')
    SchemaInputAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#SchemaInputAttribute', name: 'SchemaInputAttribute')
    SchemaInputAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#SchemaInputAttributes', name: 'SchemaInputAttributes', traits: {"smithy.api#length" => {"min" => 2, "max" => 35}})
    SchemaList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#SchemaList', name: 'SchemaList')
    SchemaMappingArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#SchemaMappingArn', name: 'SchemaMappingArn', traits: {"smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn):entityresolution:[a-z]{2}-[a-z]{1,10}-[0-9]:[0-9]{12}:(schemamapping/[a-zA-Z_0-9-]{1,255})$"})
    SchemaMappingList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#SchemaMappingList', name: 'SchemaMappingList')
    SchemaMappingSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#SchemaMappingSummary', name: 'SchemaMappingSummary')
    Schemas = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#Schemas', name: 'Schemas')
    ServiceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.entityresolution#ServiceType', name: 'ServiceType')
    StartIdMappingJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#StartIdMappingJobInput', name: 'StartIdMappingJobInput')
    StartIdMappingJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#StartIdMappingJobOutput', name: 'StartIdMappingJobOutput')
    StartMatchingJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#StartMatchingJobInput', name: 'StartMatchingJobInput')
    StartMatchingJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#StartMatchingJobOutput', name: 'StartMatchingJobOutput')
    StatementAction = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#StatementAction', name: 'StatementAction', traits: {"smithy.api#length" => {"min" => 3, "max" => 64}, "smithy.api#pattern" => "^(entityresolution:[a-zA-Z0-9]+)$"})
    StatementActionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#StatementActionList', name: 'StatementActionList', traits: {"smithy.api#length" => {"min" => 1}})
    StatementCondition = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#StatementCondition', name: 'StatementCondition', traits: {"smithy.api#length" => {"min" => 1, "max" => 40960}})
    StatementEffect = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.entityresolution#StatementEffect', name: 'StatementEffect')
    StatementId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#StatementId', name: 'StatementId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9A-Za-z]+$"})
    StatementPrincipal = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#StatementPrincipal', name: 'StatementPrincipal', traits: {"smithy.api#length" => {"min" => 12, "max" => 64}, "smithy.api#pattern" => "^(\\d{12})|([a-z0-9\\.]+)$"})
    StatementPrincipalList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#StatementPrincipalList', name: 'StatementPrincipalList', traits: {"smithy.api#length" => {"min" => 1}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.entityresolution#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UniqueId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#UniqueId', name: 'UniqueId', traits: {"smithy.api#length" => {"min" => 1, "max" => 38}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]*$"})
    UniqueIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.entityresolution#UniqueIdList', name: 'UniqueIdList')
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateIdMappingWorkflowInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#UpdateIdMappingWorkflowInput', name: 'UpdateIdMappingWorkflowInput')
    UpdateIdMappingWorkflowOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#UpdateIdMappingWorkflowOutput', name: 'UpdateIdMappingWorkflowOutput')
    UpdateIdNamespaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#UpdateIdNamespaceInput', name: 'UpdateIdNamespaceInput')
    UpdateIdNamespaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#UpdateIdNamespaceOutput', name: 'UpdateIdNamespaceOutput')
    UpdateMatchingWorkflowInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#UpdateMatchingWorkflowInput', name: 'UpdateMatchingWorkflowInput')
    UpdateMatchingWorkflowOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#UpdateMatchingWorkflowOutput', name: 'UpdateMatchingWorkflowOutput')
    UpdateSchemaMappingInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#UpdateSchemaMappingInput', name: 'UpdateSchemaMappingInput')
    UpdateSchemaMappingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#UpdateSchemaMappingOutput', name: 'UpdateSchemaMappingOutput')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.entityresolution#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VeniceGlobalArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.entityresolution#VeniceGlobalArn', name: 'VeniceGlobalArn', traits: {"smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn):entityresolution:[a-z]{2}-[a-z]{1,10}-[0-9]:[0-9]{12}:((schemamapping|matchingworkflow|idmappingworkflow|idnamespace)/[a-zA-Z_0-9-]{1,255})$"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AddPolicyStatementInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VeniceGlobalArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AddPolicyStatementInput.add_member(:statement_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementId, location_name: 'statementId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AddPolicyStatementInput.add_member(:effect, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementEffect, location_name: 'effect', traits: {"smithy.api#required" => {}}))
    AddPolicyStatementInput.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementActionList, location_name: 'action', traits: {"smithy.api#required" => {}}))
    AddPolicyStatementInput.add_member(:principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementPrincipalList, location_name: 'principal', traits: {"smithy.api#required" => {}}))
    AddPolicyStatementInput.add_member(:condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementCondition, location_name: 'condition'))
    AddPolicyStatementInput.type = Types::AddPolicyStatementInput
    AddPolicyStatementOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VeniceGlobalArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    AddPolicyStatementOutput.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyToken, location_name: 'token', traits: {"smithy.api#required" => {}}))
    AddPolicyStatementOutput.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'policy'))
    AddPolicyStatementOutput.type = Types::AddPolicyStatementOutput
    AttributeMatchingModel.add_member(:one_to_one, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONE_TO_ONE', traits: {"smithy.api#enumValue" => "ONE_TO_ONE"}))
    AttributeMatchingModel.add_member(:many_to_many, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANY_TO_MANY', traits: {"smithy.api#enumValue" => "MANY_TO_MANY"}))
    AwsAccountIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId)
    BatchDeleteUniqueIdInput.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'workflowName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDeleteUniqueIdInput.add_member(:input_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'inputSource', traits: {"smithy.api#httpHeader" => "inputSource", "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn):glue:[a-z]{2}-[a-z]{1,10}-[0-9]:[0-9]{12}:(table/[a-zA-Z_0-9-]{1,255}/[a-zA-Z_0-9-]{1,255})$"}))
    BatchDeleteUniqueIdInput.add_member(:unique_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueIdList, location_name: 'uniqueIds', traits: {"smithy.api#httpHeader" => "uniqueIds", "smithy.api#required" => {}}))
    BatchDeleteUniqueIdInput.type = Types::BatchDeleteUniqueIdInput
    BatchDeleteUniqueIdOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUniqueIdStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    BatchDeleteUniqueIdOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUniqueIdErrorsList, location_name: 'errors', traits: {"smithy.api#required" => {}}))
    BatchDeleteUniqueIdOutput.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletedUniqueIdList, location_name: 'deleted', traits: {"smithy.api#required" => {}}))
    BatchDeleteUniqueIdOutput.add_member(:disconnected_unique_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisconnectedUniqueIdsList, location_name: 'disconnectedUniqueIds', traits: {"smithy.api#required" => {}}))
    BatchDeleteUniqueIdOutput.type = Types::BatchDeleteUniqueIdOutput
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    CreateIdMappingWorkflowInput.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'workflowName', traits: {"smithy.api#required" => {}}))
    CreateIdMappingWorkflowInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateIdMappingWorkflowInput.add_member(:input_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingWorkflowInputSourceConfig, location_name: 'inputSourceConfig', traits: {"smithy.api#required" => {}}))
    CreateIdMappingWorkflowInput.add_member(:output_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingWorkflowOutputSourceConfig, location_name: 'outputSourceConfig'))
    CreateIdMappingWorkflowInput.add_member(:id_mapping_techniques, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingTechniques, location_name: 'idMappingTechniques', traits: {"smithy.api#required" => {}}))
    CreateIdMappingWorkflowInput.add_member(:incremental_run_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingIncrementalRunConfig, location_name: 'incrementalRunConfig'))
    CreateIdMappingWorkflowInput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingRoleArn, location_name: 'roleArn', traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => ""}))
    CreateIdMappingWorkflowInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateIdMappingWorkflowInput.type = Types::CreateIdMappingWorkflowInput
    CreateIdMappingWorkflowOutput.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'workflowName', traits: {"smithy.api#required" => {}}))
    CreateIdMappingWorkflowOutput.add_member(:workflow_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingWorkflowArn, location_name: 'workflowArn', traits: {"smithy.api#required" => {}}))
    CreateIdMappingWorkflowOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateIdMappingWorkflowOutput.add_member(:input_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingWorkflowInputSourceConfig, location_name: 'inputSourceConfig', traits: {"smithy.api#required" => {}}))
    CreateIdMappingWorkflowOutput.add_member(:output_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingWorkflowOutputSourceConfig, location_name: 'outputSourceConfig'))
    CreateIdMappingWorkflowOutput.add_member(:id_mapping_techniques, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingTechniques, location_name: 'idMappingTechniques', traits: {"smithy.api#required" => {}}))
    CreateIdMappingWorkflowOutput.add_member(:incremental_run_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingIncrementalRunConfig, location_name: 'incrementalRunConfig'))
    CreateIdMappingWorkflowOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingRoleArn, location_name: 'roleArn', traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => ""}))
    CreateIdMappingWorkflowOutput.type = Types::CreateIdMappingWorkflowOutput
    CreateIdNamespaceInput.add_member(:id_namespace_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'idNamespaceName', traits: {"smithy.api#required" => {}}))
    CreateIdNamespaceInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateIdNamespaceInput.add_member(:input_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceInputSourceConfig, location_name: 'inputSourceConfig'))
    CreateIdNamespaceInput.add_member(:id_mapping_workflow_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceIdMappingWorkflowPropertiesList, location_name: 'idMappingWorkflowProperties'))
    CreateIdNamespaceInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    CreateIdNamespaceInput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn'))
    CreateIdNamespaceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateIdNamespaceInput.type = Types::CreateIdNamespaceInput
    CreateIdNamespaceOutput.add_member(:id_namespace_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'idNamespaceName', traits: {"smithy.api#required" => {}}))
    CreateIdNamespaceOutput.add_member(:id_namespace_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceArn, location_name: 'idNamespaceArn', traits: {"smithy.api#required" => {}}))
    CreateIdNamespaceOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateIdNamespaceOutput.add_member(:input_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceInputSourceConfig, location_name: 'inputSourceConfig'))
    CreateIdNamespaceOutput.add_member(:id_mapping_workflow_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceIdMappingWorkflowPropertiesList, location_name: 'idMappingWorkflowProperties'))
    CreateIdNamespaceOutput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    CreateIdNamespaceOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn'))
    CreateIdNamespaceOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    CreateIdNamespaceOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    CreateIdNamespaceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateIdNamespaceOutput.type = Types::CreateIdNamespaceOutput
    CreateMatchingWorkflowInput.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'workflowName', traits: {"smithy.api#required" => {}}))
    CreateMatchingWorkflowInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateMatchingWorkflowInput.add_member(:input_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputSourceConfig, location_name: 'inputSourceConfig', traits: {"smithy.api#required" => {}}))
    CreateMatchingWorkflowInput.add_member(:output_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputSourceConfig, location_name: 'outputSourceConfig', traits: {"smithy.api#required" => {}}))
    CreateMatchingWorkflowInput.add_member(:resolution_techniques, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolutionTechniques, location_name: 'resolutionTechniques', traits: {"smithy.api#required" => {}}))
    CreateMatchingWorkflowInput.add_member(:incremental_run_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncrementalRunConfig, location_name: 'incrementalRunConfig'))
    CreateMatchingWorkflowInput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    CreateMatchingWorkflowInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateMatchingWorkflowInput.type = Types::CreateMatchingWorkflowInput
    CreateMatchingWorkflowOutput.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'workflowName', traits: {"smithy.api#required" => {}}))
    CreateMatchingWorkflowOutput.add_member(:workflow_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchingWorkflowArn, location_name: 'workflowArn', traits: {"smithy.api#required" => {}}))
    CreateMatchingWorkflowOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateMatchingWorkflowOutput.add_member(:input_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputSourceConfig, location_name: 'inputSourceConfig', traits: {"smithy.api#required" => {}}))
    CreateMatchingWorkflowOutput.add_member(:output_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputSourceConfig, location_name: 'outputSourceConfig', traits: {"smithy.api#required" => {}}))
    CreateMatchingWorkflowOutput.add_member(:resolution_techniques, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolutionTechniques, location_name: 'resolutionTechniques', traits: {"smithy.api#required" => {}}))
    CreateMatchingWorkflowOutput.add_member(:incremental_run_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncrementalRunConfig, location_name: 'incrementalRunConfig'))
    CreateMatchingWorkflowOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    CreateMatchingWorkflowOutput.type = Types::CreateMatchingWorkflowOutput
    CreateSchemaMappingInput.add_member(:schema_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'schemaName', traits: {"smithy.api#required" => {}}))
    CreateSchemaMappingInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateSchemaMappingInput.add_member(:mapped_input_fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaInputAttributes, location_name: 'mappedInputFields', traits: {"smithy.api#required" => {}}))
    CreateSchemaMappingInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateSchemaMappingInput.type = Types::CreateSchemaMappingInput
    CreateSchemaMappingOutput.add_member(:schema_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'schemaName', traits: {"smithy.api#required" => {}}))
    CreateSchemaMappingOutput.add_member(:schema_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaMappingArn, location_name: 'schemaArn', traits: {"smithy.api#required" => {}}))
    CreateSchemaMappingOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#required" => {}}))
    CreateSchemaMappingOutput.add_member(:mapped_input_fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaInputAttributes, location_name: 'mappedInputFields', traits: {"smithy.api#required" => {}}))
    CreateSchemaMappingOutput.type = Types::CreateSchemaMappingOutput
    DeleteIdMappingWorkflowInput.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'workflowName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIdMappingWorkflowInput.type = Types::DeleteIdMappingWorkflowInput
    DeleteIdMappingWorkflowOutput.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    DeleteIdMappingWorkflowOutput.type = Types::DeleteIdMappingWorkflowOutput
    DeleteIdNamespaceInput.add_member(:id_namespace_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'idNamespaceName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIdNamespaceInput.type = Types::DeleteIdNamespaceInput
    DeleteIdNamespaceOutput.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    DeleteIdNamespaceOutput.type = Types::DeleteIdNamespaceOutput
    DeleteMatchingWorkflowInput.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'workflowName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMatchingWorkflowInput.type = Types::DeleteMatchingWorkflowInput
    DeleteMatchingWorkflowOutput.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    DeleteMatchingWorkflowOutput.type = Types::DeleteMatchingWorkflowOutput
    DeletePolicyStatementInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VeniceGlobalArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePolicyStatementInput.add_member(:statement_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementId, location_name: 'statementId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePolicyStatementInput.type = Types::DeletePolicyStatementInput
    DeletePolicyStatementOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VeniceGlobalArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    DeletePolicyStatementOutput.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyToken, location_name: 'token', traits: {"smithy.api#required" => {}}))
    DeletePolicyStatementOutput.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'policy'))
    DeletePolicyStatementOutput.type = Types::DeletePolicyStatementOutput
    DeleteSchemaMappingInput.add_member(:schema_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'schemaName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSchemaMappingInput.type = Types::DeleteSchemaMappingInput
    DeleteSchemaMappingOutput.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    DeleteSchemaMappingOutput.type = Types::DeleteSchemaMappingOutput
    DeleteUniqueIdError.add_member(:unique_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderSafeUniqueId, location_name: 'uniqueId', traits: {"smithy.api#required" => {}}))
    DeleteUniqueIdError.add_member(:error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUniqueIdErrorType, location_name: 'errorType', traits: {"smithy.api#required" => {}}))
    DeleteUniqueIdError.type = Types::DeleteUniqueIdError
    DeleteUniqueIdErrorType.add_member(:service_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE_ERROR', traits: {"smithy.api#enumValue" => "SERVICE_ERROR"}))
    DeleteUniqueIdErrorType.add_member(:validation_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATION_ERROR', traits: {"smithy.api#enumValue" => "VALIDATION_ERROR"}))
    DeleteUniqueIdErrorsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUniqueIdError)
    DeleteUniqueIdStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    DeleteUniqueIdStatus.add_member(:accepted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCEPTED', traits: {"smithy.api#enumValue" => "ACCEPTED"}))
    DeletedUniqueId.add_member(:unique_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderSafeUniqueId, location_name: 'uniqueId', traits: {"smithy.api#required" => {}}))
    DeletedUniqueId.type = Types::DeletedUniqueId
    DeletedUniqueIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletedUniqueId)
    DisconnectedUniqueIdsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderSafeUniqueId)
    ErrorDetails.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage'))
    ErrorDetails.type = Types::ErrorDetails
    ExceedsLimitException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ExceedsLimitException.add_member(:quota_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaName'))
    ExceedsLimitException.add_member(:quota_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'quotaValue'))
    ExceedsLimitException.type = Types::ExceedsLimitException
    FailedRecord.add_member(:input_source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputSourceARN, location_name: 'inputSourceARN', traits: {"smithy.api#required" => {}}))
    FailedRecord.add_member(:unique_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'uniqueId', traits: {"smithy.api#required" => {}}))
    FailedRecord.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#required" => {}}))
    FailedRecord.type = Types::FailedRecord
    FailedRecordsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedRecord)
    GenerateMatchIdInput.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'workflowName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GenerateMatchIdInput.add_member(:records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordList, location_name: 'records', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#required" => {}}))
    GenerateMatchIdInput.add_member(:processing_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessingType, location_name: 'processingType'))
    GenerateMatchIdInput.type = Types::GenerateMatchIdInput
    GenerateMatchIdOutput.add_member(:match_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchGroupsList, location_name: 'matchGroups', traits: {"smithy.api#required" => {}}))
    GenerateMatchIdOutput.add_member(:failed_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedRecordsList, location_name: 'failedRecords', traits: {"smithy.api#required" => {}}))
    GenerateMatchIdOutput.type = Types::GenerateMatchIdOutput
    GetIdMappingJobInput.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNameOrIdMappingWorkflowArn, location_name: 'workflowName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIdMappingJobInput.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIdMappingJobInput.type = Types::GetIdMappingJobInput
    GetIdMappingJobOutput.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#required" => {}}))
    GetIdMappingJobOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetIdMappingJobOutput.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#required" => {}}))
    GetIdMappingJobOutput.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime'))
    GetIdMappingJobOutput.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingJobMetrics, location_name: 'metrics'))
    GetIdMappingJobOutput.add_member(:error_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: 'errorDetails'))
    GetIdMappingJobOutput.add_member(:output_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingJobOutputSourceConfig, location_name: 'outputSourceConfig'))
    GetIdMappingJobOutput.add_member(:job_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobType, location_name: 'jobType'))
    GetIdMappingJobOutput.type = Types::GetIdMappingJobOutput
    GetIdMappingWorkflowInput.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'workflowName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIdMappingWorkflowInput.type = Types::GetIdMappingWorkflowInput
    GetIdMappingWorkflowOutput.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'workflowName', traits: {"smithy.api#required" => {}}))
    GetIdMappingWorkflowOutput.add_member(:workflow_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingWorkflowArn, location_name: 'workflowArn', traits: {"smithy.api#required" => {}}))
    GetIdMappingWorkflowOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    GetIdMappingWorkflowOutput.add_member(:input_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingWorkflowInputSourceConfig, location_name: 'inputSourceConfig', traits: {"smithy.api#required" => {}}))
    GetIdMappingWorkflowOutput.add_member(:output_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingWorkflowOutputSourceConfig, location_name: 'outputSourceConfig'))
    GetIdMappingWorkflowOutput.add_member(:id_mapping_techniques, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingTechniques, location_name: 'idMappingTechniques', traits: {"smithy.api#required" => {}}))
    GetIdMappingWorkflowOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    GetIdMappingWorkflowOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    GetIdMappingWorkflowOutput.add_member(:incremental_run_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingIncrementalRunConfig, location_name: 'incrementalRunConfig'))
    GetIdMappingWorkflowOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingRoleArn, location_name: 'roleArn', traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => ""}))
    GetIdMappingWorkflowOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    GetIdMappingWorkflowOutput.type = Types::GetIdMappingWorkflowOutput
    GetIdNamespaceInput.add_member(:id_namespace_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNameOrIdNamespaceArn, location_name: 'idNamespaceName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIdNamespaceInput.type = Types::GetIdNamespaceInput
    GetIdNamespaceOutput.add_member(:id_namespace_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'idNamespaceName', traits: {"smithy.api#required" => {}}))
    GetIdNamespaceOutput.add_member(:id_namespace_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceArn, location_name: 'idNamespaceArn', traits: {"smithy.api#required" => {}}))
    GetIdNamespaceOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    GetIdNamespaceOutput.add_member(:input_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceInputSourceConfig, location_name: 'inputSourceConfig'))
    GetIdNamespaceOutput.add_member(:id_mapping_workflow_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceIdMappingWorkflowPropertiesList, location_name: 'idMappingWorkflowProperties'))
    GetIdNamespaceOutput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    GetIdNamespaceOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn'))
    GetIdNamespaceOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    GetIdNamespaceOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    GetIdNamespaceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    GetIdNamespaceOutput.type = Types::GetIdNamespaceOutput
    GetMatchIdInput.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'workflowName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMatchIdInput.add_member(:record, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordAttributeMap, location_name: 'record', traits: {"smithy.api#required" => {}}))
    GetMatchIdInput.add_member(:apply_normalization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'applyNormalization', traits: {"smithy.api#default" => true}))
    GetMatchIdInput.type = Types::GetMatchIdInput
    GetMatchIdOutput.add_member(:match_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'matchId'))
    GetMatchIdOutput.add_member(:match_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'matchRule'))
    GetMatchIdOutput.type = Types::GetMatchIdOutput
    GetMatchingJobInput.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'workflowName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMatchingJobInput.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMatchingJobInput.type = Types::GetMatchingJobInput
    GetMatchingJobOutput.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#required" => {}}))
    GetMatchingJobOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetMatchingJobOutput.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#required" => {}}))
    GetMatchingJobOutput.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime'))
    GetMatchingJobOutput.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobMetrics, location_name: 'metrics'))
    GetMatchingJobOutput.add_member(:error_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: 'errorDetails'))
    GetMatchingJobOutput.add_member(:output_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobOutputSourceConfig, location_name: 'outputSourceConfig'))
    GetMatchingJobOutput.type = Types::GetMatchingJobOutput
    GetMatchingWorkflowInput.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'workflowName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMatchingWorkflowInput.type = Types::GetMatchingWorkflowInput
    GetMatchingWorkflowOutput.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'workflowName', traits: {"smithy.api#required" => {}}))
    GetMatchingWorkflowOutput.add_member(:workflow_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchingWorkflowArn, location_name: 'workflowArn', traits: {"smithy.api#required" => {}}))
    GetMatchingWorkflowOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    GetMatchingWorkflowOutput.add_member(:input_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputSourceConfig, location_name: 'inputSourceConfig', traits: {"smithy.api#required" => {}}))
    GetMatchingWorkflowOutput.add_member(:output_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputSourceConfig, location_name: 'outputSourceConfig', traits: {"smithy.api#required" => {}}))
    GetMatchingWorkflowOutput.add_member(:resolution_techniques, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolutionTechniques, location_name: 'resolutionTechniques', traits: {"smithy.api#required" => {}}))
    GetMatchingWorkflowOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    GetMatchingWorkflowOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    GetMatchingWorkflowOutput.add_member(:incremental_run_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncrementalRunConfig, location_name: 'incrementalRunConfig'))
    GetMatchingWorkflowOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    GetMatchingWorkflowOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    GetMatchingWorkflowOutput.type = Types::GetMatchingWorkflowOutput
    GetPolicyInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VeniceGlobalArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPolicyInput.type = Types::GetPolicyInput
    GetPolicyOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VeniceGlobalArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GetPolicyOutput.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyToken, location_name: 'token', traits: {"smithy.api#required" => {}}))
    GetPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'policy'))
    GetPolicyOutput.type = Types::GetPolicyOutput
    GetProviderServiceInput.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'providerName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProviderServiceInput.add_member(:provider_service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderServiceArn, location_name: 'providerServiceName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProviderServiceInput.type = Types::GetProviderServiceInput
    GetProviderServiceOutput.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'providerName', traits: {"smithy.api#required" => {}}))
    GetProviderServiceOutput.add_member(:provider_service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'providerServiceName', traits: {"smithy.api#required" => {}}))
    GetProviderServiceOutput.add_member(:provider_service_display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderServiceDisplayName, location_name: 'providerServiceDisplayName', traits: {"smithy.api#required" => {}}))
    GetProviderServiceOutput.add_member(:provider_service_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceType, location_name: 'providerServiceType', traits: {"smithy.api#required" => {}}))
    GetProviderServiceOutput.add_member(:provider_service_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderServiceArn, location_name: 'providerServiceArn', traits: {"smithy.api#required" => {}}))
    GetProviderServiceOutput.add_member(:provider_configuration_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Document, location_name: 'providerConfigurationDefinition'))
    GetProviderServiceOutput.add_member(:provider_id_name_space_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderIdNameSpaceConfiguration, location_name: 'providerIdNameSpaceConfiguration'))
    GetProviderServiceOutput.add_member(:provider_job_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Document, location_name: 'providerJobConfiguration'))
    GetProviderServiceOutput.add_member(:provider_endpoint_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderEndpointConfiguration, location_name: 'providerEndpointConfiguration', traits: {"smithy.api#required" => {}}))
    GetProviderServiceOutput.add_member(:anonymized_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'anonymizedOutput', traits: {"smithy.api#required" => {}}))
    GetProviderServiceOutput.add_member(:provider_entity_output_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Document, location_name: 'providerEntityOutputDefinition', traits: {"smithy.api#required" => {}}))
    GetProviderServiceOutput.add_member(:provider_intermediate_data_access_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderIntermediateDataAccessConfiguration, location_name: 'providerIntermediateDataAccessConfiguration'))
    GetProviderServiceOutput.add_member(:provider_component_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderComponentSchema, location_name: 'providerComponentSchema'))
    GetProviderServiceOutput.type = Types::GetProviderServiceOutput
    GetSchemaMappingInput.add_member(:schema_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'schemaName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSchemaMappingInput.type = Types::GetSchemaMappingInput
    GetSchemaMappingOutput.add_member(:schema_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'schemaName', traits: {"smithy.api#required" => {}}))
    GetSchemaMappingOutput.add_member(:schema_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaMappingArn, location_name: 'schemaArn', traits: {"smithy.api#required" => {}}))
    GetSchemaMappingOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    GetSchemaMappingOutput.add_member(:mapped_input_fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaInputAttributes, location_name: 'mappedInputFields', traits: {"smithy.api#required" => {}}))
    GetSchemaMappingOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    GetSchemaMappingOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    GetSchemaMappingOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    GetSchemaMappingOutput.add_member(:has_workflows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'hasWorkflows', traits: {"smithy.api#required" => {}}))
    GetSchemaMappingOutput.type = Types::GetSchemaMappingOutput
    IdMappingIncrementalRunConfig.add_member(:incremental_run_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingIncrementalRunType, location_name: 'incrementalRunType'))
    IdMappingIncrementalRunConfig.type = Types::IdMappingIncrementalRunConfig
    IdMappingIncrementalRunType.add_member(:on_demand, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ON_DEMAND', traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    IdMappingJobMetrics.add_member(:input_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'inputRecords'))
    IdMappingJobMetrics.add_member(:total_records_processed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalRecordsProcessed'))
    IdMappingJobMetrics.add_member(:records_not_processed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'recordsNotProcessed'))
    IdMappingJobMetrics.add_member(:delete_records_processed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'deleteRecordsProcessed'))
    IdMappingJobMetrics.add_member(:total_mapped_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalMappedRecords'))
    IdMappingJobMetrics.add_member(:total_mapped_source_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalMappedSourceRecords'))
    IdMappingJobMetrics.add_member(:total_mapped_target_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalMappedTargetRecords'))
    IdMappingJobMetrics.add_member(:unique_records_loaded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'uniqueRecordsLoaded'))
    IdMappingJobMetrics.add_member(:new_mapped_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'newMappedRecords'))
    IdMappingJobMetrics.add_member(:new_mapped_source_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'newMappedSourceRecords'))
    IdMappingJobMetrics.add_member(:new_mapped_target_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'newMappedTargetRecords'))
    IdMappingJobMetrics.add_member(:new_unique_records_loaded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'newUniqueRecordsLoaded'))
    IdMappingJobMetrics.add_member(:mapped_records_removed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'mappedRecordsRemoved'))
    IdMappingJobMetrics.add_member(:mapped_source_records_removed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'mappedSourceRecordsRemoved'))
    IdMappingJobMetrics.add_member(:mapped_target_records_removed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'mappedTargetRecordsRemoved'))
    IdMappingJobMetrics.type = Types::IdMappingJobMetrics
    IdMappingJobOutputSource.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    IdMappingJobOutputSource.add_member(:output_s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Path, location_name: 'outputS3Path', traits: {"smithy.api#required" => {}}))
    IdMappingJobOutputSource.add_member(:kms_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSArn, location_name: 'KMSArn'))
    IdMappingJobOutputSource.type = Types::IdMappingJobOutputSource
    IdMappingJobOutputSourceConfig.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingJobOutputSource)
    IdMappingRuleBasedProperties.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleList, location_name: 'rules', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}}))
    IdMappingRuleBasedProperties.add_member(:rule_definition_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingWorkflowRuleDefinitionType, location_name: 'ruleDefinitionType', traits: {"smithy.api#required" => {}}))
    IdMappingRuleBasedProperties.add_member(:attribute_matching_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMatchingModel, location_name: 'attributeMatchingModel', traits: {"smithy.api#required" => {}}))
    IdMappingRuleBasedProperties.add_member(:record_matching_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordMatchingModel, location_name: 'recordMatchingModel', traits: {"smithy.api#required" => {}}))
    IdMappingRuleBasedProperties.type = Types::IdMappingRuleBasedProperties
    IdMappingTechniques.add_member(:id_mapping_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingType, location_name: 'idMappingType', traits: {"smithy.api#required" => {}}))
    IdMappingTechniques.add_member(:rule_based_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingRuleBasedProperties, location_name: 'ruleBasedProperties'))
    IdMappingTechniques.add_member(:provider_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderProperties, location_name: 'providerProperties'))
    IdMappingTechniques.type = Types::IdMappingTechniques
    IdMappingType.add_member(:provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVIDER', traits: {"smithy.api#enumValue" => "PROVIDER"}))
    IdMappingType.add_member(:rule_based, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RULE_BASED', traits: {"smithy.api#enumValue" => "RULE_BASED"}))
    IdMappingWorkflowInputSource.add_member(:input_source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputSourceARN, location_name: 'inputSourceARN', traits: {"smithy.api#required" => {}}))
    IdMappingWorkflowInputSource.add_member(:schema_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'schemaName'))
    IdMappingWorkflowInputSource.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceType, location_name: 'type'))
    IdMappingWorkflowInputSource.type = Types::IdMappingWorkflowInputSource
    IdMappingWorkflowInputSourceConfig.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingWorkflowInputSource)
    IdMappingWorkflowList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingWorkflowSummary)
    IdMappingWorkflowOutputSource.add_member(:output_s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Path, location_name: 'outputS3Path', traits: {"smithy.api#required" => {}}))
    IdMappingWorkflowOutputSource.add_member(:kms_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSArn, location_name: 'KMSArn'))
    IdMappingWorkflowOutputSource.type = Types::IdMappingWorkflowOutputSource
    IdMappingWorkflowOutputSourceConfig.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingWorkflowOutputSource)
    IdMappingWorkflowRuleDefinitionType.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOURCE', traits: {"smithy.api#enumValue" => "SOURCE"}))
    IdMappingWorkflowRuleDefinitionType.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TARGET', traits: {"smithy.api#enumValue" => "TARGET"}))
    IdMappingWorkflowRuleDefinitionTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingWorkflowRuleDefinitionType)
    IdMappingWorkflowSummary.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'workflowName', traits: {"smithy.api#required" => {}}))
    IdMappingWorkflowSummary.add_member(:workflow_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingWorkflowArn, location_name: 'workflowArn', traits: {"smithy.api#required" => {}}))
    IdMappingWorkflowSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    IdMappingWorkflowSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    IdMappingWorkflowSummary.type = Types::IdMappingWorkflowSummary
    IdNamespaceIdMappingWorkflowMetadata.add_member(:id_mapping_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingType, location_name: 'idMappingType', traits: {"smithy.api#required" => {}}))
    IdNamespaceIdMappingWorkflowMetadata.type = Types::IdNamespaceIdMappingWorkflowMetadata
    IdNamespaceIdMappingWorkflowMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceIdMappingWorkflowMetadata)
    IdNamespaceIdMappingWorkflowProperties.add_member(:id_mapping_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingType, location_name: 'idMappingType', traits: {"smithy.api#required" => {}}))
    IdNamespaceIdMappingWorkflowProperties.add_member(:rule_based_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceRuleBasedProperties, location_name: 'ruleBasedProperties'))
    IdNamespaceIdMappingWorkflowProperties.add_member(:provider_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceProviderProperties, location_name: 'providerProperties'))
    IdNamespaceIdMappingWorkflowProperties.type = Types::IdNamespaceIdMappingWorkflowProperties
    IdNamespaceIdMappingWorkflowPropertiesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceIdMappingWorkflowProperties)
    IdNamespaceInputSource.add_member(:input_source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputSourceARN, location_name: 'inputSourceARN', traits: {"smithy.api#required" => {}}))
    IdNamespaceInputSource.add_member(:schema_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'schemaName'))
    IdNamespaceInputSource.type = Types::IdNamespaceInputSource
    IdNamespaceInputSourceConfig.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceInputSource)
    IdNamespaceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceSummary)
    IdNamespaceSummary.add_member(:id_namespace_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'idNamespaceName', traits: {"smithy.api#required" => {}}))
    IdNamespaceSummary.add_member(:id_namespace_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceArn, location_name: 'idNamespaceArn', traits: {"smithy.api#required" => {}}))
    IdNamespaceSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    IdNamespaceSummary.add_member(:id_mapping_workflow_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceIdMappingWorkflowMetadataList, location_name: 'idMappingWorkflowProperties'))
    IdNamespaceSummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    IdNamespaceSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    IdNamespaceSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    IdNamespaceSummary.type = Types::IdNamespaceSummary
    IdNamespaceType.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOURCE', traits: {"smithy.api#enumValue" => "SOURCE"}))
    IdNamespaceType.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TARGET', traits: {"smithy.api#enumValue" => "TARGET"}))
    IncrementalRunConfig.add_member(:incremental_run_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncrementalRunType, location_name: 'incrementalRunType'))
    IncrementalRunConfig.type = Types::IncrementalRunConfig
    IncrementalRunType.add_member(:immediate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMMEDIATE', traits: {"smithy.api#enumValue" => "IMMEDIATE"}))
    InputSource.add_member(:input_source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputSourceARN, location_name: 'inputSourceARN', traits: {"smithy.api#required" => {}}))
    InputSource.add_member(:schema_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'schemaName', traits: {"smithy.api#required" => {}}))
    InputSource.add_member(:apply_normalization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'applyNormalization'))
    InputSource.type = Types::InputSource
    InputSourceConfig.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputSource)
    IntermediateSourceConfiguration.add_member(:intermediate_s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Path, location_name: 'intermediateS3Path', traits: {"smithy.api#required" => {}}))
    IntermediateSourceConfiguration.type = Types::IntermediateSourceConfiguration
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    JobList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobSummary)
    JobMetrics.add_member(:input_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'inputRecords'))
    JobMetrics.add_member(:total_records_processed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalRecordsProcessed'))
    JobMetrics.add_member(:records_not_processed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'recordsNotProcessed'))
    JobMetrics.add_member(:delete_records_processed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'deleteRecordsProcessed'))
    JobMetrics.add_member(:match_i_ds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'matchIDs'))
    JobMetrics.type = Types::JobMetrics
    JobOutputSource.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    JobOutputSource.add_member(:output_s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Path, location_name: 'outputS3Path', traits: {"smithy.api#required" => {}}))
    JobOutputSource.add_member(:kms_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSArn, location_name: 'KMSArn'))
    JobOutputSource.type = Types::JobOutputSource
    JobOutputSourceConfig.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobOutputSource)
    JobStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    JobStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    JobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    JobStatus.add_member(:queued, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUEUED', traits: {"smithy.api#enumValue" => "QUEUED"}))
    JobSummary.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime'))
    JobSummary.type = Types::JobSummary
    JobType.add_member(:batch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BATCH', traits: {"smithy.api#enumValue" => "BATCH"}))
    JobType.add_member(:incremental, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCREMENTAL', traits: {"smithy.api#enumValue" => "INCREMENTAL"}))
    JobType.add_member(:delete_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_ONLY', traits: {"smithy.api#enumValue" => "DELETE_ONLY"}))
    ListIdMappingJobsInput.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNameOrIdMappingWorkflowArn, location_name: 'workflowName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListIdMappingJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListIdMappingJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 25}}))
    ListIdMappingJobsInput.type = Types::ListIdMappingJobsInput
    ListIdMappingJobsOutput.add_member(:jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobList, location_name: 'jobs'))
    ListIdMappingJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListIdMappingJobsOutput.type = Types::ListIdMappingJobsOutput
    ListIdMappingWorkflowsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListIdMappingWorkflowsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"max" => 25}}))
    ListIdMappingWorkflowsInput.type = Types::ListIdMappingWorkflowsInput
    ListIdMappingWorkflowsOutput.add_member(:workflow_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingWorkflowList, location_name: 'workflowSummaries'))
    ListIdMappingWorkflowsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListIdMappingWorkflowsOutput.type = Types::ListIdMappingWorkflowsOutput
    ListIdNamespacesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListIdNamespacesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"max" => 25}}))
    ListIdNamespacesInput.type = Types::ListIdNamespacesInput
    ListIdNamespacesOutput.add_member(:id_namespace_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceList, location_name: 'idNamespaceSummaries'))
    ListIdNamespacesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListIdNamespacesOutput.type = Types::ListIdNamespacesOutput
    ListMatchingJobsInput.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'workflowName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMatchingJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMatchingJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 25}}))
    ListMatchingJobsInput.type = Types::ListMatchingJobsInput
    ListMatchingJobsOutput.add_member(:jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobList, location_name: 'jobs'))
    ListMatchingJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListMatchingJobsOutput.type = Types::ListMatchingJobsOutput
    ListMatchingWorkflowsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMatchingWorkflowsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"max" => 25}}))
    ListMatchingWorkflowsInput.type = Types::ListMatchingWorkflowsInput
    ListMatchingWorkflowsOutput.add_member(:workflow_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchingWorkflowList, location_name: 'workflowSummaries'))
    ListMatchingWorkflowsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListMatchingWorkflowsOutput.type = Types::ListMatchingWorkflowsOutput
    ListProviderServicesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListProviderServicesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 15, "max" => 25}}))
    ListProviderServicesInput.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'providerName', traits: {"smithy.api#httpQuery" => "providerName"}))
    ListProviderServicesInput.type = Types::ListProviderServicesInput
    ListProviderServicesOutput.add_member(:provider_service_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderServiceList, location_name: 'providerServiceSummaries'))
    ListProviderServicesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListProviderServicesOutput.type = Types::ListProviderServicesOutput
    ListSchemaMappingsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSchemaMappingsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"max" => 25}}))
    ListSchemaMappingsInput.type = Types::ListSchemaMappingsInput
    ListSchemaMappingsOutput.add_member(:schema_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaMappingList, location_name: 'schemaList'))
    ListSchemaMappingsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListSchemaMappingsOutput.type = Types::ListSchemaMappingsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VeniceGlobalArn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    MatchGroup.add_member(:records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchedRecordsList, location_name: 'records', traits: {"smithy.api#required" => {}}))
    MatchGroup.add_member(:match_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'matchId', traits: {"smithy.api#required" => {}}))
    MatchGroup.add_member(:match_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'matchRule', traits: {"smithy.api#required" => {}}))
    MatchGroup.type = Types::MatchGroup
    MatchGroupsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchGroup)
    MatchPurpose.add_member(:identifier_generation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IDENTIFIER_GENERATION', traits: {"smithy.api#enumValue" => "IDENTIFIER_GENERATION"}))
    MatchPurpose.add_member(:indexing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INDEXING', traits: {"smithy.api#enumValue" => "INDEXING"}))
    MatchedRecord.add_member(:input_source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputSourceARN, location_name: 'inputSourceARN', traits: {"smithy.api#required" => {}}))
    MatchedRecord.add_member(:record_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'recordId', traits: {"smithy.api#required" => {}}))
    MatchedRecord.type = Types::MatchedRecord
    MatchedRecordsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchedRecord)
    MatchingKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    MatchingWorkflowList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchingWorkflowSummary)
    MatchingWorkflowSummary.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'workflowName', traits: {"smithy.api#required" => {}}))
    MatchingWorkflowSummary.add_member(:workflow_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchingWorkflowArn, location_name: 'workflowArn', traits: {"smithy.api#required" => {}}))
    MatchingWorkflowSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    MatchingWorkflowSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    MatchingWorkflowSummary.add_member(:resolution_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolutionType, location_name: 'resolutionType', traits: {"smithy.api#required" => {}}))
    MatchingWorkflowSummary.type = Types::MatchingWorkflowSummary
    NamespaceProviderProperties.add_member(:provider_service_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderServiceArn, location_name: 'providerServiceArn', traits: {"smithy.api#required" => {}}))
    NamespaceProviderProperties.add_member(:provider_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Document, location_name: 'providerConfiguration'))
    NamespaceProviderProperties.type = Types::NamespaceProviderProperties
    NamespaceRuleBasedProperties.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleList, location_name: 'rules', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}}))
    NamespaceRuleBasedProperties.add_member(:rule_definition_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingWorkflowRuleDefinitionTypeList, location_name: 'ruleDefinitionTypes'))
    NamespaceRuleBasedProperties.add_member(:attribute_matching_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMatchingModel, location_name: 'attributeMatchingModel'))
    NamespaceRuleBasedProperties.add_member(:record_matching_models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordMatchingModelList, location_name: 'recordMatchingModels'))
    NamespaceRuleBasedProperties.type = Types::NamespaceRuleBasedProperties
    OutputAttribute.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    OutputAttribute.add_member(:hashed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'hashed'))
    OutputAttribute.type = Types::OutputAttribute
    OutputAttributes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputAttribute)
    OutputSource.add_member(:output_s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Path, location_name: 'outputS3Path', traits: {"smithy.api#required" => {}}))
    OutputSource.add_member(:kms_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSArn, location_name: 'KMSArn'))
    OutputSource.add_member(:output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputAttributes, location_name: 'output', traits: {"smithy.api#length" => {"max" => 750}, "smithy.api#required" => {}}))
    OutputSource.add_member(:apply_normalization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'applyNormalization'))
    OutputSource.type = Types::OutputSource
    OutputSourceConfig.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputSource)
    ProcessingType.add_member(:consistent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONSISTENT', traits: {"smithy.api#enumValue" => "CONSISTENT"}))
    ProcessingType.add_member(:eventual, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVENTUAL', traits: {"smithy.api#enumValue" => "EVENTUAL"}))
    ProcessingType.add_member(:eventual_no_lookup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVENTUAL_NO_LOOKUP', traits: {"smithy.api#enumValue" => "EVENTUAL_NO_LOOKUP"}))
    ProviderComponentSchema.add_member(:schemas, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Schemas, location_name: 'schemas'))
    ProviderComponentSchema.add_member(:provider_schema_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderSchemaAttributes, location_name: 'providerSchemaAttributes'))
    ProviderComponentSchema.type = Types::ProviderComponentSchema
    ProviderEndpointConfiguration.add_member(:marketplace_configuration, Types::ProviderEndpointConfiguration::MarketplaceConfiguration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderMarketplaceConfiguration, location_name: 'marketplaceConfiguration'))
    ProviderEndpointConfiguration.add_member(:unknown, Types::ProviderEndpointConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ProviderEndpointConfiguration.type = Types::ProviderEndpointConfiguration
    ProviderIdNameSpaceConfiguration.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'description'))
    ProviderIdNameSpaceConfiguration.add_member(:provider_target_configuration_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Document, location_name: 'providerTargetConfigurationDefinition'))
    ProviderIdNameSpaceConfiguration.add_member(:provider_source_configuration_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Document, location_name: 'providerSourceConfigurationDefinition'))
    ProviderIdNameSpaceConfiguration.type = Types::ProviderIdNameSpaceConfiguration
    ProviderIntermediateDataAccessConfiguration.add_member(:aws_account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountIdList, location_name: 'awsAccountIds'))
    ProviderIntermediateDataAccessConfiguration.add_member(:required_bucket_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequiredBucketActionsList, location_name: 'requiredBucketActions'))
    ProviderIntermediateDataAccessConfiguration.type = Types::ProviderIntermediateDataAccessConfiguration
    ProviderMarketplaceConfiguration.add_member(:data_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'dataSetId', traits: {"smithy.api#required" => {}}))
    ProviderMarketplaceConfiguration.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'revisionId', traits: {"smithy.api#required" => {}}))
    ProviderMarketplaceConfiguration.add_member(:asset_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'assetId', traits: {"smithy.api#required" => {}}))
    ProviderMarketplaceConfiguration.add_member(:listing_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'listingId', traits: {"smithy.api#required" => {}}))
    ProviderMarketplaceConfiguration.type = Types::ProviderMarketplaceConfiguration
    ProviderProperties.add_member(:provider_service_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderServiceArn, location_name: 'providerServiceArn', traits: {"smithy.api#required" => {}}))
    ProviderProperties.add_member(:provider_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Document, location_name: 'providerConfiguration'))
    ProviderProperties.add_member(:intermediate_source_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntermediateSourceConfiguration, location_name: 'intermediateSourceConfiguration'))
    ProviderProperties.type = Types::ProviderProperties
    ProviderSchemaAttribute.add_member(:field_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName, location_name: 'fieldName', traits: {"smithy.api#required" => {}}))
    ProviderSchemaAttribute.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaAttributeType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    ProviderSchemaAttribute.add_member(:sub_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName, location_name: 'subType'))
    ProviderSchemaAttribute.add_member(:hashing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'hashing'))
    ProviderSchemaAttribute.type = Types::ProviderSchemaAttribute
    ProviderSchemaAttributes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderSchemaAttribute)
    ProviderServiceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderServiceSummary)
    ProviderServiceSummary.add_member(:provider_service_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderServiceArn, location_name: 'providerServiceArn', traits: {"smithy.api#required" => {}}))
    ProviderServiceSummary.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'providerName', traits: {"smithy.api#required" => {}}))
    ProviderServiceSummary.add_member(:provider_service_display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderServiceDisplayName, location_name: 'providerServiceDisplayName', traits: {"smithy.api#required" => {}}))
    ProviderServiceSummary.add_member(:provider_service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'providerServiceName', traits: {"smithy.api#required" => {}}))
    ProviderServiceSummary.add_member(:provider_service_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceType, location_name: 'providerServiceType', traits: {"smithy.api#required" => {}}))
    ProviderServiceSummary.type = Types::ProviderServiceSummary
    PutPolicyInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VeniceGlobalArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutPolicyInput.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyToken, location_name: 'token'))
    PutPolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'policy', traits: {"smithy.api#required" => {}}))
    PutPolicyInput.type = Types::PutPolicyInput
    PutPolicyOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VeniceGlobalArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    PutPolicyOutput.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyToken, location_name: 'token', traits: {"smithy.api#required" => {}}))
    PutPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'policy'))
    PutPolicyOutput.type = Types::PutPolicyOutput
    Record.add_member(:input_source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputSourceARN, location_name: 'inputSourceARN', traits: {"smithy.api#required" => {}}))
    Record.add_member(:unique_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueId, location_name: 'uniqueId', traits: {"smithy.api#required" => {}}))
    Record.add_member(:record_attribute_map, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordAttributeMapString255, location_name: 'recordAttributeMap', traits: {"smithy.api#required" => {}}))
    Record.type = Types::Record
    RecordAttributeMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"max" => 255}, "smithy.api#pattern" => "^[a-zA-Z_0-9- \\t]*$"})
    RecordAttributeMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"max" => 255}, "smithy.api#pattern" => "^[a-zA-Z_0-9-./@ ()+\\t]*$"})
    RecordAttributeMapString255.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"max" => 255}})
    RecordAttributeMapString255.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"max" => 255}})
    RecordList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Record)
    RecordMatchingModel.add_member(:one_source_to_one_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONE_SOURCE_TO_ONE_TARGET', traits: {"smithy.api#enumValue" => "ONE_SOURCE_TO_ONE_TARGET"}))
    RecordMatchingModel.add_member(:many_source_to_one_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANY_SOURCE_TO_ONE_TARGET', traits: {"smithy.api#enumValue" => "MANY_SOURCE_TO_ONE_TARGET"}))
    RecordMatchingModelList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordMatchingModel)
    RequiredBucketActionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    ResolutionTechniques.add_member(:resolution_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolutionType, location_name: 'resolutionType', traits: {"smithy.api#required" => {}}))
    ResolutionTechniques.add_member(:rule_based_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleBasedProperties, location_name: 'ruleBasedProperties'))
    ResolutionTechniques.add_member(:rule_condition_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleConditionProperties, location_name: 'ruleConditionProperties'))
    ResolutionTechniques.add_member(:provider_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderProperties, location_name: 'providerProperties'))
    ResolutionTechniques.type = Types::ResolutionTechniques
    ResolutionType.add_member(:rule_matching, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RULE_MATCHING', traits: {"smithy.api#enumValue" => "RULE_MATCHING"}))
    ResolutionType.add_member(:ml_matching, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_MATCHING', traits: {"smithy.api#enumValue" => "ML_MATCHING"}))
    ResolutionType.add_member(:provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVIDER', traits: {"smithy.api#enumValue" => "PROVIDER"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    Rule.add_member(:rule_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ruleName', traits: {"smithy.api#length" => {"max" => 255}, "smithy.api#pattern" => "^[a-zA-Z_0-9- ]*$", "smithy.api#required" => {}}))
    Rule.add_member(:matching_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchingKeys, location_name: 'matchingKeys', traits: {"smithy.api#length" => {"max" => 15}, "smithy.api#required" => {}}))
    Rule.type = Types::Rule
    RuleBasedProperties.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleList, location_name: 'rules', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}, "smithy.api#required" => {}}))
    RuleBasedProperties.add_member(:attribute_matching_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMatchingModel, location_name: 'attributeMatchingModel', traits: {"smithy.api#required" => {}}))
    RuleBasedProperties.add_member(:match_purpose, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchPurpose, location_name: 'matchPurpose'))
    RuleBasedProperties.type = Types::RuleBasedProperties
    RuleCondition.add_member(:rule_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ruleName', traits: {"smithy.api#length" => {"max" => 255}, "smithy.api#pattern" => "^[a-zA-Z_0-9- ]*$", "smithy.api#required" => {}}))
    RuleCondition.add_member(:condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'condition', traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#required" => {}}))
    RuleCondition.type = Types::RuleCondition
    RuleConditionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleCondition)
    RuleConditionProperties.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleConditionList, location_name: 'rules', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}, "smithy.api#required" => {}}))
    RuleConditionProperties.type = Types::RuleConditionProperties
    RuleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rule)
    SchemaAttributeType.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NAME', traits: {"smithy.api#enumValue" => "NAME"}))
    SchemaAttributeType.add_member(:name_first, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NAME_FIRST', traits: {"smithy.api#enumValue" => "NAME_FIRST"}))
    SchemaAttributeType.add_member(:name_middle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NAME_MIDDLE', traits: {"smithy.api#enumValue" => "NAME_MIDDLE"}))
    SchemaAttributeType.add_member(:name_last, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NAME_LAST', traits: {"smithy.api#enumValue" => "NAME_LAST"}))
    SchemaAttributeType.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDRESS', traits: {"smithy.api#enumValue" => "ADDRESS"}))
    SchemaAttributeType.add_member(:address_street1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDRESS_STREET1', traits: {"smithy.api#enumValue" => "ADDRESS_STREET1"}))
    SchemaAttributeType.add_member(:address_street2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDRESS_STREET2', traits: {"smithy.api#enumValue" => "ADDRESS_STREET2"}))
    SchemaAttributeType.add_member(:address_street3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDRESS_STREET3', traits: {"smithy.api#enumValue" => "ADDRESS_STREET3"}))
    SchemaAttributeType.add_member(:address_city, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDRESS_CITY', traits: {"smithy.api#enumValue" => "ADDRESS_CITY"}))
    SchemaAttributeType.add_member(:address_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDRESS_STATE', traits: {"smithy.api#enumValue" => "ADDRESS_STATE"}))
    SchemaAttributeType.add_member(:address_country, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDRESS_COUNTRY', traits: {"smithy.api#enumValue" => "ADDRESS_COUNTRY"}))
    SchemaAttributeType.add_member(:address_postalcode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDRESS_POSTALCODE', traits: {"smithy.api#enumValue" => "ADDRESS_POSTALCODE"}))
    SchemaAttributeType.add_member(:phone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PHONE', traits: {"smithy.api#enumValue" => "PHONE"}))
    SchemaAttributeType.add_member(:phone_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PHONE_NUMBER', traits: {"smithy.api#enumValue" => "PHONE_NUMBER"}))
    SchemaAttributeType.add_member(:phone_countrycode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PHONE_COUNTRYCODE', traits: {"smithy.api#enumValue" => "PHONE_COUNTRYCODE"}))
    SchemaAttributeType.add_member(:email_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL_ADDRESS', traits: {"smithy.api#enumValue" => "EMAIL_ADDRESS"}))
    SchemaAttributeType.add_member(:unique_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNIQUE_ID', traits: {"smithy.api#enumValue" => "UNIQUE_ID"}))
    SchemaAttributeType.add_member(:date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATE', traits: {"smithy.api#enumValue" => "DATE"}))
    SchemaAttributeType.add_member(:string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING', traits: {"smithy.api#enumValue" => "STRING"}))
    SchemaAttributeType.add_member(:provider_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVIDER_ID', traits: {"smithy.api#enumValue" => "PROVIDER_ID"}))
    SchemaAttributeType.add_member(:ipv4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "IPV4"}))
    SchemaAttributeType.add_member(:ipv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV6', traits: {"smithy.api#enumValue" => "IPV6"}))
    SchemaAttributeType.add_member(:maid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAID', traits: {"smithy.api#enumValue" => "MAID"}))
    SchemaInputAttribute.add_member(:field_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName, location_name: 'fieldName', traits: {"smithy.api#required" => {}}))
    SchemaInputAttribute.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaAttributeType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    SchemaInputAttribute.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName, location_name: 'groupName'))
    SchemaInputAttribute.add_member(:match_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName, location_name: 'matchKey'))
    SchemaInputAttribute.add_member(:sub_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName, location_name: 'subType'))
    SchemaInputAttribute.add_member(:hashed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'hashed'))
    SchemaInputAttribute.type = Types::SchemaInputAttribute
    SchemaInputAttributes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaInputAttribute)
    SchemaList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    SchemaMappingList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaMappingSummary)
    SchemaMappingSummary.add_member(:schema_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'schemaName', traits: {"smithy.api#required" => {}}))
    SchemaMappingSummary.add_member(:schema_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaMappingArn, location_name: 'schemaArn', traits: {"smithy.api#required" => {}}))
    SchemaMappingSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    SchemaMappingSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    SchemaMappingSummary.add_member(:has_workflows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'hasWorkflows', traits: {"smithy.api#required" => {}}))
    SchemaMappingSummary.type = Types::SchemaMappingSummary
    Schemas.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaList)
    ServiceType.add_member(:assignment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSIGNMENT', traits: {"smithy.api#enumValue" => "ASSIGNMENT"}))
    ServiceType.add_member(:id_mapping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ID_MAPPING', traits: {"smithy.api#enumValue" => "ID_MAPPING"}))
    StartIdMappingJobInput.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNameOrIdMappingWorkflowArn, location_name: 'workflowName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartIdMappingJobInput.add_member(:output_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingJobOutputSourceConfig, location_name: 'outputSourceConfig'))
    StartIdMappingJobInput.add_member(:job_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobType, location_name: 'jobType'))
    StartIdMappingJobInput.type = Types::StartIdMappingJobInput
    StartIdMappingJobOutput.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#required" => {}}))
    StartIdMappingJobOutput.add_member(:output_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingJobOutputSourceConfig, location_name: 'outputSourceConfig'))
    StartIdMappingJobOutput.add_member(:job_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobType, location_name: 'jobType'))
    StartIdMappingJobOutput.type = Types::StartIdMappingJobOutput
    StartMatchingJobInput.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'workflowName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartMatchingJobInput.type = Types::StartMatchingJobInput
    StartMatchingJobOutput.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#required" => {}}))
    StartMatchingJobOutput.type = Types::StartMatchingJobOutput
    StatementActionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementAction)
    StatementEffect.add_member(:allow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Allow', traits: {"smithy.api#enumValue" => "Allow"}))
    StatementEffect.add_member(:deny, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deny', traits: {"smithy.api#enumValue" => "Deny"}))
    StatementPrincipalList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementPrincipal)
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VeniceGlobalArn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    UniqueIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderSafeUniqueId)
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VeniceGlobalArn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateIdMappingWorkflowInput.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'workflowName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIdMappingWorkflowInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateIdMappingWorkflowInput.add_member(:input_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingWorkflowInputSourceConfig, location_name: 'inputSourceConfig', traits: {"smithy.api#required" => {}}))
    UpdateIdMappingWorkflowInput.add_member(:output_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingWorkflowOutputSourceConfig, location_name: 'outputSourceConfig'))
    UpdateIdMappingWorkflowInput.add_member(:id_mapping_techniques, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingTechniques, location_name: 'idMappingTechniques', traits: {"smithy.api#required" => {}}))
    UpdateIdMappingWorkflowInput.add_member(:incremental_run_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingIncrementalRunConfig, location_name: 'incrementalRunConfig'))
    UpdateIdMappingWorkflowInput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingRoleArn, location_name: 'roleArn', traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => ""}))
    UpdateIdMappingWorkflowInput.type = Types::UpdateIdMappingWorkflowInput
    UpdateIdMappingWorkflowOutput.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'workflowName', traits: {"smithy.api#required" => {}}))
    UpdateIdMappingWorkflowOutput.add_member(:workflow_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingWorkflowArn, location_name: 'workflowArn', traits: {"smithy.api#required" => {}}))
    UpdateIdMappingWorkflowOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateIdMappingWorkflowOutput.add_member(:input_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingWorkflowInputSourceConfig, location_name: 'inputSourceConfig', traits: {"smithy.api#required" => {}}))
    UpdateIdMappingWorkflowOutput.add_member(:output_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingWorkflowOutputSourceConfig, location_name: 'outputSourceConfig'))
    UpdateIdMappingWorkflowOutput.add_member(:id_mapping_techniques, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingTechniques, location_name: 'idMappingTechniques', traits: {"smithy.api#required" => {}}))
    UpdateIdMappingWorkflowOutput.add_member(:incremental_run_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingIncrementalRunConfig, location_name: 'incrementalRunConfig'))
    UpdateIdMappingWorkflowOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingRoleArn, location_name: 'roleArn', traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => ""}))
    UpdateIdMappingWorkflowOutput.type = Types::UpdateIdMappingWorkflowOutput
    UpdateIdNamespaceInput.add_member(:id_namespace_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'idNamespaceName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIdNamespaceInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateIdNamespaceInput.add_member(:input_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceInputSourceConfig, location_name: 'inputSourceConfig'))
    UpdateIdNamespaceInput.add_member(:id_mapping_workflow_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceIdMappingWorkflowPropertiesList, location_name: 'idMappingWorkflowProperties'))
    UpdateIdNamespaceInput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn'))
    UpdateIdNamespaceInput.type = Types::UpdateIdNamespaceInput
    UpdateIdNamespaceOutput.add_member(:id_namespace_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'idNamespaceName', traits: {"smithy.api#required" => {}}))
    UpdateIdNamespaceOutput.add_member(:id_namespace_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceArn, location_name: 'idNamespaceArn', traits: {"smithy.api#required" => {}}))
    UpdateIdNamespaceOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateIdNamespaceOutput.add_member(:input_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceInputSourceConfig, location_name: 'inputSourceConfig'))
    UpdateIdNamespaceOutput.add_member(:id_mapping_workflow_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceIdMappingWorkflowPropertiesList, location_name: 'idMappingWorkflowProperties'))
    UpdateIdNamespaceOutput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    UpdateIdNamespaceOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn'))
    UpdateIdNamespaceOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    UpdateIdNamespaceOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    UpdateIdNamespaceOutput.type = Types::UpdateIdNamespaceOutput
    UpdateMatchingWorkflowInput.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'workflowName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMatchingWorkflowInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateMatchingWorkflowInput.add_member(:input_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputSourceConfig, location_name: 'inputSourceConfig', traits: {"smithy.api#required" => {}}))
    UpdateMatchingWorkflowInput.add_member(:output_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputSourceConfig, location_name: 'outputSourceConfig', traits: {"smithy.api#required" => {}}))
    UpdateMatchingWorkflowInput.add_member(:resolution_techniques, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolutionTechniques, location_name: 'resolutionTechniques', traits: {"smithy.api#required" => {}}))
    UpdateMatchingWorkflowInput.add_member(:incremental_run_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncrementalRunConfig, location_name: 'incrementalRunConfig'))
    UpdateMatchingWorkflowInput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    UpdateMatchingWorkflowInput.type = Types::UpdateMatchingWorkflowInput
    UpdateMatchingWorkflowOutput.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'workflowName', traits: {"smithy.api#required" => {}}))
    UpdateMatchingWorkflowOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateMatchingWorkflowOutput.add_member(:input_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputSourceConfig, location_name: 'inputSourceConfig', traits: {"smithy.api#required" => {}}))
    UpdateMatchingWorkflowOutput.add_member(:output_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputSourceConfig, location_name: 'outputSourceConfig', traits: {"smithy.api#required" => {}}))
    UpdateMatchingWorkflowOutput.add_member(:resolution_techniques, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolutionTechniques, location_name: 'resolutionTechniques', traits: {"smithy.api#required" => {}}))
    UpdateMatchingWorkflowOutput.add_member(:incremental_run_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncrementalRunConfig, location_name: 'incrementalRunConfig'))
    UpdateMatchingWorkflowOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    UpdateMatchingWorkflowOutput.type = Types::UpdateMatchingWorkflowOutput
    UpdateSchemaMappingInput.add_member(:schema_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'schemaName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSchemaMappingInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateSchemaMappingInput.add_member(:mapped_input_fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaInputAttributes, location_name: 'mappedInputFields', traits: {"smithy.api#required" => {}}))
    UpdateSchemaMappingInput.type = Types::UpdateSchemaMappingInput
    UpdateSchemaMappingOutput.add_member(:schema_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'schemaName', traits: {"smithy.api#required" => {}}))
    UpdateSchemaMappingOutput.add_member(:schema_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaMappingArn, location_name: 'schemaArn', traits: {"smithy.api#required" => {}}))
    UpdateSchemaMappingOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateSchemaMappingOutput.add_member(:mapped_input_fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaInputAttributes, location_name: 'mappedInputFields', traits: {"smithy.api#required" => {}}))
    UpdateSchemaMappingOutput.type = Types::UpdateSchemaMappingOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ValidationException.type = Types::ValidationException

    AWSVeniceService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.entityresolution#AWSVeniceService"
      service.name = "AWSVeniceService"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "EntityResolution", "arnNamespace" => "entityresolution", "cloudTrailEventSource" => "entityresolution.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "entityresolution"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"], "maxAge" => 86400}, "smithy.api#title" => "AWS EntityResolution"}
      service.add_operation(:add_policy_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#AddPolicyStatement"
        operation.name = "AddPolicyStatement"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddPolicyStatementInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddPolicyStatementOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/policies/{arn}/{statementId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_delete_unique_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#BatchDeleteUniqueId"
        operation.name = "BatchDeleteUniqueId"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteUniqueIdInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteUniqueIdOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/matchingworkflows/{workflowName}/uniqueids"}}
      end)
      service.add_operation(:create_id_mapping_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#CreateIdMappingWorkflow"
        operation.name = "CreateIdMappingWorkflow"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIdMappingWorkflowInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIdMappingWorkflowOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceedsLimitException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/idmappingworkflows"}}
      end)
      service.add_operation(:create_id_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#CreateIdNamespace"
        operation.name = "CreateIdNamespace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIdNamespaceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIdNamespaceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceedsLimitException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/idnamespaces"}}
      end)
      service.add_operation(:create_matching_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#CreateMatchingWorkflow"
        operation.name = "CreateMatchingWorkflow"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMatchingWorkflowInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMatchingWorkflowOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceedsLimitException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/matchingworkflows"}}
      end)
      service.add_operation(:create_schema_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#CreateSchemaMapping"
        operation.name = "CreateSchemaMapping"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSchemaMappingInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSchemaMappingOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceedsLimitException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/schemas"}}
      end)
      service.add_operation(:delete_id_mapping_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#DeleteIdMappingWorkflow"
        operation.name = "DeleteIdMappingWorkflow"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIdMappingWorkflowInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIdMappingWorkflowOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/idmappingworkflows/{workflowName}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_id_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#DeleteIdNamespace"
        operation.name = "DeleteIdNamespace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIdNamespaceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIdNamespaceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/idnamespaces/{idNamespaceName}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_matching_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#DeleteMatchingWorkflow"
        operation.name = "DeleteMatchingWorkflow"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMatchingWorkflowInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMatchingWorkflowOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/matchingworkflows/{workflowName}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_policy_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#DeletePolicyStatement"
        operation.name = "DeletePolicyStatement"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePolicyStatementInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePolicyStatementOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/policies/{arn}/{statementId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_schema_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#DeleteSchemaMapping"
        operation.name = "DeleteSchemaMapping"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSchemaMappingInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSchemaMappingOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/schemas/{schemaName}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:generate_match_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#GenerateMatchId"
        operation.name = "GenerateMatchId"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateMatchIdInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateMatchIdOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/matchingworkflows/{workflowName}/generateMatches"}}
      end)
      service.add_operation(:get_id_mapping_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#GetIdMappingJob"
        operation.name = "GetIdMappingJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdMappingJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdMappingJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/idmappingworkflows/{workflowName}/jobs/{jobId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_id_mapping_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#GetIdMappingWorkflow"
        operation.name = "GetIdMappingWorkflow"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdMappingWorkflowInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdMappingWorkflowOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/idmappingworkflows/{workflowName}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_id_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#GetIdNamespace"
        operation.name = "GetIdNamespace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdNamespaceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdNamespaceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/idnamespaces/{idNamespaceName}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_match_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#GetMatchId"
        operation.name = "GetMatchId"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMatchIdInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMatchIdOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/matchingworkflows/{workflowName}/matches"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_matching_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#GetMatchingJob"
        operation.name = "GetMatchingJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMatchingJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMatchingJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/matchingworkflows/{workflowName}/jobs/{jobId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_matching_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#GetMatchingWorkflow"
        operation.name = "GetMatchingWorkflow"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMatchingWorkflowInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMatchingWorkflowOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/matchingworkflows/{workflowName}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#GetPolicy"
        operation.name = "GetPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/policies/{arn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_provider_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#GetProviderService"
        operation.name = "GetProviderService"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetProviderServiceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetProviderServiceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/providerservices/{providerName}/{providerServiceName}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_schema_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#GetSchemaMapping"
        operation.name = "GetSchemaMapping"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSchemaMappingInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSchemaMappingOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/schemas/{schemaName}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_id_mapping_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#ListIdMappingJobs"
        operation.name = "ListIdMappingJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdMappingJobsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdMappingJobsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/idmappingworkflows/{workflowName}/jobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIdMappingJobs.new
      end)
      service.add_operation(:list_id_mapping_workflows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#ListIdMappingWorkflows"
        operation.name = "ListIdMappingWorkflows"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdMappingWorkflowsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdMappingWorkflowsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/idmappingworkflows"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIdMappingWorkflows.new
      end)
      service.add_operation(:list_id_namespaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#ListIdNamespaces"
        operation.name = "ListIdNamespaces"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdNamespacesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdNamespacesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/idnamespaces"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIdNamespaces.new
      end)
      service.add_operation(:list_matching_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#ListMatchingJobs"
        operation.name = "ListMatchingJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMatchingJobsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMatchingJobsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/matchingworkflows/{workflowName}/jobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMatchingJobs.new
      end)
      service.add_operation(:list_matching_workflows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#ListMatchingWorkflows"
        operation.name = "ListMatchingWorkflows"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMatchingWorkflowsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMatchingWorkflowsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/matchingworkflows"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMatchingWorkflows.new
      end)
      service.add_operation(:list_provider_services, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#ListProviderServices"
        operation.name = "ListProviderServices"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProviderServicesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProviderServicesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/providerservices"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListProviderServices.new
      end)
      service.add_operation(:list_schema_mappings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#ListSchemaMappings"
        operation.name = "ListSchemaMappings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSchemaMappingsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSchemaMappingsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/schemas"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSchemaMappings.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#PutPolicy"
        operation.name = "PutPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutPolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/policies/{arn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_id_mapping_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#StartIdMappingJob"
        operation.name = "StartIdMappingJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartIdMappingJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartIdMappingJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceedsLimitException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/idmappingworkflows/{workflowName}/jobs"}}
      end)
      service.add_operation(:start_matching_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#StartMatchingJob"
        operation.name = "StartMatchingJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMatchingJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMatchingJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceedsLimitException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/matchingworkflows/{workflowName}/jobs"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_id_mapping_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#UpdateIdMappingWorkflow"
        operation.name = "UpdateIdMappingWorkflow"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIdMappingWorkflowInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIdMappingWorkflowOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/idmappingworkflows/{workflowName}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_id_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#UpdateIdNamespace"
        operation.name = "UpdateIdNamespace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIdNamespaceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIdNamespaceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/idnamespaces/{idNamespaceName}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_matching_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#UpdateMatchingWorkflow"
        operation.name = "UpdateMatchingWorkflow"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMatchingWorkflowInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMatchingWorkflowOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/matchingworkflows/{workflowName}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_schema_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.entityresolution#UpdateSchemaMapping"
        operation.name = "UpdateSchemaMapping"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSchemaMappingInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSchemaMappingOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/schemas/{schemaName}"}, "smithy.api#idempotent" => {}}
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
