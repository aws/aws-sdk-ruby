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
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    AuthorizationStrategy = Shapes::StringShape.new(name: 'AuthorizationStrategy')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BoundedLengthString = Shapes::StringShape.new(name: 'BoundedLengthString')
    ClientTokenString = Shapes::StringShape.new(name: 'ClientTokenString')
    CmkType = Shapes::StringShape.new(name: 'CmkType')
    ConfigurationMetadata = Shapes::StringShape.new(name: 'ConfigurationMetadata')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateFHIRDatastoreRequest = Shapes::StructureShape.new(name: 'CreateFHIRDatastoreRequest')
    CreateFHIRDatastoreResponse = Shapes::StructureShape.new(name: 'CreateFHIRDatastoreResponse')
    DatastoreArn = Shapes::StringShape.new(name: 'DatastoreArn')
    DatastoreFilter = Shapes::StructureShape.new(name: 'DatastoreFilter')
    DatastoreId = Shapes::StringShape.new(name: 'DatastoreId')
    DatastoreName = Shapes::StringShape.new(name: 'DatastoreName')
    DatastoreProperties = Shapes::StructureShape.new(name: 'DatastoreProperties')
    DatastorePropertiesList = Shapes::ListShape.new(name: 'DatastorePropertiesList')
    DatastoreStatus = Shapes::StringShape.new(name: 'DatastoreStatus')
    DeleteFHIRDatastoreRequest = Shapes::StructureShape.new(name: 'DeleteFHIRDatastoreRequest')
    DeleteFHIRDatastoreResponse = Shapes::StructureShape.new(name: 'DeleteFHIRDatastoreResponse')
    DescribeFHIRDatastoreRequest = Shapes::StructureShape.new(name: 'DescribeFHIRDatastoreRequest')
    DescribeFHIRDatastoreResponse = Shapes::StructureShape.new(name: 'DescribeFHIRDatastoreResponse')
    DescribeFHIRExportJobRequest = Shapes::StructureShape.new(name: 'DescribeFHIRExportJobRequest')
    DescribeFHIRExportJobResponse = Shapes::StructureShape.new(name: 'DescribeFHIRExportJobResponse')
    DescribeFHIRImportJobRequest = Shapes::StructureShape.new(name: 'DescribeFHIRImportJobRequest')
    DescribeFHIRImportJobResponse = Shapes::StructureShape.new(name: 'DescribeFHIRImportJobResponse')
    EncryptionKeyID = Shapes::StringShape.new(name: 'EncryptionKeyID')
    ExportJobProperties = Shapes::StructureShape.new(name: 'ExportJobProperties')
    ExportJobPropertiesList = Shapes::ListShape.new(name: 'ExportJobPropertiesList')
    FHIRVersion = Shapes::StringShape.new(name: 'FHIRVersion')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    IdentityProviderConfiguration = Shapes::StructureShape.new(name: 'IdentityProviderConfiguration')
    ImportJobProperties = Shapes::StructureShape.new(name: 'ImportJobProperties')
    ImportJobPropertiesList = Shapes::ListShape.new(name: 'ImportJobPropertiesList')
    InputDataConfig = Shapes::UnionShape.new(name: 'InputDataConfig')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobName = Shapes::StringShape.new(name: 'JobName')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    KmsEncryptionConfig = Shapes::StructureShape.new(name: 'KmsEncryptionConfig')
    LambdaArn = Shapes::StringShape.new(name: 'LambdaArn')
    ListFHIRDatastoresRequest = Shapes::StructureShape.new(name: 'ListFHIRDatastoresRequest')
    ListFHIRDatastoresResponse = Shapes::StructureShape.new(name: 'ListFHIRDatastoresResponse')
    ListFHIRExportJobsRequest = Shapes::StructureShape.new(name: 'ListFHIRExportJobsRequest')
    ListFHIRExportJobsResponse = Shapes::StructureShape.new(name: 'ListFHIRExportJobsResponse')
    ListFHIRImportJobsRequest = Shapes::StructureShape.new(name: 'ListFHIRImportJobsRequest')
    ListFHIRImportJobsResponse = Shapes::StructureShape.new(name: 'ListFHIRImportJobsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResultsInteger = Shapes::IntegerShape.new(name: 'MaxResultsInteger')
    Message = Shapes::StringShape.new(name: 'Message')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OutputDataConfig = Shapes::UnionShape.new(name: 'OutputDataConfig')
    PreloadDataConfig = Shapes::StructureShape.new(name: 'PreloadDataConfig')
    PreloadDataType = Shapes::StringShape.new(name: 'PreloadDataType')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3Configuration = Shapes::StructureShape.new(name: 'S3Configuration')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SseConfiguration = Shapes::StructureShape.new(name: 'SseConfiguration')
    StartFHIRExportJobRequest = Shapes::StructureShape.new(name: 'StartFHIRExportJobRequest')
    StartFHIRExportJobResponse = Shapes::StructureShape.new(name: 'StartFHIRExportJobResponse')
    StartFHIRImportJobRequest = Shapes::StructureShape.new(name: 'StartFHIRImportJobRequest')
    StartFHIRImportJobResponse = Shapes::StructureShape.new(name: 'StartFHIRImportJobResponse')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateFHIRDatastoreRequest.add_member(:datastore_name, Shapes::ShapeRef.new(shape: DatastoreName, location_name: "DatastoreName"))
    CreateFHIRDatastoreRequest.add_member(:datastore_type_version, Shapes::ShapeRef.new(shape: FHIRVersion, required: true, location_name: "DatastoreTypeVersion"))
    CreateFHIRDatastoreRequest.add_member(:sse_configuration, Shapes::ShapeRef.new(shape: SseConfiguration, location_name: "SseConfiguration"))
    CreateFHIRDatastoreRequest.add_member(:preload_data_config, Shapes::ShapeRef.new(shape: PreloadDataConfig, location_name: "PreloadDataConfig"))
    CreateFHIRDatastoreRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateFHIRDatastoreRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateFHIRDatastoreRequest.add_member(:identity_provider_configuration, Shapes::ShapeRef.new(shape: IdentityProviderConfiguration, location_name: "IdentityProviderConfiguration"))
    CreateFHIRDatastoreRequest.struct_class = Types::CreateFHIRDatastoreRequest

    CreateFHIRDatastoreResponse.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    CreateFHIRDatastoreResponse.add_member(:datastore_arn, Shapes::ShapeRef.new(shape: DatastoreArn, required: true, location_name: "DatastoreArn"))
    CreateFHIRDatastoreResponse.add_member(:datastore_status, Shapes::ShapeRef.new(shape: DatastoreStatus, required: true, location_name: "DatastoreStatus"))
    CreateFHIRDatastoreResponse.add_member(:datastore_endpoint, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "DatastoreEndpoint"))
    CreateFHIRDatastoreResponse.struct_class = Types::CreateFHIRDatastoreResponse

    DatastoreFilter.add_member(:datastore_name, Shapes::ShapeRef.new(shape: DatastoreName, location_name: "DatastoreName"))
    DatastoreFilter.add_member(:datastore_status, Shapes::ShapeRef.new(shape: DatastoreStatus, location_name: "DatastoreStatus"))
    DatastoreFilter.add_member(:created_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedBefore"))
    DatastoreFilter.add_member(:created_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAfter"))
    DatastoreFilter.struct_class = Types::DatastoreFilter

    DatastoreProperties.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    DatastoreProperties.add_member(:datastore_arn, Shapes::ShapeRef.new(shape: DatastoreArn, required: true, location_name: "DatastoreArn"))
    DatastoreProperties.add_member(:datastore_name, Shapes::ShapeRef.new(shape: DatastoreName, location_name: "DatastoreName"))
    DatastoreProperties.add_member(:datastore_status, Shapes::ShapeRef.new(shape: DatastoreStatus, required: true, location_name: "DatastoreStatus"))
    DatastoreProperties.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    DatastoreProperties.add_member(:datastore_type_version, Shapes::ShapeRef.new(shape: FHIRVersion, required: true, location_name: "DatastoreTypeVersion"))
    DatastoreProperties.add_member(:datastore_endpoint, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DatastoreEndpoint"))
    DatastoreProperties.add_member(:sse_configuration, Shapes::ShapeRef.new(shape: SseConfiguration, location_name: "SseConfiguration"))
    DatastoreProperties.add_member(:preload_data_config, Shapes::ShapeRef.new(shape: PreloadDataConfig, location_name: "PreloadDataConfig"))
    DatastoreProperties.add_member(:identity_provider_configuration, Shapes::ShapeRef.new(shape: IdentityProviderConfiguration, location_name: "IdentityProviderConfiguration"))
    DatastoreProperties.struct_class = Types::DatastoreProperties

    DatastorePropertiesList.member = Shapes::ShapeRef.new(shape: DatastoreProperties)

    DeleteFHIRDatastoreRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    DeleteFHIRDatastoreRequest.struct_class = Types::DeleteFHIRDatastoreRequest

    DeleteFHIRDatastoreResponse.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    DeleteFHIRDatastoreResponse.add_member(:datastore_arn, Shapes::ShapeRef.new(shape: DatastoreArn, required: true, location_name: "DatastoreArn"))
    DeleteFHIRDatastoreResponse.add_member(:datastore_status, Shapes::ShapeRef.new(shape: DatastoreStatus, required: true, location_name: "DatastoreStatus"))
    DeleteFHIRDatastoreResponse.add_member(:datastore_endpoint, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "DatastoreEndpoint"))
    DeleteFHIRDatastoreResponse.struct_class = Types::DeleteFHIRDatastoreResponse

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

    ExportJobProperties.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    ExportJobProperties.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    ExportJobProperties.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "JobStatus"))
    ExportJobProperties.add_member(:submit_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "SubmitTime"))
    ExportJobProperties.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    ExportJobProperties.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    ExportJobProperties.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    ExportJobProperties.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "DataAccessRoleArn"))
    ExportJobProperties.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ExportJobProperties.struct_class = Types::ExportJobProperties

    ExportJobPropertiesList.member = Shapes::ShapeRef.new(shape: ExportJobProperties)

    IdentityProviderConfiguration.add_member(:authorization_strategy, Shapes::ShapeRef.new(shape: AuthorizationStrategy, required: true, location_name: "AuthorizationStrategy"))
    IdentityProviderConfiguration.add_member(:fine_grained_authorization_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "FineGrainedAuthorizationEnabled"))
    IdentityProviderConfiguration.add_member(:metadata, Shapes::ShapeRef.new(shape: ConfigurationMetadata, location_name: "Metadata"))
    IdentityProviderConfiguration.add_member(:idp_lambda_arn, Shapes::ShapeRef.new(shape: LambdaArn, location_name: "IdpLambdaArn"))
    IdentityProviderConfiguration.struct_class = Types::IdentityProviderConfiguration

    ImportJobProperties.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    ImportJobProperties.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    ImportJobProperties.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "JobStatus"))
    ImportJobProperties.add_member(:submit_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "SubmitTime"))
    ImportJobProperties.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    ImportJobProperties.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    ImportJobProperties.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    ImportJobProperties.add_member(:job_output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: "JobOutputDataConfig"))
    ImportJobProperties.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "DataAccessRoleArn"))
    ImportJobProperties.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ImportJobProperties.struct_class = Types::ImportJobProperties

    ImportJobPropertiesList.member = Shapes::ShapeRef.new(shape: ImportJobProperties)

    InputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "S3Uri"))
    InputDataConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    InputDataConfig.add_member_subclass(:s3_uri, Types::InputDataConfig::S3Uri)
    InputDataConfig.add_member_subclass(:unknown, Types::InputDataConfig::Unknown)
    InputDataConfig.struct_class = Types::InputDataConfig

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    KmsEncryptionConfig.add_member(:cmk_type, Shapes::ShapeRef.new(shape: CmkType, required: true, location_name: "CmkType"))
    KmsEncryptionConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: EncryptionKeyID, location_name: "KmsKeyId"))
    KmsEncryptionConfig.struct_class = Types::KmsEncryptionConfig

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
    ListFHIRExportJobsRequest.add_member(:submitted_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmittedBefore"))
    ListFHIRExportJobsRequest.add_member(:submitted_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmittedAfter"))
    ListFHIRExportJobsRequest.struct_class = Types::ListFHIRExportJobsRequest

    ListFHIRExportJobsResponse.add_member(:export_job_properties_list, Shapes::ShapeRef.new(shape: ExportJobPropertiesList, required: true, location_name: "ExportJobPropertiesList"))
    ListFHIRExportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFHIRExportJobsResponse.struct_class = Types::ListFHIRExportJobsResponse

    ListFHIRImportJobsRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    ListFHIRImportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFHIRImportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListFHIRImportJobsRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    ListFHIRImportJobsRequest.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    ListFHIRImportJobsRequest.add_member(:submitted_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmittedBefore"))
    ListFHIRImportJobsRequest.add_member(:submitted_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmittedAfter"))
    ListFHIRImportJobsRequest.struct_class = Types::ListFHIRImportJobsRequest

    ListFHIRImportJobsResponse.add_member(:import_job_properties_list, Shapes::ShapeRef.new(shape: ImportJobPropertiesList, required: true, location_name: "ImportJobPropertiesList"))
    ListFHIRImportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFHIRImportJobsResponse.struct_class = Types::ListFHIRImportJobsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    OutputDataConfig.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3Configuration, location_name: "S3Configuration"))
    OutputDataConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    OutputDataConfig.add_member_subclass(:s3_configuration, Types::OutputDataConfig::S3Configuration)
    OutputDataConfig.add_member_subclass(:unknown, Types::OutputDataConfig::Unknown)
    OutputDataConfig.struct_class = Types::OutputDataConfig

    PreloadDataConfig.add_member(:preload_data_type, Shapes::ShapeRef.new(shape: PreloadDataType, required: true, location_name: "PreloadDataType"))
    PreloadDataConfig.struct_class = Types::PreloadDataConfig

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3Configuration.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    S3Configuration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: EncryptionKeyID, required: true, location_name: "KmsKeyId"))
    S3Configuration.struct_class = Types::S3Configuration

    SseConfiguration.add_member(:kms_encryption_config, Shapes::ShapeRef.new(shape: KmsEncryptionConfig, required: true, location_name: "KmsEncryptionConfig"))
    SseConfiguration.struct_class = Types::SseConfiguration

    StartFHIRExportJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    StartFHIRExportJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    StartFHIRExportJobRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    StartFHIRExportJobRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    StartFHIRExportJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
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
    StartFHIRImportJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    StartFHIRImportJobRequest.struct_class = Types::StartFHIRImportJobRequest

    StartFHIRImportJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    StartFHIRImportJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "JobStatus"))
    StartFHIRImportJobResponse.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, location_name: "DatastoreId"))
    StartFHIRImportJobResponse.struct_class = Types::StartFHIRImportJobResponse

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-07-01"

      api.metadata = {
        "apiVersion" => "2017-07-01",
        "endpointPrefix" => "healthlake",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceAbbreviation" => "HealthLake",
        "serviceFullName" => "Amazon HealthLake",
        "serviceId" => "HealthLake",
        "signatureVersion" => "v4",
        "signingName" => "healthlake",
        "targetPrefix" => "HealthLake",
        "uid" => "healthlake-2017-07-01",
      }

      api.add_operation(:create_fhir_datastore, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFHIRDatastore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateFHIRDatastoreRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFHIRDatastoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_fhir_datastore, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFHIRDatastore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFHIRDatastoreRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFHIRDatastoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_fhir_datastore, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFHIRDatastore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFHIRDatastoreRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFHIRDatastoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_fhir_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFHIRExportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFHIRExportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFHIRExportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_fhir_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFHIRImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFHIRImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFHIRImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_fhir_datastores, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFHIRDatastores"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFHIRDatastoresRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFHIRDatastoresResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_fhir_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartFHIRExportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartFHIRExportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartFHIRExportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_fhir_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartFHIRImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartFHIRImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartFHIRImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
