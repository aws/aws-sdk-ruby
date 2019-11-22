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
    DescribePHIDetectionJobRequest = Shapes::StructureShape.new(name: 'DescribePHIDetectionJobRequest')
    DescribePHIDetectionJobResponse = Shapes::StructureShape.new(name: 'DescribePHIDetectionJobResponse')
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
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
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
    ListPHIDetectionJobsRequest = Shapes::StructureShape.new(name: 'ListPHIDetectionJobsRequest')
    ListPHIDetectionJobsResponse = Shapes::StructureShape.new(name: 'ListPHIDetectionJobsResponse')
    ManifestFilePath = Shapes::StringShape.new(name: 'ManifestFilePath')
    MaxResultsInteger = Shapes::IntegerShape.new(name: 'MaxResultsInteger')
    ModelVersion = Shapes::StringShape.new(name: 'ModelVersion')
    OutputDataConfig = Shapes::StructureShape.new(name: 'OutputDataConfig')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    StartEntitiesDetectionV2JobRequest = Shapes::StructureShape.new(name: 'StartEntitiesDetectionV2JobRequest')
    StartEntitiesDetectionV2JobResponse = Shapes::StructureShape.new(name: 'StartEntitiesDetectionV2JobResponse')
    StartPHIDetectionJobRequest = Shapes::StructureShape.new(name: 'StartPHIDetectionJobRequest')
    StartPHIDetectionJobResponse = Shapes::StructureShape.new(name: 'StartPHIDetectionJobResponse')
    StopEntitiesDetectionV2JobRequest = Shapes::StructureShape.new(name: 'StopEntitiesDetectionV2JobRequest')
    StopEntitiesDetectionV2JobResponse = Shapes::StructureShape.new(name: 'StopEntitiesDetectionV2JobResponse')
    StopPHIDetectionJobRequest = Shapes::StructureShape.new(name: 'StopPHIDetectionJobRequest')
    StopPHIDetectionJobResponse = Shapes::StructureShape.new(name: 'StopPHIDetectionJobResponse')
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
    Attribute.add_member(:id, Shapes::ShapeRef.new(shape: Integer, location_name: "Id"))
    Attribute.add_member(:begin_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "BeginOffset"))
    Attribute.add_member(:end_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "EndOffset"))
    Attribute.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "Text"))
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

    DescribePHIDetectionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribePHIDetectionJobRequest.struct_class = Types::DescribePHIDetectionJobRequest

    DescribePHIDetectionJobResponse.add_member(:comprehend_medical_async_job_properties, Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobProperties, location_name: "ComprehendMedicalAsyncJobProperties"))
    DescribePHIDetectionJobResponse.struct_class = Types::DescribePHIDetectionJobResponse

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

    ListPHIDetectionJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobFilter, location_name: "Filter"))
    ListPHIDetectionJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListPHIDetectionJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListPHIDetectionJobsRequest.struct_class = Types::ListPHIDetectionJobsRequest

    ListPHIDetectionJobsResponse.add_member(:comprehend_medical_async_job_properties_list, Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobPropertiesList, location_name: "ComprehendMedicalAsyncJobPropertiesList"))
    ListPHIDetectionJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListPHIDetectionJobsResponse.struct_class = Types::ListPHIDetectionJobsResponse

    OutputDataConfig.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "S3Bucket"))
    OutputDataConfig.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, location_name: "S3Key"))
    OutputDataConfig.struct_class = Types::OutputDataConfig

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

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

    StopEntitiesDetectionV2JobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    StopEntitiesDetectionV2JobRequest.struct_class = Types::StopEntitiesDetectionV2JobRequest

    StopEntitiesDetectionV2JobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StopEntitiesDetectionV2JobResponse.struct_class = Types::StopEntitiesDetectionV2JobResponse

    StopPHIDetectionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    StopPHIDetectionJobRequest.struct_class = Types::StopPHIDetectionJobRequest

    StopPHIDetectionJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StopPHIDetectionJobResponse.struct_class = Types::StopPHIDetectionJobResponse

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
    end

  end
end
