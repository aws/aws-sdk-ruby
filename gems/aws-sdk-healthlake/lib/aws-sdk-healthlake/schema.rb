# frozen_string_literal: true

# This is generated code!

module Aws::HealthLake
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AgentInputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#AgentInputMessage", name: "AgentInputMessage")
    AgentInputMessageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.healthlake#AgentInputMessageType", name: "AgentInputMessageType")
    AgentMessageOutOfContextException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#AgentMessageOutOfContextException", name: "AgentMessageOutOfContextException", traits: {"smithy.api#error" => "client"})
    AgentMessageString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#AgentMessageString", name: "AgentMessageString", traits: {"smithy.api#length" => {"min" => 1, "max" => 40960}, "smithy.api#sensitive" => {}})
    AgentOutputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#AgentOutputMessage", name: "AgentOutputMessage")
    AgentOutputMessageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.healthlake#AgentOutputMessageType", name: "AgentOutputMessageType")
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws((-us-gov)|(-iso)|(-iso-b)|(-cn))?:healthlake:[a-z0-9-]+:\\d{12}:(datastore\\/fhir\\/.{32}|dataTransformationProfile\\/[a-f0-9]{32})$"})
    AnalyticsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#AnalyticsConfiguration", name: "AnalyticsConfiguration")
    AnalyticsStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.healthlake#AnalyticsStatus", name: "AnalyticsStatus")
    AuthorizationStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.healthlake#AuthorizationStrategy", name: "AuthorizationStrategy")
    BackupConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#BackupConfiguration", name: "BackupConfiguration")
    BackupRetentionPeriodInDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.healthlake#BackupRetentionPeriodInDays", name: "BackupRetentionPeriodInDays", traits: {"smithy.api#range" => {"min" => 1, "max" => 30}})
    BackupStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.healthlake#BackupStatus", name: "BackupStatus")
    BackupType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.healthlake#BackupType", name: "BackupType")
    BoundedLengthString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#BoundedLengthString", name: "BoundedLengthString", traits: {"smithy.api#length" => {"min" => 1, "max" => 5000}, "smithy.api#pattern" => "^[\\P{M}\\p{M}]{1,5000}$"})
    BoundedString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#BoundedString", name: "BoundedString", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ChangeDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#ChangeDescription", name: "ChangeDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    ClientTokenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#ClientTokenString", name: "ClientTokenString", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    CmkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.healthlake#CmkType", name: "CmkType")
    ConfigurationMetadata = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#ConfigurationMetadata", name: "ConfigurationMetadata")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContinuousBackupRestoreConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ContinuousBackupRestoreConfiguration", name: "ContinuousBackupRestoreConfiguration")
    ConversationIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#ConversationIdString", name: "ConversationIdString", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}})
    ConversationNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ConversationNotFoundException", name: "ConversationNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CreateDataTransformationProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#CreateDataTransformationProfileRequest", name: "CreateDataTransformationProfileRequest")
    CreateDataTransformationProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#CreateDataTransformationProfileResponse", name: "CreateDataTransformationProfileResponse")
    CreateDataTransformationProfileSource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.healthlake#CreateDataTransformationProfileSource", name: "CreateDataTransformationProfileSource")
    CreateFHIRDatastoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#CreateFHIRDatastoreRequest", name: "CreateFHIRDatastoreRequest")
    CreateFHIRDatastoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#CreateFHIRDatastoreResponse", name: "CreateFHIRDatastoreResponse")
    DataTransformationChatOptionString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#DataTransformationChatOptionString", name: "DataTransformationChatOptionString", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#sensitive" => {}})
    DataTransformationChatOptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.healthlake#DataTransformationChatOptionsList", name: "DataTransformationChatOptionsList")
    DataTransformationIamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#DataTransformationIamRoleArn", name: "DataTransformationIamRoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+$"})
    DataTransformationJobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#DataTransformationJobId", name: "DataTransformationJobId", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    DataTransformationJobName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#DataTransformationJobName", name: "DataTransformationJobName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*$"})
    DataTransformationNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#DataTransformationNextToken", name: "DataTransformationNextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    DataTransformationProfileSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#DataTransformationProfileSummary", name: "DataTransformationProfileSummary")
    DataTransformationProfileSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.healthlake#DataTransformationProfileSummaryList", name: "DataTransformationProfileSummaryList")
    DataTransformationProfileVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#DataTransformationProfileVersionSummary", name: "DataTransformationProfileVersionSummary")
    DataTransformationProfileVersionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.healthlake#DataTransformationProfileVersionSummaryList", name: "DataTransformationProfileVersionSummaryList")
    DataTransformationS3Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#DataTransformationS3Configuration", name: "DataTransformationS3Configuration")
    DataTransformationS3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#DataTransformationS3Uri", name: "DataTransformationS3Uri", traits: {"smithy.api#length" => {"min" => 8, "max" => 2048}, "smithy.api#pattern" => "^s3://[a-z0-9][a-z0-9.\\-]{1,61}[a-z0-9](/.+)?$"})
    DataTransformationTagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#DataTransformationTagKey", name: "DataTransformationTagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    DataTransformationTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#DataTransformationTagValue", name: "DataTransformationTagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    DatastoreArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#DatastoreArn", name: "DatastoreArn", traits: {"smithy.api#pattern" => "^arn:aws((-us-gov)|(-iso)|(-iso-b)|(-cn))?:healthlake:[a-zA-Z0-9-]+:[0-9]{12}:datastore/.+?$"})
    DatastoreBackupStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#DatastoreBackupStatus", name: "DatastoreBackupStatus")
    DatastoreFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#DatastoreFilter", name: "DatastoreFilter")
    DatastoreId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#DatastoreId", name: "DatastoreId", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"})
    DatastoreName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#DatastoreName", name: "DatastoreName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"})
    DatastoreProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#DatastoreProperties", name: "DatastoreProperties")
    DatastorePropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.healthlake#DatastorePropertiesList", name: "DatastorePropertiesList")
    DatastoreStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.healthlake#DatastoreStatus", name: "DatastoreStatus")
    DateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.healthlake#DateTime", name: "DateTime")
    DefaultEnabledBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.healthlake#DefaultEnabledBoolean", name: "DefaultEnabledBoolean", traits: {"smithy.api#default" => true})
    DefaultProfiles = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.healthlake#DefaultProfiles", name: "DefaultProfiles")
    DeleteDataTransformationProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#DeleteDataTransformationProfileRequest", name: "DeleteDataTransformationProfileRequest")
    DeleteDataTransformationProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#DeleteDataTransformationProfileResponse", name: "DeleteDataTransformationProfileResponse")
    DeleteFHIRDatastoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#DeleteFHIRDatastoreRequest", name: "DeleteFHIRDatastoreRequest")
    DeleteFHIRDatastoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#DeleteFHIRDatastoreResponse", name: "DeleteFHIRDatastoreResponse")
    DescribeDataTransformationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#DescribeDataTransformationJobRequest", name: "DescribeDataTransformationJobRequest")
    DescribeDataTransformationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#DescribeDataTransformationJobResponse", name: "DescribeDataTransformationJobResponse")
    DescribeFHIRDatastoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#DescribeFHIRDatastoreRequest", name: "DescribeFHIRDatastoreRequest")
    DescribeFHIRDatastoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#DescribeFHIRDatastoreResponse", name: "DescribeFHIRDatastoreResponse")
    DescribeFHIRExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#DescribeFHIRExportJobRequest", name: "DescribeFHIRExportJobRequest")
    DescribeFHIRExportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#DescribeFHIRExportJobResponse", name: "DescribeFHIRExportJobResponse")
    DescribeFHIRImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#DescribeFHIRImportJobRequest", name: "DescribeFHIRImportJobRequest")
    DescribeFHIRImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#DescribeFHIRImportJobResponse", name: "DescribeFHIRImportJobResponse")
    EncryptionKeyID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#EncryptionKeyID", name: "EncryptionKeyID", traits: {"smithy.api#length" => {"min" => 1, "max" => 400}, "smithy.api#pattern" => "^(arn:aws((-us-gov)|(-iso)|(-iso-b)|(-cn))?:kms:)?([a-z]{2}-[a-z]+(-[a-z]+)?-\\d:)?(\\d{12}:)?(((key/)?[a-zA-Z0-9-_]+)|(alias/[a-zA-Z0-9:/_-]+))$"})
    ErrorCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.healthlake#ErrorCategory", name: "ErrorCategory")
    ErrorCause = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ErrorCause", name: "ErrorCause")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    ExistingVersionedProfileSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ExistingVersionedProfileSource", name: "ExistingVersionedProfileSource")
    ExportJobProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ExportJobProperties", name: "ExportJobProperties")
    ExportJobPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.healthlake#ExportJobPropertiesList", name: "ExportJobPropertiesList")
    FHIRVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.healthlake#FHIRVersion", name: "FHIRVersion")
    FailedDependencyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#FailedDependencyException", name: "FailedDependencyException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 424})
    GenericDouble = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.healthlake#GenericDouble", name: "GenericDouble")
    GenericLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.healthlake#GenericLong", name: "GenericLong")
    GetDataTransformationProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#GetDataTransformationProfileRequest", name: "GetDataTransformationProfileRequest")
    GetDataTransformationProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#GetDataTransformationProfileResponse", name: "GetDataTransformationProfileResponse")
    HealthLakeBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.healthlake#HealthLakeBoolean", name: "HealthLakeBoolean", traits: {"smithy.api#default" => false})
    HealthLakeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#HealthLakeString", name: "HealthLakeString", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^[\\P{M}\\p{M}]{0,10000}$"})
    HealthLakeTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.healthlake#HealthLakeTimestamp", name: "HealthLakeTimestamp")
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#IamRoleArn", name: "IamRoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+$"})
    IdentityProviderConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#IdentityProviderConfiguration", name: "IdentityProviderConfiguration")
    ImportJobProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ImportJobProperties", name: "ImportJobProperties")
    ImportJobPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.healthlake#ImportJobPropertiesList", name: "ImportJobPropertiesList")
    InputDataConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.healthlake#InputDataConfig", name: "InputDataConfig")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#JobId", name: "JobId", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"})
    JobName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#JobName", name: "JobName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"})
    JobProgressReport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#JobProgressReport", name: "JobProgressReport")
    JobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.healthlake#JobStatus", name: "JobStatus")
    KmsEncryptionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#KmsEncryptionConfig", name: "KmsEncryptionConfig")
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#KmsKeyId", name: "KmsKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    LambdaArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#LambdaArn", name: "LambdaArn", traits: {"smithy.api#length" => {"min" => 49, "max" => 256}, "smithy.api#pattern" => "^arn:aws:lambda:[a-z]{2}-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9\\-_\\.]+(:(\\$LATEST|[a-zA-Z0-9\\-_]+))?$"})
    ListDataTransformationJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ListDataTransformationJobsRequest", name: "ListDataTransformationJobsRequest")
    ListDataTransformationJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ListDataTransformationJobsResponse", name: "ListDataTransformationJobsResponse")
    ListDataTransformationProfileVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ListDataTransformationProfileVersionsRequest", name: "ListDataTransformationProfileVersionsRequest")
    ListDataTransformationProfileVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ListDataTransformationProfileVersionsResponse", name: "ListDataTransformationProfileVersionsResponse")
    ListDataTransformationProfilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ListDataTransformationProfilesRequest", name: "ListDataTransformationProfilesRequest")
    ListDataTransformationProfilesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ListDataTransformationProfilesResponse", name: "ListDataTransformationProfilesResponse")
    ListFHIRDatastoresRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ListFHIRDatastoresRequest", name: "ListFHIRDatastoresRequest")
    ListFHIRDatastoresResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ListFHIRDatastoresResponse", name: "ListFHIRDatastoresResponse")
    ListFHIRExportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ListFHIRExportJobsRequest", name: "ListFHIRExportJobsRequest")
    ListFHIRExportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ListFHIRExportJobsResponse", name: "ListFHIRExportJobsResponse")
    ListFHIRImportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ListFHIRImportJobsRequest", name: "ListFHIRImportJobsRequest")
    ListFHIRImportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ListFHIRImportJobsResponse", name: "ListFHIRImportJobsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.healthlake#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.healthlake#MaxResultsInteger", name: "MaxResultsInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#Message", name: "Message", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"max" => 8192}, "smithy.api#pattern" => "^\\p{ASCII}{0,8192}$"})
    NlpConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#NlpConfiguration", name: "NlpConfiguration")
    NlpStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.healthlake#NlpStatus", name: "NlpStatus")
    NotImplementedOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#NotImplementedOperationException", name: "NotImplementedOperationException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 501})
    OutputDataConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.healthlake#OutputDataConfig", name: "OutputDataConfig")
    PreloadDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#PreloadDataConfig", name: "PreloadDataConfig")
    PreloadDataType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.healthlake#PreloadDataType", name: "PreloadDataType")
    ProfileConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ProfileConfiguration", name: "ProfileConfiguration")
    ProfileDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#ProfileDescription", name: "ProfileDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    ProfileIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#ProfileIdString", name: "ProfileIdString", traits: {"smithy.api#length" => {"min" => 32, "max" => 32}, "smithy.api#pattern" => "^[a-f0-9]{32}$"})
    ProfileMapping = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.healthlake#ProfileMapping", name: "ProfileMapping", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}, "smithy.api#sensitive" => {}})
    ProfileMappingKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#ProfileMappingKey", name: "ProfileMappingKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    ProfileMappingSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ProfileMappingSource", name: "ProfileMappingSource", traits: {"smithy.api#sensitive" => {}})
    ProfileMappingValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#ProfileMappingValue", name: "ProfileMappingValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 102400}})
    ProfileNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#ProfileNameString", name: "ProfileNameString", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ProfileVersion = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.healthlake#ProfileVersion", name: "ProfileVersion", traits: {"smithy.api#range" => {"min" => 0, "max" => 99}})
    PublishDataTransformationProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#PublishDataTransformationProfileRequest", name: "PublishDataTransformationProfileRequest")
    PublishDataTransformationProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#PublishDataTransformationProfileResponse", name: "PublishDataTransformationProfileResponse")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RestoreConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.healthlake#RestoreConfiguration", name: "RestoreConfiguration")
    RestoreFHIRDatastoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#RestoreFHIRDatastoreRequest", name: "RestoreFHIRDatastoreRequest")
    RestoreFHIRDatastoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#RestoreFHIRDatastoreResponse", name: "RestoreFHIRDatastoreResponse")
    S3Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#S3Configuration", name: "S3Configuration")
    S3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#S3Uri", name: "S3Uri", traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?$"})
    SampleDataS3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#SampleDataS3Uri", name: "SampleDataS3Uri", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][a-z0-9.\\-]{1,61}[a-z0-9](/.*)?$"})
    SampleDataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#SampleDataSource", name: "SampleDataSource")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SourceFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.healthlake#SourceFormat", name: "SourceFormat")
    SseConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#SseConfiguration", name: "SseConfiguration")
    StartDataTransformationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#StartDataTransformationJobRequest", name: "StartDataTransformationJobRequest")
    StartDataTransformationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#StartDataTransformationJobResponse", name: "StartDataTransformationJobResponse")
    StartFHIRExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#StartFHIRExportJobRequest", name: "StartFHIRExportJobRequest")
    StartFHIRExportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#StartFHIRExportJobResponse", name: "StartFHIRExportJobResponse")
    StartFHIRImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#StartFHIRImportJobRequest", name: "StartFHIRImportJobRequest")
    StartFHIRImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#StartFHIRImportJobResponse", name: "StartFHIRImportJobResponse")
    StarterProfileSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#StarterProfileSource", name: "StarterProfileSource")
    StringMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.healthlake#StringMap", name: "StringMap")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.healthlake#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.healthlake#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.healthlake#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TargetFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.healthlake#TargetFormat", name: "TargetFormat")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TransformationInputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#TransformationInputDataConfig", name: "TransformationInputDataConfig")
    TransformationJobProgressReport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#TransformationJobProgressReport", name: "TransformationJobProgressReport")
    TransformationJobProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#TransformationJobProperties", name: "TransformationJobProperties", traits: {"smithy.api#references" => [{"resource" => "com.amazon.awshealthlakedatatransformationfrontendservice#DataTransformationProfile", "ids" => {"ProfileId" => "ProfileId"}}]})
    TransformationJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.healthlake#TransformationJobStatus", name: "TransformationJobStatus")
    TransformationJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#TransformationJobSummary", name: "TransformationJobSummary")
    TransformationJobSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.healthlake#TransformationJobSummaryList", name: "TransformationJobSummaryList")
    TransformationOutputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#TransformationOutputDataConfig", name: "TransformationOutputDataConfig")
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#UnauthorizedException", name: "UnauthorizedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UnsupportedMIMETypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#UnsupportedMIMETypeException", name: "UnsupportedMIMETypeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 415})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateDataTransformationProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#UpdateDataTransformationProfileRequest", name: "UpdateDataTransformationProfileRequest")
    UpdateDataTransformationProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#UpdateDataTransformationProfileResponse", name: "UpdateDataTransformationProfileResponse")
    UpdateFHIRDatastoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#UpdateFHIRDatastoreRequest", name: "UpdateFHIRDatastoreRequest")
    UpdateFHIRDatastoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#UpdateFHIRDatastoreResponse", name: "UpdateFHIRDatastoreResponse")
    UpdateProfileWithAgentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#UpdateProfileWithAgentRequest", name: "UpdateProfileWithAgentRequest")
    UpdateProfileWithAgentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#UpdateProfileWithAgentResponse", name: "UpdateProfileWithAgentResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.healthlake#ValidationLevel", name: "ValidationLevel")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeString, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AgentInputMessage.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentMessageString, name: "Body", traits: {"smithy.api#required" => {}}))
    AgentInputMessage.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentInputMessageType, name: "Type", traits: {"smithy.api#required" => {}}))
    AgentInputMessage.type = Types::AgentInputMessage
    AgentInputMessageType.add_member(:normal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NORMAL", traits: {"smithy.api#enumValue" => "normal"}))
    AgentInputMessageType.add_member(:user_confirmation_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_CONFIRMATION_RESPONSE", traits: {"smithy.api#enumValue" => "confirmation_response"}))
    AgentMessageOutOfContextException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    AgentMessageOutOfContextException.type = Types::AgentMessageOutOfContextException
    AgentOutputMessage.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentMessageString, name: "Body", traits: {"smithy.api#required" => {}}))
    AgentOutputMessage.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentOutputMessageType, name: "Type", traits: {"smithy.api#required" => {}}))
    AgentOutputMessage.add_member(:options_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationChatOptionsList, name: "OptionsList"))
    AgentOutputMessage.type = Types::AgentOutputMessage
    AgentOutputMessageType.add_member(:initial_greeting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INITIAL_GREETING", traits: {"smithy.api#enumValue" => "INITIAL_GREETING"}))
    AgentOutputMessageType.add_member(:normal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NORMAL", traits: {"smithy.api#enumValue" => "normal"}))
    AgentOutputMessageType.add_member(:user_confirmation_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_CONFIRMATION_REQUEST", traits: {"smithy.api#enumValue" => "confirmation"}))
    AgentOutputMessageType.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "complete"}))
    AgentOutputMessageType.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "error"}))
    AgentOutputMessageType.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIONS", traits: {"smithy.api#enumValue" => "options"}))
    AgentOutputMessageType.add_member(:choices, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHOICES", traits: {"smithy.api#enumValue" => "choices"}))
    AnalyticsConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsStatus, name: "Status"))
    AnalyticsConfiguration.type = Types::AnalyticsConfiguration
    AnalyticsStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    AnalyticsStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLING", traits: {"smithy.api#enumValue" => "ENABLING"}))
    AnalyticsStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    AnalyticsStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLING", traits: {"smithy.api#enumValue" => "DISABLING"}))
    AnalyticsStatus.add_member(:pausing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAUSING", traits: {"smithy.api#enumValue" => "PAUSING"}))
    AnalyticsStatus.add_member(:paused, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAUSED", traits: {"smithy.api#enumValue" => "PAUSED"}))
    AuthorizationStrategy.add_member(:smartv1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMARTV1", traits: {"smithy.api#enumValue" => "SMART_ON_FHIR_V1"}))
    AuthorizationStrategy.add_member(:smart_on_fhir, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMART_ON_FHIR", traits: {"smithy.api#enumValue" => "SMART_ON_FHIR"}))
    AuthorizationStrategy.add_member(:aws_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_AUTH", traits: {"smithy.api#enumValue" => "AWS_AUTH"}))
    BackupConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupStatus, name: "Status"))
    BackupConfiguration.add_member(:backup_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupType, name: "BackupType"))
    BackupConfiguration.add_member(:retention_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupRetentionPeriodInDays, name: "RetentionPeriodInDays"))
    BackupConfiguration.add_member(:backup_tags_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeBoolean, name: "BackupTagsEnabled", traits: {"smithy.api#default" => false}))
    BackupConfiguration.type = Types::BackupConfiguration
    BackupStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    BackupStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    BackupType.add_member(:continuous, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTINUOUS", traits: {"smithy.api#enumValue" => "CONTINUOUS"}))
    CmkType.add_member(:cm_cmk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CM_CMK", traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED_KMS_KEY"}))
    CmkType.add_member(:ao_cmk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AO_CMK", traits: {"smithy.api#enumValue" => "AWS_OWNED_KMS_KEY"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeString, name: "Message"))
    ConflictException.type = Types::ConflictException
    ContinuousBackupRestoreConfiguration.add_member(:restore_point_time, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeTimestamp, name: "RestorePointTime"))
    ContinuousBackupRestoreConfiguration.type = Types::ContinuousBackupRestoreConfiguration
    ConversationNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ConversationNotFoundException.type = Types::ConversationNotFoundException
    CreateDataTransformationProfileRequest.add_member(:source_format, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceFormat, name: "SourceFormat", traits: {"smithy.api#required" => {}}))
    CreateDataTransformationProfileRequest.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateDataTransformationProfileSource, name: "Source", traits: {"smithy.api#required" => {}}))
    CreateDataTransformationProfileRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "KmsKeyId"))
    CreateDataTransformationProfileRequest.add_member(:profile_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDescription, name: "ProfileDescription"))
    CreateDataTransformationProfileRequest.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileNameString, name: "ProfileName", traits: {"smithy.api#required" => {}}))
    CreateDataTransformationProfileRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateDataTransformationProfileRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDataTransformationProfileRequest.type = Types::CreateDataTransformationProfileRequest
    CreateDataTransformationProfileResponse.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileIdString, name: "ProfileId", traits: {"smithy.api#required" => {}}))
    CreateDataTransformationProfileResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileVersion, name: "Version", traits: {"smithy.api#required" => {}}))
    CreateDataTransformationProfileResponse.add_member(:source_format, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceFormat, name: "SourceFormat", traits: {"smithy.api#required" => {}}))
    CreateDataTransformationProfileResponse.add_member(:target_format, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetFormat, name: "TargetFormat", traits: {"smithy.api#required" => {}}))
    CreateDataTransformationProfileResponse.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileNameString, name: "ProfileName", traits: {"smithy.api#required" => {}}))
    CreateDataTransformationProfileResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastUpdatedAt", traits: {"smithy.api#required" => {}}))
    CreateDataTransformationProfileResponse.type = Types::CreateDataTransformationProfileResponse
    CreateDataTransformationProfileSource.add_member(:starter_profile, Types::CreateDataTransformationProfileSource::StarterProfile, ::Smithy::Schema::Shapes::MemberShape.new(target: StarterProfileSource, name: "StarterProfile"))
    CreateDataTransformationProfileSource.add_member(:existing_versioned_profile_id, Types::CreateDataTransformationProfileSource::ExistingVersionedProfileId, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingVersionedProfileSource, name: "ExistingVersionedProfileId"))
    CreateDataTransformationProfileSource.add_member(:profile_mapping, Types::CreateDataTransformationProfileSource::ProfileMapping, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileMappingSource, name: "ProfileMapping"))
    CreateDataTransformationProfileSource.add_member(:sample_data, Types::CreateDataTransformationProfileSource::SampleData, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleDataSource, name: "SampleData"))
    CreateDataTransformationProfileSource.add_member(:unknown, Types::CreateDataTransformationProfileSource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CreateDataTransformationProfileSource.type = Types::CreateDataTransformationProfileSource
    CreateFHIRDatastoreRequest.add_member(:datastore_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreName, name: "DatastoreName"))
    CreateFHIRDatastoreRequest.add_member(:datastore_type_version, ::Smithy::Schema::Shapes::MemberShape.new(target: FHIRVersion, name: "DatastoreTypeVersion", traits: {"smithy.api#required" => {}}))
    CreateFHIRDatastoreRequest.add_member(:sse_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SseConfiguration, name: "SseConfiguration"))
    CreateFHIRDatastoreRequest.add_member(:preload_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PreloadDataConfig, name: "PreloadDataConfig"))
    CreateFHIRDatastoreRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientTokenString, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateFHIRDatastoreRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateFHIRDatastoreRequest.add_member(:identity_provider_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderConfiguration, name: "IdentityProviderConfiguration"))
    CreateFHIRDatastoreRequest.add_member(:analytics_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsConfiguration, name: "AnalyticsConfiguration"))
    CreateFHIRDatastoreRequest.add_member(:nlp_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NlpConfiguration, name: "NlpConfiguration"))
    CreateFHIRDatastoreRequest.add_member(:profile_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileConfiguration, name: "ProfileConfiguration"))
    CreateFHIRDatastoreRequest.add_member(:backup_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupConfiguration, name: "BackupConfiguration"))
    CreateFHIRDatastoreRequest.type = Types::CreateFHIRDatastoreRequest
    CreateFHIRDatastoreResponse.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "DatastoreId", traits: {"smithy.api#required" => {}}))
    CreateFHIRDatastoreResponse.add_member(:datastore_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreArn, name: "DatastoreArn", traits: {"smithy.api#required" => {}}))
    CreateFHIRDatastoreResponse.add_member(:datastore_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreStatus, name: "DatastoreStatus", traits: {"smithy.api#required" => {}}))
    CreateFHIRDatastoreResponse.add_member(:datastore_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedLengthString, name: "DatastoreEndpoint", traits: {"smithy.api#required" => {}}))
    CreateFHIRDatastoreResponse.type = Types::CreateFHIRDatastoreResponse
    DataTransformationChatOptionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationChatOptionString, name: "member"))
    DataTransformationProfileSummary.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileIdString, name: "ProfileId", traits: {"smithy.api#required" => {}}))
    DataTransformationProfileSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileVersion, name: "Version", traits: {"smithy.api#required" => {}}))
    DataTransformationProfileSummary.add_member(:source_format, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceFormat, name: "SourceFormat", traits: {"smithy.api#required" => {}}))
    DataTransformationProfileSummary.add_member(:target_format, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetFormat, name: "TargetFormat", traits: {"smithy.api#required" => {}}))
    DataTransformationProfileSummary.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileNameString, name: "ProfileName"))
    DataTransformationProfileSummary.add_member(:profile_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDescription, name: "ProfileDescription"))
    DataTransformationProfileSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastUpdatedAt"))
    DataTransformationProfileSummary.type = Types::DataTransformationProfileSummary
    DataTransformationProfileSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationProfileSummary, name: "member"))
    DataTransformationProfileVersionSummary.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileIdString, name: "ProfileId", traits: {"smithy.api#required" => {}}))
    DataTransformationProfileVersionSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileVersion, name: "Version", traits: {"smithy.api#required" => {}}))
    DataTransformationProfileVersionSummary.add_member(:source_format, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceFormat, name: "SourceFormat", traits: {"smithy.api#required" => {}}))
    DataTransformationProfileVersionSummary.add_member(:target_format, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetFormat, name: "TargetFormat", traits: {"smithy.api#required" => {}}))
    DataTransformationProfileVersionSummary.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileNameString, name: "ProfileName"))
    DataTransformationProfileVersionSummary.add_member(:change_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeDescription, name: "ChangeDescription"))
    DataTransformationProfileVersionSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastUpdatedAt"))
    DataTransformationProfileVersionSummary.type = Types::DataTransformationProfileVersionSummary
    DataTransformationProfileVersionSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationProfileVersionSummary, name: "member"))
    DataTransformationS3Configuration.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationS3Uri, name: "S3Uri", traits: {"smithy.api#required" => {}}))
    DataTransformationS3Configuration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "KmsKeyId", traits: {"smithy.api#required" => {}}))
    DataTransformationS3Configuration.type = Types::DataTransformationS3Configuration
    DatastoreBackupStatus.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupConfiguration, name: "Configuration"))
    DatastoreBackupStatus.add_member(:backup_enabled_at, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeTimestamp, name: "BackupEnabledAt"))
    DatastoreBackupStatus.add_member(:earliest_restore_point, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeTimestamp, name: "EarliestRestorePoint"))
    DatastoreBackupStatus.add_member(:latest_restore_point, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeTimestamp, name: "LatestRestorePoint"))
    DatastoreBackupStatus.add_member(:scheduled_permanent_deletion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeTimestamp, name: "ScheduledPermanentDeletionTime"))
    DatastoreBackupStatus.type = Types::DatastoreBackupStatus
    DatastoreFilter.add_member(:datastore_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreName, name: "DatastoreName"))
    DatastoreFilter.add_member(:datastore_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreStatus, name: "DatastoreStatus"))
    DatastoreFilter.add_member(:created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeTimestamp, name: "CreatedBefore"))
    DatastoreFilter.add_member(:created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeTimestamp, name: "CreatedAfter"))
    DatastoreFilter.type = Types::DatastoreFilter
    DatastoreProperties.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "DatastoreId", traits: {"smithy.api#required" => {}}))
    DatastoreProperties.add_member(:datastore_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreArn, name: "DatastoreArn", traits: {"smithy.api#required" => {}}))
    DatastoreProperties.add_member(:datastore_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreName, name: "DatastoreName"))
    DatastoreProperties.add_member(:datastore_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreStatus, name: "DatastoreStatus", traits: {"smithy.api#required" => {}}))
    DatastoreProperties.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeTimestamp, name: "CreatedAt"))
    DatastoreProperties.add_member(:datastore_type_version, ::Smithy::Schema::Shapes::MemberShape.new(target: FHIRVersion, name: "DatastoreTypeVersion", traits: {"smithy.api#required" => {}}))
    DatastoreProperties.add_member(:datastore_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeString, name: "DatastoreEndpoint", traits: {"smithy.api#required" => {}}))
    DatastoreProperties.add_member(:sse_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SseConfiguration, name: "SseConfiguration"))
    DatastoreProperties.add_member(:preload_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PreloadDataConfig, name: "PreloadDataConfig"))
    DatastoreProperties.add_member(:identity_provider_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderConfiguration, name: "IdentityProviderConfiguration"))
    DatastoreProperties.add_member(:error_cause, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCause, name: "ErrorCause"))
    DatastoreProperties.add_member(:nlp_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NlpConfiguration, name: "NlpConfiguration"))
    DatastoreProperties.add_member(:analytics_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsConfiguration, name: "AnalyticsConfiguration"))
    DatastoreProperties.add_member(:profile_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileConfiguration, name: "ProfileConfiguration"))
    DatastoreProperties.add_member(:backup_status_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreBackupStatus, name: "BackupStatusInfo"))
    DatastoreProperties.type = Types::DatastoreProperties
    DatastorePropertiesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreProperties, name: "member"))
    DatastoreStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    DatastoreStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DatastoreStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    DatastoreStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    DatastoreStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    DatastoreStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    DatastoreStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    DefaultProfiles.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeString, name: "member"))
    DeleteDataTransformationProfileRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileIdString, name: "ProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataTransformationProfileRequest.type = Types::DeleteDataTransformationProfileRequest
    DeleteDataTransformationProfileResponse.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileIdString, name: "ProfileId", traits: {"smithy.api#required" => {}}))
    DeleteDataTransformationProfileResponse.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileNameString, name: "ProfileName"))
    DeleteDataTransformationProfileResponse.add_member(:deletion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "DeletionTime", traits: {"smithy.api#required" => {}}))
    DeleteDataTransformationProfileResponse.type = Types::DeleteDataTransformationProfileResponse
    DeleteFHIRDatastoreRequest.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "DatastoreId", traits: {"smithy.api#required" => {}}))
    DeleteFHIRDatastoreRequest.type = Types::DeleteFHIRDatastoreRequest
    DeleteFHIRDatastoreResponse.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "DatastoreId", traits: {"smithy.api#required" => {}}))
    DeleteFHIRDatastoreResponse.add_member(:datastore_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreArn, name: "DatastoreArn", traits: {"smithy.api#required" => {}}))
    DeleteFHIRDatastoreResponse.add_member(:datastore_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreStatus, name: "DatastoreStatus", traits: {"smithy.api#required" => {}}))
    DeleteFHIRDatastoreResponse.add_member(:datastore_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedLengthString, name: "DatastoreEndpoint", traits: {"smithy.api#required" => {}}))
    DeleteFHIRDatastoreResponse.type = Types::DeleteFHIRDatastoreResponse
    DescribeDataTransformationJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationJobId, name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDataTransformationJobRequest.type = Types::DescribeDataTransformationJobRequest
    DescribeDataTransformationJobResponse.add_member(:transformation_job_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformationJobProperties, name: "TransformationJobProperties", traits: {"smithy.api#required" => {}}))
    DescribeDataTransformationJobResponse.type = Types::DescribeDataTransformationJobResponse
    DescribeFHIRDatastoreRequest.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "DatastoreId", traits: {"smithy.api#required" => {}}))
    DescribeFHIRDatastoreRequest.type = Types::DescribeFHIRDatastoreRequest
    DescribeFHIRDatastoreResponse.add_member(:datastore_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreProperties, name: "DatastoreProperties", traits: {"smithy.api#required" => {}}))
    DescribeFHIRDatastoreResponse.type = Types::DescribeFHIRDatastoreResponse
    DescribeFHIRExportJobRequest.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "DatastoreId", traits: {"smithy.api#required" => {}}))
    DescribeFHIRExportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    DescribeFHIRExportJobRequest.type = Types::DescribeFHIRExportJobRequest
    DescribeFHIRExportJobResponse.add_member(:export_job_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportJobProperties, name: "ExportJobProperties", traits: {"smithy.api#required" => {}}))
    DescribeFHIRExportJobResponse.type = Types::DescribeFHIRExportJobResponse
    DescribeFHIRImportJobRequest.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "DatastoreId", traits: {"smithy.api#required" => {}}))
    DescribeFHIRImportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    DescribeFHIRImportJobRequest.type = Types::DescribeFHIRImportJobRequest
    DescribeFHIRImportJobResponse.add_member(:import_job_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobProperties, name: "ImportJobProperties", traits: {"smithy.api#required" => {}}))
    DescribeFHIRImportJobResponse.type = Types::DescribeFHIRImportJobResponse
    ErrorCategory.add_member(:retryable_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETRYABLE_ERROR", traits: {"smithy.api#enumValue" => "RETRYABLE_ERROR"}))
    ErrorCategory.add_member(:non_retryable_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NON_RETRYABLE_ERROR", traits: {"smithy.api#enumValue" => "NON_RETRYABLE_ERROR"}))
    ErrorCause.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    ErrorCause.add_member(:error_category, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCategory, name: "ErrorCategory"))
    ErrorCause.type = Types::ErrorCause
    ExistingVersionedProfileSource.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ProfileId", traits: {"smithy.api#required" => {}}))
    ExistingVersionedProfileSource.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Version", traits: {"smithy.api#required" => {}}))
    ExistingVersionedProfileSource.type = Types::ExistingVersionedProfileSource
    ExportJobProperties.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    ExportJobProperties.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    ExportJobProperties.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus", traits: {"smithy.api#required" => {}}))
    ExportJobProperties.add_member(:submit_time, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeTimestamp, name: "SubmitTime", traits: {"smithy.api#required" => {}}))
    ExportJobProperties.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeTimestamp, name: "EndTime"))
    ExportJobProperties.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "DatastoreId", traits: {"smithy.api#required" => {}}))
    ExportJobProperties.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, name: "OutputDataConfig", traits: {"smithy.api#required" => {}}))
    ExportJobProperties.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn"))
    ExportJobProperties.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ExportJobProperties.type = Types::ExportJobProperties
    ExportJobPropertiesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportJobProperties, name: "member"))
    FHIRVersion.add_member(:r4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "R4", traits: {"smithy.api#enumValue" => "R4"}))
    FailedDependencyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeString, name: "Message"))
    FailedDependencyException.type = Types::FailedDependencyException
    GetDataTransformationProfileRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileIdString, name: "ProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataTransformationProfileRequest.add_member(:profile_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileVersion, name: "ProfileVersion", traits: {"smithy.api#httpQuery" => "version"}))
    GetDataTransformationProfileRequest.type = Types::GetDataTransformationProfileRequest
    GetDataTransformationProfileResponse.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileIdString, name: "ProfileId", traits: {"smithy.api#required" => {}}))
    GetDataTransformationProfileResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileVersion, name: "Version", traits: {"smithy.api#required" => {}}))
    GetDataTransformationProfileResponse.add_member(:source_format, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceFormat, name: "SourceFormat", traits: {"smithy.api#required" => {}}))
    GetDataTransformationProfileResponse.add_member(:target_format, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetFormat, name: "TargetFormat", traits: {"smithy.api#required" => {}}))
    GetDataTransformationProfileResponse.add_member(:profile_mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileMapping, name: "ProfileMapping", traits: {"smithy.api#required" => {}}))
    GetDataTransformationProfileResponse.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileNameString, name: "ProfileName"))
    GetDataTransformationProfileResponse.add_member(:profile_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDescription, name: "ProfileDescription"))
    GetDataTransformationProfileResponse.add_member(:change_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeDescription, name: "ChangeDescription"))
    GetDataTransformationProfileResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastUpdatedAt", traits: {"smithy.api#required" => {}}))
    GetDataTransformationProfileResponse.type = Types::GetDataTransformationProfileResponse
    IdentityProviderConfiguration.add_member(:authorization_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationStrategy, name: "AuthorizationStrategy", traits: {"smithy.api#required" => {}}))
    IdentityProviderConfiguration.add_member(:fine_grained_authorization_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeBoolean, name: "FineGrainedAuthorizationEnabled", traits: {"smithy.api#default" => false}))
    IdentityProviderConfiguration.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationMetadata, name: "Metadata"))
    IdentityProviderConfiguration.add_member(:idp_lambda_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaArn, name: "IdpLambdaArn"))
    IdentityProviderConfiguration.type = Types::IdentityProviderConfiguration
    ImportJobProperties.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    ImportJobProperties.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    ImportJobProperties.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus", traits: {"smithy.api#required" => {}}))
    ImportJobProperties.add_member(:submit_time, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeTimestamp, name: "SubmitTime", traits: {"smithy.api#required" => {}}))
    ImportJobProperties.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeTimestamp, name: "EndTime"))
    ImportJobProperties.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "DatastoreId", traits: {"smithy.api#required" => {}}))
    ImportJobProperties.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, name: "InputDataConfig", traits: {"smithy.api#required" => {}}))
    ImportJobProperties.add_member(:job_output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, name: "JobOutputDataConfig"))
    ImportJobProperties.add_member(:job_progress_report, ::Smithy::Schema::Shapes::MemberShape.new(target: JobProgressReport, name: "JobProgressReport"))
    ImportJobProperties.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn"))
    ImportJobProperties.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ImportJobProperties.add_member(:validation_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationLevel, name: "ValidationLevel"))
    ImportJobProperties.type = Types::ImportJobProperties
    ImportJobPropertiesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobProperties, name: "member"))
    InputDataConfig.add_member(:s3_uri, Types::InputDataConfig::S3Uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "S3Uri"))
    InputDataConfig.add_member(:unknown, Types::InputDataConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    InputDataConfig.type = Types::InputDataConfig
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeString, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    JobProgressReport.add_member(:total_number_of_scanned_files, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericLong, name: "TotalNumberOfScannedFiles"))
    JobProgressReport.add_member(:total_size_of_scanned_files_in_mb, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericDouble, name: "TotalSizeOfScannedFilesInMB"))
    JobProgressReport.add_member(:total_number_of_imported_files, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericLong, name: "TotalNumberOfImportedFiles"))
    JobProgressReport.add_member(:total_number_of_resources_scanned, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericLong, name: "TotalNumberOfResourcesScanned"))
    JobProgressReport.add_member(:total_number_of_resources_imported, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericLong, name: "TotalNumberOfResourcesImported"))
    JobProgressReport.add_member(:total_number_of_resources_with_customer_error, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericLong, name: "TotalNumberOfResourcesWithCustomerError"))
    JobProgressReport.add_member(:total_number_of_files_read_with_customer_error, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericLong, name: "TotalNumberOfFilesReadWithCustomerError"))
    JobProgressReport.add_member(:total_number_of_scanned_non_fhir_files, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericLong, name: "TotalNumberOfScannedNonFhirFiles"))
    JobProgressReport.add_member(:total_size_of_scanned_non_fhir_files_in_mb, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericDouble, name: "TotalSizeOfScannedNonFhirFilesInMB"))
    JobProgressReport.add_member(:total_number_of_imported_non_fhir_files, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericLong, name: "TotalNumberOfImportedNonFhirFiles"))
    JobProgressReport.add_member(:total_number_of_non_fhir_resources_scanned, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericLong, name: "TotalNumberOfNonFhirResourcesScanned"))
    JobProgressReport.add_member(:total_number_of_non_fhir_resources_imported, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericLong, name: "TotalNumberOfNonFhirResourcesImported"))
    JobProgressReport.add_member(:total_number_of_non_fhir_resources_with_customer_error, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericLong, name: "TotalNumberOfNonFhirResourcesWithCustomerError"))
    JobProgressReport.add_member(:total_number_of_non_fhir_files_read_with_customer_error, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericLong, name: "TotalNumberOfNonFhirFilesReadWithCustomerError"))
    JobProgressReport.add_member(:throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericDouble, name: "Throughput"))
    JobProgressReport.add_member(:total_files_converted, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericLong, name: "TotalFilesConverted"))
    JobProgressReport.add_member(:total_resources_generated, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericLong, name: "TotalResourcesGenerated"))
    JobProgressReport.type = Types::JobProgressReport
    JobStatus.add_member(:submitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBMITTED", traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    JobStatus.add_member(:queued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    JobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    JobStatus.add_member(:completed_with_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED_WITH_ERRORS", traits: {"smithy.api#enumValue" => "COMPLETED_WITH_ERRORS"}))
    JobStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    JobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    JobStatus.add_member(:cancel_submitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCEL_SUBMITTED", traits: {"smithy.api#enumValue" => "CANCEL_SUBMITTED"}))
    JobStatus.add_member(:cancel_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCEL_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CANCEL_IN_PROGRESS"}))
    JobStatus.add_member(:cancel_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCEL_COMPLETED", traits: {"smithy.api#enumValue" => "CANCEL_COMPLETED"}))
    JobStatus.add_member(:cancel_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCEL_FAILED", traits: {"smithy.api#enumValue" => "CANCEL_FAILED"}))
    KmsEncryptionConfig.add_member(:cmk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CmkType, name: "CmkType", traits: {"smithy.api#required" => {}}))
    KmsEncryptionConfig.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyID, name: "KmsKeyId"))
    KmsEncryptionConfig.type = Types::KmsEncryptionConfig
    ListDataTransformationJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDataTransformationJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationNextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDataTransformationJobsRequest.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformationJobStatus, name: "JobStatus", traits: {"smithy.api#httpQuery" => "jobStatus"}))
    ListDataTransformationJobsRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationJobName, name: "JobName", traits: {"smithy.api#httpQuery" => "jobName"}))
    ListDataTransformationJobsRequest.add_member(:submitted_after, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "SubmittedAfter", traits: {"smithy.api#httpQuery" => "submittedAfter"}))
    ListDataTransformationJobsRequest.add_member(:submitted_before, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "SubmittedBefore", traits: {"smithy.api#httpQuery" => "submittedBefore"}))
    ListDataTransformationJobsRequest.type = Types::ListDataTransformationJobsRequest
    ListDataTransformationJobsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformationJobSummaryList, name: "Items", traits: {"smithy.api#required" => {}}))
    ListDataTransformationJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationNextToken, name: "NextToken"))
    ListDataTransformationJobsResponse.type = Types::ListDataTransformationJobsResponse
    ListDataTransformationProfileVersionsRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileIdString, name: "ProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataTransformationProfileVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDataTransformationProfileVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationNextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDataTransformationProfileVersionsRequest.type = Types::ListDataTransformationProfileVersionsRequest
    ListDataTransformationProfileVersionsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationProfileVersionSummaryList, name: "Items", traits: {"smithy.api#required" => {}}))
    ListDataTransformationProfileVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationNextToken, name: "NextToken"))
    ListDataTransformationProfileVersionsResponse.type = Types::ListDataTransformationProfileVersionsResponse
    ListDataTransformationProfilesRequest.add_member(:source_format, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceFormat, name: "SourceFormat", traits: {"smithy.api#httpQuery" => "sourceFormat", "smithy.api#required" => {}}))
    ListDataTransformationProfilesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDataTransformationProfilesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationNextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDataTransformationProfilesRequest.type = Types::ListDataTransformationProfilesRequest
    ListDataTransformationProfilesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationProfileSummaryList, name: "Items", traits: {"smithy.api#required" => {}}))
    ListDataTransformationProfilesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationNextToken, name: "NextToken"))
    ListDataTransformationProfilesResponse.type = Types::ListDataTransformationProfilesResponse
    ListFHIRDatastoresRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreFilter, name: "Filter"))
    ListFHIRDatastoresRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFHIRDatastoresRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, name: "MaxResults"))
    ListFHIRDatastoresRequest.type = Types::ListFHIRDatastoresRequest
    ListFHIRDatastoresResponse.add_member(:datastore_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastorePropertiesList, name: "DatastorePropertiesList", traits: {"smithy.api#required" => {}}))
    ListFHIRDatastoresResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFHIRDatastoresResponse.type = Types::ListFHIRDatastoresResponse
    ListFHIRExportJobsRequest.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "DatastoreId", traits: {"smithy.api#required" => {}}))
    ListFHIRExportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFHIRExportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, name: "MaxResults"))
    ListFHIRExportJobsRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    ListFHIRExportJobsRequest.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    ListFHIRExportJobsRequest.add_member(:submitted_before, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeTimestamp, name: "SubmittedBefore"))
    ListFHIRExportJobsRequest.add_member(:submitted_after, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeTimestamp, name: "SubmittedAfter"))
    ListFHIRExportJobsRequest.type = Types::ListFHIRExportJobsRequest
    ListFHIRExportJobsResponse.add_member(:export_job_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportJobPropertiesList, name: "ExportJobPropertiesList", traits: {"smithy.api#required" => {}}))
    ListFHIRExportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFHIRExportJobsResponse.type = Types::ListFHIRExportJobsResponse
    ListFHIRImportJobsRequest.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "DatastoreId", traits: {"smithy.api#required" => {}}))
    ListFHIRImportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFHIRImportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, name: "MaxResults"))
    ListFHIRImportJobsRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    ListFHIRImportJobsRequest.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    ListFHIRImportJobsRequest.add_member(:submitted_before, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeTimestamp, name: "SubmittedBefore"))
    ListFHIRImportJobsRequest.add_member(:submitted_after, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeTimestamp, name: "SubmittedAfter"))
    ListFHIRImportJobsRequest.type = Types::ListFHIRImportJobsRequest
    ListFHIRImportJobsResponse.add_member(:import_job_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobPropertiesList, name: "ImportJobPropertiesList", traits: {"smithy.api#required" => {}}))
    ListFHIRImportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFHIRImportJobsResponse.type = Types::ListFHIRImportJobsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    NlpConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NlpStatus, name: "Status"))
    NlpConfiguration.type = Types::NlpConfiguration
    NlpStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    NlpStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLING", traits: {"smithy.api#enumValue" => "ENABLING"}))
    NlpStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    NlpStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLING", traits: {"smithy.api#enumValue" => "DISABLING"}))
    NotImplementedOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    NotImplementedOperationException.type = Types::NotImplementedOperationException
    OutputDataConfig.add_member(:s3_configuration, Types::OutputDataConfig::S3Configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Configuration, name: "S3Configuration"))
    OutputDataConfig.add_member(:unknown, Types::OutputDataConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    OutputDataConfig.type = Types::OutputDataConfig
    PreloadDataConfig.add_member(:preload_data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PreloadDataType, name: "PreloadDataType", traits: {"smithy.api#required" => {}}))
    PreloadDataConfig.type = Types::PreloadDataConfig
    PreloadDataType.add_member(:synthea, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYNTHEA", traits: {"smithy.api#enumValue" => "SYNTHEA"}))
    ProfileConfiguration.add_member(:default_profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultProfiles, name: "DefaultProfiles"))
    ProfileConfiguration.type = Types::ProfileConfiguration
    ProfileMapping.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileMappingKey, name: "key"))
    ProfileMapping.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileMappingValue, name: "value"))
    ProfileMappingSource.add_member(:profile_mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "ProfileMapping", traits: {"smithy.api#required" => {}}))
    ProfileMappingSource.type = Types::ProfileMappingSource
    PublishDataTransformationProfileRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileIdString, name: "ProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PublishDataTransformationProfileRequest.add_member(:source_format, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceFormat, name: "SourceFormat", traits: {"smithy.api#httpQuery" => "sourceFormat", "smithy.api#required" => {}}))
    PublishDataTransformationProfileRequest.add_member(:from_existing_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileVersion, name: "FromExistingVersion"))
    PublishDataTransformationProfileRequest.add_member(:change_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeDescription, name: "ChangeDescription"))
    PublishDataTransformationProfileRequest.type = Types::PublishDataTransformationProfileRequest
    PublishDataTransformationProfileResponse.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileIdString, name: "ProfileId", traits: {"smithy.api#required" => {}}))
    PublishDataTransformationProfileResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileVersion, name: "Version", traits: {"smithy.api#required" => {}}))
    PublishDataTransformationProfileResponse.add_member(:source_format, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceFormat, name: "SourceFormat", traits: {"smithy.api#required" => {}}))
    PublishDataTransformationProfileResponse.add_member(:target_format, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetFormat, name: "TargetFormat", traits: {"smithy.api#required" => {}}))
    PublishDataTransformationProfileResponse.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileNameString, name: "ProfileName"))
    PublishDataTransformationProfileResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastUpdatedAt", traits: {"smithy.api#required" => {}}))
    PublishDataTransformationProfileResponse.type = Types::PublishDataTransformationProfileResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeString, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RestoreConfiguration.add_member(:continuous_backup_restore_configuration, Types::RestoreConfiguration::ContinuousBackupRestoreConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousBackupRestoreConfiguration, name: "ContinuousBackupRestoreConfiguration"))
    RestoreConfiguration.add_member(:unknown, Types::RestoreConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RestoreConfiguration.type = Types::RestoreConfiguration
    RestoreFHIRDatastoreRequest.add_member(:source_datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "SourceDatastoreId", traits: {"smithy.api#required" => {}}))
    RestoreFHIRDatastoreRequest.add_member(:restore_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreConfiguration, name: "RestoreConfiguration", traits: {"smithy.api#required" => {}}))
    RestoreFHIRDatastoreRequest.add_member(:datastore_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreName, name: "DatastoreName"))
    RestoreFHIRDatastoreRequest.add_member(:sse_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SseConfiguration, name: "SseConfiguration"))
    RestoreFHIRDatastoreRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientTokenString, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    RestoreFHIRDatastoreRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    RestoreFHIRDatastoreRequest.add_member(:identity_provider_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderConfiguration, name: "IdentityProviderConfiguration"))
    RestoreFHIRDatastoreRequest.add_member(:analytics_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsConfiguration, name: "AnalyticsConfiguration"))
    RestoreFHIRDatastoreRequest.add_member(:nlp_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NlpConfiguration, name: "NlpConfiguration"))
    RestoreFHIRDatastoreRequest.add_member(:profile_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileConfiguration, name: "ProfileConfiguration"))
    RestoreFHIRDatastoreRequest.type = Types::RestoreFHIRDatastoreRequest
    RestoreFHIRDatastoreResponse.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "DatastoreId", traits: {"smithy.api#required" => {}}))
    RestoreFHIRDatastoreResponse.add_member(:datastore_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreArn, name: "DatastoreArn", traits: {"smithy.api#required" => {}}))
    RestoreFHIRDatastoreResponse.add_member(:datastore_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreStatus, name: "DatastoreStatus", traits: {"smithy.api#required" => {}}))
    RestoreFHIRDatastoreResponse.add_member(:datastore_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedLengthString, name: "DatastoreEndpoint", traits: {"smithy.api#required" => {}}))
    RestoreFHIRDatastoreResponse.type = Types::RestoreFHIRDatastoreResponse
    S3Configuration.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "S3Uri", traits: {"smithy.api#required" => {}}))
    S3Configuration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyID, name: "KmsKeyId", traits: {"smithy.api#required" => {}}))
    S3Configuration.type = Types::S3Configuration
    SampleDataSource.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleDataS3Uri, name: "S3Uri", traits: {"smithy.api#required" => {}}))
    SampleDataSource.type = Types::SampleDataSource
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeString, name: "Message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SourceFormat.add_member(:ccda, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CCDA", traits: {"smithy.api#enumValue" => "CCDA"}))
    SourceFormat.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    SseConfiguration.add_member(:kms_encryption_config, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsEncryptionConfig, name: "KmsEncryptionConfig", traits: {"smithy.api#required" => {}}))
    SseConfiguration.type = Types::SseConfiguration
    StartDataTransformationJobRequest.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformationInputDataConfig, name: "InputDataConfig", traits: {"smithy.api#required" => {}}))
    StartDataTransformationJobRequest.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformationOutputDataConfig, name: "OutputDataConfig", traits: {"smithy.api#required" => {}}))
    StartDataTransformationJobRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationIamRoleArn, name: "DataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    StartDataTransformationJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#required" => {}}))
    StartDataTransformationJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationJobName, name: "JobName"))
    StartDataTransformationJobRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileIdString, name: "ProfileId", traits: {"smithy.api#required" => {}}))
    StartDataTransformationJobRequest.add_member(:drift_detection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "DriftDetectionEnabled"))
    StartDataTransformationJobRequest.add_member(:provenance_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "ProvenanceEnabled", traits: {"smithy.api#default" => true}))
    StartDataTransformationJobRequest.type = Types::StartDataTransformationJobRequest
    StartDataTransformationJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationJobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    StartDataTransformationJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformationJobStatus, name: "JobStatus", traits: {"smithy.api#required" => {}}))
    StartDataTransformationJobResponse.type = Types::StartDataTransformationJobResponse
    StartFHIRExportJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    StartFHIRExportJobRequest.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, name: "OutputDataConfig", traits: {"smithy.api#required" => {}}))
    StartFHIRExportJobRequest.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "DatastoreId", traits: {"smithy.api#required" => {}}))
    StartFHIRExportJobRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    StartFHIRExportJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientTokenString, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartFHIRExportJobRequest.type = Types::StartFHIRExportJobRequest
    StartFHIRExportJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    StartFHIRExportJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus", traits: {"smithy.api#required" => {}}))
    StartFHIRExportJobResponse.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "DatastoreId"))
    StartFHIRExportJobResponse.type = Types::StartFHIRExportJobResponse
    StartFHIRImportJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    StartFHIRImportJobRequest.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, name: "InputDataConfig", traits: {"smithy.api#required" => {}}))
    StartFHIRImportJobRequest.add_member(:job_output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, name: "JobOutputDataConfig", traits: {"smithy.api#required" => {}}))
    StartFHIRImportJobRequest.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "DatastoreId", traits: {"smithy.api#required" => {}}))
    StartFHIRImportJobRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    StartFHIRImportJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientTokenString, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartFHIRImportJobRequest.add_member(:validation_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationLevel, name: "ValidationLevel"))
    StartFHIRImportJobRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedLengthString, name: "ProfileId"))
    StartFHIRImportJobRequest.add_member(:input_format, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedLengthString, name: "InputFormat"))
    StartFHIRImportJobRequest.add_member(:drift_detection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeBoolean, name: "DriftDetectionEnabled", traits: {"smithy.api#default" => false}))
    StartFHIRImportJobRequest.add_member(:provenance_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultEnabledBoolean, name: "ProvenanceEnabled", traits: {"smithy.api#default" => true}))
    StartFHIRImportJobRequest.type = Types::StartFHIRImportJobRequest
    StartFHIRImportJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    StartFHIRImportJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus", traits: {"smithy.api#required" => {}}))
    StartFHIRImportJobResponse.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "DatastoreId"))
    StartFHIRImportJobResponse.type = Types::StartFHIRImportJobResponse
    StarterProfileSource.add_member(:starter_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StarterProfileName", traits: {"smithy.api#required" => {}}))
    StarterProfileSource.type = Types::StarterProfileSource
    StringMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    StringMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationTagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationTagValue, name: "value"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetFormat.add_member(:fhir_r4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FHIR_R4", traits: {"smithy.api#enumValue" => "FHIR_R4"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeString, name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    TransformationInputDataConfig.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationS3Uri, name: "S3Uri", traits: {"smithy.api#required" => {}}))
    TransformationInputDataConfig.add_member(:source_format, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceFormat, name: "SourceFormat"))
    TransformationInputDataConfig.type = Types::TransformationInputDataConfig
    TransformationJobProgressReport.add_member(:total_files_scanned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "TotalFilesScanned", traits: {"smithy.api#required" => {}}))
    TransformationJobProgressReport.add_member(:total_files_converted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "TotalFilesConverted", traits: {"smithy.api#required" => {}}))
    TransformationJobProgressReport.add_member(:total_files_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "TotalFilesFailed", traits: {"smithy.api#required" => {}}))
    TransformationJobProgressReport.add_member(:total_resources_generated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "TotalResourcesGenerated", traits: {"smithy.api#required" => {}}))
    TransformationJobProgressReport.type = Types::TransformationJobProgressReport
    TransformationJobProperties.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationJobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    TransformationJobProperties.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformationJobStatus, name: "JobStatus", traits: {"smithy.api#required" => {}}))
    TransformationJobProperties.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformationInputDataConfig, name: "InputDataConfig", traits: {"smithy.api#required" => {}}))
    TransformationJobProperties.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformationOutputDataConfig, name: "OutputDataConfig", traits: {"smithy.api#required" => {}}))
    TransformationJobProperties.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationIamRoleArn, name: "DataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    TransformationJobProperties.add_member(:submit_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "SubmitTime", traits: {"smithy.api#required" => {}}))
    TransformationJobProperties.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationJobName, name: "JobName"))
    TransformationJobProperties.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileIdString, name: "ProfileId"))
    TransformationJobProperties.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileNameString, name: "ProfileName"))
    TransformationJobProperties.add_member(:profile_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ProfileVersion"))
    TransformationJobProperties.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "EndTime"))
    TransformationJobProperties.add_member(:drift_detection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "DriftDetectionEnabled"))
    TransformationJobProperties.add_member(:provenance_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "ProvenanceEnabled"))
    TransformationJobProperties.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "Message"))
    TransformationJobProperties.add_member(:job_progress_report, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformationJobProgressReport, name: "JobProgressReport"))
    TransformationJobProperties.type = Types::TransformationJobProperties
    TransformationJobStatus.add_member(:submitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBMITTED", traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    TransformationJobStatus.add_member(:queued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    TransformationJobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    TransformationJobStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    TransformationJobStatus.add_member(:completed_with_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED_WITH_ERRORS", traits: {"smithy.api#enumValue" => "COMPLETED_WITH_ERRORS"}))
    TransformationJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    TransformationJobSummary.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationJobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    TransformationJobSummary.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformationJobStatus, name: "JobStatus", traits: {"smithy.api#required" => {}}))
    TransformationJobSummary.add_member(:submit_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "SubmitTime", traits: {"smithy.api#required" => {}}))
    TransformationJobSummary.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationJobName, name: "JobName"))
    TransformationJobSummary.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "EndTime"))
    TransformationJobSummary.add_member(:source_format, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceFormat, name: "SourceFormat"))
    TransformationJobSummary.type = Types::TransformationJobSummary
    TransformationJobSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformationJobSummary, name: "member"))
    TransformationOutputDataConfig.add_member(:s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransformationS3Configuration, name: "S3Configuration", traits: {"smithy.api#required" => {}}))
    TransformationOutputDataConfig.type = Types::TransformationOutputDataConfig
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    UnauthorizedException.type = Types::UnauthorizedException
    UnsupportedMIMETypeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    UnsupportedMIMETypeException.type = Types::UnsupportedMIMETypeException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDataTransformationProfileRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileIdString, name: "ProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataTransformationProfileRequest.add_member(:profile_mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileMapping, name: "ProfileMapping", traits: {"smithy.api#required" => {}}))
    UpdateDataTransformationProfileRequest.add_member(:change_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeDescription, name: "ChangeDescription"))
    UpdateDataTransformationProfileRequest.type = Types::UpdateDataTransformationProfileRequest
    UpdateDataTransformationProfileResponse.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileIdString, name: "ProfileId", traits: {"smithy.api#required" => {}}))
    UpdateDataTransformationProfileResponse.add_member(:source_format, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceFormat, name: "SourceFormat", traits: {"smithy.api#required" => {}}))
    UpdateDataTransformationProfileResponse.add_member(:target_format, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetFormat, name: "TargetFormat", traits: {"smithy.api#required" => {}}))
    UpdateDataTransformationProfileResponse.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileNameString, name: "ProfileName"))
    UpdateDataTransformationProfileResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastUpdatedAt", traits: {"smithy.api#required" => {}}))
    UpdateDataTransformationProfileResponse.type = Types::UpdateDataTransformationProfileResponse
    UpdateFHIRDatastoreRequest.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "DatastoreId", traits: {"smithy.api#required" => {}}))
    UpdateFHIRDatastoreRequest.add_member(:datastore_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreName, name: "DatastoreName"))
    UpdateFHIRDatastoreRequest.add_member(:analytics_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsConfiguration, name: "AnalyticsConfiguration"))
    UpdateFHIRDatastoreRequest.add_member(:nlp_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NlpConfiguration, name: "NlpConfiguration"))
    UpdateFHIRDatastoreRequest.add_member(:profile_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileConfiguration, name: "ProfileConfiguration"))
    UpdateFHIRDatastoreRequest.add_member(:identity_provider_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderConfiguration, name: "IdentityProviderConfiguration"))
    UpdateFHIRDatastoreRequest.add_member(:backup_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupConfiguration, name: "BackupConfiguration"))
    UpdateFHIRDatastoreRequest.type = Types::UpdateFHIRDatastoreRequest
    UpdateFHIRDatastoreResponse.add_member(:datastore_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreProperties, name: "DatastoreProperties", traits: {"smithy.api#required" => {}}))
    UpdateFHIRDatastoreResponse.type = Types::UpdateFHIRDatastoreResponse
    UpdateProfileWithAgentRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileIdString, name: "ProfileId", traits: {"smithy.api#required" => {}}))
    UpdateProfileWithAgentRequest.add_member(:source_format, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceFormat, name: "SourceFormat", traits: {"smithy.api#required" => {}}))
    UpdateProfileWithAgentRequest.add_member(:input_message, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentInputMessage, name: "InputMessage", traits: {"smithy.api#required" => {}}))
    UpdateProfileWithAgentRequest.add_member(:conversation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationIdString, name: "ConversationId"))
    UpdateProfileWithAgentRequest.type = Types::UpdateProfileWithAgentRequest
    UpdateProfileWithAgentResponse.add_member(:agent_response, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentOutputMessage, name: "AgentResponse", traits: {"smithy.api#required" => {}}))
    UpdateProfileWithAgentResponse.add_member(:conversation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationIdString, name: "ConversationId", traits: {"smithy.api#required" => {}}))
    UpdateProfileWithAgentResponse.type = Types::UpdateProfileWithAgentResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthLakeString, name: "Message"))
    ValidationException.type = Types::ValidationException
    ValidationLevel.add_member(:strict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRICT", traits: {"smithy.api#enumValue" => "strict"}))
    ValidationLevel.add_member(:structure_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRUCTURE_ONLY", traits: {"smithy.api#enumValue" => "structure-only"}))
    ValidationLevel.add_member(:minimal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MINIMAL", traits: {"smithy.api#enumValue" => "minimal"}))

    HealthLake = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.healthlake#HealthLake"
      service.name = "HealthLake"
      service.version = "2017-07-01"
      service.traits = {"aws.api#service" => {"sdkId" => "HealthLake", "arnNamespace" => "healthlake", "cloudFormationName" => "HealthLake", "cloudTrailEventSource" => "healthlake.amazonaws.com", "endpointPrefix" => "healthlake"}, "aws.auth#sigv4" => {"name" => "healthlake"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Amazon HealthLake", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://healthlake-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://healthlake-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://healthlake.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://healthlake.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:create_data_transformation_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#CreateDataTransformationProfile"
        operation.name = "CreateDataTransformationProfile"
        operation.input = CreateDataTransformationProfileRequest
        operation.output = CreateDataTransformationProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "datatransformation."}, "smithy.api#http" => {"method" => "POST", "uri" => "/data-transformation-profile", "code" => 201}}
      end)
      service.add_operation(:create_fhir_datastore, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#CreateFHIRDatastore"
        operation.name = "CreateFHIRDatastore"
        operation.input = CreateFHIRDatastoreRequest
        operation.output = CreateFHIRDatastoreResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_data_transformation_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#DeleteDataTransformationProfile"
        operation.name = "DeleteDataTransformationProfile"
        operation.input = DeleteDataTransformationProfileRequest
        operation.output = DeleteDataTransformationProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "datatransformation."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/data-transformation-profile/{ProfileId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_fhir_datastore, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#DeleteFHIRDatastore"
        operation.name = "DeleteFHIRDatastore"
        operation.input = DeleteFHIRDatastoreRequest
        operation.output = DeleteFHIRDatastoreResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_data_transformation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#DescribeDataTransformationJob"
        operation.name = "DescribeDataTransformationJob"
        operation.input = DescribeDataTransformationJobRequest
        operation.output = DescribeDataTransformationJobResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "datatransformation."}, "smithy.api#http" => {"method" => "GET", "uri" => "/data-transformation-job/{JobId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_fhir_datastore, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#DescribeFHIRDatastore"
        operation.name = "DescribeFHIRDatastore"
        operation.input = DescribeFHIRDatastoreRequest
        operation.output = DescribeFHIRDatastoreResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_fhir_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#DescribeFHIRExportJob"
        operation.name = "DescribeFHIRExportJob"
        operation.input = DescribeFHIRExportJobRequest
        operation.output = DescribeFHIRExportJobResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_fhir_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#DescribeFHIRImportJob"
        operation.name = "DescribeFHIRImportJob"
        operation.input = DescribeFHIRImportJobRequest
        operation.output = DescribeFHIRImportJobResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_data_transformation_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#GetDataTransformationProfile"
        operation.name = "GetDataTransformationProfile"
        operation.input = GetDataTransformationProfileRequest
        operation.output = GetDataTransformationProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "datatransformation."}, "smithy.api#http" => {"method" => "GET", "uri" => "/data-transformation-profile/{ProfileId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_data_transformation_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#ListDataTransformationJobs"
        operation.name = "ListDataTransformationJobs"
        operation.input = ListDataTransformationJobsRequest
        operation.output = ListDataTransformationJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "datatransformation."}, "smithy.api#http" => {"method" => "GET", "uri" => "/data-transformation-jobs", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataTransformationJobs.new
      end)
      service.add_operation(:list_data_transformation_profile_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#ListDataTransformationProfileVersions"
        operation.name = "ListDataTransformationProfileVersions"
        operation.input = ListDataTransformationProfileVersionsRequest
        operation.output = ListDataTransformationProfileVersionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "datatransformation."}, "smithy.api#http" => {"method" => "GET", "uri" => "/data-transformation-profile/{ProfileId}/versions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataTransformationProfileVersions.new
      end)
      service.add_operation(:list_data_transformation_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#ListDataTransformationProfiles"
        operation.name = "ListDataTransformationProfiles"
        operation.input = ListDataTransformationProfilesRequest
        operation.output = ListDataTransformationProfilesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "datatransformation."}, "smithy.api#http" => {"method" => "GET", "uri" => "/data-transformation-profile", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataTransformationProfiles.new
      end)
      service.add_operation(:list_fhir_datastores, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#ListFHIRDatastores"
        operation.name = "ListFHIRDatastores"
        operation.input = ListFHIRDatastoresRequest
        operation.output = ListFHIRDatastoresResponse
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListFHIRDatastores.new
      end)
      service.add_operation(:list_fhir_export_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#ListFHIRExportJobs"
        operation.name = "ListFHIRExportJobs"
        operation.input = ListFHIRExportJobsRequest
        operation.output = ListFHIRExportJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListFHIRExportJobs.new
      end)
      service.add_operation(:list_fhir_import_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#ListFHIRImportJobs"
        operation.name = "ListFHIRImportJobs"
        operation.input = ListFHIRImportJobsRequest
        operation.output = ListFHIRImportJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListFHIRImportJobs.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:publish_data_transformation_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#PublishDataTransformationProfile"
        operation.name = "PublishDataTransformationProfile"
        operation.input = PublishDataTransformationProfileRequest
        operation.output = PublishDataTransformationProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "datatransformation."}, "smithy.api#http" => {"method" => "POST", "uri" => "/data-transformation-profile/{ProfileId}/publish", "code" => 200}}
      end)
      service.add_operation(:restore_fhir_datastore, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#RestoreFHIRDatastore"
        operation.name = "RestoreFHIRDatastore"
        operation.input = RestoreFHIRDatastoreRequest
        operation.output = RestoreFHIRDatastoreResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:start_data_transformation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#StartDataTransformationJob"
        operation.name = "StartDataTransformationJob"
        operation.input = StartDataTransformationJobRequest
        operation.output = StartDataTransformationJobResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "datatransformation."}, "smithy.api#http" => {"method" => "POST", "uri" => "/data-transformation-job", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_fhir_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#StartFHIRExportJob"
        operation.name = "StartFHIRExportJob"
        operation.input = StartFHIRExportJobRequest
        operation.output = StartFHIRExportJobResponse
        operation.errors << AccessDeniedException
        operation.errors << FailedDependencyException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:start_fhir_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#StartFHIRImportJob"
        operation.name = "StartFHIRImportJob"
        operation.input = StartFHIRImportJobRequest
        operation.output = StartFHIRImportJobResponse
        operation.errors << AccessDeniedException
        operation.errors << FailedDependencyException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_data_transformation_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#UpdateDataTransformationProfile"
        operation.name = "UpdateDataTransformationProfile"
        operation.input = UpdateDataTransformationProfileRequest
        operation.output = UpdateDataTransformationProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "datatransformation."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/data-transformation-profile/{ProfileId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_fhir_datastore, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#UpdateFHIRDatastore"
        operation.name = "UpdateFHIRDatastore"
        operation.input = UpdateFHIRDatastoreRequest
        operation.output = UpdateFHIRDatastoreResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_profile_with_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#UpdateProfileWithAgent"
        operation.name = "UpdateProfileWithAgent"
        operation.input = UpdateProfileWithAgentRequest
        operation.output = UpdateProfileWithAgentResponse
        operation.errors << AccessDeniedException
        operation.errors << AgentMessageOutOfContextException
        operation.errors << ConversationNotFoundException
        operation.errors << InternalServerException
        operation.errors << NotImplementedOperationException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedMIMETypeException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "datatransformation."}, "smithy.api#http" => {"method" => "POST", "uri" => "/update-profile-with-agent", "code" => 200}}
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
