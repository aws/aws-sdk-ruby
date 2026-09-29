# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::HealthLake
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AgentInputMessage = Shapes::StructureShape.new(name: 'AgentInputMessage')
    AgentInputMessageType = Shapes::StringShape.new(name: 'AgentInputMessageType')
    AgentMessageOutOfContextException = Shapes::StructureShape.new(name: 'AgentMessageOutOfContextException')
    AgentMessageString = Shapes::StringShape.new(name: 'AgentMessageString')
    AgentOutputMessage = Shapes::StructureShape.new(name: 'AgentOutputMessage')
    AgentOutputMessageType = Shapes::StringShape.new(name: 'AgentOutputMessageType')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    AnalyticsConfiguration = Shapes::StructureShape.new(name: 'AnalyticsConfiguration')
    AnalyticsStatus = Shapes::StringShape.new(name: 'AnalyticsStatus')
    AuthorizationStrategy = Shapes::StringShape.new(name: 'AuthorizationStrategy')
    BackupConfiguration = Shapes::StructureShape.new(name: 'BackupConfiguration')
    BackupRetentionPeriodInDays = Shapes::IntegerShape.new(name: 'BackupRetentionPeriodInDays')
    BackupStatus = Shapes::StringShape.new(name: 'BackupStatus')
    BackupType = Shapes::StringShape.new(name: 'BackupType')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BoundedLengthString = Shapes::StringShape.new(name: 'BoundedLengthString')
    BoundedString = Shapes::StringShape.new(name: 'BoundedString')
    ChangeDescription = Shapes::StringShape.new(name: 'ChangeDescription')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ClientTokenString = Shapes::StringShape.new(name: 'ClientTokenString')
    CmkType = Shapes::StringShape.new(name: 'CmkType')
    ConfigurationMetadata = Shapes::StringShape.new(name: 'ConfigurationMetadata')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContinuousBackupRestoreConfiguration = Shapes::StructureShape.new(name: 'ContinuousBackupRestoreConfiguration')
    ConversationIdString = Shapes::StringShape.new(name: 'ConversationIdString')
    ConversationNotFoundException = Shapes::StructureShape.new(name: 'ConversationNotFoundException')
    CreateDataTransformationProfileRequest = Shapes::StructureShape.new(name: 'CreateDataTransformationProfileRequest')
    CreateDataTransformationProfileResponse = Shapes::StructureShape.new(name: 'CreateDataTransformationProfileResponse')
    CreateDataTransformationProfileSource = Shapes::UnionShape.new(name: 'CreateDataTransformationProfileSource')
    CreateFHIRDatastoreRequest = Shapes::StructureShape.new(name: 'CreateFHIRDatastoreRequest')
    CreateFHIRDatastoreResponse = Shapes::StructureShape.new(name: 'CreateFHIRDatastoreResponse')
    DataTransformationChatOptionString = Shapes::StringShape.new(name: 'DataTransformationChatOptionString')
    DataTransformationChatOptionsList = Shapes::ListShape.new(name: 'DataTransformationChatOptionsList')
    DataTransformationIamRoleArn = Shapes::StringShape.new(name: 'DataTransformationIamRoleArn')
    DataTransformationJobId = Shapes::StringShape.new(name: 'DataTransformationJobId')
    DataTransformationJobName = Shapes::StringShape.new(name: 'DataTransformationJobName')
    DataTransformationNextToken = Shapes::StringShape.new(name: 'DataTransformationNextToken')
    DataTransformationProfileSummary = Shapes::StructureShape.new(name: 'DataTransformationProfileSummary')
    DataTransformationProfileSummaryList = Shapes::ListShape.new(name: 'DataTransformationProfileSummaryList')
    DataTransformationProfileVersionSummary = Shapes::StructureShape.new(name: 'DataTransformationProfileVersionSummary')
    DataTransformationProfileVersionSummaryList = Shapes::ListShape.new(name: 'DataTransformationProfileVersionSummaryList')
    DataTransformationS3Configuration = Shapes::StructureShape.new(name: 'DataTransformationS3Configuration')
    DataTransformationS3Uri = Shapes::StringShape.new(name: 'DataTransformationS3Uri')
    DataTransformationTagKey = Shapes::StringShape.new(name: 'DataTransformationTagKey')
    DataTransformationTagValue = Shapes::StringShape.new(name: 'DataTransformationTagValue')
    DatastoreArn = Shapes::StringShape.new(name: 'DatastoreArn')
    DatastoreBackupStatus = Shapes::StructureShape.new(name: 'DatastoreBackupStatus')
    DatastoreFilter = Shapes::StructureShape.new(name: 'DatastoreFilter')
    DatastoreId = Shapes::StringShape.new(name: 'DatastoreId')
    DatastoreName = Shapes::StringShape.new(name: 'DatastoreName')
    DatastoreProperties = Shapes::StructureShape.new(name: 'DatastoreProperties')
    DatastorePropertiesList = Shapes::ListShape.new(name: 'DatastorePropertiesList')
    DatastoreStatus = Shapes::StringShape.new(name: 'DatastoreStatus')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime')
    DefaultEnabledBoolean = Shapes::BooleanShape.new(name: 'DefaultEnabledBoolean')
    DefaultProfiles = Shapes::ListShape.new(name: 'DefaultProfiles')
    DeleteDataTransformationProfileRequest = Shapes::StructureShape.new(name: 'DeleteDataTransformationProfileRequest')
    DeleteDataTransformationProfileResponse = Shapes::StructureShape.new(name: 'DeleteDataTransformationProfileResponse')
    DeleteFHIRDatastoreRequest = Shapes::StructureShape.new(name: 'DeleteFHIRDatastoreRequest')
    DeleteFHIRDatastoreResponse = Shapes::StructureShape.new(name: 'DeleteFHIRDatastoreResponse')
    DescribeDataTransformationJobRequest = Shapes::StructureShape.new(name: 'DescribeDataTransformationJobRequest')
    DescribeDataTransformationJobResponse = Shapes::StructureShape.new(name: 'DescribeDataTransformationJobResponse')
    DescribeFHIRDatastoreRequest = Shapes::StructureShape.new(name: 'DescribeFHIRDatastoreRequest')
    DescribeFHIRDatastoreResponse = Shapes::StructureShape.new(name: 'DescribeFHIRDatastoreResponse')
    DescribeFHIRExportJobRequest = Shapes::StructureShape.new(name: 'DescribeFHIRExportJobRequest')
    DescribeFHIRExportJobResponse = Shapes::StructureShape.new(name: 'DescribeFHIRExportJobResponse')
    DescribeFHIRImportJobRequest = Shapes::StructureShape.new(name: 'DescribeFHIRImportJobRequest')
    DescribeFHIRImportJobResponse = Shapes::StructureShape.new(name: 'DescribeFHIRImportJobResponse')
    EncryptionKeyID = Shapes::StringShape.new(name: 'EncryptionKeyID')
    ErrorCategory = Shapes::StringShape.new(name: 'ErrorCategory')
    ErrorCause = Shapes::StructureShape.new(name: 'ErrorCause')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExistingVersionedProfileSource = Shapes::StructureShape.new(name: 'ExistingVersionedProfileSource')
    ExportJobProperties = Shapes::StructureShape.new(name: 'ExportJobProperties')
    ExportJobPropertiesList = Shapes::ListShape.new(name: 'ExportJobPropertiesList')
    FHIRVersion = Shapes::StringShape.new(name: 'FHIRVersion')
    FailedDependencyException = Shapes::StructureShape.new(name: 'FailedDependencyException')
    GenericDouble = Shapes::FloatShape.new(name: 'GenericDouble')
    GenericLong = Shapes::IntegerShape.new(name: 'GenericLong')
    GetDataTransformationProfileRequest = Shapes::StructureShape.new(name: 'GetDataTransformationProfileRequest')
    GetDataTransformationProfileResponse = Shapes::StructureShape.new(name: 'GetDataTransformationProfileResponse')
    HealthLakeBoolean = Shapes::BooleanShape.new(name: 'HealthLakeBoolean')
    HealthLakeString = Shapes::StringShape.new(name: 'HealthLakeString')
    HealthLakeTimestamp = Shapes::TimestampShape.new(name: 'HealthLakeTimestamp')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    IdentityProviderConfiguration = Shapes::StructureShape.new(name: 'IdentityProviderConfiguration')
    ImportJobProperties = Shapes::StructureShape.new(name: 'ImportJobProperties')
    ImportJobPropertiesList = Shapes::ListShape.new(name: 'ImportJobPropertiesList')
    InputDataConfig = Shapes::UnionShape.new(name: 'InputDataConfig')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobName = Shapes::StringShape.new(name: 'JobName')
    JobProgressReport = Shapes::StructureShape.new(name: 'JobProgressReport')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    KmsEncryptionConfig = Shapes::StructureShape.new(name: 'KmsEncryptionConfig')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LambdaArn = Shapes::StringShape.new(name: 'LambdaArn')
    ListDataTransformationJobsRequest = Shapes::StructureShape.new(name: 'ListDataTransformationJobsRequest')
    ListDataTransformationJobsResponse = Shapes::StructureShape.new(name: 'ListDataTransformationJobsResponse')
    ListDataTransformationProfileVersionsRequest = Shapes::StructureShape.new(name: 'ListDataTransformationProfileVersionsRequest')
    ListDataTransformationProfileVersionsResponse = Shapes::StructureShape.new(name: 'ListDataTransformationProfileVersionsResponse')
    ListDataTransformationProfilesRequest = Shapes::StructureShape.new(name: 'ListDataTransformationProfilesRequest')
    ListDataTransformationProfilesResponse = Shapes::StructureShape.new(name: 'ListDataTransformationProfilesResponse')
    ListFHIRDatastoresRequest = Shapes::StructureShape.new(name: 'ListFHIRDatastoresRequest')
    ListFHIRDatastoresResponse = Shapes::StructureShape.new(name: 'ListFHIRDatastoresResponse')
    ListFHIRExportJobsRequest = Shapes::StructureShape.new(name: 'ListFHIRExportJobsRequest')
    ListFHIRExportJobsResponse = Shapes::StructureShape.new(name: 'ListFHIRExportJobsResponse')
    ListFHIRImportJobsRequest = Shapes::StructureShape.new(name: 'ListFHIRImportJobsRequest')
    ListFHIRImportJobsResponse = Shapes::StructureShape.new(name: 'ListFHIRImportJobsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxResultsInteger = Shapes::IntegerShape.new(name: 'MaxResultsInteger')
    Message = Shapes::StringShape.new(name: 'Message')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NlpConfiguration = Shapes::StructureShape.new(name: 'NlpConfiguration')
    NlpStatus = Shapes::StringShape.new(name: 'NlpStatus')
    NotImplementedOperationException = Shapes::StructureShape.new(name: 'NotImplementedOperationException')
    OutputDataConfig = Shapes::UnionShape.new(name: 'OutputDataConfig')
    PreloadDataConfig = Shapes::StructureShape.new(name: 'PreloadDataConfig')
    PreloadDataType = Shapes::StringShape.new(name: 'PreloadDataType')
    ProfileConfiguration = Shapes::StructureShape.new(name: 'ProfileConfiguration')
    ProfileDescription = Shapes::StringShape.new(name: 'ProfileDescription')
    ProfileIdString = Shapes::StringShape.new(name: 'ProfileIdString')
    ProfileMapping = Shapes::MapShape.new(name: 'ProfileMapping')
    ProfileMappingKey = Shapes::StringShape.new(name: 'ProfileMappingKey')
    ProfileMappingSource = Shapes::StructureShape.new(name: 'ProfileMappingSource')
    ProfileMappingValue = Shapes::StringShape.new(name: 'ProfileMappingValue')
    ProfileNameString = Shapes::StringShape.new(name: 'ProfileNameString')
    ProfileVersion = Shapes::IntegerShape.new(name: 'ProfileVersion')
    PublishDataTransformationProfileRequest = Shapes::StructureShape.new(name: 'PublishDataTransformationProfileRequest')
    PublishDataTransformationProfileResponse = Shapes::StructureShape.new(name: 'PublishDataTransformationProfileResponse')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RestoreConfiguration = Shapes::UnionShape.new(name: 'RestoreConfiguration')
    RestoreFHIRDatastoreRequest = Shapes::StructureShape.new(name: 'RestoreFHIRDatastoreRequest')
    RestoreFHIRDatastoreResponse = Shapes::StructureShape.new(name: 'RestoreFHIRDatastoreResponse')
    S3Configuration = Shapes::StructureShape.new(name: 'S3Configuration')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SampleDataS3Uri = Shapes::StringShape.new(name: 'SampleDataS3Uri')
    SampleDataSource = Shapes::StructureShape.new(name: 'SampleDataSource')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SourceFormat = Shapes::StringShape.new(name: 'SourceFormat')
    SseConfiguration = Shapes::StructureShape.new(name: 'SseConfiguration')
    StartDataTransformationJobRequest = Shapes::StructureShape.new(name: 'StartDataTransformationJobRequest')
    StartDataTransformationJobResponse = Shapes::StructureShape.new(name: 'StartDataTransformationJobResponse')
    StartFHIRExportJobRequest = Shapes::StructureShape.new(name: 'StartFHIRExportJobRequest')
    StartFHIRExportJobResponse = Shapes::StructureShape.new(name: 'StartFHIRExportJobResponse')
    StartFHIRImportJobRequest = Shapes::StructureShape.new(name: 'StartFHIRImportJobRequest')
    StartFHIRImportJobResponse = Shapes::StructureShape.new(name: 'StartFHIRImportJobResponse')
    StarterProfileSource = Shapes::StructureShape.new(name: 'StarterProfileSource')
    String = Shapes::StringShape.new(name: 'String')
    StringMap = Shapes::MapShape.new(name: 'StringMap')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetFormat = Shapes::StringShape.new(name: 'TargetFormat')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TransformationInputDataConfig = Shapes::StructureShape.new(name: 'TransformationInputDataConfig')
    TransformationJobProgressReport = Shapes::StructureShape.new(name: 'TransformationJobProgressReport')
    TransformationJobProperties = Shapes::StructureShape.new(name: 'TransformationJobProperties')
    TransformationJobStatus = Shapes::StringShape.new(name: 'TransformationJobStatus')
    TransformationJobSummary = Shapes::StructureShape.new(name: 'TransformationJobSummary')
    TransformationJobSummaryList = Shapes::ListShape.new(name: 'TransformationJobSummaryList')
    TransformationOutputDataConfig = Shapes::StructureShape.new(name: 'TransformationOutputDataConfig')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UnsupportedMIMETypeException = Shapes::StructureShape.new(name: 'UnsupportedMIMETypeException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateDataTransformationProfileRequest = Shapes::StructureShape.new(name: 'UpdateDataTransformationProfileRequest')
    UpdateDataTransformationProfileResponse = Shapes::StructureShape.new(name: 'UpdateDataTransformationProfileResponse')
    UpdateFHIRDatastoreRequest = Shapes::StructureShape.new(name: 'UpdateFHIRDatastoreRequest')
    UpdateFHIRDatastoreResponse = Shapes::StructureShape.new(name: 'UpdateFHIRDatastoreResponse')
    UpdateProfileWithAgentRequest = Shapes::StructureShape.new(name: 'UpdateProfileWithAgentRequest')
    UpdateProfileWithAgentResponse = Shapes::StructureShape.new(name: 'UpdateProfileWithAgentResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationLevel = Shapes::StringShape.new(name: 'ValidationLevel')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: HealthLakeString, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AgentInputMessage.add_member(:body, Shapes::ShapeRef.new(shape: AgentMessageString, required: true, location_name: "Body"))
    AgentInputMessage.add_member(:type, Shapes::ShapeRef.new(shape: AgentInputMessageType, required: true, location_name: "Type"))
    AgentInputMessage.struct_class = Types::AgentInputMessage

    AgentMessageOutOfContextException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    AgentMessageOutOfContextException.struct_class = Types::AgentMessageOutOfContextException

    AgentOutputMessage.add_member(:body, Shapes::ShapeRef.new(shape: AgentMessageString, required: true, location_name: "Body"))
    AgentOutputMessage.add_member(:type, Shapes::ShapeRef.new(shape: AgentOutputMessageType, required: true, location_name: "Type"))
    AgentOutputMessage.add_member(:options_list, Shapes::ShapeRef.new(shape: DataTransformationChatOptionsList, location_name: "OptionsList"))
    AgentOutputMessage.struct_class = Types::AgentOutputMessage

    AnalyticsConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: AnalyticsStatus, location_name: "Status"))
    AnalyticsConfiguration.struct_class = Types::AnalyticsConfiguration

    BackupConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: BackupStatus, location_name: "Status"))
    BackupConfiguration.add_member(:backup_type, Shapes::ShapeRef.new(shape: BackupType, location_name: "BackupType"))
    BackupConfiguration.add_member(:retention_period_in_days, Shapes::ShapeRef.new(shape: BackupRetentionPeriodInDays, location_name: "RetentionPeriodInDays"))
    BackupConfiguration.add_member(:backup_tags_enabled, Shapes::ShapeRef.new(shape: HealthLakeBoolean, location_name: "BackupTagsEnabled"))
    BackupConfiguration.struct_class = Types::BackupConfiguration

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: HealthLakeString, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    ContinuousBackupRestoreConfiguration.add_member(:restore_point_time, Shapes::ShapeRef.new(shape: HealthLakeTimestamp, location_name: "RestorePointTime"))
    ContinuousBackupRestoreConfiguration.struct_class = Types::ContinuousBackupRestoreConfiguration

    ConversationNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ConversationNotFoundException.struct_class = Types::ConversationNotFoundException

    CreateDataTransformationProfileRequest.add_member(:source_format, Shapes::ShapeRef.new(shape: SourceFormat, required: true, location_name: "SourceFormat"))
    CreateDataTransformationProfileRequest.add_member(:source, Shapes::ShapeRef.new(shape: CreateDataTransformationProfileSource, required: true, location_name: "Source"))
    CreateDataTransformationProfileRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateDataTransformationProfileRequest.add_member(:profile_description, Shapes::ShapeRef.new(shape: ProfileDescription, location_name: "ProfileDescription"))
    CreateDataTransformationProfileRequest.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileNameString, required: true, location_name: "ProfileName"))
    CreateDataTransformationProfileRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateDataTransformationProfileRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateDataTransformationProfileRequest.struct_class = Types::CreateDataTransformationProfileRequest

    CreateDataTransformationProfileResponse.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileIdString, required: true, location_name: "ProfileId"))
    CreateDataTransformationProfileResponse.add_member(:version, Shapes::ShapeRef.new(shape: ProfileVersion, required: true, location_name: "Version"))
    CreateDataTransformationProfileResponse.add_member(:source_format, Shapes::ShapeRef.new(shape: SourceFormat, required: true, location_name: "SourceFormat"))
    CreateDataTransformationProfileResponse.add_member(:target_format, Shapes::ShapeRef.new(shape: TargetFormat, required: true, location_name: "TargetFormat"))
    CreateDataTransformationProfileResponse.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileNameString, required: true, location_name: "ProfileName"))
    CreateDataTransformationProfileResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "LastUpdatedAt"))
    CreateDataTransformationProfileResponse.struct_class = Types::CreateDataTransformationProfileResponse

    CreateDataTransformationProfileSource.add_member(:starter_profile, Shapes::ShapeRef.new(shape: StarterProfileSource, location_name: "StarterProfile"))
    CreateDataTransformationProfileSource.add_member(:existing_versioned_profile_id, Shapes::ShapeRef.new(shape: ExistingVersionedProfileSource, location_name: "ExistingVersionedProfileId"))
    CreateDataTransformationProfileSource.add_member(:profile_mapping, Shapes::ShapeRef.new(shape: ProfileMappingSource, location_name: "ProfileMapping"))
    CreateDataTransformationProfileSource.add_member(:sample_data, Shapes::ShapeRef.new(shape: SampleDataSource, location_name: "SampleData"))
    CreateDataTransformationProfileSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CreateDataTransformationProfileSource.add_member_subclass(:starter_profile, Types::CreateDataTransformationProfileSource::StarterProfile)
    CreateDataTransformationProfileSource.add_member_subclass(:existing_versioned_profile_id, Types::CreateDataTransformationProfileSource::ExistingVersionedProfileId)
    CreateDataTransformationProfileSource.add_member_subclass(:profile_mapping, Types::CreateDataTransformationProfileSource::ProfileMapping)
    CreateDataTransformationProfileSource.add_member_subclass(:sample_data, Types::CreateDataTransformationProfileSource::SampleData)
    CreateDataTransformationProfileSource.add_member_subclass(:unknown, Types::CreateDataTransformationProfileSource::Unknown)
    CreateDataTransformationProfileSource.struct_class = Types::CreateDataTransformationProfileSource

    CreateFHIRDatastoreRequest.add_member(:datastore_name, Shapes::ShapeRef.new(shape: DatastoreName, location_name: "DatastoreName"))
    CreateFHIRDatastoreRequest.add_member(:datastore_type_version, Shapes::ShapeRef.new(shape: FHIRVersion, required: true, location_name: "DatastoreTypeVersion"))
    CreateFHIRDatastoreRequest.add_member(:sse_configuration, Shapes::ShapeRef.new(shape: SseConfiguration, location_name: "SseConfiguration"))
    CreateFHIRDatastoreRequest.add_member(:preload_data_config, Shapes::ShapeRef.new(shape: PreloadDataConfig, location_name: "PreloadDataConfig"))
    CreateFHIRDatastoreRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateFHIRDatastoreRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateFHIRDatastoreRequest.add_member(:identity_provider_configuration, Shapes::ShapeRef.new(shape: IdentityProviderConfiguration, location_name: "IdentityProviderConfiguration"))
    CreateFHIRDatastoreRequest.add_member(:analytics_configuration, Shapes::ShapeRef.new(shape: AnalyticsConfiguration, location_name: "AnalyticsConfiguration"))
    CreateFHIRDatastoreRequest.add_member(:nlp_configuration, Shapes::ShapeRef.new(shape: NlpConfiguration, location_name: "NlpConfiguration"))
    CreateFHIRDatastoreRequest.add_member(:profile_configuration, Shapes::ShapeRef.new(shape: ProfileConfiguration, location_name: "ProfileConfiguration"))
    CreateFHIRDatastoreRequest.add_member(:backup_configuration, Shapes::ShapeRef.new(shape: BackupConfiguration, location_name: "BackupConfiguration"))
    CreateFHIRDatastoreRequest.struct_class = Types::CreateFHIRDatastoreRequest

    CreateFHIRDatastoreResponse.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    CreateFHIRDatastoreResponse.add_member(:datastore_arn, Shapes::ShapeRef.new(shape: DatastoreArn, required: true, location_name: "DatastoreArn"))
    CreateFHIRDatastoreResponse.add_member(:datastore_status, Shapes::ShapeRef.new(shape: DatastoreStatus, required: true, location_name: "DatastoreStatus"))
    CreateFHIRDatastoreResponse.add_member(:datastore_endpoint, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "DatastoreEndpoint"))
    CreateFHIRDatastoreResponse.struct_class = Types::CreateFHIRDatastoreResponse

    DataTransformationChatOptionsList.member = Shapes::ShapeRef.new(shape: DataTransformationChatOptionString)

    DataTransformationProfileSummary.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileIdString, required: true, location_name: "ProfileId"))
    DataTransformationProfileSummary.add_member(:version, Shapes::ShapeRef.new(shape: ProfileVersion, required: true, location_name: "Version"))
    DataTransformationProfileSummary.add_member(:source_format, Shapes::ShapeRef.new(shape: SourceFormat, required: true, location_name: "SourceFormat"))
    DataTransformationProfileSummary.add_member(:target_format, Shapes::ShapeRef.new(shape: TargetFormat, required: true, location_name: "TargetFormat"))
    DataTransformationProfileSummary.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileNameString, location_name: "ProfileName"))
    DataTransformationProfileSummary.add_member(:profile_description, Shapes::ShapeRef.new(shape: ProfileDescription, location_name: "ProfileDescription"))
    DataTransformationProfileSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastUpdatedAt"))
    DataTransformationProfileSummary.struct_class = Types::DataTransformationProfileSummary

    DataTransformationProfileSummaryList.member = Shapes::ShapeRef.new(shape: DataTransformationProfileSummary)

    DataTransformationProfileVersionSummary.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileIdString, required: true, location_name: "ProfileId"))
    DataTransformationProfileVersionSummary.add_member(:version, Shapes::ShapeRef.new(shape: ProfileVersion, required: true, location_name: "Version"))
    DataTransformationProfileVersionSummary.add_member(:source_format, Shapes::ShapeRef.new(shape: SourceFormat, required: true, location_name: "SourceFormat"))
    DataTransformationProfileVersionSummary.add_member(:target_format, Shapes::ShapeRef.new(shape: TargetFormat, required: true, location_name: "TargetFormat"))
    DataTransformationProfileVersionSummary.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileNameString, location_name: "ProfileName"))
    DataTransformationProfileVersionSummary.add_member(:change_description, Shapes::ShapeRef.new(shape: ChangeDescription, location_name: "ChangeDescription"))
    DataTransformationProfileVersionSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastUpdatedAt"))
    DataTransformationProfileVersionSummary.struct_class = Types::DataTransformationProfileVersionSummary

    DataTransformationProfileVersionSummaryList.member = Shapes::ShapeRef.new(shape: DataTransformationProfileVersionSummary)

    DataTransformationS3Configuration.add_member(:s3_uri, Shapes::ShapeRef.new(shape: DataTransformationS3Uri, required: true, location_name: "S3Uri"))
    DataTransformationS3Configuration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, required: true, location_name: "KmsKeyId"))
    DataTransformationS3Configuration.struct_class = Types::DataTransformationS3Configuration

    DatastoreBackupStatus.add_member(:configuration, Shapes::ShapeRef.new(shape: BackupConfiguration, location_name: "Configuration"))
    DatastoreBackupStatus.add_member(:backup_enabled_at, Shapes::ShapeRef.new(shape: HealthLakeTimestamp, location_name: "BackupEnabledAt"))
    DatastoreBackupStatus.add_member(:earliest_restore_point, Shapes::ShapeRef.new(shape: HealthLakeTimestamp, location_name: "EarliestRestorePoint"))
    DatastoreBackupStatus.add_member(:latest_restore_point, Shapes::ShapeRef.new(shape: HealthLakeTimestamp, location_name: "LatestRestorePoint"))
    DatastoreBackupStatus.add_member(:scheduled_permanent_deletion_time, Shapes::ShapeRef.new(shape: HealthLakeTimestamp, location_name: "ScheduledPermanentDeletionTime"))
    DatastoreBackupStatus.struct_class = Types::DatastoreBackupStatus

    DatastoreFilter.add_member(:datastore_name, Shapes::ShapeRef.new(shape: DatastoreName, location_name: "DatastoreName"))
    DatastoreFilter.add_member(:datastore_status, Shapes::ShapeRef.new(shape: DatastoreStatus, location_name: "DatastoreStatus"))
    DatastoreFilter.add_member(:created_before, Shapes::ShapeRef.new(shape: HealthLakeTimestamp, location_name: "CreatedBefore"))
    DatastoreFilter.add_member(:created_after, Shapes::ShapeRef.new(shape: HealthLakeTimestamp, location_name: "CreatedAfter"))
    DatastoreFilter.struct_class = Types::DatastoreFilter

    DatastoreProperties.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    DatastoreProperties.add_member(:datastore_arn, Shapes::ShapeRef.new(shape: DatastoreArn, required: true, location_name: "DatastoreArn"))
    DatastoreProperties.add_member(:datastore_name, Shapes::ShapeRef.new(shape: DatastoreName, location_name: "DatastoreName"))
    DatastoreProperties.add_member(:datastore_status, Shapes::ShapeRef.new(shape: DatastoreStatus, required: true, location_name: "DatastoreStatus"))
    DatastoreProperties.add_member(:created_at, Shapes::ShapeRef.new(shape: HealthLakeTimestamp, location_name: "CreatedAt"))
    DatastoreProperties.add_member(:datastore_type_version, Shapes::ShapeRef.new(shape: FHIRVersion, required: true, location_name: "DatastoreTypeVersion"))
    DatastoreProperties.add_member(:datastore_endpoint, Shapes::ShapeRef.new(shape: HealthLakeString, required: true, location_name: "DatastoreEndpoint"))
    DatastoreProperties.add_member(:sse_configuration, Shapes::ShapeRef.new(shape: SseConfiguration, location_name: "SseConfiguration"))
    DatastoreProperties.add_member(:preload_data_config, Shapes::ShapeRef.new(shape: PreloadDataConfig, location_name: "PreloadDataConfig"))
    DatastoreProperties.add_member(:identity_provider_configuration, Shapes::ShapeRef.new(shape: IdentityProviderConfiguration, location_name: "IdentityProviderConfiguration"))
    DatastoreProperties.add_member(:error_cause, Shapes::ShapeRef.new(shape: ErrorCause, location_name: "ErrorCause"))
    DatastoreProperties.add_member(:nlp_configuration, Shapes::ShapeRef.new(shape: NlpConfiguration, location_name: "NlpConfiguration"))
    DatastoreProperties.add_member(:analytics_configuration, Shapes::ShapeRef.new(shape: AnalyticsConfiguration, location_name: "AnalyticsConfiguration"))
    DatastoreProperties.add_member(:profile_configuration, Shapes::ShapeRef.new(shape: ProfileConfiguration, location_name: "ProfileConfiguration"))
    DatastoreProperties.add_member(:backup_status_info, Shapes::ShapeRef.new(shape: DatastoreBackupStatus, location_name: "BackupStatusInfo"))
    DatastoreProperties.struct_class = Types::DatastoreProperties

    DatastorePropertiesList.member = Shapes::ShapeRef.new(shape: DatastoreProperties)

    DefaultProfiles.member = Shapes::ShapeRef.new(shape: HealthLakeString)

    DeleteDataTransformationProfileRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileIdString, required: true, location_name: "ProfileId"))
    DeleteDataTransformationProfileRequest.struct_class = Types::DeleteDataTransformationProfileRequest

    DeleteDataTransformationProfileResponse.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileIdString, required: true, location_name: "ProfileId"))
    DeleteDataTransformationProfileResponse.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileNameString, location_name: "ProfileName"))
    DeleteDataTransformationProfileResponse.add_member(:deletion_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "DeletionTime"))
    DeleteDataTransformationProfileResponse.struct_class = Types::DeleteDataTransformationProfileResponse

    DeleteFHIRDatastoreRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    DeleteFHIRDatastoreRequest.struct_class = Types::DeleteFHIRDatastoreRequest

    DeleteFHIRDatastoreResponse.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    DeleteFHIRDatastoreResponse.add_member(:datastore_arn, Shapes::ShapeRef.new(shape: DatastoreArn, required: true, location_name: "DatastoreArn"))
    DeleteFHIRDatastoreResponse.add_member(:datastore_status, Shapes::ShapeRef.new(shape: DatastoreStatus, required: true, location_name: "DatastoreStatus"))
    DeleteFHIRDatastoreResponse.add_member(:datastore_endpoint, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "DatastoreEndpoint"))
    DeleteFHIRDatastoreResponse.struct_class = Types::DeleteFHIRDatastoreResponse

    DescribeDataTransformationJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: DataTransformationJobId, required: true, location_name: "JobId"))
    DescribeDataTransformationJobRequest.struct_class = Types::DescribeDataTransformationJobRequest

    DescribeDataTransformationJobResponse.add_member(:transformation_job_properties, Shapes::ShapeRef.new(shape: TransformationJobProperties, required: true, location_name: "TransformationJobProperties"))
    DescribeDataTransformationJobResponse.struct_class = Types::DescribeDataTransformationJobResponse

    DescribeFHIRDatastoreRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    DescribeFHIRDatastoreRequest.struct_class = Types::DescribeFHIRDatastoreRequest

    DescribeFHIRDatastoreResponse.add_member(:datastore_properties, Shapes::ShapeRef.new(shape: DatastoreProperties, required: true, location_name: "DatastoreProperties"))
    DescribeFHIRDatastoreResponse.struct_class = Types::DescribeFHIRDatastoreResponse

    DescribeFHIRExportJobRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    DescribeFHIRExportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribeFHIRExportJobRequest.struct_class = Types::DescribeFHIRExportJobRequest

    DescribeFHIRExportJobResponse.add_member(:export_job_properties, Shapes::ShapeRef.new(shape: ExportJobProperties, required: true, location_name: "ExportJobProperties"))
    DescribeFHIRExportJobResponse.struct_class = Types::DescribeFHIRExportJobResponse

    DescribeFHIRImportJobRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    DescribeFHIRImportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribeFHIRImportJobRequest.struct_class = Types::DescribeFHIRImportJobRequest

    DescribeFHIRImportJobResponse.add_member(:import_job_properties, Shapes::ShapeRef.new(shape: ImportJobProperties, required: true, location_name: "ImportJobProperties"))
    DescribeFHIRImportJobResponse.struct_class = Types::DescribeFHIRImportJobResponse

    ErrorCause.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    ErrorCause.add_member(:error_category, Shapes::ShapeRef.new(shape: ErrorCategory, location_name: "ErrorCategory"))
    ErrorCause.struct_class = Types::ErrorCause

    ExistingVersionedProfileSource.add_member(:profile_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ProfileId"))
    ExistingVersionedProfileSource.add_member(:version, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "Version"))
    ExistingVersionedProfileSource.struct_class = Types::ExistingVersionedProfileSource

    ExportJobProperties.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    ExportJobProperties.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    ExportJobProperties.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "JobStatus"))
    ExportJobProperties.add_member(:submit_time, Shapes::ShapeRef.new(shape: HealthLakeTimestamp, required: true, location_name: "SubmitTime"))
    ExportJobProperties.add_member(:end_time, Shapes::ShapeRef.new(shape: HealthLakeTimestamp, location_name: "EndTime"))
    ExportJobProperties.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    ExportJobProperties.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    ExportJobProperties.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "DataAccessRoleArn"))
    ExportJobProperties.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ExportJobProperties.struct_class = Types::ExportJobProperties

    ExportJobPropertiesList.member = Shapes::ShapeRef.new(shape: ExportJobProperties)

    FailedDependencyException.add_member(:message, Shapes::ShapeRef.new(shape: HealthLakeString, location_name: "Message"))
    FailedDependencyException.struct_class = Types::FailedDependencyException

    GetDataTransformationProfileRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileIdString, required: true, location_name: "ProfileId"))
    GetDataTransformationProfileRequest.add_member(:profile_version, Shapes::ShapeRef.new(shape: ProfileVersion, location_name: "ProfileVersion"))
    GetDataTransformationProfileRequest.struct_class = Types::GetDataTransformationProfileRequest

    GetDataTransformationProfileResponse.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileIdString, required: true, location_name: "ProfileId"))
    GetDataTransformationProfileResponse.add_member(:version, Shapes::ShapeRef.new(shape: ProfileVersion, required: true, location_name: "Version"))
    GetDataTransformationProfileResponse.add_member(:source_format, Shapes::ShapeRef.new(shape: SourceFormat, required: true, location_name: "SourceFormat"))
    GetDataTransformationProfileResponse.add_member(:target_format, Shapes::ShapeRef.new(shape: TargetFormat, required: true, location_name: "TargetFormat"))
    GetDataTransformationProfileResponse.add_member(:profile_mapping, Shapes::ShapeRef.new(shape: ProfileMapping, required: true, location_name: "ProfileMapping"))
    GetDataTransformationProfileResponse.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileNameString, location_name: "ProfileName"))
    GetDataTransformationProfileResponse.add_member(:profile_description, Shapes::ShapeRef.new(shape: ProfileDescription, location_name: "ProfileDescription"))
    GetDataTransformationProfileResponse.add_member(:change_description, Shapes::ShapeRef.new(shape: ChangeDescription, location_name: "ChangeDescription"))
    GetDataTransformationProfileResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "LastUpdatedAt"))
    GetDataTransformationProfileResponse.struct_class = Types::GetDataTransformationProfileResponse

    IdentityProviderConfiguration.add_member(:authorization_strategy, Shapes::ShapeRef.new(shape: AuthorizationStrategy, required: true, location_name: "AuthorizationStrategy"))
    IdentityProviderConfiguration.add_member(:fine_grained_authorization_enabled, Shapes::ShapeRef.new(shape: HealthLakeBoolean, location_name: "FineGrainedAuthorizationEnabled"))
    IdentityProviderConfiguration.add_member(:metadata, Shapes::ShapeRef.new(shape: ConfigurationMetadata, location_name: "Metadata"))
    IdentityProviderConfiguration.add_member(:idp_lambda_arn, Shapes::ShapeRef.new(shape: LambdaArn, location_name: "IdpLambdaArn"))
    IdentityProviderConfiguration.struct_class = Types::IdentityProviderConfiguration

    ImportJobProperties.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    ImportJobProperties.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    ImportJobProperties.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "JobStatus"))
    ImportJobProperties.add_member(:submit_time, Shapes::ShapeRef.new(shape: HealthLakeTimestamp, required: true, location_name: "SubmitTime"))
    ImportJobProperties.add_member(:end_time, Shapes::ShapeRef.new(shape: HealthLakeTimestamp, location_name: "EndTime"))
    ImportJobProperties.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    ImportJobProperties.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    ImportJobProperties.add_member(:job_output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: "JobOutputDataConfig"))
    ImportJobProperties.add_member(:job_progress_report, Shapes::ShapeRef.new(shape: JobProgressReport, location_name: "JobProgressReport"))
    ImportJobProperties.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "DataAccessRoleArn"))
    ImportJobProperties.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ImportJobProperties.add_member(:validation_level, Shapes::ShapeRef.new(shape: ValidationLevel, location_name: "ValidationLevel"))
    ImportJobProperties.struct_class = Types::ImportJobProperties

    ImportJobPropertiesList.member = Shapes::ShapeRef.new(shape: ImportJobProperties)

    InputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "S3Uri"))
    InputDataConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    InputDataConfig.add_member_subclass(:s3_uri, Types::InputDataConfig::S3Uri)
    InputDataConfig.add_member_subclass(:unknown, Types::InputDataConfig::Unknown)
    InputDataConfig.struct_class = Types::InputDataConfig

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: HealthLakeString, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    JobProgressReport.add_member(:total_number_of_scanned_files, Shapes::ShapeRef.new(shape: GenericLong, location_name: "TotalNumberOfScannedFiles"))
    JobProgressReport.add_member(:total_size_of_scanned_files_in_mb, Shapes::ShapeRef.new(shape: GenericDouble, location_name: "TotalSizeOfScannedFilesInMB"))
    JobProgressReport.add_member(:total_number_of_imported_files, Shapes::ShapeRef.new(shape: GenericLong, location_name: "TotalNumberOfImportedFiles"))
    JobProgressReport.add_member(:total_number_of_resources_scanned, Shapes::ShapeRef.new(shape: GenericLong, location_name: "TotalNumberOfResourcesScanned"))
    JobProgressReport.add_member(:total_number_of_resources_imported, Shapes::ShapeRef.new(shape: GenericLong, location_name: "TotalNumberOfResourcesImported"))
    JobProgressReport.add_member(:total_number_of_resources_with_customer_error, Shapes::ShapeRef.new(shape: GenericLong, location_name: "TotalNumberOfResourcesWithCustomerError"))
    JobProgressReport.add_member(:total_number_of_files_read_with_customer_error, Shapes::ShapeRef.new(shape: GenericLong, location_name: "TotalNumberOfFilesReadWithCustomerError"))
    JobProgressReport.add_member(:total_number_of_scanned_non_fhir_files, Shapes::ShapeRef.new(shape: GenericLong, location_name: "TotalNumberOfScannedNonFhirFiles"))
    JobProgressReport.add_member(:total_size_of_scanned_non_fhir_files_in_mb, Shapes::ShapeRef.new(shape: GenericDouble, location_name: "TotalSizeOfScannedNonFhirFilesInMB"))
    JobProgressReport.add_member(:total_number_of_imported_non_fhir_files, Shapes::ShapeRef.new(shape: GenericLong, location_name: "TotalNumberOfImportedNonFhirFiles"))
    JobProgressReport.add_member(:total_number_of_non_fhir_resources_scanned, Shapes::ShapeRef.new(shape: GenericLong, location_name: "TotalNumberOfNonFhirResourcesScanned"))
    JobProgressReport.add_member(:total_number_of_non_fhir_resources_imported, Shapes::ShapeRef.new(shape: GenericLong, location_name: "TotalNumberOfNonFhirResourcesImported"))
    JobProgressReport.add_member(:total_number_of_non_fhir_resources_with_customer_error, Shapes::ShapeRef.new(shape: GenericLong, location_name: "TotalNumberOfNonFhirResourcesWithCustomerError"))
    JobProgressReport.add_member(:total_number_of_non_fhir_files_read_with_customer_error, Shapes::ShapeRef.new(shape: GenericLong, location_name: "TotalNumberOfNonFhirFilesReadWithCustomerError"))
    JobProgressReport.add_member(:throughput, Shapes::ShapeRef.new(shape: GenericDouble, location_name: "Throughput"))
    JobProgressReport.add_member(:total_files_converted, Shapes::ShapeRef.new(shape: GenericLong, location_name: "TotalFilesConverted"))
    JobProgressReport.add_member(:total_resources_generated, Shapes::ShapeRef.new(shape: GenericLong, location_name: "TotalResourcesGenerated"))
    JobProgressReport.struct_class = Types::JobProgressReport

    KmsEncryptionConfig.add_member(:cmk_type, Shapes::ShapeRef.new(shape: CmkType, required: true, location_name: "CmkType"))
    KmsEncryptionConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: EncryptionKeyID, location_name: "KmsKeyId"))
    KmsEncryptionConfig.struct_class = Types::KmsEncryptionConfig

    ListDataTransformationJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListDataTransformationJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: DataTransformationNextToken, location_name: "NextToken"))
    ListDataTransformationJobsRequest.add_member(:job_status, Shapes::ShapeRef.new(shape: TransformationJobStatus, location_name: "JobStatus"))
    ListDataTransformationJobsRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: DataTransformationJobName, location_name: "JobName"))
    ListDataTransformationJobsRequest.add_member(:submitted_after, Shapes::ShapeRef.new(shape: DateTime, location_name: "SubmittedAfter"))
    ListDataTransformationJobsRequest.add_member(:submitted_before, Shapes::ShapeRef.new(shape: DateTime, location_name: "SubmittedBefore"))
    ListDataTransformationJobsRequest.struct_class = Types::ListDataTransformationJobsRequest

    ListDataTransformationJobsResponse.add_member(:items, Shapes::ShapeRef.new(shape: TransformationJobSummaryList, required: true, location_name: "Items"))
    ListDataTransformationJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: DataTransformationNextToken, location_name: "NextToken"))
    ListDataTransformationJobsResponse.struct_class = Types::ListDataTransformationJobsResponse

    ListDataTransformationProfileVersionsRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileIdString, required: true, location_name: "ProfileId"))
    ListDataTransformationProfileVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListDataTransformationProfileVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: DataTransformationNextToken, location_name: "NextToken"))
    ListDataTransformationProfileVersionsRequest.struct_class = Types::ListDataTransformationProfileVersionsRequest

    ListDataTransformationProfileVersionsResponse.add_member(:items, Shapes::ShapeRef.new(shape: DataTransformationProfileVersionSummaryList, required: true, location_name: "Items"))
    ListDataTransformationProfileVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: DataTransformationNextToken, location_name: "NextToken"))
    ListDataTransformationProfileVersionsResponse.struct_class = Types::ListDataTransformationProfileVersionsResponse

    ListDataTransformationProfilesRequest.add_member(:source_format, Shapes::ShapeRef.new(shape: SourceFormat, required: true, location_name: "SourceFormat"))
    ListDataTransformationProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListDataTransformationProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: DataTransformationNextToken, location_name: "NextToken"))
    ListDataTransformationProfilesRequest.struct_class = Types::ListDataTransformationProfilesRequest

    ListDataTransformationProfilesResponse.add_member(:items, Shapes::ShapeRef.new(shape: DataTransformationProfileSummaryList, required: true, location_name: "Items"))
    ListDataTransformationProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: DataTransformationNextToken, location_name: "NextToken"))
    ListDataTransformationProfilesResponse.struct_class = Types::ListDataTransformationProfilesResponse

    ListFHIRDatastoresRequest.add_member(:filter, Shapes::ShapeRef.new(shape: DatastoreFilter, location_name: "Filter"))
    ListFHIRDatastoresRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFHIRDatastoresRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListFHIRDatastoresRequest.struct_class = Types::ListFHIRDatastoresRequest

    ListFHIRDatastoresResponse.add_member(:datastore_properties_list, Shapes::ShapeRef.new(shape: DatastorePropertiesList, required: true, location_name: "DatastorePropertiesList"))
    ListFHIRDatastoresResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFHIRDatastoresResponse.struct_class = Types::ListFHIRDatastoresResponse

    ListFHIRExportJobsRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    ListFHIRExportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFHIRExportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListFHIRExportJobsRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    ListFHIRExportJobsRequest.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    ListFHIRExportJobsRequest.add_member(:submitted_before, Shapes::ShapeRef.new(shape: HealthLakeTimestamp, location_name: "SubmittedBefore"))
    ListFHIRExportJobsRequest.add_member(:submitted_after, Shapes::ShapeRef.new(shape: HealthLakeTimestamp, location_name: "SubmittedAfter"))
    ListFHIRExportJobsRequest.struct_class = Types::ListFHIRExportJobsRequest

    ListFHIRExportJobsResponse.add_member(:export_job_properties_list, Shapes::ShapeRef.new(shape: ExportJobPropertiesList, required: true, location_name: "ExportJobPropertiesList"))
    ListFHIRExportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFHIRExportJobsResponse.struct_class = Types::ListFHIRExportJobsResponse

    ListFHIRImportJobsRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    ListFHIRImportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFHIRImportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListFHIRImportJobsRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    ListFHIRImportJobsRequest.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    ListFHIRImportJobsRequest.add_member(:submitted_before, Shapes::ShapeRef.new(shape: HealthLakeTimestamp, location_name: "SubmittedBefore"))
    ListFHIRImportJobsRequest.add_member(:submitted_after, Shapes::ShapeRef.new(shape: HealthLakeTimestamp, location_name: "SubmittedAfter"))
    ListFHIRImportJobsRequest.struct_class = Types::ListFHIRImportJobsRequest

    ListFHIRImportJobsResponse.add_member(:import_job_properties_list, Shapes::ShapeRef.new(shape: ImportJobPropertiesList, required: true, location_name: "ImportJobPropertiesList"))
    ListFHIRImportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFHIRImportJobsResponse.struct_class = Types::ListFHIRImportJobsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    NlpConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: NlpStatus, location_name: "Status"))
    NlpConfiguration.struct_class = Types::NlpConfiguration

    NotImplementedOperationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    NotImplementedOperationException.struct_class = Types::NotImplementedOperationException

    OutputDataConfig.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3Configuration, location_name: "S3Configuration"))
    OutputDataConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    OutputDataConfig.add_member_subclass(:s3_configuration, Types::OutputDataConfig::S3Configuration)
    OutputDataConfig.add_member_subclass(:unknown, Types::OutputDataConfig::Unknown)
    OutputDataConfig.struct_class = Types::OutputDataConfig

    PreloadDataConfig.add_member(:preload_data_type, Shapes::ShapeRef.new(shape: PreloadDataType, required: true, location_name: "PreloadDataType"))
    PreloadDataConfig.struct_class = Types::PreloadDataConfig

    ProfileConfiguration.add_member(:default_profiles, Shapes::ShapeRef.new(shape: DefaultProfiles, location_name: "DefaultProfiles"))
    ProfileConfiguration.struct_class = Types::ProfileConfiguration

    ProfileMapping.key = Shapes::ShapeRef.new(shape: ProfileMappingKey)
    ProfileMapping.value = Shapes::ShapeRef.new(shape: ProfileMappingValue)

    ProfileMappingSource.add_member(:profile_mapping, Shapes::ShapeRef.new(shape: StringMap, required: true, location_name: "ProfileMapping"))
    ProfileMappingSource.struct_class = Types::ProfileMappingSource

    PublishDataTransformationProfileRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileIdString, required: true, location_name: "ProfileId"))
    PublishDataTransformationProfileRequest.add_member(:source_format, Shapes::ShapeRef.new(shape: SourceFormat, required: true, location_name: "SourceFormat"))
    PublishDataTransformationProfileRequest.add_member(:from_existing_version, Shapes::ShapeRef.new(shape: ProfileVersion, location_name: "FromExistingVersion"))
    PublishDataTransformationProfileRequest.add_member(:change_description, Shapes::ShapeRef.new(shape: ChangeDescription, location_name: "ChangeDescription"))
    PublishDataTransformationProfileRequest.struct_class = Types::PublishDataTransformationProfileRequest

    PublishDataTransformationProfileResponse.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileIdString, required: true, location_name: "ProfileId"))
    PublishDataTransformationProfileResponse.add_member(:version, Shapes::ShapeRef.new(shape: ProfileVersion, required: true, location_name: "Version"))
    PublishDataTransformationProfileResponse.add_member(:source_format, Shapes::ShapeRef.new(shape: SourceFormat, required: true, location_name: "SourceFormat"))
    PublishDataTransformationProfileResponse.add_member(:target_format, Shapes::ShapeRef.new(shape: TargetFormat, required: true, location_name: "TargetFormat"))
    PublishDataTransformationProfileResponse.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileNameString, location_name: "ProfileName"))
    PublishDataTransformationProfileResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "LastUpdatedAt"))
    PublishDataTransformationProfileResponse.struct_class = Types::PublishDataTransformationProfileResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: HealthLakeString, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RestoreConfiguration.add_member(:continuous_backup_restore_configuration, Shapes::ShapeRef.new(shape: ContinuousBackupRestoreConfiguration, location_name: "ContinuousBackupRestoreConfiguration"))
    RestoreConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RestoreConfiguration.add_member_subclass(:continuous_backup_restore_configuration, Types::RestoreConfiguration::ContinuousBackupRestoreConfiguration)
    RestoreConfiguration.add_member_subclass(:unknown, Types::RestoreConfiguration::Unknown)
    RestoreConfiguration.struct_class = Types::RestoreConfiguration

    RestoreFHIRDatastoreRequest.add_member(:source_datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "SourceDatastoreId"))
    RestoreFHIRDatastoreRequest.add_member(:restore_configuration, Shapes::ShapeRef.new(shape: RestoreConfiguration, required: true, location_name: "RestoreConfiguration"))
    RestoreFHIRDatastoreRequest.add_member(:datastore_name, Shapes::ShapeRef.new(shape: DatastoreName, location_name: "DatastoreName"))
    RestoreFHIRDatastoreRequest.add_member(:sse_configuration, Shapes::ShapeRef.new(shape: SseConfiguration, location_name: "SseConfiguration"))
    RestoreFHIRDatastoreRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    RestoreFHIRDatastoreRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    RestoreFHIRDatastoreRequest.add_member(:identity_provider_configuration, Shapes::ShapeRef.new(shape: IdentityProviderConfiguration, location_name: "IdentityProviderConfiguration"))
    RestoreFHIRDatastoreRequest.add_member(:analytics_configuration, Shapes::ShapeRef.new(shape: AnalyticsConfiguration, location_name: "AnalyticsConfiguration"))
    RestoreFHIRDatastoreRequest.add_member(:nlp_configuration, Shapes::ShapeRef.new(shape: NlpConfiguration, location_name: "NlpConfiguration"))
    RestoreFHIRDatastoreRequest.add_member(:profile_configuration, Shapes::ShapeRef.new(shape: ProfileConfiguration, location_name: "ProfileConfiguration"))
    RestoreFHIRDatastoreRequest.struct_class = Types::RestoreFHIRDatastoreRequest

    RestoreFHIRDatastoreResponse.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    RestoreFHIRDatastoreResponse.add_member(:datastore_arn, Shapes::ShapeRef.new(shape: DatastoreArn, required: true, location_name: "DatastoreArn"))
    RestoreFHIRDatastoreResponse.add_member(:datastore_status, Shapes::ShapeRef.new(shape: DatastoreStatus, required: true, location_name: "DatastoreStatus"))
    RestoreFHIRDatastoreResponse.add_member(:datastore_endpoint, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "DatastoreEndpoint"))
    RestoreFHIRDatastoreResponse.struct_class = Types::RestoreFHIRDatastoreResponse

    S3Configuration.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    S3Configuration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: EncryptionKeyID, required: true, location_name: "KmsKeyId"))
    S3Configuration.struct_class = Types::S3Configuration

    SampleDataSource.add_member(:s3_uri, Shapes::ShapeRef.new(shape: SampleDataS3Uri, required: true, location_name: "S3Uri"))
    SampleDataSource.struct_class = Types::SampleDataSource

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: HealthLakeString, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SseConfiguration.add_member(:kms_encryption_config, Shapes::ShapeRef.new(shape: KmsEncryptionConfig, required: true, location_name: "KmsEncryptionConfig"))
    SseConfiguration.struct_class = Types::SseConfiguration

    StartDataTransformationJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: TransformationInputDataConfig, required: true, location_name: "InputDataConfig"))
    StartDataTransformationJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: TransformationOutputDataConfig, required: true, location_name: "OutputDataConfig"))
    StartDataTransformationJobRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: DataTransformationIamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    StartDataTransformationJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken"))
    StartDataTransformationJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: DataTransformationJobName, location_name: "JobName"))
    StartDataTransformationJobRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileIdString, required: true, location_name: "ProfileId"))
    StartDataTransformationJobRequest.add_member(:drift_detection_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "DriftDetectionEnabled"))
    StartDataTransformationJobRequest.add_member(:provenance_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "ProvenanceEnabled"))
    StartDataTransformationJobRequest.struct_class = Types::StartDataTransformationJobRequest

    StartDataTransformationJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: DataTransformationJobId, required: true, location_name: "JobId"))
    StartDataTransformationJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: TransformationJobStatus, required: true, location_name: "JobStatus"))
    StartDataTransformationJobResponse.struct_class = Types::StartDataTransformationJobResponse

    StartFHIRExportJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    StartFHIRExportJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    StartFHIRExportJobRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    StartFHIRExportJobRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    StartFHIRExportJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartFHIRExportJobRequest.struct_class = Types::StartFHIRExportJobRequest

    StartFHIRExportJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    StartFHIRExportJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "JobStatus"))
    StartFHIRExportJobResponse.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, location_name: "DatastoreId"))
    StartFHIRExportJobResponse.struct_class = Types::StartFHIRExportJobResponse

    StartFHIRImportJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    StartFHIRImportJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    StartFHIRImportJobRequest.add_member(:job_output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "JobOutputDataConfig"))
    StartFHIRImportJobRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    StartFHIRImportJobRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    StartFHIRImportJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartFHIRImportJobRequest.add_member(:validation_level, Shapes::ShapeRef.new(shape: ValidationLevel, location_name: "ValidationLevel"))
    StartFHIRImportJobRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: BoundedLengthString, location_name: "ProfileId"))
    StartFHIRImportJobRequest.add_member(:input_format, Shapes::ShapeRef.new(shape: BoundedLengthString, location_name: "InputFormat"))
    StartFHIRImportJobRequest.add_member(:drift_detection_enabled, Shapes::ShapeRef.new(shape: HealthLakeBoolean, location_name: "DriftDetectionEnabled"))
    StartFHIRImportJobRequest.add_member(:provenance_enabled, Shapes::ShapeRef.new(shape: DefaultEnabledBoolean, location_name: "ProvenanceEnabled"))
    StartFHIRImportJobRequest.struct_class = Types::StartFHIRImportJobRequest

    StartFHIRImportJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    StartFHIRImportJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "JobStatus"))
    StartFHIRImportJobResponse.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, location_name: "DatastoreId"))
    StartFHIRImportJobResponse.struct_class = Types::StartFHIRImportJobResponse

    StarterProfileSource.add_member(:starter_profile_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StarterProfileName"))
    StarterProfileSource.struct_class = Types::StarterProfileSource

    StringMap.key = Shapes::ShapeRef.new(shape: String)
    StringMap.value = Shapes::ShapeRef.new(shape: String)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagMap.key = Shapes::ShapeRef.new(shape: DataTransformationTagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: DataTransformationTagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: HealthLakeString, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TransformationInputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: DataTransformationS3Uri, required: true, location_name: "S3Uri"))
    TransformationInputDataConfig.add_member(:source_format, Shapes::ShapeRef.new(shape: SourceFormat, location_name: "SourceFormat"))
    TransformationInputDataConfig.struct_class = Types::TransformationInputDataConfig

    TransformationJobProgressReport.add_member(:total_files_scanned, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "TotalFilesScanned"))
    TransformationJobProgressReport.add_member(:total_files_converted, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "TotalFilesConverted"))
    TransformationJobProgressReport.add_member(:total_files_failed, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "TotalFilesFailed"))
    TransformationJobProgressReport.add_member(:total_resources_generated, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "TotalResourcesGenerated"))
    TransformationJobProgressReport.struct_class = Types::TransformationJobProgressReport

    TransformationJobProperties.add_member(:job_id, Shapes::ShapeRef.new(shape: DataTransformationJobId, required: true, location_name: "JobId"))
    TransformationJobProperties.add_member(:job_status, Shapes::ShapeRef.new(shape: TransformationJobStatus, required: true, location_name: "JobStatus"))
    TransformationJobProperties.add_member(:input_data_config, Shapes::ShapeRef.new(shape: TransformationInputDataConfig, required: true, location_name: "InputDataConfig"))
    TransformationJobProperties.add_member(:output_data_config, Shapes::ShapeRef.new(shape: TransformationOutputDataConfig, required: true, location_name: "OutputDataConfig"))
    TransformationJobProperties.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: DataTransformationIamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    TransformationJobProperties.add_member(:submit_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "SubmitTime"))
    TransformationJobProperties.add_member(:job_name, Shapes::ShapeRef.new(shape: DataTransformationJobName, location_name: "JobName"))
    TransformationJobProperties.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileIdString, location_name: "ProfileId"))
    TransformationJobProperties.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileNameString, location_name: "ProfileName"))
    TransformationJobProperties.add_member(:profile_version, Shapes::ShapeRef.new(shape: Integer, location_name: "ProfileVersion"))
    TransformationJobProperties.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndTime"))
    TransformationJobProperties.add_member(:drift_detection_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "DriftDetectionEnabled"))
    TransformationJobProperties.add_member(:provenance_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "ProvenanceEnabled"))
    TransformationJobProperties.add_member(:message, Shapes::ShapeRef.new(shape: BoundedString, location_name: "Message"))
    TransformationJobProperties.add_member(:job_progress_report, Shapes::ShapeRef.new(shape: TransformationJobProgressReport, location_name: "JobProgressReport"))
    TransformationJobProperties.struct_class = Types::TransformationJobProperties

    TransformationJobSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: DataTransformationJobId, required: true, location_name: "JobId"))
    TransformationJobSummary.add_member(:job_status, Shapes::ShapeRef.new(shape: TransformationJobStatus, required: true, location_name: "JobStatus"))
    TransformationJobSummary.add_member(:submit_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "SubmitTime"))
    TransformationJobSummary.add_member(:job_name, Shapes::ShapeRef.new(shape: DataTransformationJobName, location_name: "JobName"))
    TransformationJobSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndTime"))
    TransformationJobSummary.add_member(:source_format, Shapes::ShapeRef.new(shape: SourceFormat, location_name: "SourceFormat"))
    TransformationJobSummary.struct_class = Types::TransformationJobSummary

    TransformationJobSummaryList.member = Shapes::ShapeRef.new(shape: TransformationJobSummary)

    TransformationOutputDataConfig.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: DataTransformationS3Configuration, required: true, location_name: "S3Configuration"))
    TransformationOutputDataConfig.struct_class = Types::TransformationOutputDataConfig

    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    UnauthorizedException.struct_class = Types::UnauthorizedException

    UnsupportedMIMETypeException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    UnsupportedMIMETypeException.struct_class = Types::UnsupportedMIMETypeException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateDataTransformationProfileRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileIdString, required: true, location_name: "ProfileId"))
    UpdateDataTransformationProfileRequest.add_member(:profile_mapping, Shapes::ShapeRef.new(shape: ProfileMapping, required: true, location_name: "ProfileMapping"))
    UpdateDataTransformationProfileRequest.add_member(:change_description, Shapes::ShapeRef.new(shape: ChangeDescription, location_name: "ChangeDescription"))
    UpdateDataTransformationProfileRequest.struct_class = Types::UpdateDataTransformationProfileRequest

    UpdateDataTransformationProfileResponse.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileIdString, required: true, location_name: "ProfileId"))
    UpdateDataTransformationProfileResponse.add_member(:source_format, Shapes::ShapeRef.new(shape: SourceFormat, required: true, location_name: "SourceFormat"))
    UpdateDataTransformationProfileResponse.add_member(:target_format, Shapes::ShapeRef.new(shape: TargetFormat, required: true, location_name: "TargetFormat"))
    UpdateDataTransformationProfileResponse.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileNameString, location_name: "ProfileName"))
    UpdateDataTransformationProfileResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "LastUpdatedAt"))
    UpdateDataTransformationProfileResponse.struct_class = Types::UpdateDataTransformationProfileResponse

    UpdateFHIRDatastoreRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    UpdateFHIRDatastoreRequest.add_member(:datastore_name, Shapes::ShapeRef.new(shape: DatastoreName, location_name: "DatastoreName"))
    UpdateFHIRDatastoreRequest.add_member(:analytics_configuration, Shapes::ShapeRef.new(shape: AnalyticsConfiguration, location_name: "AnalyticsConfiguration"))
    UpdateFHIRDatastoreRequest.add_member(:nlp_configuration, Shapes::ShapeRef.new(shape: NlpConfiguration, location_name: "NlpConfiguration"))
    UpdateFHIRDatastoreRequest.add_member(:profile_configuration, Shapes::ShapeRef.new(shape: ProfileConfiguration, location_name: "ProfileConfiguration"))
    UpdateFHIRDatastoreRequest.add_member(:identity_provider_configuration, Shapes::ShapeRef.new(shape: IdentityProviderConfiguration, location_name: "IdentityProviderConfiguration"))
    UpdateFHIRDatastoreRequest.add_member(:backup_configuration, Shapes::ShapeRef.new(shape: BackupConfiguration, location_name: "BackupConfiguration"))
    UpdateFHIRDatastoreRequest.struct_class = Types::UpdateFHIRDatastoreRequest

    UpdateFHIRDatastoreResponse.add_member(:datastore_properties, Shapes::ShapeRef.new(shape: DatastoreProperties, required: true, location_name: "DatastoreProperties"))
    UpdateFHIRDatastoreResponse.struct_class = Types::UpdateFHIRDatastoreResponse

    UpdateProfileWithAgentRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileIdString, required: true, location_name: "ProfileId"))
    UpdateProfileWithAgentRequest.add_member(:source_format, Shapes::ShapeRef.new(shape: SourceFormat, required: true, location_name: "SourceFormat"))
    UpdateProfileWithAgentRequest.add_member(:input_message, Shapes::ShapeRef.new(shape: AgentInputMessage, required: true, location_name: "InputMessage"))
    UpdateProfileWithAgentRequest.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationIdString, location_name: "ConversationId"))
    UpdateProfileWithAgentRequest.struct_class = Types::UpdateProfileWithAgentRequest

    UpdateProfileWithAgentResponse.add_member(:agent_response, Shapes::ShapeRef.new(shape: AgentOutputMessage, required: true, location_name: "AgentResponse"))
    UpdateProfileWithAgentResponse.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationIdString, required: true, location_name: "ConversationId"))
    UpdateProfileWithAgentResponse.struct_class = Types::UpdateProfileWithAgentResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: HealthLakeString, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-07-01"

      api.metadata = {
        "apiVersion" => "2017-07-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "healthlake",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceAbbreviation" => "HealthLake",
        "serviceFullName" => "Amazon HealthLake",
        "serviceId" => "HealthLake",
        "signatureVersion" => "v4",
        "signingName" => "healthlake",
        "targetPrefix" => "HealthLake",
        "uid" => "healthlake-2017-07-01",
      }

      api.add_operation(:create_data_transformation_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataTransformationProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "datatransformation.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateDataTransformationProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataTransformationProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_fhir_datastore, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFHIRDatastore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateFHIRDatastoreRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFHIRDatastoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_data_transformation_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataTransformationProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "datatransformation.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteDataTransformationProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataTransformationProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_fhir_datastore, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFHIRDatastore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFHIRDatastoreRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFHIRDatastoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_data_transformation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataTransformationJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "datatransformation.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeDataTransformationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDataTransformationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_fhir_datastore, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFHIRDatastore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFHIRDatastoreRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFHIRDatastoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_fhir_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFHIRExportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFHIRExportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFHIRExportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_fhir_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFHIRImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFHIRImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFHIRImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_data_transformation_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataTransformationProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "datatransformation.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetDataTransformationProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataTransformationProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_data_transformation_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataTransformationJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "datatransformation.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListDataTransformationJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataTransformationJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_data_transformation_profile_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataTransformationProfileVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "datatransformation.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListDataTransformationProfileVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataTransformationProfileVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_data_transformation_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataTransformationProfiles"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "datatransformation.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListDataTransformationProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataTransformationProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_fhir_datastores, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFHIRDatastores"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFHIRDatastoresRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFHIRDatastoresResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_fhir_export_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFHIRExportJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFHIRExportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFHIRExportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_fhir_import_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFHIRImportJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFHIRImportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFHIRImportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:publish_data_transformation_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PublishDataTransformationProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "datatransformation.",
        }
        o.input = Shapes::ShapeRef.new(shape: PublishDataTransformationProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: PublishDataTransformationProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:restore_fhir_datastore, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreFHIRDatastore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreFHIRDatastoreRequest)
        o.output = Shapes::ShapeRef.new(shape: RestoreFHIRDatastoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_data_transformation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDataTransformationJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "datatransformation.",
        }
        o.input = Shapes::ShapeRef.new(shape: StartDataTransformationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDataTransformationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_fhir_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartFHIRExportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartFHIRExportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartFHIRExportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_fhir_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartFHIRImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartFHIRImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartFHIRImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_data_transformation_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataTransformationProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "datatransformation.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateDataTransformationProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataTransformationProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_fhir_datastore, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFHIRDatastore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFHIRDatastoreRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFHIRDatastoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_profile_with_agent, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProfileWithAgent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "datatransformation.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateProfileWithAgentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProfileWithAgentResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotImplementedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ConversationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AgentMessageOutOfContextException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedMIMETypeException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)
    end

  end
end
