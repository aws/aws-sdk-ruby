# frozen_string_literal: true

# This is generated code!

module Aws::ComprehendMedical
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AnyLengthString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehendmedical#AnyLengthString", name: "AnyLengthString")
    Attribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#Attribute", name: "Attribute")
    AttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehendmedical#AttributeList", name: "AttributeList")
    AttributeName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehendmedical#AttributeName", name: "AttributeName")
    BoundedLengthString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehendmedical#BoundedLengthString", name: "BoundedLengthString", traits: {"smithy.api#length" => {"min" => 1, "max" => 20000}})
    Characters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#Characters", name: "Characters")
    ClientRequestTokenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehendmedical#ClientRequestTokenString", name: "ClientRequestTokenString", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    ComprehendMedicalAsyncJobFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#ComprehendMedicalAsyncJobFilter", name: "ComprehendMedicalAsyncJobFilter")
    ComprehendMedicalAsyncJobProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#ComprehendMedicalAsyncJobProperties", name: "ComprehendMedicalAsyncJobProperties")
    ComprehendMedicalAsyncJobPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehendmedical#ComprehendMedicalAsyncJobPropertiesList", name: "ComprehendMedicalAsyncJobPropertiesList")
    DescribeEntitiesDetectionV2JobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#DescribeEntitiesDetectionV2JobRequest", name: "DescribeEntitiesDetectionV2JobRequest")
    DescribeEntitiesDetectionV2JobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#DescribeEntitiesDetectionV2JobResponse", name: "DescribeEntitiesDetectionV2JobResponse")
    DescribeICD10CMInferenceJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#DescribeICD10CMInferenceJobRequest", name: "DescribeICD10CMInferenceJobRequest")
    DescribeICD10CMInferenceJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#DescribeICD10CMInferenceJobResponse", name: "DescribeICD10CMInferenceJobResponse")
    DescribePHIDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#DescribePHIDetectionJobRequest", name: "DescribePHIDetectionJobRequest")
    DescribePHIDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#DescribePHIDetectionJobResponse", name: "DescribePHIDetectionJobResponse")
    DescribeRxNormInferenceJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#DescribeRxNormInferenceJobRequest", name: "DescribeRxNormInferenceJobRequest")
    DescribeRxNormInferenceJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#DescribeRxNormInferenceJobResponse", name: "DescribeRxNormInferenceJobResponse")
    DescribeSNOMEDCTInferenceJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#DescribeSNOMEDCTInferenceJobRequest", name: "DescribeSNOMEDCTInferenceJobRequest")
    DescribeSNOMEDCTInferenceJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#DescribeSNOMEDCTInferenceJobResponse", name: "DescribeSNOMEDCTInferenceJobResponse")
    DetectEntitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#DetectEntitiesRequest", name: "DetectEntitiesRequest")
    DetectEntitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#DetectEntitiesResponse", name: "DetectEntitiesResponse")
    DetectEntitiesV2Request = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#DetectEntitiesV2Request", name: "DetectEntitiesV2Request")
    DetectEntitiesV2Response = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#DetectEntitiesV2Response", name: "DetectEntitiesV2Response")
    DetectPHIRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#DetectPHIRequest", name: "DetectPHIRequest")
    DetectPHIResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#DetectPHIResponse", name: "DetectPHIResponse")
    Entity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#Entity", name: "Entity")
    EntityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehendmedical#EntityList", name: "EntityList")
    EntitySubType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehendmedical#EntitySubType", name: "EntitySubType")
    EntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehendmedical#EntityType", name: "EntityType")
    Float = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.comprehendmedical#Float", name: "Float")
    ICD10CMAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#ICD10CMAttribute", name: "ICD10CMAttribute")
    ICD10CMAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehendmedical#ICD10CMAttributeList", name: "ICD10CMAttributeList")
    ICD10CMAttributeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehendmedical#ICD10CMAttributeType", name: "ICD10CMAttributeType")
    ICD10CMConcept = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#ICD10CMConcept", name: "ICD10CMConcept")
    ICD10CMConceptList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehendmedical#ICD10CMConceptList", name: "ICD10CMConceptList")
    ICD10CMEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#ICD10CMEntity", name: "ICD10CMEntity")
    ICD10CMEntityCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehendmedical#ICD10CMEntityCategory", name: "ICD10CMEntityCategory")
    ICD10CMEntityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehendmedical#ICD10CMEntityList", name: "ICD10CMEntityList")
    ICD10CMEntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehendmedical#ICD10CMEntityType", name: "ICD10CMEntityType")
    ICD10CMRelationshipType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehendmedical#ICD10CMRelationshipType", name: "ICD10CMRelationshipType")
    ICD10CMTrait = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#ICD10CMTrait", name: "ICD10CMTrait")
    ICD10CMTraitList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehendmedical#ICD10CMTraitList", name: "ICD10CMTraitList")
    ICD10CMTraitName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehendmedical#ICD10CMTraitName", name: "ICD10CMTraitName")
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehendmedical#IamRoleArn", name: "IamRoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+$"})
    InferICD10CMRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#InferICD10CMRequest", name: "InferICD10CMRequest")
    InferICD10CMResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#InferICD10CMResponse", name: "InferICD10CMResponse")
    InferRxNormRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#InferRxNormRequest", name: "InferRxNormRequest")
    InferRxNormResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#InferRxNormResponse", name: "InferRxNormResponse")
    InferSNOMEDCTRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#InferSNOMEDCTRequest", name: "InferSNOMEDCTRequest")
    InferSNOMEDCTResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#InferSNOMEDCTResponse", name: "InferSNOMEDCTResponse")
    InputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#InputDataConfig", name: "InputDataConfig")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.comprehendmedical#Integer", name: "Integer")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidEncodingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#InvalidEncodingException", name: "InvalidEncodingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehendmedical#JobId", name: "JobId", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"})
    JobName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehendmedical#JobName", name: "JobName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"})
    JobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehendmedical#JobStatus", name: "JobStatus")
    KMSKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehendmedical#KMSKey", name: "KMSKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => ".*"})
    LanguageCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehendmedical#LanguageCode", name: "LanguageCode")
    ListEntitiesDetectionV2JobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#ListEntitiesDetectionV2JobsRequest", name: "ListEntitiesDetectionV2JobsRequest")
    ListEntitiesDetectionV2JobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#ListEntitiesDetectionV2JobsResponse", name: "ListEntitiesDetectionV2JobsResponse")
    ListICD10CMInferenceJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#ListICD10CMInferenceJobsRequest", name: "ListICD10CMInferenceJobsRequest")
    ListICD10CMInferenceJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#ListICD10CMInferenceJobsResponse", name: "ListICD10CMInferenceJobsResponse")
    ListPHIDetectionJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#ListPHIDetectionJobsRequest", name: "ListPHIDetectionJobsRequest")
    ListPHIDetectionJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#ListPHIDetectionJobsResponse", name: "ListPHIDetectionJobsResponse")
    ListRxNormInferenceJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#ListRxNormInferenceJobsRequest", name: "ListRxNormInferenceJobsRequest")
    ListRxNormInferenceJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#ListRxNormInferenceJobsResponse", name: "ListRxNormInferenceJobsResponse")
    ListSNOMEDCTInferenceJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#ListSNOMEDCTInferenceJobsRequest", name: "ListSNOMEDCTInferenceJobsRequest")
    ListSNOMEDCTInferenceJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#ListSNOMEDCTInferenceJobsResponse", name: "ListSNOMEDCTInferenceJobsResponse")
    ManifestFilePath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehendmedical#ManifestFilePath", name: "ManifestFilePath", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    MaxResultsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.comprehendmedical#MaxResultsInteger", name: "MaxResultsInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    ModelVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehendmedical#ModelVersion", name: "ModelVersion")
    OntologyLinkingBoundedLengthString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehendmedical#OntologyLinkingBoundedLengthString", name: "OntologyLinkingBoundedLengthString", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    OutputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#OutputDataConfig", name: "OutputDataConfig")
    RelationshipType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehendmedical#RelationshipType", name: "RelationshipType")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RxNormAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#RxNormAttribute", name: "RxNormAttribute")
    RxNormAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehendmedical#RxNormAttributeList", name: "RxNormAttributeList")
    RxNormAttributeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehendmedical#RxNormAttributeType", name: "RxNormAttributeType")
    RxNormConcept = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#RxNormConcept", name: "RxNormConcept")
    RxNormConceptList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehendmedical#RxNormConceptList", name: "RxNormConceptList")
    RxNormEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#RxNormEntity", name: "RxNormEntity")
    RxNormEntityCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehendmedical#RxNormEntityCategory", name: "RxNormEntityCategory")
    RxNormEntityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehendmedical#RxNormEntityList", name: "RxNormEntityList")
    RxNormEntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehendmedical#RxNormEntityType", name: "RxNormEntityType")
    RxNormTrait = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#RxNormTrait", name: "RxNormTrait")
    RxNormTraitList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehendmedical#RxNormTraitList", name: "RxNormTraitList")
    RxNormTraitName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehendmedical#RxNormTraitName", name: "RxNormTraitName")
    S3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehendmedical#S3Bucket", name: "S3Bucket", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[0-9a-z\\.\\-_]*(?!\\.)$"})
    S3Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehendmedical#S3Key", name: "S3Key", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*"})
    SNOMEDCTAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#SNOMEDCTAttribute", name: "SNOMEDCTAttribute")
    SNOMEDCTAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehendmedical#SNOMEDCTAttributeList", name: "SNOMEDCTAttributeList")
    SNOMEDCTAttributeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehendmedical#SNOMEDCTAttributeType", name: "SNOMEDCTAttributeType")
    SNOMEDCTConcept = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#SNOMEDCTConcept", name: "SNOMEDCTConcept")
    SNOMEDCTConceptList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehendmedical#SNOMEDCTConceptList", name: "SNOMEDCTConceptList")
    SNOMEDCTDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#SNOMEDCTDetails", name: "SNOMEDCTDetails")
    SNOMEDCTEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#SNOMEDCTEntity", name: "SNOMEDCTEntity")
    SNOMEDCTEntityCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehendmedical#SNOMEDCTEntityCategory", name: "SNOMEDCTEntityCategory")
    SNOMEDCTEntityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehendmedical#SNOMEDCTEntityList", name: "SNOMEDCTEntityList")
    SNOMEDCTEntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehendmedical#SNOMEDCTEntityType", name: "SNOMEDCTEntityType")
    SNOMEDCTRelationshipType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehendmedical#SNOMEDCTRelationshipType", name: "SNOMEDCTRelationshipType")
    SNOMEDCTTrait = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#SNOMEDCTTrait", name: "SNOMEDCTTrait")
    SNOMEDCTTraitList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehendmedical#SNOMEDCTTraitList", name: "SNOMEDCTTraitList")
    SNOMEDCTTraitName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehendmedical#SNOMEDCTTraitName", name: "SNOMEDCTTraitName")
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    StartEntitiesDetectionV2JobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#StartEntitiesDetectionV2JobRequest", name: "StartEntitiesDetectionV2JobRequest")
    StartEntitiesDetectionV2JobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#StartEntitiesDetectionV2JobResponse", name: "StartEntitiesDetectionV2JobResponse")
    StartICD10CMInferenceJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#StartICD10CMInferenceJobRequest", name: "StartICD10CMInferenceJobRequest")
    StartICD10CMInferenceJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#StartICD10CMInferenceJobResponse", name: "StartICD10CMInferenceJobResponse")
    StartPHIDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#StartPHIDetectionJobRequest", name: "StartPHIDetectionJobRequest")
    StartPHIDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#StartPHIDetectionJobResponse", name: "StartPHIDetectionJobResponse")
    StartRxNormInferenceJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#StartRxNormInferenceJobRequest", name: "StartRxNormInferenceJobRequest")
    StartRxNormInferenceJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#StartRxNormInferenceJobResponse", name: "StartRxNormInferenceJobResponse")
    StartSNOMEDCTInferenceJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#StartSNOMEDCTInferenceJobRequest", name: "StartSNOMEDCTInferenceJobRequest")
    StartSNOMEDCTInferenceJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#StartSNOMEDCTInferenceJobResponse", name: "StartSNOMEDCTInferenceJobResponse")
    StopEntitiesDetectionV2JobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#StopEntitiesDetectionV2JobRequest", name: "StopEntitiesDetectionV2JobRequest")
    StopEntitiesDetectionV2JobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#StopEntitiesDetectionV2JobResponse", name: "StopEntitiesDetectionV2JobResponse")
    StopICD10CMInferenceJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#StopICD10CMInferenceJobRequest", name: "StopICD10CMInferenceJobRequest")
    StopICD10CMInferenceJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#StopICD10CMInferenceJobResponse", name: "StopICD10CMInferenceJobResponse")
    StopPHIDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#StopPHIDetectionJobRequest", name: "StopPHIDetectionJobRequest")
    StopPHIDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#StopPHIDetectionJobResponse", name: "StopPHIDetectionJobResponse")
    StopRxNormInferenceJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#StopRxNormInferenceJobRequest", name: "StopRxNormInferenceJobRequest")
    StopRxNormInferenceJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#StopRxNormInferenceJobResponse", name: "StopRxNormInferenceJobResponse")
    StopSNOMEDCTInferenceJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#StopSNOMEDCTInferenceJobRequest", name: "StopSNOMEDCTInferenceJobRequest")
    StopSNOMEDCTInferenceJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#StopSNOMEDCTInferenceJobResponse", name: "StopSNOMEDCTInferenceJobResponse")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehendmedical#String", name: "String", traits: {"smithy.api#length" => {"min" => 1}})
    TextSizeLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#TextSizeLimitExceededException", name: "TextSizeLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.comprehendmedical#Timestamp", name: "Timestamp")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Trait = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#Trait", name: "Trait")
    TraitList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehendmedical#TraitList", name: "TraitList")
    UnmappedAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#UnmappedAttribute", name: "UnmappedAttribute")
    UnmappedAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehendmedical#UnmappedAttributeList", name: "UnmappedAttributeList")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehendmedical#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    Attribute.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitySubType, location_name: "Type"))
    Attribute.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, location_name: "Score"))
    Attribute.add_member(:relationship_score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, location_name: "RelationshipScore"))
    Attribute.add_member(:relationship_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipType, location_name: "RelationshipType"))
    Attribute.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "Id"))
    Attribute.add_member(:begin_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "BeginOffset"))
    Attribute.add_member(:end_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "EndOffset"))
    Attribute.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Text"))
    Attribute.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, location_name: "Category"))
    Attribute.add_member(:traits, ::Smithy::Schema::Shapes::MemberShape.new(target: TraitList, location_name: "Traits"))
    Attribute.type = Types::Attribute
    AttributeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Attribute)
    AttributeName.add_member(:sign, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SIGN", traits: {"smithy.api#enumValue" => "SIGN"}))
    AttributeName.add_member(:symptom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SYMPTOM", traits: {"smithy.api#enumValue" => "SYMPTOM"}))
    AttributeName.add_member(:diagnosis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIAGNOSIS", traits: {"smithy.api#enumValue" => "DIAGNOSIS"}))
    AttributeName.add_member(:negation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NEGATION", traits: {"smithy.api#enumValue" => "NEGATION"}))
    AttributeName.add_member(:pertains_to_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PERTAINS_TO_FAMILY", traits: {"smithy.api#enumValue" => "PERTAINS_TO_FAMILY"}))
    AttributeName.add_member(:hypothetical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HYPOTHETICAL", traits: {"smithy.api#enumValue" => "HYPOTHETICAL"}))
    AttributeName.add_member(:low_confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW_CONFIDENCE", traits: {"smithy.api#enumValue" => "LOW_CONFIDENCE"}))
    AttributeName.add_member(:past_history, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PAST_HISTORY", traits: {"smithy.api#enumValue" => "PAST_HISTORY"}))
    AttributeName.add_member(:future, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FUTURE", traits: {"smithy.api#enumValue" => "FUTURE"}))
    Characters.add_member(:original_text_characters, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "OriginalTextCharacters"))
    Characters.type = Types::Characters
    ComprehendMedicalAsyncJobFilter.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "JobName"))
    ComprehendMedicalAsyncJobFilter.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, location_name: "JobStatus"))
    ComprehendMedicalAsyncJobFilter.add_member(:submit_time_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "SubmitTimeBefore"))
    ComprehendMedicalAsyncJobFilter.add_member(:submit_time_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "SubmitTimeAfter"))
    ComprehendMedicalAsyncJobFilter.type = Types::ComprehendMedicalAsyncJobFilter
    ComprehendMedicalAsyncJobProperties.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId"))
    ComprehendMedicalAsyncJobProperties.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "JobName"))
    ComprehendMedicalAsyncJobProperties.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, location_name: "JobStatus"))
    ComprehendMedicalAsyncJobProperties.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AnyLengthString, location_name: "Message"))
    ComprehendMedicalAsyncJobProperties.add_member(:submit_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "SubmitTime"))
    ComprehendMedicalAsyncJobProperties.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "EndTime"))
    ComprehendMedicalAsyncJobProperties.add_member(:expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "ExpirationTime"))
    ComprehendMedicalAsyncJobProperties.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, location_name: "InputDataConfig"))
    ComprehendMedicalAsyncJobProperties.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, location_name: "OutputDataConfig"))
    ComprehendMedicalAsyncJobProperties.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, location_name: "LanguageCode"))
    ComprehendMedicalAsyncJobProperties.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, location_name: "DataAccessRoleArn"))
    ComprehendMedicalAsyncJobProperties.add_member(:manifest_file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestFilePath, location_name: "ManifestFilePath"))
    ComprehendMedicalAsyncJobProperties.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKey, location_name: "KMSKey"))
    ComprehendMedicalAsyncJobProperties.add_member(:model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, location_name: "ModelVersion"))
    ComprehendMedicalAsyncJobProperties.type = Types::ComprehendMedicalAsyncJobProperties
    ComprehendMedicalAsyncJobPropertiesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendMedicalAsyncJobProperties)
    DescribeEntitiesDetectionV2JobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    DescribeEntitiesDetectionV2JobRequest.type = Types::DescribeEntitiesDetectionV2JobRequest
    DescribeEntitiesDetectionV2JobResponse.add_member(:comprehend_medical_async_job_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendMedicalAsyncJobProperties, location_name: "ComprehendMedicalAsyncJobProperties"))
    DescribeEntitiesDetectionV2JobResponse.type = Types::DescribeEntitiesDetectionV2JobResponse
    DescribeICD10CMInferenceJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    DescribeICD10CMInferenceJobRequest.type = Types::DescribeICD10CMInferenceJobRequest
    DescribeICD10CMInferenceJobResponse.add_member(:comprehend_medical_async_job_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendMedicalAsyncJobProperties, location_name: "ComprehendMedicalAsyncJobProperties"))
    DescribeICD10CMInferenceJobResponse.type = Types::DescribeICD10CMInferenceJobResponse
    DescribePHIDetectionJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    DescribePHIDetectionJobRequest.type = Types::DescribePHIDetectionJobRequest
    DescribePHIDetectionJobResponse.add_member(:comprehend_medical_async_job_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendMedicalAsyncJobProperties, location_name: "ComprehendMedicalAsyncJobProperties"))
    DescribePHIDetectionJobResponse.type = Types::DescribePHIDetectionJobResponse
    DescribeRxNormInferenceJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    DescribeRxNormInferenceJobRequest.type = Types::DescribeRxNormInferenceJobRequest
    DescribeRxNormInferenceJobResponse.add_member(:comprehend_medical_async_job_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendMedicalAsyncJobProperties, location_name: "ComprehendMedicalAsyncJobProperties"))
    DescribeRxNormInferenceJobResponse.type = Types::DescribeRxNormInferenceJobResponse
    DescribeSNOMEDCTInferenceJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    DescribeSNOMEDCTInferenceJobRequest.type = Types::DescribeSNOMEDCTInferenceJobRequest
    DescribeSNOMEDCTInferenceJobResponse.add_member(:comprehend_medical_async_job_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendMedicalAsyncJobProperties, location_name: "ComprehendMedicalAsyncJobProperties"))
    DescribeSNOMEDCTInferenceJobResponse.type = Types::DescribeSNOMEDCTInferenceJobResponse
    DetectEntitiesRequest.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedLengthString, location_name: "Text", traits: {"smithy.api#required" => {}}))
    DetectEntitiesRequest.type = Types::DetectEntitiesRequest
    DetectEntitiesResponse.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityList, location_name: "Entities", traits: {"smithy.api#required" => {}}))
    DetectEntitiesResponse.add_member(:unmapped_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: UnmappedAttributeList, location_name: "UnmappedAttributes"))
    DetectEntitiesResponse.add_member(:pagination_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "PaginationToken"))
    DetectEntitiesResponse.add_member(:model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ModelVersion", traits: {"smithy.api#required" => {}}))
    DetectEntitiesResponse.type = Types::DetectEntitiesResponse
    DetectEntitiesV2Request.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedLengthString, location_name: "Text", traits: {"smithy.api#required" => {}}))
    DetectEntitiesV2Request.type = Types::DetectEntitiesV2Request
    DetectEntitiesV2Response.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityList, location_name: "Entities", traits: {"smithy.api#required" => {}}))
    DetectEntitiesV2Response.add_member(:unmapped_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: UnmappedAttributeList, location_name: "UnmappedAttributes"))
    DetectEntitiesV2Response.add_member(:pagination_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "PaginationToken"))
    DetectEntitiesV2Response.add_member(:model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ModelVersion", traits: {"smithy.api#required" => {}}))
    DetectEntitiesV2Response.type = Types::DetectEntitiesV2Response
    DetectPHIRequest.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedLengthString, location_name: "Text", traits: {"smithy.api#required" => {}}))
    DetectPHIRequest.type = Types::DetectPHIRequest
    DetectPHIResponse.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityList, location_name: "Entities", traits: {"smithy.api#required" => {}}))
    DetectPHIResponse.add_member(:pagination_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "PaginationToken"))
    DetectPHIResponse.add_member(:model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ModelVersion", traits: {"smithy.api#required" => {}}))
    DetectPHIResponse.type = Types::DetectPHIResponse
    Entity.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "Id"))
    Entity.add_member(:begin_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "BeginOffset"))
    Entity.add_member(:end_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "EndOffset"))
    Entity.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, location_name: "Score"))
    Entity.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Text"))
    Entity.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, location_name: "Category"))
    Entity.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitySubType, location_name: "Type"))
    Entity.add_member(:traits, ::Smithy::Schema::Shapes::MemberShape.new(target: TraitList, location_name: "Traits"))
    Entity.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeList, location_name: "Attributes"))
    Entity.type = Types::Entity
    EntityList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Entity)
    EntitySubType.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    EntitySubType.add_member(:dx_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DX_NAME", traits: {"smithy.api#enumValue" => "DX_NAME"}))
    EntitySubType.add_member(:dosage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOSAGE", traits: {"smithy.api#enumValue" => "DOSAGE"}))
    EntitySubType.add_member(:route_or_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROUTE_OR_MODE", traits: {"smithy.api#enumValue" => "ROUTE_OR_MODE"}))
    EntitySubType.add_member(:form, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FORM", traits: {"smithy.api#enumValue" => "FORM"}))
    EntitySubType.add_member(:frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FREQUENCY", traits: {"smithy.api#enumValue" => "FREQUENCY"}))
    EntitySubType.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DURATION", traits: {"smithy.api#enumValue" => "DURATION"}))
    EntitySubType.add_member(:generic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GENERIC_NAME", traits: {"smithy.api#enumValue" => "GENERIC_NAME"}))
    EntitySubType.add_member(:brand_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BRAND_NAME", traits: {"smithy.api#enumValue" => "BRAND_NAME"}))
    EntitySubType.add_member(:strength, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STRENGTH", traits: {"smithy.api#enumValue" => "STRENGTH"}))
    EntitySubType.add_member(:rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RATE", traits: {"smithy.api#enumValue" => "RATE"}))
    EntitySubType.add_member(:acuity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACUITY", traits: {"smithy.api#enumValue" => "ACUITY"}))
    EntitySubType.add_member(:test_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEST_NAME", traits: {"smithy.api#enumValue" => "TEST_NAME"}))
    EntitySubType.add_member(:test_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEST_VALUE", traits: {"smithy.api#enumValue" => "TEST_VALUE"}))
    EntitySubType.add_member(:test_units, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEST_UNITS", traits: {"smithy.api#enumValue" => "TEST_UNITS"}))
    EntitySubType.add_member(:test_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEST_UNIT", traits: {"smithy.api#enumValue" => "TEST_UNIT"}))
    EntitySubType.add_member(:procedure_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROCEDURE_NAME", traits: {"smithy.api#enumValue" => "PROCEDURE_NAME"}))
    EntitySubType.add_member(:treatment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TREATMENT_NAME", traits: {"smithy.api#enumValue" => "TREATMENT_NAME"}))
    EntitySubType.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DATE", traits: {"smithy.api#enumValue" => "DATE"}))
    EntitySubType.add_member(:age, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AGE", traits: {"smithy.api#enumValue" => "AGE"}))
    EntitySubType.add_member(:contact_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTACT_POINT", traits: {"smithy.api#enumValue" => "CONTACT_POINT"}))
    EntitySubType.add_member(:phone_or_fax, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PHONE_OR_FAX", traits: {"smithy.api#enumValue" => "PHONE_OR_FAX"}))
    EntitySubType.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EMAIL", traits: {"smithy.api#enumValue" => "EMAIL"}))
    EntitySubType.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IDENTIFIER", traits: {"smithy.api#enumValue" => "IDENTIFIER"}))
    EntitySubType.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ID", traits: {"smithy.api#enumValue" => "ID"}))
    EntitySubType.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "URL", traits: {"smithy.api#enumValue" => "URL"}))
    EntitySubType.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADDRESS", traits: {"smithy.api#enumValue" => "ADDRESS"}))
    EntitySubType.add_member(:profession, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROFESSION", traits: {"smithy.api#enumValue" => "PROFESSION"}))
    EntitySubType.add_member(:system_organ_site, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SYSTEM_ORGAN_SITE", traits: {"smithy.api#enumValue" => "SYSTEM_ORGAN_SITE"}))
    EntitySubType.add_member(:direction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIRECTION", traits: {"smithy.api#enumValue" => "DIRECTION"}))
    EntitySubType.add_member(:quality, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUALITY", traits: {"smithy.api#enumValue" => "QUALITY"}))
    EntitySubType.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUANTITY", traits: {"smithy.api#enumValue" => "QUANTITY"}))
    EntitySubType.add_member(:time_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIME_EXPRESSION", traits: {"smithy.api#enumValue" => "TIME_EXPRESSION"}))
    EntitySubType.add_member(:time_to_medication_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIME_TO_MEDICATION_NAME", traits: {"smithy.api#enumValue" => "TIME_TO_MEDICATION_NAME"}))
    EntitySubType.add_member(:time_to_dx_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIME_TO_DX_NAME", traits: {"smithy.api#enumValue" => "TIME_TO_DX_NAME"}))
    EntitySubType.add_member(:time_to_test_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIME_TO_TEST_NAME", traits: {"smithy.api#enumValue" => "TIME_TO_TEST_NAME"}))
    EntitySubType.add_member(:time_to_procedure_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIME_TO_PROCEDURE_NAME", traits: {"smithy.api#enumValue" => "TIME_TO_PROCEDURE_NAME"}))
    EntitySubType.add_member(:time_to_treatment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIME_TO_TREATMENT_NAME", traits: {"smithy.api#enumValue" => "TIME_TO_TREATMENT_NAME"}))
    EntitySubType.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AMOUNT", traits: {"smithy.api#enumValue" => "AMOUNT"}))
    EntitySubType.add_member(:gender, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GENDER", traits: {"smithy.api#enumValue" => "GENDER"}))
    EntitySubType.add_member(:race_ethnicity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RACE_ETHNICITY", traits: {"smithy.api#enumValue" => "RACE_ETHNICITY"}))
    EntitySubType.add_member(:allergies, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALLERGIES", traits: {"smithy.api#enumValue" => "ALLERGIES"}))
    EntitySubType.add_member(:tobacco_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TOBACCO_USE", traits: {"smithy.api#enumValue" => "TOBACCO_USE"}))
    EntitySubType.add_member(:alcohol_consumption, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALCOHOL_CONSUMPTION", traits: {"smithy.api#enumValue" => "ALCOHOL_CONSUMPTION"}))
    EntitySubType.add_member(:rec_drug_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REC_DRUG_USE", traits: {"smithy.api#enumValue" => "REC_DRUG_USE"}))
    EntityType.add_member(:medication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEDICATION", traits: {"smithy.api#enumValue" => "MEDICATION"}))
    EntityType.add_member(:medical_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEDICAL_CONDITION", traits: {"smithy.api#enumValue" => "MEDICAL_CONDITION"}))
    EntityType.add_member(:protected_health_information, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROTECTED_HEALTH_INFORMATION", traits: {"smithy.api#enumValue" => "PROTECTED_HEALTH_INFORMATION"}))
    EntityType.add_member(:test_treatment_procedure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEST_TREATMENT_PROCEDURE", traits: {"smithy.api#enumValue" => "TEST_TREATMENT_PROCEDURE"}))
    EntityType.add_member(:anatomy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ANATOMY", traits: {"smithy.api#enumValue" => "ANATOMY"}))
    EntityType.add_member(:time_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIME_EXPRESSION", traits: {"smithy.api#enumValue" => "TIME_EXPRESSION"}))
    EntityType.add_member(:behavioral_environmental_social, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BEHAVIORAL_ENVIRONMENTAL_SOCIAL", traits: {"smithy.api#enumValue" => "BEHAVIORAL_ENVIRONMENTAL_SOCIAL"}))
    ICD10CMAttribute.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ICD10CMAttributeType, location_name: "Type"))
    ICD10CMAttribute.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, location_name: "Score"))
    ICD10CMAttribute.add_member(:relationship_score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, location_name: "RelationshipScore"))
    ICD10CMAttribute.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "Id"))
    ICD10CMAttribute.add_member(:begin_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "BeginOffset"))
    ICD10CMAttribute.add_member(:end_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "EndOffset"))
    ICD10CMAttribute.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Text"))
    ICD10CMAttribute.add_member(:traits, ::Smithy::Schema::Shapes::MemberShape.new(target: ICD10CMTraitList, location_name: "Traits"))
    ICD10CMAttribute.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: ICD10CMEntityType, location_name: "Category"))
    ICD10CMAttribute.add_member(:relationship_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ICD10CMRelationshipType, location_name: "RelationshipType"))
    ICD10CMAttribute.type = Types::ICD10CMAttribute
    ICD10CMAttributeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ICD10CMAttribute)
    ICD10CMAttributeType.add_member(:acuity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACUITY", traits: {"smithy.api#enumValue" => "ACUITY"}))
    ICD10CMAttributeType.add_member(:direction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIRECTION", traits: {"smithy.api#enumValue" => "DIRECTION"}))
    ICD10CMAttributeType.add_member(:system_organ_site, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SYSTEM_ORGAN_SITE", traits: {"smithy.api#enumValue" => "SYSTEM_ORGAN_SITE"}))
    ICD10CMAttributeType.add_member(:quality, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUALITY", traits: {"smithy.api#enumValue" => "QUALITY"}))
    ICD10CMAttributeType.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUANTITY", traits: {"smithy.api#enumValue" => "QUANTITY"}))
    ICD10CMAttributeType.add_member(:time_to_dx_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIME_TO_DX_NAME", traits: {"smithy.api#enumValue" => "TIME_TO_DX_NAME"}))
    ICD10CMAttributeType.add_member(:time_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIME_EXPRESSION", traits: {"smithy.api#enumValue" => "TIME_EXPRESSION"}))
    ICD10CMConcept.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Description"))
    ICD10CMConcept.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Code"))
    ICD10CMConcept.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, location_name: "Score"))
    ICD10CMConcept.type = Types::ICD10CMConcept
    ICD10CMConceptList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ICD10CMConcept)
    ICD10CMEntity.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "Id"))
    ICD10CMEntity.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: OntologyLinkingBoundedLengthString, location_name: "Text"))
    ICD10CMEntity.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: ICD10CMEntityCategory, location_name: "Category"))
    ICD10CMEntity.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ICD10CMEntityType, location_name: "Type"))
    ICD10CMEntity.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, location_name: "Score"))
    ICD10CMEntity.add_member(:begin_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "BeginOffset"))
    ICD10CMEntity.add_member(:end_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "EndOffset"))
    ICD10CMEntity.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ICD10CMAttributeList, location_name: "Attributes"))
    ICD10CMEntity.add_member(:traits, ::Smithy::Schema::Shapes::MemberShape.new(target: ICD10CMTraitList, location_name: "Traits"))
    ICD10CMEntity.add_member(:icd10_cm_concepts, ::Smithy::Schema::Shapes::MemberShape.new(target: ICD10CMConceptList, location_name: "ICD10CMConcepts"))
    ICD10CMEntity.type = Types::ICD10CMEntity
    ICD10CMEntityCategory.add_member(:medical_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEDICAL_CONDITION", traits: {"smithy.api#enumValue" => "MEDICAL_CONDITION"}))
    ICD10CMEntityList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ICD10CMEntity)
    ICD10CMEntityType.add_member(:dx_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DX_NAME", traits: {"smithy.api#enumValue" => "DX_NAME"}))
    ICD10CMEntityType.add_member(:time_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIME_EXPRESSION", traits: {"smithy.api#enumValue" => "TIME_EXPRESSION"}))
    ICD10CMRelationshipType.add_member(:overlap, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OVERLAP", traits: {"smithy.api#enumValue" => "OVERLAP"}))
    ICD10CMRelationshipType.add_member(:system_organ_site, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SYSTEM_ORGAN_SITE", traits: {"smithy.api#enumValue" => "SYSTEM_ORGAN_SITE"}))
    ICD10CMRelationshipType.add_member(:quality, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUALITY", traits: {"smithy.api#enumValue" => "QUALITY"}))
    ICD10CMTrait.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ICD10CMTraitName, location_name: "Name"))
    ICD10CMTrait.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, location_name: "Score"))
    ICD10CMTrait.type = Types::ICD10CMTrait
    ICD10CMTraitList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ICD10CMTrait)
    ICD10CMTraitName.add_member(:negation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NEGATION", traits: {"smithy.api#enumValue" => "NEGATION"}))
    ICD10CMTraitName.add_member(:diagnosis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIAGNOSIS", traits: {"smithy.api#enumValue" => "DIAGNOSIS"}))
    ICD10CMTraitName.add_member(:sign, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SIGN", traits: {"smithy.api#enumValue" => "SIGN"}))
    ICD10CMTraitName.add_member(:symptom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SYMPTOM", traits: {"smithy.api#enumValue" => "SYMPTOM"}))
    ICD10CMTraitName.add_member(:pertains_to_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PERTAINS_TO_FAMILY", traits: {"smithy.api#enumValue" => "PERTAINS_TO_FAMILY"}))
    ICD10CMTraitName.add_member(:hypothetical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HYPOTHETICAL", traits: {"smithy.api#enumValue" => "HYPOTHETICAL"}))
    ICD10CMTraitName.add_member(:low_confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW_CONFIDENCE", traits: {"smithy.api#enumValue" => "LOW_CONFIDENCE"}))
    InferICD10CMRequest.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: OntologyLinkingBoundedLengthString, location_name: "Text", traits: {"smithy.api#required" => {}}))
    InferICD10CMRequest.type = Types::InferICD10CMRequest
    InferICD10CMResponse.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: ICD10CMEntityList, location_name: "Entities", traits: {"smithy.api#required" => {}}))
    InferICD10CMResponse.add_member(:pagination_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "PaginationToken"))
    InferICD10CMResponse.add_member(:model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ModelVersion"))
    InferICD10CMResponse.type = Types::InferICD10CMResponse
    InferRxNormRequest.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: OntologyLinkingBoundedLengthString, location_name: "Text", traits: {"smithy.api#required" => {}}))
    InferRxNormRequest.type = Types::InferRxNormRequest
    InferRxNormResponse.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: RxNormEntityList, location_name: "Entities", traits: {"smithy.api#required" => {}}))
    InferRxNormResponse.add_member(:pagination_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "PaginationToken"))
    InferRxNormResponse.add_member(:model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ModelVersion"))
    InferRxNormResponse.type = Types::InferRxNormResponse
    InferSNOMEDCTRequest.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: OntologyLinkingBoundedLengthString, location_name: "Text", traits: {"smithy.api#required" => {}}))
    InferSNOMEDCTRequest.type = Types::InferSNOMEDCTRequest
    InferSNOMEDCTResponse.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: SNOMEDCTEntityList, location_name: "Entities", traits: {"smithy.api#required" => {}}))
    InferSNOMEDCTResponse.add_member(:pagination_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "PaginationToken"))
    InferSNOMEDCTResponse.add_member(:model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ModelVersion"))
    InferSNOMEDCTResponse.add_member(:snomedct_details, ::Smithy::Schema::Shapes::MemberShape.new(target: SNOMEDCTDetails, location_name: "SNOMEDCTDetails"))
    InferSNOMEDCTResponse.add_member(:characters, ::Smithy::Schema::Shapes::MemberShape.new(target: Characters, location_name: "Characters"))
    InferSNOMEDCTResponse.type = Types::InferSNOMEDCTResponse
    InputDataConfig.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, location_name: "S3Bucket", traits: {"smithy.api#required" => {}}))
    InputDataConfig.add_member(:s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, location_name: "S3Key"))
    InputDataConfig.type = Types::InputDataConfig
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message"))
    InternalServerException.type = Types::InternalServerException
    InvalidEncodingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message"))
    InvalidEncodingException.type = Types::InvalidEncodingException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message"))
    InvalidRequestException.type = Types::InvalidRequestException
    JobStatus.add_member(:submitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBMITTED", traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    JobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    JobStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    JobStatus.add_member(:partial_success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PARTIAL_SUCCESS", traits: {"smithy.api#enumValue" => "PARTIAL_SUCCESS"}))
    JobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    JobStatus.add_member(:stop_requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOP_REQUESTED", traits: {"smithy.api#enumValue" => "STOP_REQUESTED"}))
    JobStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    LanguageCode.add_member(:en, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EN", traits: {"smithy.api#enumValue" => "en"}))
    ListEntitiesDetectionV2JobsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendMedicalAsyncJobFilter, location_name: "Filter"))
    ListEntitiesDetectionV2JobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    ListEntitiesDetectionV2JobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, location_name: "MaxResults"))
    ListEntitiesDetectionV2JobsRequest.type = Types::ListEntitiesDetectionV2JobsRequest
    ListEntitiesDetectionV2JobsResponse.add_member(:comprehend_medical_async_job_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendMedicalAsyncJobPropertiesList, location_name: "ComprehendMedicalAsyncJobPropertiesList"))
    ListEntitiesDetectionV2JobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    ListEntitiesDetectionV2JobsResponse.type = Types::ListEntitiesDetectionV2JobsResponse
    ListICD10CMInferenceJobsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendMedicalAsyncJobFilter, location_name: "Filter"))
    ListICD10CMInferenceJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    ListICD10CMInferenceJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, location_name: "MaxResults"))
    ListICD10CMInferenceJobsRequest.type = Types::ListICD10CMInferenceJobsRequest
    ListICD10CMInferenceJobsResponse.add_member(:comprehend_medical_async_job_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendMedicalAsyncJobPropertiesList, location_name: "ComprehendMedicalAsyncJobPropertiesList"))
    ListICD10CMInferenceJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    ListICD10CMInferenceJobsResponse.type = Types::ListICD10CMInferenceJobsResponse
    ListPHIDetectionJobsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendMedicalAsyncJobFilter, location_name: "Filter"))
    ListPHIDetectionJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    ListPHIDetectionJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, location_name: "MaxResults"))
    ListPHIDetectionJobsRequest.type = Types::ListPHIDetectionJobsRequest
    ListPHIDetectionJobsResponse.add_member(:comprehend_medical_async_job_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendMedicalAsyncJobPropertiesList, location_name: "ComprehendMedicalAsyncJobPropertiesList"))
    ListPHIDetectionJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    ListPHIDetectionJobsResponse.type = Types::ListPHIDetectionJobsResponse
    ListRxNormInferenceJobsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendMedicalAsyncJobFilter, location_name: "Filter"))
    ListRxNormInferenceJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    ListRxNormInferenceJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, location_name: "MaxResults"))
    ListRxNormInferenceJobsRequest.type = Types::ListRxNormInferenceJobsRequest
    ListRxNormInferenceJobsResponse.add_member(:comprehend_medical_async_job_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendMedicalAsyncJobPropertiesList, location_name: "ComprehendMedicalAsyncJobPropertiesList"))
    ListRxNormInferenceJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    ListRxNormInferenceJobsResponse.type = Types::ListRxNormInferenceJobsResponse
    ListSNOMEDCTInferenceJobsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendMedicalAsyncJobFilter, location_name: "Filter"))
    ListSNOMEDCTInferenceJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    ListSNOMEDCTInferenceJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, location_name: "MaxResults"))
    ListSNOMEDCTInferenceJobsRequest.type = Types::ListSNOMEDCTInferenceJobsRequest
    ListSNOMEDCTInferenceJobsResponse.add_member(:comprehend_medical_async_job_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendMedicalAsyncJobPropertiesList, location_name: "ComprehendMedicalAsyncJobPropertiesList"))
    ListSNOMEDCTInferenceJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    ListSNOMEDCTInferenceJobsResponse.type = Types::ListSNOMEDCTInferenceJobsResponse
    OutputDataConfig.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, location_name: "S3Bucket", traits: {"smithy.api#required" => {}}))
    OutputDataConfig.add_member(:s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, location_name: "S3Key"))
    OutputDataConfig.type = Types::OutputDataConfig
    RelationshipType.add_member(:every, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EVERY", traits: {"smithy.api#enumValue" => "EVERY"}))
    RelationshipType.add_member(:with_dosage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WITH_DOSAGE", traits: {"smithy.api#enumValue" => "WITH_DOSAGE"}))
    RelationshipType.add_member(:administered_via, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADMINISTERED_VIA", traits: {"smithy.api#enumValue" => "ADMINISTERED_VIA"}))
    RelationshipType.add_member(:for, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FOR", traits: {"smithy.api#enumValue" => "FOR"}))
    RelationshipType.add_member(:negative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NEGATIVE", traits: {"smithy.api#enumValue" => "NEGATIVE"}))
    RelationshipType.add_member(:overlap, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OVERLAP", traits: {"smithy.api#enumValue" => "OVERLAP"}))
    RelationshipType.add_member(:dosage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOSAGE", traits: {"smithy.api#enumValue" => "DOSAGE"}))
    RelationshipType.add_member(:route_or_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROUTE_OR_MODE", traits: {"smithy.api#enumValue" => "ROUTE_OR_MODE"}))
    RelationshipType.add_member(:form, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FORM", traits: {"smithy.api#enumValue" => "FORM"}))
    RelationshipType.add_member(:frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FREQUENCY", traits: {"smithy.api#enumValue" => "FREQUENCY"}))
    RelationshipType.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DURATION", traits: {"smithy.api#enumValue" => "DURATION"}))
    RelationshipType.add_member(:strength, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STRENGTH", traits: {"smithy.api#enumValue" => "STRENGTH"}))
    RelationshipType.add_member(:rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RATE", traits: {"smithy.api#enumValue" => "RATE"}))
    RelationshipType.add_member(:acuity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACUITY", traits: {"smithy.api#enumValue" => "ACUITY"}))
    RelationshipType.add_member(:test_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEST_VALUE", traits: {"smithy.api#enumValue" => "TEST_VALUE"}))
    RelationshipType.add_member(:test_units, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEST_UNITS", traits: {"smithy.api#enumValue" => "TEST_UNITS"}))
    RelationshipType.add_member(:test_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEST_UNIT", traits: {"smithy.api#enumValue" => "TEST_UNIT"}))
    RelationshipType.add_member(:direction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIRECTION", traits: {"smithy.api#enumValue" => "DIRECTION"}))
    RelationshipType.add_member(:system_organ_site, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SYSTEM_ORGAN_SITE", traits: {"smithy.api#enumValue" => "SYSTEM_ORGAN_SITE"}))
    RelationshipType.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AMOUNT", traits: {"smithy.api#enumValue" => "AMOUNT"}))
    RelationshipType.add_member(:usage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USAGE", traits: {"smithy.api#enumValue" => "USAGE"}))
    RelationshipType.add_member(:quality, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUALITY", traits: {"smithy.api#enumValue" => "QUALITY"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RxNormAttribute.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RxNormAttributeType, location_name: "Type"))
    RxNormAttribute.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, location_name: "Score"))
    RxNormAttribute.add_member(:relationship_score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, location_name: "RelationshipScore"))
    RxNormAttribute.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "Id"))
    RxNormAttribute.add_member(:begin_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "BeginOffset"))
    RxNormAttribute.add_member(:end_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "EndOffset"))
    RxNormAttribute.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Text"))
    RxNormAttribute.add_member(:traits, ::Smithy::Schema::Shapes::MemberShape.new(target: RxNormTraitList, location_name: "Traits"))
    RxNormAttribute.type = Types::RxNormAttribute
    RxNormAttributeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RxNormAttribute)
    RxNormAttributeType.add_member(:dosage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOSAGE", traits: {"smithy.api#enumValue" => "DOSAGE"}))
    RxNormAttributeType.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DURATION", traits: {"smithy.api#enumValue" => "DURATION"}))
    RxNormAttributeType.add_member(:form, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FORM", traits: {"smithy.api#enumValue" => "FORM"}))
    RxNormAttributeType.add_member(:frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FREQUENCY", traits: {"smithy.api#enumValue" => "FREQUENCY"}))
    RxNormAttributeType.add_member(:rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RATE", traits: {"smithy.api#enumValue" => "RATE"}))
    RxNormAttributeType.add_member(:route_or_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROUTE_OR_MODE", traits: {"smithy.api#enumValue" => "ROUTE_OR_MODE"}))
    RxNormAttributeType.add_member(:strength, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STRENGTH", traits: {"smithy.api#enumValue" => "STRENGTH"}))
    RxNormConcept.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Description"))
    RxNormConcept.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Code"))
    RxNormConcept.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, location_name: "Score"))
    RxNormConcept.type = Types::RxNormConcept
    RxNormConceptList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RxNormConcept)
    RxNormEntity.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "Id"))
    RxNormEntity.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: OntologyLinkingBoundedLengthString, location_name: "Text"))
    RxNormEntity.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: RxNormEntityCategory, location_name: "Category"))
    RxNormEntity.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RxNormEntityType, location_name: "Type"))
    RxNormEntity.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, location_name: "Score"))
    RxNormEntity.add_member(:begin_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "BeginOffset"))
    RxNormEntity.add_member(:end_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "EndOffset"))
    RxNormEntity.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: RxNormAttributeList, location_name: "Attributes"))
    RxNormEntity.add_member(:traits, ::Smithy::Schema::Shapes::MemberShape.new(target: RxNormTraitList, location_name: "Traits"))
    RxNormEntity.add_member(:rx_norm_concepts, ::Smithy::Schema::Shapes::MemberShape.new(target: RxNormConceptList, location_name: "RxNormConcepts"))
    RxNormEntity.type = Types::RxNormEntity
    RxNormEntityCategory.add_member(:medication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEDICATION", traits: {"smithy.api#enumValue" => "MEDICATION"}))
    RxNormEntityList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RxNormEntity)
    RxNormEntityType.add_member(:brand_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BRAND_NAME", traits: {"smithy.api#enumValue" => "BRAND_NAME"}))
    RxNormEntityType.add_member(:generic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GENERIC_NAME", traits: {"smithy.api#enumValue" => "GENERIC_NAME"}))
    RxNormTrait.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RxNormTraitName, location_name: "Name"))
    RxNormTrait.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, location_name: "Score"))
    RxNormTrait.type = Types::RxNormTrait
    RxNormTraitList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RxNormTrait)
    RxNormTraitName.add_member(:negation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NEGATION", traits: {"smithy.api#enumValue" => "NEGATION"}))
    RxNormTraitName.add_member(:past_history, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PAST_HISTORY", traits: {"smithy.api#enumValue" => "PAST_HISTORY"}))
    SNOMEDCTAttribute.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: SNOMEDCTEntityCategory, location_name: "Category"))
    SNOMEDCTAttribute.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SNOMEDCTAttributeType, location_name: "Type"))
    SNOMEDCTAttribute.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, location_name: "Score"))
    SNOMEDCTAttribute.add_member(:relationship_score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, location_name: "RelationshipScore"))
    SNOMEDCTAttribute.add_member(:relationship_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SNOMEDCTRelationshipType, location_name: "RelationshipType"))
    SNOMEDCTAttribute.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "Id"))
    SNOMEDCTAttribute.add_member(:begin_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "BeginOffset"))
    SNOMEDCTAttribute.add_member(:end_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "EndOffset"))
    SNOMEDCTAttribute.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Text"))
    SNOMEDCTAttribute.add_member(:traits, ::Smithy::Schema::Shapes::MemberShape.new(target: SNOMEDCTTraitList, location_name: "Traits"))
    SNOMEDCTAttribute.add_member(:snomedct_concepts, ::Smithy::Schema::Shapes::MemberShape.new(target: SNOMEDCTConceptList, location_name: "SNOMEDCTConcepts"))
    SNOMEDCTAttribute.type = Types::SNOMEDCTAttribute
    SNOMEDCTAttributeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SNOMEDCTAttribute)
    SNOMEDCTAttributeType.add_member(:acuity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACUITY", traits: {"smithy.api#enumValue" => "ACUITY"}))
    SNOMEDCTAttributeType.add_member(:quality, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUALITY", traits: {"smithy.api#enumValue" => "QUALITY"}))
    SNOMEDCTAttributeType.add_member(:direction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIRECTION", traits: {"smithy.api#enumValue" => "DIRECTION"}))
    SNOMEDCTAttributeType.add_member(:system_organ_site, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SYSTEM_ORGAN_SITE", traits: {"smithy.api#enumValue" => "SYSTEM_ORGAN_SITE"}))
    SNOMEDCTAttributeType.add_member(:test_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEST_VALUE", traits: {"smithy.api#enumValue" => "TEST_VALUE"}))
    SNOMEDCTAttributeType.add_member(:test_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEST_UNIT", traits: {"smithy.api#enumValue" => "TEST_UNIT"}))
    SNOMEDCTConcept.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Description"))
    SNOMEDCTConcept.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Code"))
    SNOMEDCTConcept.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, location_name: "Score"))
    SNOMEDCTConcept.type = Types::SNOMEDCTConcept
    SNOMEDCTConceptList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SNOMEDCTConcept)
    SNOMEDCTDetails.add_member(:edition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Edition"))
    SNOMEDCTDetails.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Language"))
    SNOMEDCTDetails.add_member(:version_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "VersionDate"))
    SNOMEDCTDetails.type = Types::SNOMEDCTDetails
    SNOMEDCTEntity.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "Id"))
    SNOMEDCTEntity.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: OntologyLinkingBoundedLengthString, location_name: "Text"))
    SNOMEDCTEntity.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: SNOMEDCTEntityCategory, location_name: "Category"))
    SNOMEDCTEntity.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SNOMEDCTEntityType, location_name: "Type"))
    SNOMEDCTEntity.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, location_name: "Score"))
    SNOMEDCTEntity.add_member(:begin_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "BeginOffset"))
    SNOMEDCTEntity.add_member(:end_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "EndOffset"))
    SNOMEDCTEntity.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SNOMEDCTAttributeList, location_name: "Attributes"))
    SNOMEDCTEntity.add_member(:traits, ::Smithy::Schema::Shapes::MemberShape.new(target: SNOMEDCTTraitList, location_name: "Traits"))
    SNOMEDCTEntity.add_member(:snomedct_concepts, ::Smithy::Schema::Shapes::MemberShape.new(target: SNOMEDCTConceptList, location_name: "SNOMEDCTConcepts"))
    SNOMEDCTEntity.type = Types::SNOMEDCTEntity
    SNOMEDCTEntityCategory.add_member(:medical_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEDICAL_CONDITION", traits: {"smithy.api#enumValue" => "MEDICAL_CONDITION"}))
    SNOMEDCTEntityCategory.add_member(:anatomy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ANATOMY", traits: {"smithy.api#enumValue" => "ANATOMY"}))
    SNOMEDCTEntityCategory.add_member(:test_treatment_procedure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEST_TREATMENT_PROCEDURE", traits: {"smithy.api#enumValue" => "TEST_TREATMENT_PROCEDURE"}))
    SNOMEDCTEntityList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SNOMEDCTEntity)
    SNOMEDCTEntityType.add_member(:dx_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DX_NAME", traits: {"smithy.api#enumValue" => "DX_NAME"}))
    SNOMEDCTEntityType.add_member(:test_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEST_NAME", traits: {"smithy.api#enumValue" => "TEST_NAME"}))
    SNOMEDCTEntityType.add_member(:procedure_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROCEDURE_NAME", traits: {"smithy.api#enumValue" => "PROCEDURE_NAME"}))
    SNOMEDCTEntityType.add_member(:treatment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TREATMENT_NAME", traits: {"smithy.api#enumValue" => "TREATMENT_NAME"}))
    SNOMEDCTRelationshipType.add_member(:acuity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACUITY", traits: {"smithy.api#enumValue" => "ACUITY"}))
    SNOMEDCTRelationshipType.add_member(:quality, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUALITY", traits: {"smithy.api#enumValue" => "QUALITY"}))
    SNOMEDCTRelationshipType.add_member(:test_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEST_VALUE", traits: {"smithy.api#enumValue" => "TEST_VALUE"}))
    SNOMEDCTRelationshipType.add_member(:test_units, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEST_UNITS", traits: {"smithy.api#enumValue" => "TEST_UNITS"}))
    SNOMEDCTRelationshipType.add_member(:direction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIRECTION", traits: {"smithy.api#enumValue" => "DIRECTION"}))
    SNOMEDCTRelationshipType.add_member(:system_organ_site, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SYSTEM_ORGAN_SITE", traits: {"smithy.api#enumValue" => "SYSTEM_ORGAN_SITE"}))
    SNOMEDCTRelationshipType.add_member(:test_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEST_UNIT", traits: {"smithy.api#enumValue" => "TEST_UNIT"}))
    SNOMEDCTTrait.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SNOMEDCTTraitName, location_name: "Name"))
    SNOMEDCTTrait.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, location_name: "Score"))
    SNOMEDCTTrait.type = Types::SNOMEDCTTrait
    SNOMEDCTTraitList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SNOMEDCTTrait)
    SNOMEDCTTraitName.add_member(:negation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NEGATION", traits: {"smithy.api#enumValue" => "NEGATION"}))
    SNOMEDCTTraitName.add_member(:diagnosis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIAGNOSIS", traits: {"smithy.api#enumValue" => "DIAGNOSIS"}))
    SNOMEDCTTraitName.add_member(:sign, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SIGN", traits: {"smithy.api#enumValue" => "SIGN"}))
    SNOMEDCTTraitName.add_member(:symptom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SYMPTOM", traits: {"smithy.api#enumValue" => "SYMPTOM"}))
    SNOMEDCTTraitName.add_member(:pertains_to_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PERTAINS_TO_FAMILY", traits: {"smithy.api#enumValue" => "PERTAINS_TO_FAMILY"}))
    SNOMEDCTTraitName.add_member(:hypothetical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HYPOTHETICAL", traits: {"smithy.api#enumValue" => "HYPOTHETICAL"}))
    SNOMEDCTTraitName.add_member(:low_confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW_CONFIDENCE", traits: {"smithy.api#enumValue" => "LOW_CONFIDENCE"}))
    SNOMEDCTTraitName.add_member(:past_history, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PAST_HISTORY", traits: {"smithy.api#enumValue" => "PAST_HISTORY"}))
    SNOMEDCTTraitName.add_member(:future, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FUTURE", traits: {"smithy.api#enumValue" => "FUTURE"}))
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StartEntitiesDetectionV2JobRequest.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, location_name: "InputDataConfig", traits: {"smithy.api#required" => {}}))
    StartEntitiesDetectionV2JobRequest.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, location_name: "OutputDataConfig", traits: {"smithy.api#required" => {}}))
    StartEntitiesDetectionV2JobRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, location_name: "DataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    StartEntitiesDetectionV2JobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "JobName"))
    StartEntitiesDetectionV2JobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestTokenString, location_name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartEntitiesDetectionV2JobRequest.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKey, location_name: "KMSKey"))
    StartEntitiesDetectionV2JobRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, location_name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    StartEntitiesDetectionV2JobRequest.type = Types::StartEntitiesDetectionV2JobRequest
    StartEntitiesDetectionV2JobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId"))
    StartEntitiesDetectionV2JobResponse.type = Types::StartEntitiesDetectionV2JobResponse
    StartICD10CMInferenceJobRequest.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, location_name: "InputDataConfig", traits: {"smithy.api#required" => {}}))
    StartICD10CMInferenceJobRequest.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, location_name: "OutputDataConfig", traits: {"smithy.api#required" => {}}))
    StartICD10CMInferenceJobRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, location_name: "DataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    StartICD10CMInferenceJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "JobName"))
    StartICD10CMInferenceJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestTokenString, location_name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartICD10CMInferenceJobRequest.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKey, location_name: "KMSKey"))
    StartICD10CMInferenceJobRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, location_name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    StartICD10CMInferenceJobRequest.type = Types::StartICD10CMInferenceJobRequest
    StartICD10CMInferenceJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId"))
    StartICD10CMInferenceJobResponse.type = Types::StartICD10CMInferenceJobResponse
    StartPHIDetectionJobRequest.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, location_name: "InputDataConfig", traits: {"smithy.api#required" => {}}))
    StartPHIDetectionJobRequest.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, location_name: "OutputDataConfig", traits: {"smithy.api#required" => {}}))
    StartPHIDetectionJobRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, location_name: "DataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    StartPHIDetectionJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "JobName"))
    StartPHIDetectionJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestTokenString, location_name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartPHIDetectionJobRequest.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKey, location_name: "KMSKey"))
    StartPHIDetectionJobRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, location_name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    StartPHIDetectionJobRequest.type = Types::StartPHIDetectionJobRequest
    StartPHIDetectionJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId"))
    StartPHIDetectionJobResponse.type = Types::StartPHIDetectionJobResponse
    StartRxNormInferenceJobRequest.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, location_name: "InputDataConfig", traits: {"smithy.api#required" => {}}))
    StartRxNormInferenceJobRequest.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, location_name: "OutputDataConfig", traits: {"smithy.api#required" => {}}))
    StartRxNormInferenceJobRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, location_name: "DataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    StartRxNormInferenceJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "JobName"))
    StartRxNormInferenceJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestTokenString, location_name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartRxNormInferenceJobRequest.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKey, location_name: "KMSKey"))
    StartRxNormInferenceJobRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, location_name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    StartRxNormInferenceJobRequest.type = Types::StartRxNormInferenceJobRequest
    StartRxNormInferenceJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId"))
    StartRxNormInferenceJobResponse.type = Types::StartRxNormInferenceJobResponse
    StartSNOMEDCTInferenceJobRequest.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, location_name: "InputDataConfig", traits: {"smithy.api#required" => {}}))
    StartSNOMEDCTInferenceJobRequest.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, location_name: "OutputDataConfig", traits: {"smithy.api#required" => {}}))
    StartSNOMEDCTInferenceJobRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, location_name: "DataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    StartSNOMEDCTInferenceJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "JobName"))
    StartSNOMEDCTInferenceJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestTokenString, location_name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartSNOMEDCTInferenceJobRequest.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKey, location_name: "KMSKey"))
    StartSNOMEDCTInferenceJobRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, location_name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    StartSNOMEDCTInferenceJobRequest.type = Types::StartSNOMEDCTInferenceJobRequest
    StartSNOMEDCTInferenceJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId"))
    StartSNOMEDCTInferenceJobResponse.type = Types::StartSNOMEDCTInferenceJobResponse
    StopEntitiesDetectionV2JobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    StopEntitiesDetectionV2JobRequest.type = Types::StopEntitiesDetectionV2JobRequest
    StopEntitiesDetectionV2JobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId"))
    StopEntitiesDetectionV2JobResponse.type = Types::StopEntitiesDetectionV2JobResponse
    StopICD10CMInferenceJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    StopICD10CMInferenceJobRequest.type = Types::StopICD10CMInferenceJobRequest
    StopICD10CMInferenceJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId"))
    StopICD10CMInferenceJobResponse.type = Types::StopICD10CMInferenceJobResponse
    StopPHIDetectionJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    StopPHIDetectionJobRequest.type = Types::StopPHIDetectionJobRequest
    StopPHIDetectionJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId"))
    StopPHIDetectionJobResponse.type = Types::StopPHIDetectionJobResponse
    StopRxNormInferenceJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    StopRxNormInferenceJobRequest.type = Types::StopRxNormInferenceJobRequest
    StopRxNormInferenceJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId"))
    StopRxNormInferenceJobResponse.type = Types::StopRxNormInferenceJobResponse
    StopSNOMEDCTInferenceJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    StopSNOMEDCTInferenceJobRequest.type = Types::StopSNOMEDCTInferenceJobRequest
    StopSNOMEDCTInferenceJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId"))
    StopSNOMEDCTInferenceJobResponse.type = Types::StopSNOMEDCTInferenceJobResponse
    TextSizeLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message"))
    TextSizeLimitExceededException.type = Types::TextSizeLimitExceededException
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    Trait.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, location_name: "Name"))
    Trait.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, location_name: "Score"))
    Trait.type = Types::Trait
    TraitList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Trait)
    UnmappedAttribute.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, location_name: "Type"))
    UnmappedAttribute.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: Attribute, location_name: "Attribute"))
    UnmappedAttribute.type = Types::UnmappedAttribute
    UnmappedAttributeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UnmappedAttribute)
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message"))
    ValidationException.type = Types::ValidationException

    ComprehendMedical20181030 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.comprehendmedical#ComprehendMedical_20181030"
      service.name = "ComprehendMedical20181030"
      service.version = "2018-10-30"
      service.traits = {"aws.api#service" => {"sdkId" => "ComprehendMedical", "arnNamespace" => "comprehendmedical", "cloudFormationName" => "ComprehendMedical", "cloudTrailEventSource" => "comprehendmedical.amazonaws.com", "endpointPrefix" => "comprehendmedical"}, "aws.auth#sigv4" => {"name" => "comprehendmedical"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Comprehend Medical"}
      service.add_operation(:describe_entities_detection_v2_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#DescribeEntitiesDetectionV2Job"
        operation.name = "DescribeEntitiesDetectionV2Job"
        operation.input = DescribeEntitiesDetectionV2JobRequest
        operation.output = DescribeEntitiesDetectionV2JobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_icd10_cm_inference_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#DescribeICD10CMInferenceJob"
        operation.name = "DescribeICD10CMInferenceJob"
        operation.input = DescribeICD10CMInferenceJobRequest
        operation.output = DescribeICD10CMInferenceJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_phi_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#DescribePHIDetectionJob"
        operation.name = "DescribePHIDetectionJob"
        operation.input = DescribePHIDetectionJobRequest
        operation.output = DescribePHIDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_rx_norm_inference_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#DescribeRxNormInferenceJob"
        operation.name = "DescribeRxNormInferenceJob"
        operation.input = DescribeRxNormInferenceJobRequest
        operation.output = DescribeRxNormInferenceJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_snomedct_inference_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#DescribeSNOMEDCTInferenceJob"
        operation.name = "DescribeSNOMEDCTInferenceJob"
        operation.input = DescribeSNOMEDCTInferenceJobRequest
        operation.output = DescribeSNOMEDCTInferenceJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:detect_entities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#DetectEntities"
        operation.name = "DetectEntities"
        operation.input = DetectEntitiesRequest
        operation.output = DetectEntitiesResponse
        operation.errors << InternalServerException
        operation.errors << InvalidEncodingException
        operation.errors << InvalidRequestException
        operation.errors << ServiceUnavailableException
        operation.errors << TextSizeLimitExceededException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This operation is deprecated, use DetectEntitiesV2 instead."}}
      end)
      service.add_operation(:detect_entities_v2, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#DetectEntitiesV2"
        operation.name = "DetectEntitiesV2"
        operation.input = DetectEntitiesV2Request
        operation.output = DetectEntitiesV2Response
        operation.errors << InternalServerException
        operation.errors << InvalidEncodingException
        operation.errors << InvalidRequestException
        operation.errors << ServiceUnavailableException
        operation.errors << TextSizeLimitExceededException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:detect_phi, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#DetectPHI"
        operation.name = "DetectPHI"
        operation.input = DetectPHIRequest
        operation.output = DetectPHIResponse
        operation.errors << InternalServerException
        operation.errors << InvalidEncodingException
        operation.errors << InvalidRequestException
        operation.errors << ServiceUnavailableException
        operation.errors << TextSizeLimitExceededException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:infer_icd10_cm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#InferICD10CM"
        operation.name = "InferICD10CM"
        operation.input = InferICD10CMRequest
        operation.output = InferICD10CMResponse
        operation.errors << InternalServerException
        operation.errors << InvalidEncodingException
        operation.errors << InvalidRequestException
        operation.errors << ServiceUnavailableException
        operation.errors << TextSizeLimitExceededException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:infer_rx_norm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#InferRxNorm"
        operation.name = "InferRxNorm"
        operation.input = InferRxNormRequest
        operation.output = InferRxNormResponse
        operation.errors << InternalServerException
        operation.errors << InvalidEncodingException
        operation.errors << InvalidRequestException
        operation.errors << ServiceUnavailableException
        operation.errors << TextSizeLimitExceededException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:infer_snomedct, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#InferSNOMEDCT"
        operation.name = "InferSNOMEDCT"
        operation.input = InferSNOMEDCTRequest
        operation.output = InferSNOMEDCTResponse
        operation.errors << InternalServerException
        operation.errors << InvalidEncodingException
        operation.errors << InvalidRequestException
        operation.errors << ServiceUnavailableException
        operation.errors << TextSizeLimitExceededException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:list_entities_detection_v2_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#ListEntitiesDetectionV2Jobs"
        operation.name = "ListEntitiesDetectionV2Jobs"
        operation.input = ListEntitiesDetectionV2JobsRequest
        operation.output = ListEntitiesDetectionV2JobsResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_icd10_cm_inference_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#ListICD10CMInferenceJobs"
        operation.name = "ListICD10CMInferenceJobs"
        operation.input = ListICD10CMInferenceJobsRequest
        operation.output = ListICD10CMInferenceJobsResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_phi_detection_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#ListPHIDetectionJobs"
        operation.name = "ListPHIDetectionJobs"
        operation.input = ListPHIDetectionJobsRequest
        operation.output = ListPHIDetectionJobsResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_rx_norm_inference_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#ListRxNormInferenceJobs"
        operation.name = "ListRxNormInferenceJobs"
        operation.input = ListRxNormInferenceJobsRequest
        operation.output = ListRxNormInferenceJobsResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_snomedct_inference_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#ListSNOMEDCTInferenceJobs"
        operation.name = "ListSNOMEDCTInferenceJobs"
        operation.input = ListSNOMEDCTInferenceJobsRequest
        operation.output = ListSNOMEDCTInferenceJobsResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:start_entities_detection_v2_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#StartEntitiesDetectionV2Job"
        operation.name = "StartEntitiesDetectionV2Job"
        operation.input = StartEntitiesDetectionV2JobRequest
        operation.output = StartEntitiesDetectionV2JobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:start_icd10_cm_inference_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#StartICD10CMInferenceJob"
        operation.name = "StartICD10CMInferenceJob"
        operation.input = StartICD10CMInferenceJobRequest
        operation.output = StartICD10CMInferenceJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:start_phi_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#StartPHIDetectionJob"
        operation.name = "StartPHIDetectionJob"
        operation.input = StartPHIDetectionJobRequest
        operation.output = StartPHIDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:start_rx_norm_inference_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#StartRxNormInferenceJob"
        operation.name = "StartRxNormInferenceJob"
        operation.input = StartRxNormInferenceJobRequest
        operation.output = StartRxNormInferenceJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:start_snomedct_inference_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#StartSNOMEDCTInferenceJob"
        operation.name = "StartSNOMEDCTInferenceJob"
        operation.input = StartSNOMEDCTInferenceJobRequest
        operation.output = StartSNOMEDCTInferenceJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:stop_entities_detection_v2_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#StopEntitiesDetectionV2Job"
        operation.name = "StopEntitiesDetectionV2Job"
        operation.input = StopEntitiesDetectionV2JobRequest
        operation.output = StopEntitiesDetectionV2JobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:stop_icd10_cm_inference_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#StopICD10CMInferenceJob"
        operation.name = "StopICD10CMInferenceJob"
        operation.input = StopICD10CMInferenceJobRequest
        operation.output = StopICD10CMInferenceJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:stop_phi_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#StopPHIDetectionJob"
        operation.name = "StopPHIDetectionJob"
        operation.input = StopPHIDetectionJobRequest
        operation.output = StopPHIDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:stop_rx_norm_inference_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#StopRxNormInferenceJob"
        operation.name = "StopRxNormInferenceJob"
        operation.input = StopRxNormInferenceJobRequest
        operation.output = StopRxNormInferenceJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:stop_snomedct_inference_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#StopSNOMEDCTInferenceJob"
        operation.name = "StopSNOMEDCTInferenceJob"
        operation.input = StopSNOMEDCTInferenceJobRequest
        operation.output = StopSNOMEDCTInferenceJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
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
