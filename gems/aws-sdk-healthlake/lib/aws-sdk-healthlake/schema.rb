# frozen_string_literal: true

# This is generated code!

module Aws::HealthLake
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws((-us-gov)|(-iso)|(-iso-b)|(-cn))?:healthlake:[a-z0-9-]+:\\d{12}:datastore\\/fhir\\/.{32}$"})
    AuthorizationStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.healthlake#AuthorizationStrategy", name: "AuthorizationStrategy")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.healthlake#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BoundedLengthString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#BoundedLengthString", name: "BoundedLengthString", traits: {"smithy.api#length" => {"min" => 1, "max" => 5000}, "smithy.api#pattern" => "^[\\P{M}\\p{M}]{1,5000}$"})
    ClientTokenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#ClientTokenString", name: "ClientTokenString", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    CmkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.healthlake#CmkType", name: "CmkType")
    ConfigurationMetadata = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#ConfigurationMetadata", name: "ConfigurationMetadata")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateFHIRDatastoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#CreateFHIRDatastoreRequest", name: "CreateFHIRDatastoreRequest")
    CreateFHIRDatastoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#CreateFHIRDatastoreResponse", name: "CreateFHIRDatastoreResponse")
    DatastoreArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#DatastoreArn", name: "DatastoreArn", traits: {"smithy.api#pattern" => "^arn:aws((-us-gov)|(-iso)|(-iso-b)|(-cn))?:healthlake:[a-zA-Z0-9-]+:[0-9]{12}:datastore/.+?$"})
    DatastoreFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#DatastoreFilter", name: "DatastoreFilter")
    DatastoreId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#DatastoreId", name: "DatastoreId", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"})
    DatastoreName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#DatastoreName", name: "DatastoreName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"})
    DatastoreProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#DatastoreProperties", name: "DatastoreProperties")
    DatastorePropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.healthlake#DatastorePropertiesList", name: "DatastorePropertiesList")
    DatastoreStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.healthlake#DatastoreStatus", name: "DatastoreStatus")
    DeleteFHIRDatastoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#DeleteFHIRDatastoreRequest", name: "DeleteFHIRDatastoreRequest")
    DeleteFHIRDatastoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#DeleteFHIRDatastoreResponse", name: "DeleteFHIRDatastoreResponse")
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
    ExportJobProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ExportJobProperties", name: "ExportJobProperties")
    ExportJobPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.healthlake#ExportJobPropertiesList", name: "ExportJobPropertiesList")
    FHIRVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.healthlake#FHIRVersion", name: "FHIRVersion")
    GenericDouble = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.healthlake#GenericDouble", name: "GenericDouble")
    GenericLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.healthlake#GenericLong", name: "GenericLong")
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
    LambdaArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#LambdaArn", name: "LambdaArn", traits: {"smithy.api#length" => {"min" => 49, "max" => 256}, "smithy.api#pattern" => "^arn:aws:lambda:[a-z]{2}-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9\\-_\\.]+(:(\\$LATEST|[a-zA-Z0-9\\-_]+))?$"})
    ListFHIRDatastoresRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ListFHIRDatastoresRequest", name: "ListFHIRDatastoresRequest")
    ListFHIRDatastoresResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ListFHIRDatastoresResponse", name: "ListFHIRDatastoresResponse")
    ListFHIRExportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ListFHIRExportJobsRequest", name: "ListFHIRExportJobsRequest")
    ListFHIRExportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ListFHIRExportJobsResponse", name: "ListFHIRExportJobsResponse")
    ListFHIRImportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ListFHIRImportJobsRequest", name: "ListFHIRImportJobsRequest")
    ListFHIRImportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ListFHIRImportJobsResponse", name: "ListFHIRImportJobsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResultsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.healthlake#MaxResultsInteger", name: "MaxResultsInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#Message", name: "Message", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}, "smithy.api#pattern" => "^\\p{ASCII}{0,8192}$"})
    OutputDataConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.healthlake#OutputDataConfig", name: "OutputDataConfig")
    PreloadDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#PreloadDataConfig", name: "PreloadDataConfig")
    PreloadDataType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.healthlake#PreloadDataType", name: "PreloadDataType")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#S3Configuration", name: "S3Configuration")
    S3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#S3Uri", name: "S3Uri", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?$"})
    SseConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#SseConfiguration", name: "SseConfiguration")
    StartFHIRExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#StartFHIRExportJobRequest", name: "StartFHIRExportJobRequest")
    StartFHIRExportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#StartFHIRExportJobResponse", name: "StartFHIRExportJobResponse")
    StartFHIRImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#StartFHIRImportJobRequest", name: "StartFHIRImportJobRequest")
    StartFHIRImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#StartFHIRImportJobResponse", name: "StartFHIRImportJobResponse")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#String", name: "String", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^[\\P{M}\\p{M}]{0,10000}$"})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.healthlake#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.healthlake#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.healthlake#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.healthlake#Timestamp", name: "Timestamp")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#UntagResourceResponse", name: "UntagResourceResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.healthlake#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.healthlake#ValidationLevel", name: "ValidationLevel")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AuthorizationStrategy.add_member(:smartv1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMARTV1", traits: {"smithy.api#enumValue" => "SMART_ON_FHIR_V1"}))
    AuthorizationStrategy.add_member(:smart_on_fhir, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMART_ON_FHIR", traits: {"smithy.api#enumValue" => "SMART_ON_FHIR"}))
    AuthorizationStrategy.add_member(:aws_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_AUTH", traits: {"smithy.api#enumValue" => "AWS_AUTH"}))
    CmkType.add_member(:cm_cmk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CM_CMK", traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED_KMS_KEY"}))
    CmkType.add_member(:ao_cmk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AO_CMK", traits: {"smithy.api#enumValue" => "AWS_OWNED_KMS_KEY"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ConflictException.type = Types::ConflictException
    CreateFHIRDatastoreRequest.add_member(:datastore_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreName, name: "DatastoreName"))
    CreateFHIRDatastoreRequest.add_member(:datastore_type_version, ::Smithy::Schema::Shapes::MemberShape.new(target: FHIRVersion, name: "DatastoreTypeVersion", traits: {"smithy.api#required" => {}}))
    CreateFHIRDatastoreRequest.add_member(:sse_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SseConfiguration, name: "SseConfiguration"))
    CreateFHIRDatastoreRequest.add_member(:preload_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PreloadDataConfig, name: "PreloadDataConfig"))
    CreateFHIRDatastoreRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientTokenString, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateFHIRDatastoreRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateFHIRDatastoreRequest.add_member(:identity_provider_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderConfiguration, name: "IdentityProviderConfiguration"))
    CreateFHIRDatastoreRequest.type = Types::CreateFHIRDatastoreRequest
    CreateFHIRDatastoreResponse.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "DatastoreId", traits: {"smithy.api#required" => {}}))
    CreateFHIRDatastoreResponse.add_member(:datastore_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreArn, name: "DatastoreArn", traits: {"smithy.api#required" => {}}))
    CreateFHIRDatastoreResponse.add_member(:datastore_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreStatus, name: "DatastoreStatus", traits: {"smithy.api#required" => {}}))
    CreateFHIRDatastoreResponse.add_member(:datastore_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedLengthString, name: "DatastoreEndpoint", traits: {"smithy.api#required" => {}}))
    CreateFHIRDatastoreResponse.type = Types::CreateFHIRDatastoreResponse
    DatastoreFilter.add_member(:datastore_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreName, name: "DatastoreName"))
    DatastoreFilter.add_member(:datastore_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreStatus, name: "DatastoreStatus"))
    DatastoreFilter.add_member(:created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedBefore"))
    DatastoreFilter.add_member(:created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAfter"))
    DatastoreFilter.type = Types::DatastoreFilter
    DatastoreProperties.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "DatastoreId", traits: {"smithy.api#required" => {}}))
    DatastoreProperties.add_member(:datastore_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreArn, name: "DatastoreArn", traits: {"smithy.api#required" => {}}))
    DatastoreProperties.add_member(:datastore_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreName, name: "DatastoreName"))
    DatastoreProperties.add_member(:datastore_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreStatus, name: "DatastoreStatus", traits: {"smithy.api#required" => {}}))
    DatastoreProperties.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    DatastoreProperties.add_member(:datastore_type_version, ::Smithy::Schema::Shapes::MemberShape.new(target: FHIRVersion, name: "DatastoreTypeVersion", traits: {"smithy.api#required" => {}}))
    DatastoreProperties.add_member(:datastore_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatastoreEndpoint", traits: {"smithy.api#required" => {}}))
    DatastoreProperties.add_member(:sse_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SseConfiguration, name: "SseConfiguration"))
    DatastoreProperties.add_member(:preload_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PreloadDataConfig, name: "PreloadDataConfig"))
    DatastoreProperties.add_member(:identity_provider_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderConfiguration, name: "IdentityProviderConfiguration"))
    DatastoreProperties.add_member(:error_cause, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCause, name: "ErrorCause"))
    DatastoreProperties.type = Types::DatastoreProperties
    DatastorePropertiesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreProperties, name: "member"))
    DatastoreStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    DatastoreStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DatastoreStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    DatastoreStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    DatastoreStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    DeleteFHIRDatastoreRequest.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "DatastoreId", traits: {"smithy.api#required" => {}}))
    DeleteFHIRDatastoreRequest.type = Types::DeleteFHIRDatastoreRequest
    DeleteFHIRDatastoreResponse.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "DatastoreId", traits: {"smithy.api#required" => {}}))
    DeleteFHIRDatastoreResponse.add_member(:datastore_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreArn, name: "DatastoreArn", traits: {"smithy.api#required" => {}}))
    DeleteFHIRDatastoreResponse.add_member(:datastore_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreStatus, name: "DatastoreStatus", traits: {"smithy.api#required" => {}}))
    DeleteFHIRDatastoreResponse.add_member(:datastore_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedLengthString, name: "DatastoreEndpoint", traits: {"smithy.api#required" => {}}))
    DeleteFHIRDatastoreResponse.type = Types::DeleteFHIRDatastoreResponse
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
    ExportJobProperties.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    ExportJobProperties.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    ExportJobProperties.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus", traits: {"smithy.api#required" => {}}))
    ExportJobProperties.add_member(:submit_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTime", traits: {"smithy.api#required" => {}}))
    ExportJobProperties.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    ExportJobProperties.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "DatastoreId", traits: {"smithy.api#required" => {}}))
    ExportJobProperties.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, name: "OutputDataConfig", traits: {"smithy.api#required" => {}}))
    ExportJobProperties.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn"))
    ExportJobProperties.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ExportJobProperties.type = Types::ExportJobProperties
    ExportJobPropertiesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportJobProperties, name: "member"))
    FHIRVersion.add_member(:r4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "R4", traits: {"smithy.api#enumValue" => "R4"}))
    IdentityProviderConfiguration.add_member(:authorization_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationStrategy, name: "AuthorizationStrategy", traits: {"smithy.api#required" => {}}))
    IdentityProviderConfiguration.add_member(:fine_grained_authorization_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "FineGrainedAuthorizationEnabled", traits: {"smithy.api#default" => false}))
    IdentityProviderConfiguration.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationMetadata, name: "Metadata"))
    IdentityProviderConfiguration.add_member(:idp_lambda_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaArn, name: "IdpLambdaArn"))
    IdentityProviderConfiguration.type = Types::IdentityProviderConfiguration
    ImportJobProperties.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    ImportJobProperties.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    ImportJobProperties.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus", traits: {"smithy.api#required" => {}}))
    ImportJobProperties.add_member(:submit_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTime", traits: {"smithy.api#required" => {}}))
    ImportJobProperties.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
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
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    JobProgressReport.add_member(:total_number_of_scanned_files, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericLong, name: "TotalNumberOfScannedFiles"))
    JobProgressReport.add_member(:total_size_of_scanned_files_in_mb, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericDouble, name: "TotalSizeOfScannedFilesInMB"))
    JobProgressReport.add_member(:total_number_of_imported_files, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericLong, name: "TotalNumberOfImportedFiles"))
    JobProgressReport.add_member(:total_number_of_resources_scanned, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericLong, name: "TotalNumberOfResourcesScanned"))
    JobProgressReport.add_member(:total_number_of_resources_imported, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericLong, name: "TotalNumberOfResourcesImported"))
    JobProgressReport.add_member(:total_number_of_resources_with_customer_error, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericLong, name: "TotalNumberOfResourcesWithCustomerError"))
    JobProgressReport.add_member(:total_number_of_files_read_with_customer_error, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericLong, name: "TotalNumberOfFilesReadWithCustomerError"))
    JobProgressReport.add_member(:throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericDouble, name: "Throughput"))
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
    ListFHIRExportJobsRequest.add_member(:submitted_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmittedBefore"))
    ListFHIRExportJobsRequest.add_member(:submitted_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmittedAfter"))
    ListFHIRExportJobsRequest.type = Types::ListFHIRExportJobsRequest
    ListFHIRExportJobsResponse.add_member(:export_job_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportJobPropertiesList, name: "ExportJobPropertiesList", traits: {"smithy.api#required" => {}}))
    ListFHIRExportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFHIRExportJobsResponse.type = Types::ListFHIRExportJobsResponse
    ListFHIRImportJobsRequest.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "DatastoreId", traits: {"smithy.api#required" => {}}))
    ListFHIRImportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFHIRImportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, name: "MaxResults"))
    ListFHIRImportJobsRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    ListFHIRImportJobsRequest.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    ListFHIRImportJobsRequest.add_member(:submitted_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmittedBefore"))
    ListFHIRImportJobsRequest.add_member(:submitted_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmittedAfter"))
    ListFHIRImportJobsRequest.type = Types::ListFHIRImportJobsRequest
    ListFHIRImportJobsResponse.add_member(:import_job_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobPropertiesList, name: "ImportJobPropertiesList", traits: {"smithy.api#required" => {}}))
    ListFHIRImportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFHIRImportJobsResponse.type = Types::ListFHIRImportJobsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    OutputDataConfig.add_member(:s3_configuration, Types::OutputDataConfig::S3Configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Configuration, name: "S3Configuration"))
    OutputDataConfig.add_member(:unknown, Types::OutputDataConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    OutputDataConfig.type = Types::OutputDataConfig
    PreloadDataConfig.add_member(:preload_data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PreloadDataType, name: "PreloadDataType", traits: {"smithy.api#required" => {}}))
    PreloadDataConfig.type = Types::PreloadDataConfig
    PreloadDataType.add_member(:synthea, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYNTHEA", traits: {"smithy.api#enumValue" => "SYNTHEA"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3Configuration.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "S3Uri", traits: {"smithy.api#required" => {}}))
    S3Configuration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyID, name: "KmsKeyId", traits: {"smithy.api#required" => {}}))
    S3Configuration.type = Types::S3Configuration
    SseConfiguration.add_member(:kms_encryption_config, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsEncryptionConfig, name: "KmsEncryptionConfig", traits: {"smithy.api#required" => {}}))
    SseConfiguration.type = Types::SseConfiguration
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
    StartFHIRImportJobRequest.type = Types::StartFHIRImportJobRequest
    StartFHIRImportJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    StartFHIRImportJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus", traits: {"smithy.api#required" => {}}))
    StartFHIRImportJobResponse.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "DatastoreId"))
    StartFHIRImportJobResponse.type = Types::StartFHIRImportJobResponse
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ValidationException.type = Types::ValidationException
    ValidationLevel.add_member(:strict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRICT", traits: {"smithy.api#enumValue" => "strict"}))
    ValidationLevel.add_member(:structure_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRUCTURE_ONLY", traits: {"smithy.api#enumValue" => "structure-only"}))
    ValidationLevel.add_member(:minimal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MINIMAL", traits: {"smithy.api#enumValue" => "minimal"}))

    HealthLake = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.healthlake#HealthLake"
      service.name = "HealthLake"
      service.version = "2017-07-01"
      service.traits = {"aws.api#service" => {"sdkId" => "HealthLake", "arnNamespace" => "healthlake", "cloudFormationName" => "HealthLake", "cloudTrailEventSource" => "healthlake.amazonaws.com", "endpointPrefix" => "healthlake"}, "aws.auth#sigv4" => {"name" => "healthlake"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Amazon HealthLake"}
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
      service.add_operation(:start_fhir_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.healthlake#StartFHIRExportJob"
        operation.name = "StartFHIRExportJob"
        operation.input = StartFHIRExportJobRequest
        operation.output = StartFHIRExportJobResponse
        operation.errors << AccessDeniedException
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
