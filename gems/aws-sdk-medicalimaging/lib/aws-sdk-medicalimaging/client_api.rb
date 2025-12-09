# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MedicalImaging
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CopiableAttributes = Shapes::StringShape.new(name: 'CopiableAttributes')
    CopyDestinationImageSet = Shapes::StructureShape.new(name: 'CopyDestinationImageSet')
    CopyDestinationImageSetProperties = Shapes::StructureShape.new(name: 'CopyDestinationImageSetProperties')
    CopyImageSetInformation = Shapes::StructureShape.new(name: 'CopyImageSetInformation')
    CopyImageSetRequest = Shapes::StructureShape.new(name: 'CopyImageSetRequest')
    CopyImageSetResponse = Shapes::StructureShape.new(name: 'CopyImageSetResponse')
    CopySourceImageSetInformation = Shapes::StructureShape.new(name: 'CopySourceImageSetInformation')
    CopySourceImageSetProperties = Shapes::StructureShape.new(name: 'CopySourceImageSetProperties')
    CreateDatastoreRequest = Shapes::StructureShape.new(name: 'CreateDatastoreRequest')
    CreateDatastoreResponse = Shapes::StructureShape.new(name: 'CreateDatastoreResponse')
    DICOMAccessionNumber = Shapes::StringShape.new(name: 'DICOMAccessionNumber')
    DICOMAttribute = Shapes::BlobShape.new(name: 'DICOMAttribute')
    DICOMImportJobProperties = Shapes::StructureShape.new(name: 'DICOMImportJobProperties')
    DICOMImportJobSummaries = Shapes::ListShape.new(name: 'DICOMImportJobSummaries')
    DICOMImportJobSummary = Shapes::StructureShape.new(name: 'DICOMImportJobSummary')
    DICOMNumberOfStudyRelatedInstances = Shapes::IntegerShape.new(name: 'DICOMNumberOfStudyRelatedInstances')
    DICOMNumberOfStudyRelatedSeries = Shapes::IntegerShape.new(name: 'DICOMNumberOfStudyRelatedSeries')
    DICOMPatientBirthDate = Shapes::StringShape.new(name: 'DICOMPatientBirthDate')
    DICOMPatientId = Shapes::StringShape.new(name: 'DICOMPatientId')
    DICOMPatientName = Shapes::StringShape.new(name: 'DICOMPatientName')
    DICOMPatientSex = Shapes::StringShape.new(name: 'DICOMPatientSex')
    DICOMSeriesBodyPart = Shapes::StringShape.new(name: 'DICOMSeriesBodyPart')
    DICOMSeriesInstanceUID = Shapes::StringShape.new(name: 'DICOMSeriesInstanceUID')
    DICOMSeriesModality = Shapes::StringShape.new(name: 'DICOMSeriesModality')
    DICOMSeriesNumber = Shapes::IntegerShape.new(name: 'DICOMSeriesNumber')
    DICOMStudyDate = Shapes::StringShape.new(name: 'DICOMStudyDate')
    DICOMStudyDateAndTime = Shapes::StructureShape.new(name: 'DICOMStudyDateAndTime')
    DICOMStudyDescription = Shapes::StringShape.new(name: 'DICOMStudyDescription')
    DICOMStudyId = Shapes::StringShape.new(name: 'DICOMStudyId')
    DICOMStudyInstanceUID = Shapes::StringShape.new(name: 'DICOMStudyInstanceUID')
    DICOMStudyTime = Shapes::StringShape.new(name: 'DICOMStudyTime')
    DICOMTags = Shapes::StructureShape.new(name: 'DICOMTags')
    DICOMUpdates = Shapes::StructureShape.new(name: 'DICOMUpdates')
    DatastoreId = Shapes::StringShape.new(name: 'DatastoreId')
    DatastoreName = Shapes::StringShape.new(name: 'DatastoreName')
    DatastoreProperties = Shapes::StructureShape.new(name: 'DatastoreProperties')
    DatastoreStatus = Shapes::StringShape.new(name: 'DatastoreStatus')
    DatastoreSummaries = Shapes::ListShape.new(name: 'DatastoreSummaries')
    DatastoreSummary = Shapes::StructureShape.new(name: 'DatastoreSummary')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DeleteDatastoreRequest = Shapes::StructureShape.new(name: 'DeleteDatastoreRequest')
    DeleteDatastoreResponse = Shapes::StructureShape.new(name: 'DeleteDatastoreResponse')
    DeleteImageSetRequest = Shapes::StructureShape.new(name: 'DeleteImageSetRequest')
    DeleteImageSetResponse = Shapes::StructureShape.new(name: 'DeleteImageSetResponse')
    GetDICOMImportJobRequest = Shapes::StructureShape.new(name: 'GetDICOMImportJobRequest')
    GetDICOMImportJobResponse = Shapes::StructureShape.new(name: 'GetDICOMImportJobResponse')
    GetDatastoreRequest = Shapes::StructureShape.new(name: 'GetDatastoreRequest')
    GetDatastoreResponse = Shapes::StructureShape.new(name: 'GetDatastoreResponse')
    GetImageFrameRequest = Shapes::StructureShape.new(name: 'GetImageFrameRequest')
    GetImageFrameResponse = Shapes::StructureShape.new(name: 'GetImageFrameResponse')
    GetImageSetMetadataRequest = Shapes::StructureShape.new(name: 'GetImageSetMetadataRequest')
    GetImageSetMetadataResponse = Shapes::StructureShape.new(name: 'GetImageSetMetadataResponse')
    GetImageSetRequest = Shapes::StructureShape.new(name: 'GetImageSetRequest')
    GetImageSetResponse = Shapes::StructureShape.new(name: 'GetImageSetResponse')
    ImageFrameId = Shapes::StringShape.new(name: 'ImageFrameId')
    ImageFrameInformation = Shapes::StructureShape.new(name: 'ImageFrameInformation')
    ImageSetExternalVersionId = Shapes::StringShape.new(name: 'ImageSetExternalVersionId')
    ImageSetId = Shapes::StringShape.new(name: 'ImageSetId')
    ImageSetMetadataBlob = Shapes::BlobShape.new(name: 'ImageSetMetadataBlob', streaming: true)
    ImageSetProperties = Shapes::StructureShape.new(name: 'ImageSetProperties')
    ImageSetPropertiesList = Shapes::ListShape.new(name: 'ImageSetPropertiesList')
    ImageSetState = Shapes::StringShape.new(name: 'ImageSetState')
    ImageSetWorkflowStatus = Shapes::StringShape.new(name: 'ImageSetWorkflowStatus')
    ImageSetsMetadataSummaries = Shapes::ListShape.new(name: 'ImageSetsMetadataSummaries')
    ImageSetsMetadataSummary = Shapes::StructureShape.new(name: 'ImageSetsMetadataSummary')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobName = Shapes::StringShape.new(name: 'JobName')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    LambdaArn = Shapes::StringShape.new(name: 'LambdaArn')
    ListDICOMImportJobsRequest = Shapes::StructureShape.new(name: 'ListDICOMImportJobsRequest')
    ListDICOMImportJobsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListDICOMImportJobsRequestMaxResultsInteger')
    ListDICOMImportJobsResponse = Shapes::StructureShape.new(name: 'ListDICOMImportJobsResponse')
    ListDatastoresRequest = Shapes::StructureShape.new(name: 'ListDatastoresRequest')
    ListDatastoresRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListDatastoresRequestMaxResultsInteger')
    ListDatastoresResponse = Shapes::StructureShape.new(name: 'ListDatastoresResponse')
    ListImageSetVersionsRequest = Shapes::StructureShape.new(name: 'ListImageSetVersionsRequest')
    ListImageSetVersionsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListImageSetVersionsRequestMaxResultsInteger')
    ListImageSetVersionsResponse = Shapes::StructureShape.new(name: 'ListImageSetVersionsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LosslessStorageFormat = Shapes::StringShape.new(name: 'LosslessStorageFormat')
    Message = Shapes::StringShape.new(name: 'Message')
    MetadataCopies = Shapes::StructureShape.new(name: 'MetadataCopies')
    MetadataUpdates = Shapes::UnionShape.new(name: 'MetadataUpdates')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Operator = Shapes::StringShape.new(name: 'Operator')
    Overrides = Shapes::StructureShape.new(name: 'Overrides')
    PayloadBlob = Shapes::BlobShape.new(name: 'PayloadBlob', streaming: true)
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SearchByAttributeValue = Shapes::UnionShape.new(name: 'SearchByAttributeValue')
    SearchCriteria = Shapes::StructureShape.new(name: 'SearchCriteria')
    SearchCriteriaFiltersList = Shapes::ListShape.new(name: 'SearchCriteriaFiltersList')
    SearchFilter = Shapes::StructureShape.new(name: 'SearchFilter')
    SearchFilterValuesList = Shapes::ListShape.new(name: 'SearchFilterValuesList')
    SearchImageSetsRequest = Shapes::StructureShape.new(name: 'SearchImageSetsRequest')
    SearchImageSetsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'SearchImageSetsRequestMaxResultsInteger')
    SearchImageSetsResponse = Shapes::StructureShape.new(name: 'SearchImageSetsResponse')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Sort = Shapes::StructureShape.new(name: 'Sort')
    SortField = Shapes::StringShape.new(name: 'SortField')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StartDICOMImportJobRequest = Shapes::StructureShape.new(name: 'StartDICOMImportJobRequest')
    StartDICOMImportJobResponse = Shapes::StructureShape.new(name: 'StartDICOMImportJobResponse')
    StorageTier = Shapes::StringShape.new(name: 'StorageTier')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateImageSetMetadataRequest = Shapes::StructureShape.new(name: 'UpdateImageSetMetadataRequest')
    UpdateImageSetMetadataResponse = Shapes::StructureShape.new(name: 'UpdateImageSetMetadataResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CopyDestinationImageSet.add_member(:image_set_id, Shapes::ShapeRef.new(shape: ImageSetId, required: true, location_name: "imageSetId"))
    CopyDestinationImageSet.add_member(:latest_version_id, Shapes::ShapeRef.new(shape: ImageSetExternalVersionId, required: true, location_name: "latestVersionId"))
    CopyDestinationImageSet.struct_class = Types::CopyDestinationImageSet

    CopyDestinationImageSetProperties.add_member(:image_set_id, Shapes::ShapeRef.new(shape: ImageSetId, required: true, location_name: "imageSetId"))
    CopyDestinationImageSetProperties.add_member(:latest_version_id, Shapes::ShapeRef.new(shape: ImageSetExternalVersionId, required: true, location_name: "latestVersionId"))
    CopyDestinationImageSetProperties.add_member(:image_set_state, Shapes::ShapeRef.new(shape: ImageSetState, location_name: "imageSetState"))
    CopyDestinationImageSetProperties.add_member(:image_set_workflow_status, Shapes::ShapeRef.new(shape: ImageSetWorkflowStatus, location_name: "imageSetWorkflowStatus"))
    CopyDestinationImageSetProperties.add_member(:created_at, Shapes::ShapeRef.new(shape: Date, location_name: "createdAt"))
    CopyDestinationImageSetProperties.add_member(:updated_at, Shapes::ShapeRef.new(shape: Date, location_name: "updatedAt"))
    CopyDestinationImageSetProperties.add_member(:image_set_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "imageSetArn"))
    CopyDestinationImageSetProperties.struct_class = Types::CopyDestinationImageSetProperties

    CopyImageSetInformation.add_member(:source_image_set, Shapes::ShapeRef.new(shape: CopySourceImageSetInformation, required: true, location_name: "sourceImageSet"))
    CopyImageSetInformation.add_member(:destination_image_set, Shapes::ShapeRef.new(shape: CopyDestinationImageSet, location_name: "destinationImageSet"))
    CopyImageSetInformation.struct_class = Types::CopyImageSetInformation

    CopyImageSetRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location: "uri", location_name: "datastoreId"))
    CopyImageSetRequest.add_member(:source_image_set_id, Shapes::ShapeRef.new(shape: ImageSetId, required: true, location: "uri", location_name: "sourceImageSetId"))
    CopyImageSetRequest.add_member(:copy_image_set_information, Shapes::ShapeRef.new(shape: CopyImageSetInformation, required: true, location_name: "copyImageSetInformation"))
    CopyImageSetRequest.add_member(:force, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "force"))
    CopyImageSetRequest.add_member(:promote_to_primary, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "promoteToPrimary"))
    CopyImageSetRequest.struct_class = Types::CopyImageSetRequest
    CopyImageSetRequest[:payload] = :copy_image_set_information
    CopyImageSetRequest[:payload_member] = CopyImageSetRequest.member(:copy_image_set_information)

    CopyImageSetResponse.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "datastoreId"))
    CopyImageSetResponse.add_member(:source_image_set_properties, Shapes::ShapeRef.new(shape: CopySourceImageSetProperties, required: true, location_name: "sourceImageSetProperties"))
    CopyImageSetResponse.add_member(:destination_image_set_properties, Shapes::ShapeRef.new(shape: CopyDestinationImageSetProperties, required: true, location_name: "destinationImageSetProperties"))
    CopyImageSetResponse.struct_class = Types::CopyImageSetResponse

    CopySourceImageSetInformation.add_member(:latest_version_id, Shapes::ShapeRef.new(shape: ImageSetExternalVersionId, required: true, location_name: "latestVersionId"))
    CopySourceImageSetInformation.add_member(:dicom_copies, Shapes::ShapeRef.new(shape: MetadataCopies, location_name: "DICOMCopies"))
    CopySourceImageSetInformation.struct_class = Types::CopySourceImageSetInformation

    CopySourceImageSetProperties.add_member(:image_set_id, Shapes::ShapeRef.new(shape: ImageSetId, required: true, location_name: "imageSetId"))
    CopySourceImageSetProperties.add_member(:latest_version_id, Shapes::ShapeRef.new(shape: ImageSetExternalVersionId, required: true, location_name: "latestVersionId"))
    CopySourceImageSetProperties.add_member(:image_set_state, Shapes::ShapeRef.new(shape: ImageSetState, location_name: "imageSetState"))
    CopySourceImageSetProperties.add_member(:image_set_workflow_status, Shapes::ShapeRef.new(shape: ImageSetWorkflowStatus, location_name: "imageSetWorkflowStatus"))
    CopySourceImageSetProperties.add_member(:created_at, Shapes::ShapeRef.new(shape: Date, location_name: "createdAt"))
    CopySourceImageSetProperties.add_member(:updated_at, Shapes::ShapeRef.new(shape: Date, location_name: "updatedAt"))
    CopySourceImageSetProperties.add_member(:image_set_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "imageSetArn"))
    CopySourceImageSetProperties.struct_class = Types::CopySourceImageSetProperties

    CreateDatastoreRequest.add_member(:datastore_name, Shapes::ShapeRef.new(shape: DatastoreName, location_name: "datastoreName"))
    CreateDatastoreRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateDatastoreRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateDatastoreRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateDatastoreRequest.add_member(:lambda_authorizer_arn, Shapes::ShapeRef.new(shape: LambdaArn, location_name: "lambdaAuthorizerArn"))
    CreateDatastoreRequest.add_member(:lossless_storage_format, Shapes::ShapeRef.new(shape: LosslessStorageFormat, location_name: "losslessStorageFormat"))
    CreateDatastoreRequest.struct_class = Types::CreateDatastoreRequest

    CreateDatastoreResponse.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "datastoreId"))
    CreateDatastoreResponse.add_member(:datastore_status, Shapes::ShapeRef.new(shape: DatastoreStatus, required: true, location_name: "datastoreStatus"))
    CreateDatastoreResponse.struct_class = Types::CreateDatastoreResponse

    DICOMImportJobProperties.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    DICOMImportJobProperties.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "jobName"))
    DICOMImportJobProperties.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "jobStatus"))
    DICOMImportJobProperties.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "datastoreId"))
    DICOMImportJobProperties.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "dataAccessRoleArn"))
    DICOMImportJobProperties.add_member(:ended_at, Shapes::ShapeRef.new(shape: Date, location_name: "endedAt"))
    DICOMImportJobProperties.add_member(:submitted_at, Shapes::ShapeRef.new(shape: Date, location_name: "submittedAt"))
    DICOMImportJobProperties.add_member(:input_s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "inputS3Uri"))
    DICOMImportJobProperties.add_member(:output_s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "outputS3Uri"))
    DICOMImportJobProperties.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    DICOMImportJobProperties.struct_class = Types::DICOMImportJobProperties

    DICOMImportJobSummaries.member = Shapes::ShapeRef.new(shape: DICOMImportJobSummary)

    DICOMImportJobSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    DICOMImportJobSummary.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "jobName"))
    DICOMImportJobSummary.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "jobStatus"))
    DICOMImportJobSummary.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "datastoreId"))
    DICOMImportJobSummary.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "dataAccessRoleArn"))
    DICOMImportJobSummary.add_member(:ended_at, Shapes::ShapeRef.new(shape: Date, location_name: "endedAt"))
    DICOMImportJobSummary.add_member(:submitted_at, Shapes::ShapeRef.new(shape: Date, location_name: "submittedAt"))
    DICOMImportJobSummary.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    DICOMImportJobSummary.struct_class = Types::DICOMImportJobSummary

    DICOMStudyDateAndTime.add_member(:dicom_study_date, Shapes::ShapeRef.new(shape: DICOMStudyDate, required: true, location_name: "DICOMStudyDate"))
    DICOMStudyDateAndTime.add_member(:dicom_study_time, Shapes::ShapeRef.new(shape: DICOMStudyTime, location_name: "DICOMStudyTime"))
    DICOMStudyDateAndTime.struct_class = Types::DICOMStudyDateAndTime

    DICOMTags.add_member(:dicom_patient_id, Shapes::ShapeRef.new(shape: DICOMPatientId, location_name: "DICOMPatientId"))
    DICOMTags.add_member(:dicom_patient_name, Shapes::ShapeRef.new(shape: DICOMPatientName, location_name: "DICOMPatientName"))
    DICOMTags.add_member(:dicom_patient_birth_date, Shapes::ShapeRef.new(shape: DICOMPatientBirthDate, location_name: "DICOMPatientBirthDate"))
    DICOMTags.add_member(:dicom_patient_sex, Shapes::ShapeRef.new(shape: DICOMPatientSex, location_name: "DICOMPatientSex"))
    DICOMTags.add_member(:dicom_study_instance_uid, Shapes::ShapeRef.new(shape: DICOMStudyInstanceUID, location_name: "DICOMStudyInstanceUID"))
    DICOMTags.add_member(:dicom_study_id, Shapes::ShapeRef.new(shape: DICOMStudyId, location_name: "DICOMStudyId"))
    DICOMTags.add_member(:dicom_study_description, Shapes::ShapeRef.new(shape: DICOMStudyDescription, location_name: "DICOMStudyDescription"))
    DICOMTags.add_member(:dicom_number_of_study_related_series, Shapes::ShapeRef.new(shape: DICOMNumberOfStudyRelatedSeries, location_name: "DICOMNumberOfStudyRelatedSeries"))
    DICOMTags.add_member(:dicom_number_of_study_related_instances, Shapes::ShapeRef.new(shape: DICOMNumberOfStudyRelatedInstances, location_name: "DICOMNumberOfStudyRelatedInstances"))
    DICOMTags.add_member(:dicom_accession_number, Shapes::ShapeRef.new(shape: DICOMAccessionNumber, location_name: "DICOMAccessionNumber"))
    DICOMTags.add_member(:dicom_series_instance_uid, Shapes::ShapeRef.new(shape: DICOMSeriesInstanceUID, location_name: "DICOMSeriesInstanceUID"))
    DICOMTags.add_member(:dicom_series_modality, Shapes::ShapeRef.new(shape: DICOMSeriesModality, location_name: "DICOMSeriesModality"))
    DICOMTags.add_member(:dicom_series_body_part, Shapes::ShapeRef.new(shape: DICOMSeriesBodyPart, location_name: "DICOMSeriesBodyPart"))
    DICOMTags.add_member(:dicom_series_number, Shapes::ShapeRef.new(shape: DICOMSeriesNumber, location_name: "DICOMSeriesNumber"))
    DICOMTags.add_member(:dicom_study_date, Shapes::ShapeRef.new(shape: DICOMStudyDate, location_name: "DICOMStudyDate"))
    DICOMTags.add_member(:dicom_study_time, Shapes::ShapeRef.new(shape: DICOMStudyTime, location_name: "DICOMStudyTime"))
    DICOMTags.struct_class = Types::DICOMTags

    DICOMUpdates.add_member(:removable_attributes, Shapes::ShapeRef.new(shape: DICOMAttribute, location_name: "removableAttributes"))
    DICOMUpdates.add_member(:updatable_attributes, Shapes::ShapeRef.new(shape: DICOMAttribute, location_name: "updatableAttributes"))
    DICOMUpdates.struct_class = Types::DICOMUpdates

    DatastoreProperties.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "datastoreId"))
    DatastoreProperties.add_member(:datastore_name, Shapes::ShapeRef.new(shape: DatastoreName, required: true, location_name: "datastoreName"))
    DatastoreProperties.add_member(:datastore_status, Shapes::ShapeRef.new(shape: DatastoreStatus, required: true, location_name: "datastoreStatus"))
    DatastoreProperties.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    DatastoreProperties.add_member(:lambda_authorizer_arn, Shapes::ShapeRef.new(shape: LambdaArn, location_name: "lambdaAuthorizerArn"))
    DatastoreProperties.add_member(:lossless_storage_format, Shapes::ShapeRef.new(shape: LosslessStorageFormat, location_name: "losslessStorageFormat"))
    DatastoreProperties.add_member(:datastore_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "datastoreArn"))
    DatastoreProperties.add_member(:created_at, Shapes::ShapeRef.new(shape: Date, location_name: "createdAt"))
    DatastoreProperties.add_member(:updated_at, Shapes::ShapeRef.new(shape: Date, location_name: "updatedAt"))
    DatastoreProperties.struct_class = Types::DatastoreProperties

    DatastoreSummaries.member = Shapes::ShapeRef.new(shape: DatastoreSummary)

    DatastoreSummary.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "datastoreId"))
    DatastoreSummary.add_member(:datastore_name, Shapes::ShapeRef.new(shape: DatastoreName, required: true, location_name: "datastoreName"))
    DatastoreSummary.add_member(:datastore_status, Shapes::ShapeRef.new(shape: DatastoreStatus, required: true, location_name: "datastoreStatus"))
    DatastoreSummary.add_member(:datastore_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "datastoreArn"))
    DatastoreSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Date, location_name: "createdAt"))
    DatastoreSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Date, location_name: "updatedAt"))
    DatastoreSummary.struct_class = Types::DatastoreSummary

    DeleteDatastoreRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location: "uri", location_name: "datastoreId"))
    DeleteDatastoreRequest.struct_class = Types::DeleteDatastoreRequest

    DeleteDatastoreResponse.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "datastoreId"))
    DeleteDatastoreResponse.add_member(:datastore_status, Shapes::ShapeRef.new(shape: DatastoreStatus, required: true, location_name: "datastoreStatus"))
    DeleteDatastoreResponse.struct_class = Types::DeleteDatastoreResponse

    DeleteImageSetRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location: "uri", location_name: "datastoreId"))
    DeleteImageSetRequest.add_member(:image_set_id, Shapes::ShapeRef.new(shape: ImageSetId, required: true, location: "uri", location_name: "imageSetId"))
    DeleteImageSetRequest.struct_class = Types::DeleteImageSetRequest

    DeleteImageSetResponse.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "datastoreId"))
    DeleteImageSetResponse.add_member(:image_set_id, Shapes::ShapeRef.new(shape: ImageSetId, required: true, location_name: "imageSetId"))
    DeleteImageSetResponse.add_member(:image_set_state, Shapes::ShapeRef.new(shape: ImageSetState, required: true, location_name: "imageSetState"))
    DeleteImageSetResponse.add_member(:image_set_workflow_status, Shapes::ShapeRef.new(shape: ImageSetWorkflowStatus, required: true, location_name: "imageSetWorkflowStatus"))
    DeleteImageSetResponse.struct_class = Types::DeleteImageSetResponse

    GetDICOMImportJobRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location: "uri", location_name: "datastoreId"))
    GetDICOMImportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    GetDICOMImportJobRequest.struct_class = Types::GetDICOMImportJobRequest

    GetDICOMImportJobResponse.add_member(:job_properties, Shapes::ShapeRef.new(shape: DICOMImportJobProperties, required: true, location_name: "jobProperties"))
    GetDICOMImportJobResponse.struct_class = Types::GetDICOMImportJobResponse

    GetDatastoreRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location: "uri", location_name: "datastoreId"))
    GetDatastoreRequest.struct_class = Types::GetDatastoreRequest

    GetDatastoreResponse.add_member(:datastore_properties, Shapes::ShapeRef.new(shape: DatastoreProperties, required: true, location_name: "datastoreProperties"))
    GetDatastoreResponse.struct_class = Types::GetDatastoreResponse

    GetImageFrameRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location: "uri", location_name: "datastoreId"))
    GetImageFrameRequest.add_member(:image_set_id, Shapes::ShapeRef.new(shape: ImageSetId, required: true, location: "uri", location_name: "imageSetId"))
    GetImageFrameRequest.add_member(:image_frame_information, Shapes::ShapeRef.new(shape: ImageFrameInformation, required: true, location_name: "imageFrameInformation"))
    GetImageFrameRequest.struct_class = Types::GetImageFrameRequest
    GetImageFrameRequest[:payload] = :image_frame_information
    GetImageFrameRequest[:payload_member] = GetImageFrameRequest.member(:image_frame_information)

    GetImageFrameResponse.add_member(:image_frame_blob, Shapes::ShapeRef.new(shape: PayloadBlob, required: true, location_name: "imageFrameBlob"))
    GetImageFrameResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Type"))
    GetImageFrameResponse.struct_class = Types::GetImageFrameResponse
    GetImageFrameResponse[:payload] = :image_frame_blob
    GetImageFrameResponse[:payload_member] = GetImageFrameResponse.member(:image_frame_blob)

    GetImageSetMetadataRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location: "uri", location_name: "datastoreId"))
    GetImageSetMetadataRequest.add_member(:image_set_id, Shapes::ShapeRef.new(shape: ImageSetId, required: true, location: "uri", location_name: "imageSetId"))
    GetImageSetMetadataRequest.add_member(:version_id, Shapes::ShapeRef.new(shape: ImageSetExternalVersionId, location: "querystring", location_name: "version"))
    GetImageSetMetadataRequest.struct_class = Types::GetImageSetMetadataRequest

    GetImageSetMetadataResponse.add_member(:image_set_metadata_blob, Shapes::ShapeRef.new(shape: ImageSetMetadataBlob, required: true, location_name: "imageSetMetadataBlob"))
    GetImageSetMetadataResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Type"))
    GetImageSetMetadataResponse.add_member(:content_encoding, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Encoding"))
    GetImageSetMetadataResponse.struct_class = Types::GetImageSetMetadataResponse
    GetImageSetMetadataResponse[:payload] = :image_set_metadata_blob
    GetImageSetMetadataResponse[:payload_member] = GetImageSetMetadataResponse.member(:image_set_metadata_blob)

    GetImageSetRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location: "uri", location_name: "datastoreId"))
    GetImageSetRequest.add_member(:image_set_id, Shapes::ShapeRef.new(shape: ImageSetId, required: true, location: "uri", location_name: "imageSetId"))
    GetImageSetRequest.add_member(:version_id, Shapes::ShapeRef.new(shape: ImageSetExternalVersionId, location: "querystring", location_name: "version"))
    GetImageSetRequest.struct_class = Types::GetImageSetRequest

    GetImageSetResponse.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "datastoreId"))
    GetImageSetResponse.add_member(:image_set_id, Shapes::ShapeRef.new(shape: ImageSetId, required: true, location_name: "imageSetId"))
    GetImageSetResponse.add_member(:version_id, Shapes::ShapeRef.new(shape: ImageSetExternalVersionId, required: true, location_name: "versionId"))
    GetImageSetResponse.add_member(:image_set_state, Shapes::ShapeRef.new(shape: ImageSetState, required: true, location_name: "imageSetState"))
    GetImageSetResponse.add_member(:image_set_workflow_status, Shapes::ShapeRef.new(shape: ImageSetWorkflowStatus, location_name: "imageSetWorkflowStatus"))
    GetImageSetResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Date, location_name: "createdAt"))
    GetImageSetResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Date, location_name: "updatedAt"))
    GetImageSetResponse.add_member(:deleted_at, Shapes::ShapeRef.new(shape: Date, location_name: "deletedAt"))
    GetImageSetResponse.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    GetImageSetResponse.add_member(:image_set_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "imageSetArn"))
    GetImageSetResponse.add_member(:overrides, Shapes::ShapeRef.new(shape: Overrides, location_name: "overrides"))
    GetImageSetResponse.add_member(:is_primary, Shapes::ShapeRef.new(shape: Boolean, location_name: "isPrimary"))
    GetImageSetResponse.add_member(:last_accessed_at, Shapes::ShapeRef.new(shape: Date, location_name: "lastAccessedAt"))
    GetImageSetResponse.add_member(:storage_tier, Shapes::ShapeRef.new(shape: StorageTier, location_name: "storageTier"))
    GetImageSetResponse.struct_class = Types::GetImageSetResponse

    ImageFrameInformation.add_member(:image_frame_id, Shapes::ShapeRef.new(shape: ImageFrameId, required: true, location_name: "imageFrameId"))
    ImageFrameInformation.struct_class = Types::ImageFrameInformation

    ImageSetProperties.add_member(:image_set_id, Shapes::ShapeRef.new(shape: ImageSetId, required: true, location_name: "imageSetId"))
    ImageSetProperties.add_member(:version_id, Shapes::ShapeRef.new(shape: ImageSetExternalVersionId, required: true, location_name: "versionId"))
    ImageSetProperties.add_member(:image_set_state, Shapes::ShapeRef.new(shape: ImageSetState, required: true, location_name: "imageSetState"))
    ImageSetProperties.add_member(:image_set_workflow_status, Shapes::ShapeRef.new(shape: ImageSetWorkflowStatus, location_name: "ImageSetWorkflowStatus"))
    ImageSetProperties.add_member(:created_at, Shapes::ShapeRef.new(shape: Date, location_name: "createdAt"))
    ImageSetProperties.add_member(:updated_at, Shapes::ShapeRef.new(shape: Date, location_name: "updatedAt"))
    ImageSetProperties.add_member(:deleted_at, Shapes::ShapeRef.new(shape: Date, location_name: "deletedAt"))
    ImageSetProperties.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    ImageSetProperties.add_member(:overrides, Shapes::ShapeRef.new(shape: Overrides, location_name: "overrides"))
    ImageSetProperties.add_member(:is_primary, Shapes::ShapeRef.new(shape: Boolean, location_name: "isPrimary"))
    ImageSetProperties.struct_class = Types::ImageSetProperties

    ImageSetPropertiesList.member = Shapes::ShapeRef.new(shape: ImageSetProperties)

    ImageSetsMetadataSummaries.member = Shapes::ShapeRef.new(shape: ImageSetsMetadataSummary)

    ImageSetsMetadataSummary.add_member(:image_set_id, Shapes::ShapeRef.new(shape: ImageSetId, required: true, location_name: "imageSetId"))
    ImageSetsMetadataSummary.add_member(:version, Shapes::ShapeRef.new(shape: Integer, location_name: "version"))
    ImageSetsMetadataSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Date, location_name: "createdAt"))
    ImageSetsMetadataSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Date, location_name: "updatedAt"))
    ImageSetsMetadataSummary.add_member(:last_accessed_at, Shapes::ShapeRef.new(shape: Date, location_name: "lastAccessedAt"))
    ImageSetsMetadataSummary.add_member(:storage_tier, Shapes::ShapeRef.new(shape: StorageTier, location_name: "storageTier"))
    ImageSetsMetadataSummary.add_member(:dicom_tags, Shapes::ShapeRef.new(shape: DICOMTags, location_name: "DICOMTags"))
    ImageSetsMetadataSummary.add_member(:is_primary, Shapes::ShapeRef.new(shape: Boolean, location_name: "isPrimary"))
    ImageSetsMetadataSummary.struct_class = Types::ImageSetsMetadataSummary

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListDICOMImportJobsRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location: "uri", location_name: "datastoreId"))
    ListDICOMImportJobsRequest.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location: "querystring", location_name: "jobStatus"))
    ListDICOMImportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDICOMImportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListDICOMImportJobsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListDICOMImportJobsRequest.struct_class = Types::ListDICOMImportJobsRequest

    ListDICOMImportJobsResponse.add_member(:job_summaries, Shapes::ShapeRef.new(shape: DICOMImportJobSummaries, required: true, location_name: "jobSummaries"))
    ListDICOMImportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDICOMImportJobsResponse.struct_class = Types::ListDICOMImportJobsResponse

    ListDatastoresRequest.add_member(:datastore_status, Shapes::ShapeRef.new(shape: DatastoreStatus, location: "querystring", location_name: "datastoreStatus"))
    ListDatastoresRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDatastoresRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListDatastoresRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListDatastoresRequest.struct_class = Types::ListDatastoresRequest

    ListDatastoresResponse.add_member(:datastore_summaries, Shapes::ShapeRef.new(shape: DatastoreSummaries, location_name: "datastoreSummaries"))
    ListDatastoresResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDatastoresResponse.struct_class = Types::ListDatastoresResponse

    ListImageSetVersionsRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location: "uri", location_name: "datastoreId"))
    ListImageSetVersionsRequest.add_member(:image_set_id, Shapes::ShapeRef.new(shape: ImageSetId, required: true, location: "uri", location_name: "imageSetId"))
    ListImageSetVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListImageSetVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListImageSetVersionsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListImageSetVersionsRequest.struct_class = Types::ListImageSetVersionsRequest

    ListImageSetVersionsResponse.add_member(:image_set_properties_list, Shapes::ShapeRef.new(shape: ImageSetPropertiesList, required: true, location_name: "imageSetPropertiesList"))
    ListImageSetVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListImageSetVersionsResponse.struct_class = Types::ListImageSetVersionsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MetadataCopies.add_member(:copiable_attributes, Shapes::ShapeRef.new(shape: CopiableAttributes, required: true, location_name: "copiableAttributes"))
    MetadataCopies.struct_class = Types::MetadataCopies

    MetadataUpdates.add_member(:dicom_updates, Shapes::ShapeRef.new(shape: DICOMUpdates, location_name: "DICOMUpdates"))
    MetadataUpdates.add_member(:revert_to_version_id, Shapes::ShapeRef.new(shape: ImageSetExternalVersionId, location_name: "revertToVersionId"))
    MetadataUpdates.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MetadataUpdates.add_member_subclass(:dicom_updates, Types::MetadataUpdates::DicomUpdates)
    MetadataUpdates.add_member_subclass(:revert_to_version_id, Types::MetadataUpdates::RevertToVersionId)
    MetadataUpdates.add_member_subclass(:unknown, Types::MetadataUpdates::Unknown)
    MetadataUpdates.struct_class = Types::MetadataUpdates

    Overrides.add_member(:forced, Shapes::ShapeRef.new(shape: Boolean, location_name: "forced"))
    Overrides.struct_class = Types::Overrides

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SearchByAttributeValue.add_member(:dicom_patient_id, Shapes::ShapeRef.new(shape: DICOMPatientId, location_name: "DICOMPatientId"))
    SearchByAttributeValue.add_member(:dicom_accession_number, Shapes::ShapeRef.new(shape: DICOMAccessionNumber, location_name: "DICOMAccessionNumber"))
    SearchByAttributeValue.add_member(:dicom_study_id, Shapes::ShapeRef.new(shape: DICOMStudyId, location_name: "DICOMStudyId"))
    SearchByAttributeValue.add_member(:dicom_study_instance_uid, Shapes::ShapeRef.new(shape: DICOMStudyInstanceUID, location_name: "DICOMStudyInstanceUID"))
    SearchByAttributeValue.add_member(:dicom_series_instance_uid, Shapes::ShapeRef.new(shape: DICOMSeriesInstanceUID, location_name: "DICOMSeriesInstanceUID"))
    SearchByAttributeValue.add_member(:created_at, Shapes::ShapeRef.new(shape: Date, location_name: "createdAt"))
    SearchByAttributeValue.add_member(:updated_at, Shapes::ShapeRef.new(shape: Date, location_name: "updatedAt"))
    SearchByAttributeValue.add_member(:dicom_study_date_and_time, Shapes::ShapeRef.new(shape: DICOMStudyDateAndTime, location_name: "DICOMStudyDateAndTime"))
    SearchByAttributeValue.add_member(:is_primary, Shapes::ShapeRef.new(shape: Boolean, location_name: "isPrimary"))
    SearchByAttributeValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SearchByAttributeValue.add_member_subclass(:dicom_patient_id, Types::SearchByAttributeValue::DicomPatientId)
    SearchByAttributeValue.add_member_subclass(:dicom_accession_number, Types::SearchByAttributeValue::DicomAccessionNumber)
    SearchByAttributeValue.add_member_subclass(:dicom_study_id, Types::SearchByAttributeValue::DicomStudyId)
    SearchByAttributeValue.add_member_subclass(:dicom_study_instance_uid, Types::SearchByAttributeValue::DicomStudyInstanceUid)
    SearchByAttributeValue.add_member_subclass(:dicom_series_instance_uid, Types::SearchByAttributeValue::DicomSeriesInstanceUid)
    SearchByAttributeValue.add_member_subclass(:created_at, Types::SearchByAttributeValue::CreatedAt)
    SearchByAttributeValue.add_member_subclass(:updated_at, Types::SearchByAttributeValue::UpdatedAt)
    SearchByAttributeValue.add_member_subclass(:dicom_study_date_and_time, Types::SearchByAttributeValue::DicomStudyDateAndTime)
    SearchByAttributeValue.add_member_subclass(:is_primary, Types::SearchByAttributeValue::IsPrimary)
    SearchByAttributeValue.add_member_subclass(:unknown, Types::SearchByAttributeValue::Unknown)
    SearchByAttributeValue.struct_class = Types::SearchByAttributeValue

    SearchCriteria.add_member(:filters, Shapes::ShapeRef.new(shape: SearchCriteriaFiltersList, location_name: "filters"))
    SearchCriteria.add_member(:sort, Shapes::ShapeRef.new(shape: Sort, location_name: "sort"))
    SearchCriteria.struct_class = Types::SearchCriteria

    SearchCriteriaFiltersList.member = Shapes::ShapeRef.new(shape: SearchFilter)

    SearchFilter.add_member(:values, Shapes::ShapeRef.new(shape: SearchFilterValuesList, required: true, location_name: "values"))
    SearchFilter.add_member(:operator, Shapes::ShapeRef.new(shape: Operator, required: true, location_name: "operator"))
    SearchFilter.struct_class = Types::SearchFilter

    SearchFilterValuesList.member = Shapes::ShapeRef.new(shape: SearchByAttributeValue)

    SearchImageSetsRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location: "uri", location_name: "datastoreId"))
    SearchImageSetsRequest.add_member(:search_criteria, Shapes::ShapeRef.new(shape: SearchCriteria, location_name: "searchCriteria"))
    SearchImageSetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SearchImageSetsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    SearchImageSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    SearchImageSetsRequest.struct_class = Types::SearchImageSetsRequest
    SearchImageSetsRequest[:payload] = :search_criteria
    SearchImageSetsRequest[:payload_member] = SearchImageSetsRequest.member(:search_criteria)

    SearchImageSetsResponse.add_member(:image_sets_metadata_summaries, Shapes::ShapeRef.new(shape: ImageSetsMetadataSummaries, required: true, location_name: "imageSetsMetadataSummaries"))
    SearchImageSetsResponse.add_member(:sort, Shapes::ShapeRef.new(shape: Sort, location_name: "sort"))
    SearchImageSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchImageSetsResponse.struct_class = Types::SearchImageSetsResponse

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Sort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "sortOrder"))
    Sort.add_member(:sort_field, Shapes::ShapeRef.new(shape: SortField, required: true, location_name: "sortField"))
    Sort.struct_class = Types::Sort

    StartDICOMImportJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "jobName"))
    StartDICOMImportJobRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "dataAccessRoleArn"))
    StartDICOMImportJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StartDICOMImportJobRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location: "uri", location_name: "datastoreId"))
    StartDICOMImportJobRequest.add_member(:input_s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "inputS3Uri"))
    StartDICOMImportJobRequest.add_member(:output_s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "outputS3Uri"))
    StartDICOMImportJobRequest.add_member(:input_owner_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "inputOwnerAccountId"))
    StartDICOMImportJobRequest.struct_class = Types::StartDICOMImportJobRequest

    StartDICOMImportJobResponse.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "datastoreId"))
    StartDICOMImportJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    StartDICOMImportJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "jobStatus"))
    StartDICOMImportJobResponse.add_member(:submitted_at, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "submittedAt"))
    StartDICOMImportJobResponse.struct_class = Types::StartDICOMImportJobResponse

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateImageSetMetadataRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location: "uri", location_name: "datastoreId"))
    UpdateImageSetMetadataRequest.add_member(:image_set_id, Shapes::ShapeRef.new(shape: ImageSetId, required: true, location: "uri", location_name: "imageSetId"))
    UpdateImageSetMetadataRequest.add_member(:latest_version_id, Shapes::ShapeRef.new(shape: ImageSetExternalVersionId, required: true, location: "querystring", location_name: "latestVersion"))
    UpdateImageSetMetadataRequest.add_member(:force, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "force"))
    UpdateImageSetMetadataRequest.add_member(:update_image_set_metadata_updates, Shapes::ShapeRef.new(shape: MetadataUpdates, required: true, location_name: "updateImageSetMetadataUpdates"))
    UpdateImageSetMetadataRequest.struct_class = Types::UpdateImageSetMetadataRequest
    UpdateImageSetMetadataRequest[:payload] = :update_image_set_metadata_updates
    UpdateImageSetMetadataRequest[:payload_member] = UpdateImageSetMetadataRequest.member(:update_image_set_metadata_updates)

    UpdateImageSetMetadataResponse.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "datastoreId"))
    UpdateImageSetMetadataResponse.add_member(:image_set_id, Shapes::ShapeRef.new(shape: ImageSetId, required: true, location_name: "imageSetId"))
    UpdateImageSetMetadataResponse.add_member(:latest_version_id, Shapes::ShapeRef.new(shape: ImageSetExternalVersionId, required: true, location_name: "latestVersionId"))
    UpdateImageSetMetadataResponse.add_member(:image_set_state, Shapes::ShapeRef.new(shape: ImageSetState, required: true, location_name: "imageSetState"))
    UpdateImageSetMetadataResponse.add_member(:image_set_workflow_status, Shapes::ShapeRef.new(shape: ImageSetWorkflowStatus, location_name: "imageSetWorkflowStatus"))
    UpdateImageSetMetadataResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Date, location_name: "createdAt"))
    UpdateImageSetMetadataResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Date, location_name: "updatedAt"))
    UpdateImageSetMetadataResponse.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    UpdateImageSetMetadataResponse.struct_class = Types::UpdateImageSetMetadataResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-07-19"

      api.metadata = {
        "apiVersion" => "2023-07-19",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "medical-imaging",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Health Imaging",
        "serviceId" => "Medical Imaging",
        "signatureVersion" => "v4",
        "signingName" => "medical-imaging",
        "uid" => "medical-imaging-2023-07-19",
      }

      api.add_operation(:copy_image_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopyImageSet"
        o.http_method = "POST"
        o.http_request_uri = "/datastore/{datastoreId}/imageSet/{sourceImageSetId}/copyImageSet"
        o.endpoint_pattern = {
          "hostPrefix" => "runtime-",
        }
        o.input = Shapes::ShapeRef.new(shape: CopyImageSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CopyImageSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_datastore, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDatastore"
        o.http_method = "POST"
        o.http_request_uri = "/datastore"
        o.input = Shapes::ShapeRef.new(shape: CreateDatastoreRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatastoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_datastore, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDatastore"
        o.http_method = "DELETE"
        o.http_request_uri = "/datastore/{datastoreId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDatastoreRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDatastoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_image_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteImageSet"
        o.http_method = "POST"
        o.http_request_uri = "/datastore/{datastoreId}/imageSet/{imageSetId}/deleteImageSet"
        o.endpoint_pattern = {
          "hostPrefix" => "runtime-",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteImageSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteImageSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_dicom_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDICOMImportJob"
        o.http_method = "GET"
        o.http_request_uri = "/getDICOMImportJob/datastore/{datastoreId}/job/{jobId}"
        o.input = Shapes::ShapeRef.new(shape: GetDICOMImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDICOMImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_datastore, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDatastore"
        o.http_method = "GET"
        o.http_request_uri = "/datastore/{datastoreId}"
        o.input = Shapes::ShapeRef.new(shape: GetDatastoreRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDatastoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_image_frame, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetImageFrame"
        o.http_method = "POST"
        o.http_request_uri = "/datastore/{datastoreId}/imageSet/{imageSetId}/getImageFrame"
        o.endpoint_pattern = {
          "hostPrefix" => "runtime-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetImageFrameRequest)
        o.output = Shapes::ShapeRef.new(shape: GetImageFrameResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_image_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetImageSet"
        o.http_method = "POST"
        o.http_request_uri = "/datastore/{datastoreId}/imageSet/{imageSetId}/getImageSet"
        o.endpoint_pattern = {
          "hostPrefix" => "runtime-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetImageSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetImageSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_image_set_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetImageSetMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/datastore/{datastoreId}/imageSet/{imageSetId}/getImageSetMetadata"
        o.endpoint_pattern = {
          "hostPrefix" => "runtime-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetImageSetMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetImageSetMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_dicom_import_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDICOMImportJobs"
        o.http_method = "GET"
        o.http_request_uri = "/listDICOMImportJobs/datastore/{datastoreId}"
        o.input = Shapes::ShapeRef.new(shape: ListDICOMImportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDICOMImportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_datastores, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatastores"
        o.http_method = "GET"
        o.http_request_uri = "/datastore"
        o.input = Shapes::ShapeRef.new(shape: ListDatastoresRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatastoresResponse)
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

      api.add_operation(:list_image_set_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListImageSetVersions"
        o.http_method = "POST"
        o.http_request_uri = "/datastore/{datastoreId}/imageSet/{imageSetId}/listImageSetVersions"
        o.endpoint_pattern = {
          "hostPrefix" => "runtime-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListImageSetVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListImageSetVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:search_image_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchImageSets"
        o.http_method = "POST"
        o.http_request_uri = "/datastore/{datastoreId}/searchImageSets"
        o.endpoint_pattern = {
          "hostPrefix" => "runtime-",
        }
        o.input = Shapes::ShapeRef.new(shape: SearchImageSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchImageSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_dicom_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDICOMImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/startDICOMImportJob/datastore/{datastoreId}"
        o.input = Shapes::ShapeRef.new(shape: StartDICOMImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDICOMImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_image_set_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateImageSetMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/datastore/{datastoreId}/imageSet/{imageSetId}/updateImageSetMetadata"
        o.endpoint_pattern = {
          "hostPrefix" => "runtime-",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateImageSetMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateImageSetMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)
    end

  end
end
