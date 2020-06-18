# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ComprehendMedical
  # @api private
  module ClientApi

    include Seahorse::Model

    AnyLengthString = Shapes::StringShape.new(name: 'AnyLengthString')
    Attribute = Shapes::StructureShape.new(name: 'Attribute')
    AttributeList = Shapes::ListShape.new(name: 'AttributeList')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    BoundedLengthString = Shapes::StringShape.new(name: 'BoundedLengthString')
    ClientRequestTokenString = Shapes::StringShape.new(name: 'ClientRequestTokenString')
    ComprehendMedicalAsyncJobFilter = Shapes::StructureShape.new(name: 'ComprehendMedicalAsyncJobFilter')
    ComprehendMedicalAsyncJobProperties = Shapes::StructureShape.new(name: 'ComprehendMedicalAsyncJobProperties')
    ComprehendMedicalAsyncJobPropertiesList = Shapes::ListShape.new(name: 'ComprehendMedicalAsyncJobPropertiesList')
    DescribeEntitiesDetectionV2JobRequest = Shapes::StructureShape.new(name: 'DescribeEntitiesDetectionV2JobRequest')
    DescribeEntitiesDetectionV2JobResponse = Shapes::StructureShape.new(name: 'DescribeEntitiesDetectionV2JobResponse')
    DescribeICD10CMInferenceJobRequest = Shapes::StructureShape.new(name: 'DescribeICD10CMInferenceJobRequest')
    DescribeICD10CMInferenceJobResponse = Shapes::StructureShape.new(name: 'DescribeICD10CMInferenceJobResponse')
    DescribePHIDetectionJobRequest = Shapes::StructureShape.new(name: 'DescribePHIDetectionJobRequest')
    DescribePHIDetectionJobResponse = Shapes::StructureShape.new(name: 'DescribePHIDetectionJobResponse')
    DescribeRxNormInferenceJobRequest = Shapes::StructureShape.new(name: 'DescribeRxNormInferenceJobRequest')
    DescribeRxNormInferenceJobResponse = Shapes::StructureShape.new(name: 'DescribeRxNormInferenceJobResponse')
    DetectEntitiesRequest = Shapes::StructureShape.new(name: 'DetectEntitiesRequest')
    DetectEntitiesResponse = Shapes::StructureShape.new(name: 'DetectEntitiesResponse')
    DetectEntitiesV2Request = Shapes::StructureShape.new(name: 'DetectEntitiesV2Request')
    DetectEntitiesV2Response = Shapes::StructureShape.new(name: 'DetectEntitiesV2Response')
    DetectPHIRequest = Shapes::StructureShape.new(name: 'DetectPHIRequest')
    DetectPHIResponse = Shapes::StructureShape.new(name: 'DetectPHIResponse')
    Entity = Shapes::StructureShape.new(name: 'Entity')
    EntityList = Shapes::ListShape.new(name: 'EntityList')
    EntitySubType = Shapes::StringShape.new(name: 'EntitySubType')
    EntityType = Shapes::StringShape.new(name: 'EntityType')
    Float = Shapes::FloatShape.new(name: 'Float')
    ICD10CMAttribute = Shapes::StructureShape.new(name: 'ICD10CMAttribute')
    ICD10CMAttributeList = Shapes::ListShape.new(name: 'ICD10CMAttributeList')
    ICD10CMAttributeType = Shapes::StringShape.new(name: 'ICD10CMAttributeType')
    ICD10CMConcept = Shapes::StructureShape.new(name: 'ICD10CMConcept')
    ICD10CMConceptList = Shapes::ListShape.new(name: 'ICD10CMConceptList')
    ICD10CMEntity = Shapes::StructureShape.new(name: 'ICD10CMEntity')
    ICD10CMEntityCategory = Shapes::StringShape.new(name: 'ICD10CMEntityCategory')
    ICD10CMEntityList = Shapes::ListShape.new(name: 'ICD10CMEntityList')
    ICD10CMEntityType = Shapes::StringShape.new(name: 'ICD10CMEntityType')
    ICD10CMTrait = Shapes::StructureShape.new(name: 'ICD10CMTrait')
    ICD10CMTraitList = Shapes::ListShape.new(name: 'ICD10CMTraitList')
    ICD10CMTraitName = Shapes::StringShape.new(name: 'ICD10CMTraitName')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    InferICD10CMRequest = Shapes::StructureShape.new(name: 'InferICD10CMRequest')
    InferICD10CMResponse = Shapes::StructureShape.new(name: 'InferICD10CMResponse')
    InferRxNormRequest = Shapes::StructureShape.new(name: 'InferRxNormRequest')
    InferRxNormResponse = Shapes::StructureShape.new(name: 'InferRxNormResponse')
    InputDataConfig = Shapes::StructureShape.new(name: 'InputDataConfig')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidEncodingException = Shapes::StructureShape.new(name: 'InvalidEncodingException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobName = Shapes::StringShape.new(name: 'JobName')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    KMSKey = Shapes::StringShape.new(name: 'KMSKey')
    LanguageCode = Shapes::StringShape.new(name: 'LanguageCode')
    ListEntitiesDetectionV2JobsRequest = Shapes::StructureShape.new(name: 'ListEntitiesDetectionV2JobsRequest')
    ListEntitiesDetectionV2JobsResponse = Shapes::StructureShape.new(name: 'ListEntitiesDetectionV2JobsResponse')
    ListICD10CMInferenceJobsRequest = Shapes::StructureShape.new(name: 'ListICD10CMInferenceJobsRequest')
    ListICD10CMInferenceJobsResponse = Shapes::StructureShape.new(name: 'ListICD10CMInferenceJobsResponse')
    ListPHIDetectionJobsRequest = Shapes::StructureShape.new(name: 'ListPHIDetectionJobsRequest')
    ListPHIDetectionJobsResponse = Shapes::StructureShape.new(name: 'ListPHIDetectionJobsResponse')
    ListRxNormInferenceJobsRequest = Shapes::StructureShape.new(name: 'ListRxNormInferenceJobsRequest')
    ListRxNormInferenceJobsResponse = Shapes::StructureShape.new(name: 'ListRxNormInferenceJobsResponse')
    ManifestFilePath = Shapes::StringShape.new(name: 'ManifestFilePath')
    MaxResultsInteger = Shapes::IntegerShape.new(name: 'MaxResultsInteger')
    ModelVersion = Shapes::StringShape.new(name: 'ModelVersion')
    OntologyLinkingBoundedLengthString = Shapes::StringShape.new(name: 'OntologyLinkingBoundedLengthString')
    OutputDataConfig = Shapes::StructureShape.new(name: 'OutputDataConfig')
    RelationshipType = Shapes::StringShape.new(name: 'RelationshipType')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RxNormAttribute = Shapes::StructureShape.new(name: 'RxNormAttribute')
    RxNormAttributeList = Shapes::ListShape.new(name: 'RxNormAttributeList')
    RxNormAttributeType = Shapes::StringShape.new(name: 'RxNormAttributeType')
    RxNormConcept = Shapes::StructureShape.new(name: 'RxNormConcept')
    RxNormConceptList = Shapes::ListShape.new(name: 'RxNormConceptList')
    RxNormEntity = Shapes::StructureShape.new(name: 'RxNormEntity')
    RxNormEntityCategory = Shapes::StringShape.new(name: 'RxNormEntityCategory')
    RxNormEntityList = Shapes::ListShape.new(name: 'RxNormEntityList')
    RxNormEntityType = Shapes::StringShape.new(name: 'RxNormEntityType')
    RxNormTrait = Shapes::StructureShape.new(name: 'RxNormTrait')
    RxNormTraitList = Shapes::ListShape.new(name: 'RxNormTraitList')
    RxNormTraitName = Shapes::StringShape.new(name: 'RxNormTraitName')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    StartEntitiesDetectionV2JobRequest = Shapes::StructureShape.new(name: 'StartEntitiesDetectionV2JobRequest')
    StartEntitiesDetectionV2JobResponse = Shapes::StructureShape.new(name: 'StartEntitiesDetectionV2JobResponse')
    StartICD10CMInferenceJobRequest = Shapes::StructureShape.new(name: 'StartICD10CMInferenceJobRequest')
    StartICD10CMInferenceJobResponse = Shapes::StructureShape.new(name: 'StartICD10CMInferenceJobResponse')
    StartPHIDetectionJobRequest = Shapes::StructureShape.new(name: 'StartPHIDetectionJobRequest')
    StartPHIDetectionJobResponse = Shapes::StructureShape.new(name: 'StartPHIDetectionJobResponse')
    StartRxNormInferenceJobRequest = Shapes::StructureShape.new(name: 'StartRxNormInferenceJobRequest')
    StartRxNormInferenceJobResponse = Shapes::StructureShape.new(name: 'StartRxNormInferenceJobResponse')
    StopEntitiesDetectionV2JobRequest = Shapes::StructureShape.new(name: 'StopEntitiesDetectionV2JobRequest')
    StopEntitiesDetectionV2JobResponse = Shapes::StructureShape.new(name: 'StopEntitiesDetectionV2JobResponse')
    StopICD10CMInferenceJobRequest = Shapes::StructureShape.new(name: 'StopICD10CMInferenceJobRequest')
    StopICD10CMInferenceJobResponse = Shapes::StructureShape.new(name: 'StopICD10CMInferenceJobResponse')
    StopPHIDetectionJobRequest = Shapes::StructureShape.new(name: 'StopPHIDetectionJobRequest')
    StopPHIDetectionJobResponse = Shapes::StructureShape.new(name: 'StopPHIDetectionJobResponse')
    StopRxNormInferenceJobRequest = Shapes::StructureShape.new(name: 'StopRxNormInferenceJobRequest')
    StopRxNormInferenceJobResponse = Shapes::StructureShape.new(name: 'StopRxNormInferenceJobResponse')
    String = Shapes::StringShape.new(name: 'String')
    TextSizeLimitExceededException = Shapes::StructureShape.new(name: 'TextSizeLimitExceededException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    Trait = Shapes::StructureShape.new(name: 'Trait')
    TraitList = Shapes::ListShape.new(name: 'TraitList')
    UnmappedAttribute = Shapes::StructureShape.new(name: 'UnmappedAttribute')
    UnmappedAttributeList = Shapes::ListShape.new(name: 'UnmappedAttributeList')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    Attribute.add_member(:type, Shapes::ShapeRef.new(shape: EntitySubType, location_name: "Type"))
    Attribute.add_member(:score, Shapes::ShapeRef.new(shape: Float, location_name: "Score"))
    Attribute.add_member(:relationship_score, Shapes::ShapeRef.new(shape: Float, location_name: "RelationshipScore"))
    Attribute.add_member(:relationship_type, Shapes::ShapeRef.new(shape: RelationshipType, location_name: "RelationshipType"))
    Attribute.add_member(:id, Shapes::ShapeRef.new(shape: Integer, location_name: "Id"))
    Attribute.add_member(:begin_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "BeginOffset"))
    Attribute.add_member(:end_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "EndOffset"))
    Attribute.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "Text"))
    Attribute.add_member(:category, Shapes::ShapeRef.new(shape: EntityType, location_name: "Category"))
    Attribute.add_member(:traits, Shapes::ShapeRef.new(shape: TraitList, location_name: "Traits"))
    Attribute.struct_class = Types::Attribute

    AttributeList.member = Shapes::ShapeRef.new(shape: Attribute)

    ComprehendMedicalAsyncJobFilter.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    ComprehendMedicalAsyncJobFilter.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    ComprehendMedicalAsyncJobFilter.add_member(:submit_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTimeBefore"))
    ComprehendMedicalAsyncJobFilter.add_member(:submit_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTimeAfter"))
    ComprehendMedicalAsyncJobFilter.struct_class = Types::ComprehendMedicalAsyncJobFilter

    ComprehendMedicalAsyncJobProperties.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    ComprehendMedicalAsyncJobProperties.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    ComprehendMedicalAsyncJobProperties.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    ComprehendMedicalAsyncJobProperties.add_member(:message, Shapes::ShapeRef.new(shape: AnyLengthString, location_name: "Message"))
    ComprehendMedicalAsyncJobProperties.add_member(:submit_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTime"))
    ComprehendMedicalAsyncJobProperties.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    ComprehendMedicalAsyncJobProperties.add_member(:expiration_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpirationTime"))
    ComprehendMedicalAsyncJobProperties.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, location_name: "InputDataConfig"))
    ComprehendMedicalAsyncJobProperties.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: "OutputDataConfig"))
    ComprehendMedicalAsyncJobProperties.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    ComprehendMedicalAsyncJobProperties.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "DataAccessRoleArn"))
    ComprehendMedicalAsyncJobProperties.add_member(:manifest_file_path, Shapes::ShapeRef.new(shape: ManifestFilePath, location_name: "ManifestFilePath"))
    ComprehendMedicalAsyncJobProperties.add_member(:kms_key, Shapes::ShapeRef.new(shape: KMSKey, location_name: "KMSKey"))
    ComprehendMedicalAsyncJobProperties.add_member(:model_version, Shapes::ShapeRef.new(shape: ModelVersion, location_name: "ModelVersion"))
    ComprehendMedicalAsyncJobProperties.struct_class = Types::ComprehendMedicalAsyncJobProperties

    ComprehendMedicalAsyncJobPropertiesList.member = Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobProperties)

    DescribeEntitiesDetectionV2JobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribeEntitiesDetectionV2JobRequest.struct_class = Types::DescribeEntitiesDetectionV2JobRequest

    DescribeEntitiesDetectionV2JobResponse.add_member(:comprehend_medical_async_job_properties, Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobProperties, location_name: "ComprehendMedicalAsyncJobProperties"))
    DescribeEntitiesDetectionV2JobResponse.struct_class = Types::DescribeEntitiesDetectionV2JobResponse

    DescribeICD10CMInferenceJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribeICD10CMInferenceJobRequest.struct_class = Types::DescribeICD10CMInferenceJobRequest

    DescribeICD10CMInferenceJobResponse.add_member(:comprehend_medical_async_job_properties, Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobProperties, location_name: "ComprehendMedicalAsyncJobProperties"))
    DescribeICD10CMInferenceJobResponse.struct_class = Types::DescribeICD10CMInferenceJobResponse

    DescribePHIDetectionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribePHIDetectionJobRequest.struct_class = Types::DescribePHIDetectionJobRequest

    DescribePHIDetectionJobResponse.add_member(:comprehend_medical_async_job_properties, Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobProperties, location_name: "ComprehendMedicalAsyncJobProperties"))
    DescribePHIDetectionJobResponse.struct_class = Types::DescribePHIDetectionJobResponse

    DescribeRxNormInferenceJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribeRxNormInferenceJobRequest.struct_class = Types::DescribeRxNormInferenceJobRequest

    DescribeRxNormInferenceJobResponse.add_member(:comprehend_medical_async_job_properties, Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobProperties, location_name: "ComprehendMedicalAsyncJobProperties"))
    DescribeRxNormInferenceJobResponse.struct_class = Types::DescribeRxNormInferenceJobResponse

    DetectEntitiesRequest.add_member(:text, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "Text"))
    DetectEntitiesRequest.struct_class = Types::DetectEntitiesRequest

    DetectEntitiesResponse.add_member(:entities, Shapes::ShapeRef.new(shape: EntityList, required: true, location_name: "Entities"))
    DetectEntitiesResponse.add_member(:unmapped_attributes, Shapes::ShapeRef.new(shape: UnmappedAttributeList, location_name: "UnmappedAttributes"))
    DetectEntitiesResponse.add_member(:pagination_token, Shapes::ShapeRef.new(shape: String, location_name: "PaginationToken"))
    DetectEntitiesResponse.add_member(:model_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ModelVersion"))
    DetectEntitiesResponse.struct_class = Types::DetectEntitiesResponse

    DetectEntitiesV2Request.add_member(:text, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "Text"))
    DetectEntitiesV2Request.struct_class = Types::DetectEntitiesV2Request

    DetectEntitiesV2Response.add_member(:entities, Shapes::ShapeRef.new(shape: EntityList, required: true, location_name: "Entities"))
    DetectEntitiesV2Response.add_member(:unmapped_attributes, Shapes::ShapeRef.new(shape: UnmappedAttributeList, location_name: "UnmappedAttributes"))
    DetectEntitiesV2Response.add_member(:pagination_token, Shapes::ShapeRef.new(shape: String, location_name: "PaginationToken"))
    DetectEntitiesV2Response.add_member(:model_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ModelVersion"))
    DetectEntitiesV2Response.struct_class = Types::DetectEntitiesV2Response

    DetectPHIRequest.add_member(:text, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "Text"))
    DetectPHIRequest.struct_class = Types::DetectPHIRequest

    DetectPHIResponse.add_member(:entities, Shapes::ShapeRef.new(shape: EntityList, required: true, location_name: "Entities"))
    DetectPHIResponse.add_member(:pagination_token, Shapes::ShapeRef.new(shape: String, location_name: "PaginationToken"))
    DetectPHIResponse.add_member(:model_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ModelVersion"))
    DetectPHIResponse.struct_class = Types::DetectPHIResponse

    Entity.add_member(:id, Shapes::ShapeRef.new(shape: Integer, location_name: "Id"))
    Entity.add_member(:begin_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "BeginOffset"))
    Entity.add_member(:end_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "EndOffset"))
    Entity.add_member(:score, Shapes::ShapeRef.new(shape: Float, location_name: "Score"))
    Entity.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "Text"))
    Entity.add_member(:category, Shapes::ShapeRef.new(shape: EntityType, location_name: "Category"))
    Entity.add_member(:type, Shapes::ShapeRef.new(shape: EntitySubType, location_name: "Type"))
    Entity.add_member(:traits, Shapes::ShapeRef.new(shape: TraitList, location_name: "Traits"))
    Entity.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeList, location_name: "Attributes"))
    Entity.struct_class = Types::Entity

    EntityList.member = Shapes::ShapeRef.new(shape: Entity)

    ICD10CMAttribute.add_member(:type, Shapes::ShapeRef.new(shape: ICD10CMAttributeType, location_name: "Type"))
    ICD10CMAttribute.add_member(:score, Shapes::ShapeRef.new(shape: Float, location_name: "Score"))
    ICD10CMAttribute.add_member(:relationship_score, Shapes::ShapeRef.new(shape: Float, location_name: "RelationshipScore"))
    ICD10CMAttribute.add_member(:id, Shapes::ShapeRef.new(shape: Integer, location_name: "Id"))
    ICD10CMAttribute.add_member(:begin_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "BeginOffset"))
    ICD10CMAttribute.add_member(:end_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "EndOffset"))
    ICD10CMAttribute.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "Text"))
    ICD10CMAttribute.add_member(:traits, Shapes::ShapeRef.new(shape: ICD10CMTraitList, location_name: "Traits"))
    ICD10CMAttribute.struct_class = Types::ICD10CMAttribute

    ICD10CMAttributeList.member = Shapes::ShapeRef.new(shape: ICD10CMAttribute)

    ICD10CMConcept.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ICD10CMConcept.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    ICD10CMConcept.add_member(:score, Shapes::ShapeRef.new(shape: Float, location_name: "Score"))
    ICD10CMConcept.struct_class = Types::ICD10CMConcept

    ICD10CMConceptList.member = Shapes::ShapeRef.new(shape: ICD10CMConcept)

    ICD10CMEntity.add_member(:id, Shapes::ShapeRef.new(shape: Integer, location_name: "Id"))
    ICD10CMEntity.add_member(:text, Shapes::ShapeRef.new(shape: OntologyLinkingBoundedLengthString, location_name: "Text"))
    ICD10CMEntity.add_member(:category, Shapes::ShapeRef.new(shape: ICD10CMEntityCategory, location_name: "Category"))
    ICD10CMEntity.add_member(:type, Shapes::ShapeRef.new(shape: ICD10CMEntityType, location_name: "Type"))
    ICD10CMEntity.add_member(:score, Shapes::ShapeRef.new(shape: Float, location_name: "Score"))
    ICD10CMEntity.add_member(:begin_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "BeginOffset"))
    ICD10CMEntity.add_member(:end_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "EndOffset"))
    ICD10CMEntity.add_member(:attributes, Shapes::ShapeRef.new(shape: ICD10CMAttributeList, location_name: "Attributes"))
    ICD10CMEntity.add_member(:traits, Shapes::ShapeRef.new(shape: ICD10CMTraitList, location_name: "Traits"))
    ICD10CMEntity.add_member(:icd10cm_concepts, Shapes::ShapeRef.new(shape: ICD10CMConceptList, location_name: "ICD10CMConcepts"))
    ICD10CMEntity.struct_class = Types::ICD10CMEntity

    ICD10CMEntityList.member = Shapes::ShapeRef.new(shape: ICD10CMEntity)

    ICD10CMTrait.add_member(:name, Shapes::ShapeRef.new(shape: ICD10CMTraitName, location_name: "Name"))
    ICD10CMTrait.add_member(:score, Shapes::ShapeRef.new(shape: Float, location_name: "Score"))
    ICD10CMTrait.struct_class = Types::ICD10CMTrait

    ICD10CMTraitList.member = Shapes::ShapeRef.new(shape: ICD10CMTrait)

    InferICD10CMRequest.add_member(:text, Shapes::ShapeRef.new(shape: OntologyLinkingBoundedLengthString, required: true, location_name: "Text"))
    InferICD10CMRequest.struct_class = Types::InferICD10CMRequest

    InferICD10CMResponse.add_member(:entities, Shapes::ShapeRef.new(shape: ICD10CMEntityList, required: true, location_name: "Entities"))
    InferICD10CMResponse.add_member(:pagination_token, Shapes::ShapeRef.new(shape: String, location_name: "PaginationToken"))
    InferICD10CMResponse.add_member(:model_version, Shapes::ShapeRef.new(shape: String, location_name: "ModelVersion"))
    InferICD10CMResponse.struct_class = Types::InferICD10CMResponse

    InferRxNormRequest.add_member(:text, Shapes::ShapeRef.new(shape: OntologyLinkingBoundedLengthString, required: true, location_name: "Text"))
    InferRxNormRequest.struct_class = Types::InferRxNormRequest

    InferRxNormResponse.add_member(:entities, Shapes::ShapeRef.new(shape: RxNormEntityList, required: true, location_name: "Entities"))
    InferRxNormResponse.add_member(:pagination_token, Shapes::ShapeRef.new(shape: String, location_name: "PaginationToken"))
    InferRxNormResponse.add_member(:model_version, Shapes::ShapeRef.new(shape: String, location_name: "ModelVersion"))
    InferRxNormResponse.struct_class = Types::InferRxNormResponse

    InputDataConfig.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "S3Bucket"))
    InputDataConfig.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, location_name: "S3Key"))
    InputDataConfig.struct_class = Types::InputDataConfig

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidEncodingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidEncodingException.struct_class = Types::InvalidEncodingException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    ListEntitiesDetectionV2JobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobFilter, location_name: "Filter"))
    ListEntitiesDetectionV2JobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListEntitiesDetectionV2JobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListEntitiesDetectionV2JobsRequest.struct_class = Types::ListEntitiesDetectionV2JobsRequest

    ListEntitiesDetectionV2JobsResponse.add_member(:comprehend_medical_async_job_properties_list, Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobPropertiesList, location_name: "ComprehendMedicalAsyncJobPropertiesList"))
    ListEntitiesDetectionV2JobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListEntitiesDetectionV2JobsResponse.struct_class = Types::ListEntitiesDetectionV2JobsResponse

    ListICD10CMInferenceJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobFilter, location_name: "Filter"))
    ListICD10CMInferenceJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListICD10CMInferenceJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListICD10CMInferenceJobsRequest.struct_class = Types::ListICD10CMInferenceJobsRequest

    ListICD10CMInferenceJobsResponse.add_member(:comprehend_medical_async_job_properties_list, Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobPropertiesList, location_name: "ComprehendMedicalAsyncJobPropertiesList"))
    ListICD10CMInferenceJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListICD10CMInferenceJobsResponse.struct_class = Types::ListICD10CMInferenceJobsResponse

    ListPHIDetectionJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobFilter, location_name: "Filter"))
    ListPHIDetectionJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListPHIDetectionJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListPHIDetectionJobsRequest.struct_class = Types::ListPHIDetectionJobsRequest

    ListPHIDetectionJobsResponse.add_member(:comprehend_medical_async_job_properties_list, Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobPropertiesList, location_name: "ComprehendMedicalAsyncJobPropertiesList"))
    ListPHIDetectionJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListPHIDetectionJobsResponse.struct_class = Types::ListPHIDetectionJobsResponse

    ListRxNormInferenceJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobFilter, location_name: "Filter"))
    ListRxNormInferenceJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListRxNormInferenceJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListRxNormInferenceJobsRequest.struct_class = Types::ListRxNormInferenceJobsRequest

    ListRxNormInferenceJobsResponse.add_member(:comprehend_medical_async_job_properties_list, Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobPropertiesList, location_name: "ComprehendMedicalAsyncJobPropertiesList"))
    ListRxNormInferenceJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListRxNormInferenceJobsResponse.struct_class = Types::ListRxNormInferenceJobsResponse

    OutputDataConfig.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "S3Bucket"))
    OutputDataConfig.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, location_name: "S3Key"))
    OutputDataConfig.struct_class = Types::OutputDataConfig

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RxNormAttribute.add_member(:type, Shapes::ShapeRef.new(shape: RxNormAttributeType, location_name: "Type"))
    RxNormAttribute.add_member(:score, Shapes::ShapeRef.new(shape: Float, location_name: "Score"))
    RxNormAttribute.add_member(:relationship_score, Shapes::ShapeRef.new(shape: Float, location_name: "RelationshipScore"))
    RxNormAttribute.add_member(:id, Shapes::ShapeRef.new(shape: Integer, location_name: "Id"))
    RxNormAttribute.add_member(:begin_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "BeginOffset"))
    RxNormAttribute.add_member(:end_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "EndOffset"))
    RxNormAttribute.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "Text"))
    RxNormAttribute.add_member(:traits, Shapes::ShapeRef.new(shape: RxNormTraitList, location_name: "Traits"))
    RxNormAttribute.struct_class = Types::RxNormAttribute

    RxNormAttributeList.member = Shapes::ShapeRef.new(shape: RxNormAttribute)

    RxNormConcept.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    RxNormConcept.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    RxNormConcept.add_member(:score, Shapes::ShapeRef.new(shape: Float, location_name: "Score"))
    RxNormConcept.struct_class = Types::RxNormConcept

    RxNormConceptList.member = Shapes::ShapeRef.new(shape: RxNormConcept)

    RxNormEntity.add_member(:id, Shapes::ShapeRef.new(shape: Integer, location_name: "Id"))
    RxNormEntity.add_member(:text, Shapes::ShapeRef.new(shape: OntologyLinkingBoundedLengthString, location_name: "Text"))
    RxNormEntity.add_member(:category, Shapes::ShapeRef.new(shape: RxNormEntityCategory, location_name: "Category"))
    RxNormEntity.add_member(:type, Shapes::ShapeRef.new(shape: RxNormEntityType, location_name: "Type"))
    RxNormEntity.add_member(:score, Shapes::ShapeRef.new(shape: Float, location_name: "Score"))
    RxNormEntity.add_member(:begin_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "BeginOffset"))
    RxNormEntity.add_member(:end_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "EndOffset"))
    RxNormEntity.add_member(:attributes, Shapes::ShapeRef.new(shape: RxNormAttributeList, location_name: "Attributes"))
    RxNormEntity.add_member(:traits, Shapes::ShapeRef.new(shape: RxNormTraitList, location_name: "Traits"))
    RxNormEntity.add_member(:rx_norm_concepts, Shapes::ShapeRef.new(shape: RxNormConceptList, location_name: "RxNormConcepts"))
    RxNormEntity.struct_class = Types::RxNormEntity

    RxNormEntityList.member = Shapes::ShapeRef.new(shape: RxNormEntity)

    RxNormTrait.add_member(:name, Shapes::ShapeRef.new(shape: RxNormTraitName, location_name: "Name"))
    RxNormTrait.add_member(:score, Shapes::ShapeRef.new(shape: Float, location_name: "Score"))
    RxNormTrait.struct_class = Types::RxNormTrait

    RxNormTraitList.member = Shapes::ShapeRef.new(shape: RxNormTrait)

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    StartEntitiesDetectionV2JobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    StartEntitiesDetectionV2JobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    StartEntitiesDetectionV2JobRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    StartEntitiesDetectionV2JobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    StartEntitiesDetectionV2JobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    StartEntitiesDetectionV2JobRequest.add_member(:kms_key, Shapes::ShapeRef.new(shape: KMSKey, location_name: "KMSKey"))
    StartEntitiesDetectionV2JobRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    StartEntitiesDetectionV2JobRequest.struct_class = Types::StartEntitiesDetectionV2JobRequest

    StartEntitiesDetectionV2JobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartEntitiesDetectionV2JobResponse.struct_class = Types::StartEntitiesDetectionV2JobResponse

    StartICD10CMInferenceJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    StartICD10CMInferenceJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    StartICD10CMInferenceJobRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    StartICD10CMInferenceJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    StartICD10CMInferenceJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    StartICD10CMInferenceJobRequest.add_member(:kms_key, Shapes::ShapeRef.new(shape: KMSKey, location_name: "KMSKey"))
    StartICD10CMInferenceJobRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    StartICD10CMInferenceJobRequest.struct_class = Types::StartICD10CMInferenceJobRequest

    StartICD10CMInferenceJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartICD10CMInferenceJobResponse.struct_class = Types::StartICD10CMInferenceJobResponse

    StartPHIDetectionJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    StartPHIDetectionJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    StartPHIDetectionJobRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    StartPHIDetectionJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    StartPHIDetectionJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    StartPHIDetectionJobRequest.add_member(:kms_key, Shapes::ShapeRef.new(shape: KMSKey, location_name: "KMSKey"))
    StartPHIDetectionJobRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    StartPHIDetectionJobRequest.struct_class = Types::StartPHIDetectionJobRequest

    StartPHIDetectionJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartPHIDetectionJobResponse.struct_class = Types::StartPHIDetectionJobResponse

    StartRxNormInferenceJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    StartRxNormInferenceJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    StartRxNormInferenceJobRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    StartRxNormInferenceJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    StartRxNormInferenceJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    StartRxNormInferenceJobRequest.add_member(:kms_key, Shapes::ShapeRef.new(shape: KMSKey, location_name: "KMSKey"))
    StartRxNormInferenceJobRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    StartRxNormInferenceJobRequest.struct_class = Types::StartRxNormInferenceJobRequest

    StartRxNormInferenceJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartRxNormInferenceJobResponse.struct_class = Types::StartRxNormInferenceJobResponse

    StopEntitiesDetectionV2JobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    StopEntitiesDetectionV2JobRequest.struct_class = Types::StopEntitiesDetectionV2JobRequest

    StopEntitiesDetectionV2JobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StopEntitiesDetectionV2JobResponse.struct_class = Types::StopEntitiesDetectionV2JobResponse

    StopICD10CMInferenceJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    StopICD10CMInferenceJobRequest.struct_class = Types::StopICD10CMInferenceJobRequest

    StopICD10CMInferenceJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StopICD10CMInferenceJobResponse.struct_class = Types::StopICD10CMInferenceJobResponse

    StopPHIDetectionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    StopPHIDetectionJobRequest.struct_class = Types::StopPHIDetectionJobRequest

    StopPHIDetectionJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StopPHIDetectionJobResponse.struct_class = Types::StopPHIDetectionJobResponse

    StopRxNormInferenceJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    StopRxNormInferenceJobRequest.struct_class = Types::StopRxNormInferenceJobRequest

    StopRxNormInferenceJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StopRxNormInferenceJobResponse.struct_class = Types::StopRxNormInferenceJobResponse

    TextSizeLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TextSizeLimitExceededException.struct_class = Types::TextSizeLimitExceededException

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    Trait.add_member(:name, Shapes::ShapeRef.new(shape: AttributeName, location_name: "Name"))
    Trait.add_member(:score, Shapes::ShapeRef.new(shape: Float, location_name: "Score"))
    Trait.struct_class = Types::Trait

    TraitList.member = Shapes::ShapeRef.new(shape: Trait)

    UnmappedAttribute.add_member(:type, Shapes::ShapeRef.new(shape: EntityType, location_name: "Type"))
    UnmappedAttribute.add_member(:attribute, Shapes::ShapeRef.new(shape: Attribute, location_name: "Attribute"))
    UnmappedAttribute.struct_class = Types::UnmappedAttribute

    UnmappedAttributeList.member = Shapes::ShapeRef.new(shape: UnmappedAttribute)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-10-30"

      api.metadata = {
        "apiVersion" => "2018-10-30",
        "endpointPrefix" => "comprehendmedical",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "ComprehendMedical",
        "serviceFullName" => "AWS Comprehend Medical",
        "serviceId" => "ComprehendMedical",
        "signatureVersion" => "v4",
        "signingName" => "comprehendmedical",
        "targetPrefix" => "ComprehendMedical_20181030",
        "uid" => "comprehendmedical-2018-10-30",
      }

      api.add_operation(:describe_entities_detection_v2_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEntitiesDetectionV2Job"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEntitiesDetectionV2JobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEntitiesDetectionV2JobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_icd10cm_inference_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeICD10CMInferenceJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeICD10CMInferenceJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeICD10CMInferenceJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_phi_detection_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePHIDetectionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePHIDetectionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePHIDetectionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_rx_norm_inference_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRxNormInferenceJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRxNormInferenceJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRxNormInferenceJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:detect_entities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetectEntities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DetectEntitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: DetectEntitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEncodingException)
        o.errors << Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
      end)

      api.add_operation(:detect_entities_v2, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetectEntitiesV2"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetectEntitiesV2Request)
        o.output = Shapes::ShapeRef.new(shape: DetectEntitiesV2Response)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEncodingException)
        o.errors << Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
      end)

      api.add_operation(:detect_phi, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetectPHI"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetectPHIRequest)
        o.output = Shapes::ShapeRef.new(shape: DetectPHIResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEncodingException)
        o.errors << Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
      end)

      api.add_operation(:infer_icd10cm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InferICD10CM"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: InferICD10CMRequest)
        o.output = Shapes::ShapeRef.new(shape: InferICD10CMResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEncodingException)
        o.errors << Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
      end)

      api.add_operation(:infer_rx_norm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InferRxNorm"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: InferRxNormRequest)
        o.output = Shapes::ShapeRef.new(shape: InferRxNormResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEncodingException)
        o.errors << Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
      end)

      api.add_operation(:list_entities_detection_v2_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEntitiesDetectionV2Jobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEntitiesDetectionV2JobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEntitiesDetectionV2JobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_icd10cm_inference_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListICD10CMInferenceJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListICD10CMInferenceJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListICD10CMInferenceJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_phi_detection_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPHIDetectionJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPHIDetectionJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPHIDetectionJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_rx_norm_inference_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRxNormInferenceJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRxNormInferenceJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRxNormInferenceJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_entities_detection_v2_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartEntitiesDetectionV2Job"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartEntitiesDetectionV2JobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartEntitiesDetectionV2JobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_icd10cm_inference_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartICD10CMInferenceJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartICD10CMInferenceJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartICD10CMInferenceJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_phi_detection_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartPHIDetectionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartPHIDetectionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartPHIDetectionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_rx_norm_inference_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartRxNormInferenceJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartRxNormInferenceJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartRxNormInferenceJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_entities_detection_v2_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopEntitiesDetectionV2Job"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopEntitiesDetectionV2JobRequest)
        o.output = Shapes::ShapeRef.new(shape: StopEntitiesDetectionV2JobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_icd10cm_inference_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopICD10CMInferenceJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopICD10CMInferenceJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StopICD10CMInferenceJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_phi_detection_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopPHIDetectionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopPHIDetectionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StopPHIDetectionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_rx_norm_inference_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopRxNormInferenceJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopRxNormInferenceJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StopRxNormInferenceJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
