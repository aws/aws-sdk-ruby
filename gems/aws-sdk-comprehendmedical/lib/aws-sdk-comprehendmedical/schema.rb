# frozen_string_literal: true

# This is generated code!

module Aws::ComprehendMedical
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AnyLengthString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehendmedical#AnyLengthString', name: 'AnyLengthString')
    Attribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#Attribute', name: 'Attribute')
    AttributeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehendmedical#AttributeList', name: 'AttributeList')
    AttributeName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehendmedical#AttributeName', name: 'AttributeName')
    BoundedLengthString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehendmedical#BoundedLengthString', name: 'BoundedLengthString', traits: {"smithy.api#length" => {"min" => 1, "max" => 20000}})
    Characters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#Characters', name: 'Characters')
    ClientRequestTokenString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehendmedical#ClientRequestTokenString', name: 'ClientRequestTokenString', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    ComprehendMedicalAsyncJobFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#ComprehendMedicalAsyncJobFilter', name: 'ComprehendMedicalAsyncJobFilter')
    ComprehendMedicalAsyncJobProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#ComprehendMedicalAsyncJobProperties', name: 'ComprehendMedicalAsyncJobProperties')
    ComprehendMedicalAsyncJobPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehendmedical#ComprehendMedicalAsyncJobPropertiesList', name: 'ComprehendMedicalAsyncJobPropertiesList')
    DescribeEntitiesDetectionV2JobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#DescribeEntitiesDetectionV2JobRequest', name: 'DescribeEntitiesDetectionV2JobRequest')
    DescribeEntitiesDetectionV2JobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#DescribeEntitiesDetectionV2JobResponse', name: 'DescribeEntitiesDetectionV2JobResponse')
    DescribeICD10CMInferenceJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#DescribeICD10CMInferenceJobRequest', name: 'DescribeICD10CMInferenceJobRequest')
    DescribeICD10CMInferenceJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#DescribeICD10CMInferenceJobResponse', name: 'DescribeICD10CMInferenceJobResponse')
    DescribePHIDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#DescribePHIDetectionJobRequest', name: 'DescribePHIDetectionJobRequest')
    DescribePHIDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#DescribePHIDetectionJobResponse', name: 'DescribePHIDetectionJobResponse')
    DescribeRxNormInferenceJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#DescribeRxNormInferenceJobRequest', name: 'DescribeRxNormInferenceJobRequest')
    DescribeRxNormInferenceJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#DescribeRxNormInferenceJobResponse', name: 'DescribeRxNormInferenceJobResponse')
    DescribeSNOMEDCTInferenceJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#DescribeSNOMEDCTInferenceJobRequest', name: 'DescribeSNOMEDCTInferenceJobRequest')
    DescribeSNOMEDCTInferenceJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#DescribeSNOMEDCTInferenceJobResponse', name: 'DescribeSNOMEDCTInferenceJobResponse')
    DetectEntitiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#DetectEntitiesRequest', name: 'DetectEntitiesRequest')
    DetectEntitiesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#DetectEntitiesResponse', name: 'DetectEntitiesResponse')
    DetectEntitiesV2Request = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#DetectEntitiesV2Request', name: 'DetectEntitiesV2Request')
    DetectEntitiesV2Response = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#DetectEntitiesV2Response', name: 'DetectEntitiesV2Response')
    DetectPHIRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#DetectPHIRequest', name: 'DetectPHIRequest')
    DetectPHIResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#DetectPHIResponse', name: 'DetectPHIResponse')
    Entity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#Entity', name: 'Entity')
    EntityList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehendmedical#EntityList', name: 'EntityList')
    EntitySubType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehendmedical#EntitySubType', name: 'EntitySubType')
    EntityType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehendmedical#EntityType', name: 'EntityType')
    Float = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.comprehendmedical#Float', name: 'Float')
    ICD10CMAttribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#ICD10CMAttribute', name: 'ICD10CMAttribute')
    ICD10CMAttributeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehendmedical#ICD10CMAttributeList', name: 'ICD10CMAttributeList')
    ICD10CMAttributeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehendmedical#ICD10CMAttributeType', name: 'ICD10CMAttributeType')
    ICD10CMConcept = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#ICD10CMConcept', name: 'ICD10CMConcept')
    ICD10CMConceptList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehendmedical#ICD10CMConceptList', name: 'ICD10CMConceptList')
    ICD10CMEntity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#ICD10CMEntity', name: 'ICD10CMEntity')
    ICD10CMEntityCategory = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehendmedical#ICD10CMEntityCategory', name: 'ICD10CMEntityCategory')
    ICD10CMEntityList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehendmedical#ICD10CMEntityList', name: 'ICD10CMEntityList')
    ICD10CMEntityType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehendmedical#ICD10CMEntityType', name: 'ICD10CMEntityType')
    ICD10CMRelationshipType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehendmedical#ICD10CMRelationshipType', name: 'ICD10CMRelationshipType')
    ICD10CMTrait = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#ICD10CMTrait', name: 'ICD10CMTrait')
    ICD10CMTraitList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehendmedical#ICD10CMTraitList', name: 'ICD10CMTraitList')
    ICD10CMTraitName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehendmedical#ICD10CMTraitName', name: 'ICD10CMTraitName')
    IamRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehendmedical#IamRoleArn', name: 'IamRoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+$"})
    InferICD10CMRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#InferICD10CMRequest', name: 'InferICD10CMRequest')
    InferICD10CMResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#InferICD10CMResponse', name: 'InferICD10CMResponse')
    InferRxNormRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#InferRxNormRequest', name: 'InferRxNormRequest')
    InferRxNormResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#InferRxNormResponse', name: 'InferRxNormResponse')
    InferSNOMEDCTRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#InferSNOMEDCTRequest', name: 'InferSNOMEDCTRequest')
    InferSNOMEDCTResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#InferSNOMEDCTResponse', name: 'InferSNOMEDCTResponse')
    InputDataConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#InputDataConfig', name: 'InputDataConfig')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.comprehendmedical#Integer', name: 'Integer')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidEncodingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#InvalidEncodingException', name: 'InvalidEncodingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    JobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehendmedical#JobId', name: 'JobId', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"})
    JobName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehendmedical#JobName', name: 'JobName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"})
    JobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehendmedical#JobStatus', name: 'JobStatus')
    KMSKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehendmedical#KMSKey', name: 'KMSKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => ".*"})
    LanguageCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehendmedical#LanguageCode', name: 'LanguageCode')
    ListEntitiesDetectionV2JobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#ListEntitiesDetectionV2JobsRequest', name: 'ListEntitiesDetectionV2JobsRequest')
    ListEntitiesDetectionV2JobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#ListEntitiesDetectionV2JobsResponse', name: 'ListEntitiesDetectionV2JobsResponse')
    ListICD10CMInferenceJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#ListICD10CMInferenceJobsRequest', name: 'ListICD10CMInferenceJobsRequest')
    ListICD10CMInferenceJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#ListICD10CMInferenceJobsResponse', name: 'ListICD10CMInferenceJobsResponse')
    ListPHIDetectionJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#ListPHIDetectionJobsRequest', name: 'ListPHIDetectionJobsRequest')
    ListPHIDetectionJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#ListPHIDetectionJobsResponse', name: 'ListPHIDetectionJobsResponse')
    ListRxNormInferenceJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#ListRxNormInferenceJobsRequest', name: 'ListRxNormInferenceJobsRequest')
    ListRxNormInferenceJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#ListRxNormInferenceJobsResponse', name: 'ListRxNormInferenceJobsResponse')
    ListSNOMEDCTInferenceJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#ListSNOMEDCTInferenceJobsRequest', name: 'ListSNOMEDCTInferenceJobsRequest')
    ListSNOMEDCTInferenceJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#ListSNOMEDCTInferenceJobsResponse', name: 'ListSNOMEDCTInferenceJobsResponse')
    ManifestFilePath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehendmedical#ManifestFilePath', name: 'ManifestFilePath', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    MaxResultsInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.comprehendmedical#MaxResultsInteger', name: 'MaxResultsInteger', traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    ModelVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehendmedical#ModelVersion', name: 'ModelVersion')
    OntologyLinkingBoundedLengthString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehendmedical#OntologyLinkingBoundedLengthString', name: 'OntologyLinkingBoundedLengthString', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    OutputDataConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#OutputDataConfig', name: 'OutputDataConfig')
    RelationshipType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehendmedical#RelationshipType', name: 'RelationshipType')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RxNormAttribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#RxNormAttribute', name: 'RxNormAttribute')
    RxNormAttributeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehendmedical#RxNormAttributeList', name: 'RxNormAttributeList')
    RxNormAttributeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehendmedical#RxNormAttributeType', name: 'RxNormAttributeType')
    RxNormConcept = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#RxNormConcept', name: 'RxNormConcept')
    RxNormConceptList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehendmedical#RxNormConceptList', name: 'RxNormConceptList')
    RxNormEntity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#RxNormEntity', name: 'RxNormEntity')
    RxNormEntityCategory = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehendmedical#RxNormEntityCategory', name: 'RxNormEntityCategory')
    RxNormEntityList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehendmedical#RxNormEntityList', name: 'RxNormEntityList')
    RxNormEntityType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehendmedical#RxNormEntityType', name: 'RxNormEntityType')
    RxNormTrait = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#RxNormTrait', name: 'RxNormTrait')
    RxNormTraitList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehendmedical#RxNormTraitList', name: 'RxNormTraitList')
    RxNormTraitName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehendmedical#RxNormTraitName', name: 'RxNormTraitName')
    S3Bucket = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehendmedical#S3Bucket', name: 'S3Bucket', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[0-9a-z\\.\\-_]*(?!\\.)$"})
    S3Key = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehendmedical#S3Key', name: 'S3Key', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*"})
    SNOMEDCTAttribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#SNOMEDCTAttribute', name: 'SNOMEDCTAttribute')
    SNOMEDCTAttributeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehendmedical#SNOMEDCTAttributeList', name: 'SNOMEDCTAttributeList')
    SNOMEDCTAttributeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehendmedical#SNOMEDCTAttributeType', name: 'SNOMEDCTAttributeType')
    SNOMEDCTConcept = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#SNOMEDCTConcept', name: 'SNOMEDCTConcept')
    SNOMEDCTConceptList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehendmedical#SNOMEDCTConceptList', name: 'SNOMEDCTConceptList')
    SNOMEDCTDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#SNOMEDCTDetails', name: 'SNOMEDCTDetails')
    SNOMEDCTEntity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#SNOMEDCTEntity', name: 'SNOMEDCTEntity')
    SNOMEDCTEntityCategory = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehendmedical#SNOMEDCTEntityCategory', name: 'SNOMEDCTEntityCategory')
    SNOMEDCTEntityList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehendmedical#SNOMEDCTEntityList', name: 'SNOMEDCTEntityList')
    SNOMEDCTEntityType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehendmedical#SNOMEDCTEntityType', name: 'SNOMEDCTEntityType')
    SNOMEDCTRelationshipType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehendmedical#SNOMEDCTRelationshipType', name: 'SNOMEDCTRelationshipType')
    SNOMEDCTTrait = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#SNOMEDCTTrait', name: 'SNOMEDCTTrait')
    SNOMEDCTTraitList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehendmedical#SNOMEDCTTraitList', name: 'SNOMEDCTTraitList')
    SNOMEDCTTraitName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehendmedical#SNOMEDCTTraitName', name: 'SNOMEDCTTraitName')
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    StartEntitiesDetectionV2JobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#StartEntitiesDetectionV2JobRequest', name: 'StartEntitiesDetectionV2JobRequest')
    StartEntitiesDetectionV2JobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#StartEntitiesDetectionV2JobResponse', name: 'StartEntitiesDetectionV2JobResponse')
    StartICD10CMInferenceJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#StartICD10CMInferenceJobRequest', name: 'StartICD10CMInferenceJobRequest')
    StartICD10CMInferenceJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#StartICD10CMInferenceJobResponse', name: 'StartICD10CMInferenceJobResponse')
    StartPHIDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#StartPHIDetectionJobRequest', name: 'StartPHIDetectionJobRequest')
    StartPHIDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#StartPHIDetectionJobResponse', name: 'StartPHIDetectionJobResponse')
    StartRxNormInferenceJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#StartRxNormInferenceJobRequest', name: 'StartRxNormInferenceJobRequest')
    StartRxNormInferenceJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#StartRxNormInferenceJobResponse', name: 'StartRxNormInferenceJobResponse')
    StartSNOMEDCTInferenceJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#StartSNOMEDCTInferenceJobRequest', name: 'StartSNOMEDCTInferenceJobRequest')
    StartSNOMEDCTInferenceJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#StartSNOMEDCTInferenceJobResponse', name: 'StartSNOMEDCTInferenceJobResponse')
    StopEntitiesDetectionV2JobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#StopEntitiesDetectionV2JobRequest', name: 'StopEntitiesDetectionV2JobRequest')
    StopEntitiesDetectionV2JobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#StopEntitiesDetectionV2JobResponse', name: 'StopEntitiesDetectionV2JobResponse')
    StopICD10CMInferenceJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#StopICD10CMInferenceJobRequest', name: 'StopICD10CMInferenceJobRequest')
    StopICD10CMInferenceJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#StopICD10CMInferenceJobResponse', name: 'StopICD10CMInferenceJobResponse')
    StopPHIDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#StopPHIDetectionJobRequest', name: 'StopPHIDetectionJobRequest')
    StopPHIDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#StopPHIDetectionJobResponse', name: 'StopPHIDetectionJobResponse')
    StopRxNormInferenceJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#StopRxNormInferenceJobRequest', name: 'StopRxNormInferenceJobRequest')
    StopRxNormInferenceJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#StopRxNormInferenceJobResponse', name: 'StopRxNormInferenceJobResponse')
    StopSNOMEDCTInferenceJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#StopSNOMEDCTInferenceJobRequest', name: 'StopSNOMEDCTInferenceJobRequest')
    StopSNOMEDCTInferenceJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#StopSNOMEDCTInferenceJobResponse', name: 'StopSNOMEDCTInferenceJobResponse')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehendmedical#String', name: 'String', traits: {"smithy.api#length" => {"min" => 1}})
    TextSizeLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#TextSizeLimitExceededException', name: 'TextSizeLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.comprehendmedical#Timestamp', name: 'Timestamp')
    TooManyRequestsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Trait = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#Trait', name: 'Trait')
    TraitList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehendmedical#TraitList', name: 'TraitList')
    UnmappedAttribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#UnmappedAttribute', name: 'UnmappedAttribute')
    UnmappedAttributeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehendmedical#UnmappedAttributeList', name: 'UnmappedAttributeList')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehendmedical#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    Attribute.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: EntitySubType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p> The type of attribute. </p>"}))
    Attribute.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p> The level of confidence that Amazon Comprehend Medical has that the segment of text is correctly recognized\n      as an attribute. </p>"}))
    Attribute.add_member(:relationship_score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'RelationshipScore', traits: {"smithy.api#documentation" => "<p> The level of confidence that Amazon Comprehend Medical has that this attribute is correctly related to this\n      entity. </p>"}))
    Attribute.add_member(:relationship_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RelationshipType, location_name: 'RelationshipType', traits: {"smithy.api#documentation" => "<p>The type of relationship between the entity and attribute. Type for the relationship is\n        <code>OVERLAP</code>, indicating that the entity occurred at the same time as the\n        <code>Date_Expression</code>. </p>"}))
    Attribute.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Id', traits: {"smithy.api#documentation" => "<p> The numeric identifier for this attribute. This is a monotonically increasing id unique\n      within this response rather than a global unique identifier. </p>"}))
    Attribute.add_member(:begin_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BeginOffset', traits: {"smithy.api#documentation" => "<p> The 0-based character offset in the input text that shows where the attribute begins. The\n      offset returns the UTF-8 code point in the string. </p>"}))
    Attribute.add_member(:end_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EndOffset', traits: {"smithy.api#documentation" => "<p> The 0-based character offset in the input text that shows where the attribute ends. The\n      offset returns the UTF-8 code point in the string.</p>"}))
    Attribute.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Text', traits: {"smithy.api#documentation" => "<p> The segment of input text extracted as this attribute.</p>"}))
    Attribute.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityType, location_name: 'Category', traits: {"smithy.api#documentation" => "<p> The category of attribute. </p>"}))
    Attribute.add_member(:traits, Smithy::Schema::Shapes::ShapeRef.new(shape: TraitList, location_name: 'Traits', traits: {"smithy.api#documentation" => "<p> Contextual information for this attribute. </p>"}))
    Attribute.type = Types::Attribute
    AttributeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Attribute)
    AttributeName.add_member(:sign, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIGN', traits: {"smithy.api#enumValue" => "SIGN"}))
    AttributeName.add_member(:symptom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYMPTOM', traits: {"smithy.api#enumValue" => "SYMPTOM"}))
    AttributeName.add_member(:diagnosis, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIAGNOSIS', traits: {"smithy.api#enumValue" => "DIAGNOSIS"}))
    AttributeName.add_member(:negation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEGATION', traits: {"smithy.api#enumValue" => "NEGATION"}))
    AttributeName.add_member(:pertains_to_family, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERTAINS_TO_FAMILY', traits: {"smithy.api#enumValue" => "PERTAINS_TO_FAMILY"}))
    AttributeName.add_member(:hypothetical, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HYPOTHETICAL', traits: {"smithy.api#enumValue" => "HYPOTHETICAL"}))
    AttributeName.add_member(:low_confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW_CONFIDENCE', traits: {"smithy.api#enumValue" => "LOW_CONFIDENCE"}))
    AttributeName.add_member(:past_history, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAST_HISTORY', traits: {"smithy.api#enumValue" => "PAST_HISTORY"}))
    AttributeName.add_member(:future, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FUTURE', traits: {"smithy.api#enumValue" => "FUTURE"}))
    Characters.add_member(:original_text_characters, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'OriginalTextCharacters', traits: {"smithy.api#documentation" => "<p>\n      The number of characters present in the input text document as processed by Amazon Comprehend Medical.\n    </p>"}))
    Characters.type = Types::Characters
    ComprehendMedicalAsyncJobFilter.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>Filters on the name of the job.</p>"}))
    ComprehendMedicalAsyncJobFilter.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on job status. Returns only jobs with the specified\n      status.</p>"}))
    ComprehendMedicalAsyncJobFilter.add_member(:submit_time_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTimeBefore', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on the time that the job was submitted for processing.\n      Returns only jobs submitted before the specified time. Jobs are returned in ascending order,\n      oldest to newest.</p>"}))
    ComprehendMedicalAsyncJobFilter.add_member(:submit_time_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTimeAfter', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on the time that the job was submitted for processing.\n      Returns only jobs submitted after the specified time. Jobs are returned in descending order,\n      newest to oldest.</p>"}))
    ComprehendMedicalAsyncJobFilter.type = Types::ComprehendMedicalAsyncJobFilter
    ComprehendMedicalAsyncJobProperties.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier assigned to the detection job.</p>"}))
    ComprehendMedicalAsyncJobProperties.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The name that you assigned to the detection job.</p>"}))
    ComprehendMedicalAsyncJobProperties.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The current status of the detection job. If the status is <code>FAILED</code>, the\n        <code>Message</code> field shows the reason for the failure.</p>"}))
    ComprehendMedicalAsyncJobProperties.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: AnyLengthString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A description of the status of a job.</p>"}))
    ComprehendMedicalAsyncJobProperties.add_member(:submit_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTime', traits: {"smithy.api#documentation" => "<p>The time that the detection job was submitted for processing.</p>"}))
    ComprehendMedicalAsyncJobProperties.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time that the detection job completed.</p>"}))
    ComprehendMedicalAsyncJobProperties.add_member(:expiration_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpirationTime', traits: {"smithy.api#documentation" => "<p>The date and time that job metadata is deleted from the server. Output files in your S3\n      bucket will not be deleted. After the metadata is deleted, the job will no longer appear in\n      the results of the <code>ListEntitiesDetectionV2Job</code> or the\n        <code>ListPHIDetectionJobs</code> operation.</p>"}))
    ComprehendMedicalAsyncJobProperties.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>The input data configuration that you supplied when you created the detection job.</p>"}))
    ComprehendMedicalAsyncJobProperties.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>The output data configuration that you supplied when you created the detection job.</p>"}))
    ComprehendMedicalAsyncJobProperties.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language code of the input documents.</p>"}))
    ComprehendMedicalAsyncJobProperties.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that gives Amazon Comprehend Medical read access to your input data.</p>"}))
    ComprehendMedicalAsyncJobProperties.add_member(:manifest_file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestFilePath, location_name: 'ManifestFilePath', traits: {"smithy.api#documentation" => "<p>The path to the file that describes the results of a batch job.</p>"}))
    ComprehendMedicalAsyncJobProperties.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKey, location_name: 'KMSKey', traits: {"smithy.api#documentation" => "<p>The AWS Key Management Service key, if any, used to encrypt the output files. </p>"}))
    ComprehendMedicalAsyncJobProperties.add_member(:model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelVersion, location_name: 'ModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the model used to analyze the documents. The version number looks like\n      X.X.X. You can use this information to track the model used for a particular batch of\n      documents.</p>"}))
    ComprehendMedicalAsyncJobProperties.type = Types::ComprehendMedicalAsyncJobProperties
    ComprehendMedicalAsyncJobPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobProperties)
    DescribeEntitiesDetectionV2JobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier that Amazon Comprehend Medical generated for the job. The\n        <code>StartEntitiesDetectionV2Job</code> operation returns this identifier in its\n      response.</p>", "smithy.api#required" => {}}))
    DescribeEntitiesDetectionV2JobRequest.type = Types::DescribeEntitiesDetectionV2JobRequest
    DescribeEntitiesDetectionV2JobResponse.add_member(:comprehend_medical_async_job_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobProperties, location_name: 'ComprehendMedicalAsyncJobProperties', traits: {"smithy.api#documentation" => "<p>An object that contains the properties associated with a detection job.</p>"}))
    DescribeEntitiesDetectionV2JobResponse.type = Types::DescribeEntitiesDetectionV2JobResponse
    DescribeICD10CMInferenceJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier that Amazon Comprehend Medical generated for the job. <code>The\n        StartICD10CMInferenceJob</code> operation returns this identifier in its response.</p>", "smithy.api#required" => {}}))
    DescribeICD10CMInferenceJobRequest.type = Types::DescribeICD10CMInferenceJobRequest
    DescribeICD10CMInferenceJobResponse.add_member(:comprehend_medical_async_job_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobProperties, location_name: 'ComprehendMedicalAsyncJobProperties', traits: {"smithy.api#documentation" => "<p>An object that contains the properties associated with a detection job.</p>"}))
    DescribeICD10CMInferenceJobResponse.type = Types::DescribeICD10CMInferenceJobResponse
    DescribePHIDetectionJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier that Amazon Comprehend Medical generated for the job. The <code>StartPHIDetectionJob</code>\n      operation returns this identifier in its response.</p>", "smithy.api#required" => {}}))
    DescribePHIDetectionJobRequest.type = Types::DescribePHIDetectionJobRequest
    DescribePHIDetectionJobResponse.add_member(:comprehend_medical_async_job_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobProperties, location_name: 'ComprehendMedicalAsyncJobProperties', traits: {"smithy.api#documentation" => "<p>An object that contains the properties associated with a detection job.</p>"}))
    DescribePHIDetectionJobResponse.type = Types::DescribePHIDetectionJobResponse
    DescribeRxNormInferenceJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier that Amazon Comprehend Medical generated for the job. The\n      StartRxNormInferenceJob operation returns this identifier in its response.</p>", "smithy.api#required" => {}}))
    DescribeRxNormInferenceJobRequest.type = Types::DescribeRxNormInferenceJobRequest
    DescribeRxNormInferenceJobResponse.add_member(:comprehend_medical_async_job_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobProperties, location_name: 'ComprehendMedicalAsyncJobProperties', traits: {"smithy.api#documentation" => "<p>An object that contains the properties associated with a detection job.</p>"}))
    DescribeRxNormInferenceJobResponse.type = Types::DescribeRxNormInferenceJobResponse
    DescribeSNOMEDCTInferenceJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>\n      The identifier that Amazon Comprehend Medical generated for the job. The StartSNOMEDCTInferenceJob operation returns this identifier in its response.\n    </p>", "smithy.api#required" => {}}))
    DescribeSNOMEDCTInferenceJobRequest.type = Types::DescribeSNOMEDCTInferenceJobRequest
    DescribeSNOMEDCTInferenceJobResponse.add_member(:comprehend_medical_async_job_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobProperties, location_name: 'ComprehendMedicalAsyncJobProperties'))
    DescribeSNOMEDCTInferenceJobResponse.type = Types::DescribeSNOMEDCTInferenceJobResponse
    DetectEntitiesRequest.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedLengthString, location_name: 'Text', traits: {"smithy.api#documentation" => "<p> A UTF-8 text string containing the clinical content being examined for entities.</p>", "smithy.api#required" => {}}))
    DetectEntitiesRequest.type = Types::DetectEntitiesRequest
    DetectEntitiesResponse.add_member(:entities, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityList, location_name: 'Entities', traits: {"smithy.api#documentation" => "<p>The collection of medical entities extracted from the input text and their associated\n      information. For each entity, the response provides the entity text, the entity category,\n      where the entity text begins and ends, and the level of confidence that Amazon Comprehend Medical has in the\n      detection and analysis. Attributes and traits of the entity are also returned.</p>", "smithy.api#required" => {}}))
    DetectEntitiesResponse.add_member(:unmapped_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: UnmappedAttributeList, location_name: 'UnmappedAttributes', traits: {"smithy.api#documentation" => "<p>Attributes extracted from the input text that we were unable to relate to an\n      entity.</p>"}))
    DetectEntitiesResponse.add_member(:pagination_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PaginationToken', traits: {"smithy.api#documentation" => "<p>If the result of the previous request to <code>DetectEntities</code> was truncated,\n      include the <code>PaginationToken</code> to fetch the next page of entities.</p>"}))
    DetectEntitiesResponse.add_member(:model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the model used to analyze the documents. The version number looks like\n      X.X.X. You can use this information to track the model used for a particular batch of\n      documents.</p>", "smithy.api#required" => {}}))
    DetectEntitiesResponse.type = Types::DetectEntitiesResponse
    DetectEntitiesV2Request.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedLengthString, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>A UTF-8 string containing the clinical content being examined for entities.</p>", "smithy.api#required" => {}}))
    DetectEntitiesV2Request.type = Types::DetectEntitiesV2Request
    DetectEntitiesV2Response.add_member(:entities, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityList, location_name: 'Entities', traits: {"smithy.api#documentation" => "<p>The collection of medical entities extracted from the input text and their associated\n      information. For each entity, the response provides the entity text, the entity category,\n      where the entity text begins and ends, and the level of confidence in the detection and\n      analysis. Attributes and traits of the entity are also returned.</p>", "smithy.api#required" => {}}))
    DetectEntitiesV2Response.add_member(:unmapped_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: UnmappedAttributeList, location_name: 'UnmappedAttributes', traits: {"smithy.api#documentation" => "<p>Attributes extracted from the input text that couldn't be related to an entity.</p>"}))
    DetectEntitiesV2Response.add_member(:pagination_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PaginationToken', traits: {"smithy.api#documentation" => "<p>If the result to the <code>DetectEntitiesV2</code> operation was truncated, include the\n        <code>PaginationToken</code> to fetch the next page of entities.</p>"}))
    DetectEntitiesV2Response.add_member(:model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the model used to analyze the documents. The version number looks like\n      X.X.X. You can use this information to track the model used for a particular batch of\n      documents.</p>", "smithy.api#required" => {}}))
    DetectEntitiesV2Response.type = Types::DetectEntitiesV2Response
    DetectPHIRequest.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedLengthString, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>A UTF-8 text string containing the clinical content being examined for PHI entities.</p>", "smithy.api#required" => {}}))
    DetectPHIRequest.type = Types::DetectPHIRequest
    DetectPHIResponse.add_member(:entities, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityList, location_name: 'Entities', traits: {"smithy.api#documentation" => "<p>The collection of PHI entities extracted from the input text and their associated\n      information. For each entity, the response provides the entity text, the entity category,\n      where the entity text begins and ends, and the level of confidence that Amazon Comprehend Medical has in its\n      detection.</p>", "smithy.api#required" => {}}))
    DetectPHIResponse.add_member(:pagination_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PaginationToken', traits: {"smithy.api#documentation" => "<p>If the result of the previous request to <code>DetectPHI</code> was truncated, include\n      the <code>PaginationToken</code> to fetch the next page of PHI entities. </p>"}))
    DetectPHIResponse.add_member(:model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the model used to analyze the documents. The version number looks like\n      X.X.X. You can use this information to track the model used for a particular batch of\n      documents.</p>", "smithy.api#required" => {}}))
    DetectPHIResponse.type = Types::DetectPHIResponse
    Entity.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Id', traits: {"smithy.api#documentation" => "<p> The numeric identifier for the entity. This is a monotonically increasing id unique\n      within this response rather than a global unique identifier. </p>"}))
    Entity.add_member(:begin_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BeginOffset', traits: {"smithy.api#documentation" => "<p> The 0-based character offset in the input text that shows where the entity begins. The\n      offset returns the UTF-8 code point in the string. </p>"}))
    Entity.add_member(:end_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EndOffset', traits: {"smithy.api#documentation" => "<p> The 0-based character offset in the input text that shows where the entity ends. The\n      offset returns the UTF-8 code point in the string. </p>"}))
    Entity.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p>The level of confidence that Amazon Comprehend Medical has in the accuracy of the detection.</p>"}))
    Entity.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Text', traits: {"smithy.api#documentation" => "<p> The segment of input text extracted as this entity.</p>"}))
    Entity.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityType, location_name: 'Category', traits: {"smithy.api#documentation" => "<p> The category of the entity.</p>"}))
    Entity.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: EntitySubType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p> Describes the specific type of entity with category of entities.</p>"}))
    Entity.add_member(:traits, Smithy::Schema::Shapes::ShapeRef.new(shape: TraitList, location_name: 'Traits', traits: {"smithy.api#documentation" => "<p>Contextual information for the entity.</p>"}))
    Entity.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeList, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p> The extracted attributes that relate to this entity.</p>"}))
    Entity.type = Types::Entity
    EntityList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Entity)
    EntitySubType.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NAME', traits: {"smithy.api#enumValue" => "NAME"}))
    EntitySubType.add_member(:dx_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DX_NAME', traits: {"smithy.api#enumValue" => "DX_NAME"}))
    EntitySubType.add_member(:dosage, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOSAGE', traits: {"smithy.api#enumValue" => "DOSAGE"}))
    EntitySubType.add_member(:route_or_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROUTE_OR_MODE', traits: {"smithy.api#enumValue" => "ROUTE_OR_MODE"}))
    EntitySubType.add_member(:form, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FORM', traits: {"smithy.api#enumValue" => "FORM"}))
    EntitySubType.add_member(:frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FREQUENCY', traits: {"smithy.api#enumValue" => "FREQUENCY"}))
    EntitySubType.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DURATION', traits: {"smithy.api#enumValue" => "DURATION"}))
    EntitySubType.add_member(:generic_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GENERIC_NAME', traits: {"smithy.api#enumValue" => "GENERIC_NAME"}))
    EntitySubType.add_member(:brand_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BRAND_NAME', traits: {"smithy.api#enumValue" => "BRAND_NAME"}))
    EntitySubType.add_member(:strength, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRENGTH', traits: {"smithy.api#enumValue" => "STRENGTH"}))
    EntitySubType.add_member(:rate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RATE', traits: {"smithy.api#enumValue" => "RATE"}))
    EntitySubType.add_member(:acuity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACUITY', traits: {"smithy.api#enumValue" => "ACUITY"}))
    EntitySubType.add_member(:test_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEST_NAME', traits: {"smithy.api#enumValue" => "TEST_NAME"}))
    EntitySubType.add_member(:test_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEST_VALUE', traits: {"smithy.api#enumValue" => "TEST_VALUE"}))
    EntitySubType.add_member(:test_units, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEST_UNITS', traits: {"smithy.api#enumValue" => "TEST_UNITS"}))
    EntitySubType.add_member(:test_unit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEST_UNIT', traits: {"smithy.api#enumValue" => "TEST_UNIT"}))
    EntitySubType.add_member(:procedure_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCEDURE_NAME', traits: {"smithy.api#enumValue" => "PROCEDURE_NAME"}))
    EntitySubType.add_member(:treatment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TREATMENT_NAME', traits: {"smithy.api#enumValue" => "TREATMENT_NAME"}))
    EntitySubType.add_member(:date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATE', traits: {"smithy.api#enumValue" => "DATE"}))
    EntitySubType.add_member(:age, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AGE', traits: {"smithy.api#enumValue" => "AGE"}))
    EntitySubType.add_member(:contact_point, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTACT_POINT', traits: {"smithy.api#enumValue" => "CONTACT_POINT"}))
    EntitySubType.add_member(:phone_or_fax, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PHONE_OR_FAX', traits: {"smithy.api#enumValue" => "PHONE_OR_FAX"}))
    EntitySubType.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL', traits: {"smithy.api#enumValue" => "EMAIL"}))
    EntitySubType.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IDENTIFIER', traits: {"smithy.api#enumValue" => "IDENTIFIER"}))
    EntitySubType.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ID', traits: {"smithy.api#enumValue" => "ID"}))
    EntitySubType.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'URL', traits: {"smithy.api#enumValue" => "URL"}))
    EntitySubType.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDRESS', traits: {"smithy.api#enumValue" => "ADDRESS"}))
    EntitySubType.add_member(:profession, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROFESSION', traits: {"smithy.api#enumValue" => "PROFESSION"}))
    EntitySubType.add_member(:system_organ_site, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM_ORGAN_SITE', traits: {"smithy.api#enumValue" => "SYSTEM_ORGAN_SITE"}))
    EntitySubType.add_member(:direction, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECTION', traits: {"smithy.api#enumValue" => "DIRECTION"}))
    EntitySubType.add_member(:quality, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUALITY', traits: {"smithy.api#enumValue" => "QUALITY"}))
    EntitySubType.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUANTITY', traits: {"smithy.api#enumValue" => "QUANTITY"}))
    EntitySubType.add_member(:time_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIME_EXPRESSION', traits: {"smithy.api#enumValue" => "TIME_EXPRESSION"}))
    EntitySubType.add_member(:time_to_medication_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIME_TO_MEDICATION_NAME', traits: {"smithy.api#enumValue" => "TIME_TO_MEDICATION_NAME"}))
    EntitySubType.add_member(:time_to_dx_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIME_TO_DX_NAME', traits: {"smithy.api#enumValue" => "TIME_TO_DX_NAME"}))
    EntitySubType.add_member(:time_to_test_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIME_TO_TEST_NAME', traits: {"smithy.api#enumValue" => "TIME_TO_TEST_NAME"}))
    EntitySubType.add_member(:time_to_procedure_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIME_TO_PROCEDURE_NAME', traits: {"smithy.api#enumValue" => "TIME_TO_PROCEDURE_NAME"}))
    EntitySubType.add_member(:time_to_treatment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIME_TO_TREATMENT_NAME', traits: {"smithy.api#enumValue" => "TIME_TO_TREATMENT_NAME"}))
    EntitySubType.add_member(:amount, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMOUNT', traits: {"smithy.api#enumValue" => "AMOUNT"}))
    EntitySubType.add_member(:gender, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GENDER', traits: {"smithy.api#enumValue" => "GENDER"}))
    EntitySubType.add_member(:race_ethnicity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RACE_ETHNICITY', traits: {"smithy.api#enumValue" => "RACE_ETHNICITY"}))
    EntitySubType.add_member(:allergies, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLERGIES', traits: {"smithy.api#enumValue" => "ALLERGIES"}))
    EntitySubType.add_member(:tobacco_use, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TOBACCO_USE', traits: {"smithy.api#enumValue" => "TOBACCO_USE"}))
    EntitySubType.add_member(:alcohol_consumption, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALCOHOL_CONSUMPTION', traits: {"smithy.api#enumValue" => "ALCOHOL_CONSUMPTION"}))
    EntitySubType.add_member(:rec_drug_use, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REC_DRUG_USE', traits: {"smithy.api#enumValue" => "REC_DRUG_USE"}))
    EntityType.add_member(:medication, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDICATION', traits: {"smithy.api#enumValue" => "MEDICATION"}))
    EntityType.add_member(:medical_condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDICAL_CONDITION', traits: {"smithy.api#enumValue" => "MEDICAL_CONDITION"}))
    EntityType.add_member(:protected_health_information, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROTECTED_HEALTH_INFORMATION', traits: {"smithy.api#enumValue" => "PROTECTED_HEALTH_INFORMATION"}))
    EntityType.add_member(:test_treatment_procedure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEST_TREATMENT_PROCEDURE', traits: {"smithy.api#enumValue" => "TEST_TREATMENT_PROCEDURE"}))
    EntityType.add_member(:anatomy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANATOMY', traits: {"smithy.api#enumValue" => "ANATOMY"}))
    EntityType.add_member(:time_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIME_EXPRESSION', traits: {"smithy.api#enumValue" => "TIME_EXPRESSION"}))
    EntityType.add_member(:behavioral_environmental_social, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BEHAVIORAL_ENVIRONMENTAL_SOCIAL', traits: {"smithy.api#enumValue" => "BEHAVIORAL_ENVIRONMENTAL_SOCIAL"}))
    ICD10CMAttribute.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ICD10CMAttributeType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of attribute. InferICD10CM detects entities of the type <code>DX_NAME</code>.\n    </p>"}))
    ICD10CMAttribute.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p>The level of confidence that Amazon Comprehend Medical has that the segment of text is\n      correctly recognized as an attribute.</p>"}))
    ICD10CMAttribute.add_member(:relationship_score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'RelationshipScore', traits: {"smithy.api#documentation" => "<p>The level of confidence that Amazon Comprehend Medical has that this attribute is\n      correctly related to this entity.</p>"}))
    ICD10CMAttribute.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The numeric identifier for this attribute. This is a monotonically increasing id unique\n      within this response rather than a global unique identifier.</p>"}))
    ICD10CMAttribute.add_member(:begin_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BeginOffset', traits: {"smithy.api#documentation" => "<p>The 0-based character offset in the input text that shows where the attribute begins. The\n      offset returns the UTF-8 code point in the string.</p>"}))
    ICD10CMAttribute.add_member(:end_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EndOffset', traits: {"smithy.api#documentation" => "<p>The 0-based character offset in the input text that shows where the attribute ends. The\n      offset returns the UTF-8 code point in the string.</p>"}))
    ICD10CMAttribute.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>The segment of input text which contains the detected attribute.</p>"}))
    ICD10CMAttribute.add_member(:traits, Smithy::Schema::Shapes::ShapeRef.new(shape: ICD10CMTraitList, location_name: 'Traits', traits: {"smithy.api#documentation" => "<p>The contextual information for the attribute. The traits recognized by InferICD10CM are\n        <code>DIAGNOSIS</code>, <code>SIGN</code>, <code>SYMPTOM</code>, and\n      <code>NEGATION</code>.</p>"}))
    ICD10CMAttribute.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: ICD10CMEntityType, location_name: 'Category', traits: {"smithy.api#documentation" => "<p>The category of attribute. Can be either of <code>DX_NAME</code> or <code>TIME_EXPRESSION</code>.</p>"}))
    ICD10CMAttribute.add_member(:relationship_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ICD10CMRelationshipType, location_name: 'RelationshipType', traits: {"smithy.api#documentation" => "<p>The type of relationship between the entity and attribute. Type for the relationship can\n        be either of <code>OVERLAP</code> or <code>SYSTEM_ORGAN_SITE</code>.</p>"}))
    ICD10CMAttribute.type = Types::ICD10CMAttribute
    ICD10CMAttributeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ICD10CMAttribute)
    ICD10CMAttributeType.add_member(:acuity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACUITY', traits: {"smithy.api#enumValue" => "ACUITY"}))
    ICD10CMAttributeType.add_member(:direction, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECTION', traits: {"smithy.api#enumValue" => "DIRECTION"}))
    ICD10CMAttributeType.add_member(:system_organ_site, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM_ORGAN_SITE', traits: {"smithy.api#enumValue" => "SYSTEM_ORGAN_SITE"}))
    ICD10CMAttributeType.add_member(:quality, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUALITY', traits: {"smithy.api#enumValue" => "QUALITY"}))
    ICD10CMAttributeType.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUANTITY', traits: {"smithy.api#enumValue" => "QUANTITY"}))
    ICD10CMAttributeType.add_member(:time_to_dx_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIME_TO_DX_NAME', traits: {"smithy.api#enumValue" => "TIME_TO_DX_NAME"}))
    ICD10CMAttributeType.add_member(:time_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIME_EXPRESSION', traits: {"smithy.api#enumValue" => "TIME_EXPRESSION"}))
    ICD10CMConcept.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The long description of the ICD-10-CM code in the ontology.</p>"}))
    ICD10CMConcept.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code', traits: {"smithy.api#documentation" => "<p>The ICD-10-CM code that identifies the concept found in the knowledge base from the\n      Centers for Disease Control.</p>"}))
    ICD10CMConcept.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p>The level of confidence that Amazon Comprehend Medical has that the entity is accurately\n      linked to an ICD-10-CM concept.</p>"}))
    ICD10CMConcept.type = Types::ICD10CMConcept
    ICD10CMConceptList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ICD10CMConcept)
    ICD10CMEntity.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The numeric identifier for the entity. This is a monotonically increasing id unique within\n      this response rather than a global unique identifier.</p>"}))
    ICD10CMEntity.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: OntologyLinkingBoundedLengthString, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>The segment of input text that is matched to the detected entity.</p>"}))
    ICD10CMEntity.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: ICD10CMEntityCategory, location_name: 'Category', traits: {"smithy.api#documentation" => "<p> The category of the entity. InferICD10CM detects entities in the\n        <code>MEDICAL_CONDITION</code> category. </p>"}))
    ICD10CMEntity.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ICD10CMEntityType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Describes the specific type of entity with category of entities. InferICD10CM detects\n      entities of the type <code>DX_NAME</code> and <code>TIME_EXPRESSION</code>.</p>"}))
    ICD10CMEntity.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p>The level of confidence that Amazon Comprehend Medical has in the accuracy of the\n      detection.</p>"}))
    ICD10CMEntity.add_member(:begin_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BeginOffset', traits: {"smithy.api#documentation" => "<p>The 0-based character offset in the input text that shows where the entity begins. The\n      offset returns the UTF-8 code point in the string.</p>"}))
    ICD10CMEntity.add_member(:end_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EndOffset', traits: {"smithy.api#documentation" => "<p>The 0-based character offset in the input text that shows where the entity ends. The\n      offset returns the UTF-8 code point in the string.</p>"}))
    ICD10CMEntity.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: ICD10CMAttributeList, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>The detected attributes that relate to the entity. An extracted segment of the text that\n      is an attribute of an entity, or otherwise related to an entity, such as the nature of a\n      medical condition.</p>"}))
    ICD10CMEntity.add_member(:traits, Smithy::Schema::Shapes::ShapeRef.new(shape: ICD10CMTraitList, location_name: 'Traits', traits: {"smithy.api#documentation" => "<p>Provides Contextual information for the entity. The traits recognized by InferICD10CM are\n        <code>DIAGNOSIS</code>, <code>SIGN</code>, <code>SYMPTOM</code>, and\n      <code>NEGATION.</code>\n         </p>"}))
    ICD10CMEntity.add_member(:icd10_cm_concepts, Smithy::Schema::Shapes::ShapeRef.new(shape: ICD10CMConceptList, location_name: 'ICD10CMConcepts', traits: {"smithy.api#documentation" => "<p>The ICD-10-CM concepts that the entity could refer to, along with a score indicating the\n      likelihood of the match.</p>"}))
    ICD10CMEntity.type = Types::ICD10CMEntity
    ICD10CMEntityCategory.add_member(:medical_condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDICAL_CONDITION', traits: {"smithy.api#enumValue" => "MEDICAL_CONDITION"}))
    ICD10CMEntityList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ICD10CMEntity)
    ICD10CMEntityType.add_member(:dx_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DX_NAME', traits: {"smithy.api#enumValue" => "DX_NAME"}))
    ICD10CMEntityType.add_member(:time_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIME_EXPRESSION', traits: {"smithy.api#enumValue" => "TIME_EXPRESSION"}))
    ICD10CMRelationshipType.add_member(:overlap, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OVERLAP', traits: {"smithy.api#enumValue" => "OVERLAP"}))
    ICD10CMRelationshipType.add_member(:system_organ_site, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM_ORGAN_SITE', traits: {"smithy.api#enumValue" => "SYSTEM_ORGAN_SITE"}))
    ICD10CMRelationshipType.add_member(:quality, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUALITY', traits: {"smithy.api#enumValue" => "QUALITY"}))
    ICD10CMTrait.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ICD10CMTraitName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Provides a name or contextual description about the trait.</p>"}))
    ICD10CMTrait.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p>The level of confidence that Amazon Comprehend Medical has that the segment of text is correctly recognized\n      as a trait.</p>"}))
    ICD10CMTrait.type = Types::ICD10CMTrait
    ICD10CMTraitList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ICD10CMTrait)
    ICD10CMTraitName.add_member(:negation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEGATION', traits: {"smithy.api#enumValue" => "NEGATION"}))
    ICD10CMTraitName.add_member(:diagnosis, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIAGNOSIS', traits: {"smithy.api#enumValue" => "DIAGNOSIS"}))
    ICD10CMTraitName.add_member(:sign, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIGN', traits: {"smithy.api#enumValue" => "SIGN"}))
    ICD10CMTraitName.add_member(:symptom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYMPTOM', traits: {"smithy.api#enumValue" => "SYMPTOM"}))
    ICD10CMTraitName.add_member(:pertains_to_family, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERTAINS_TO_FAMILY', traits: {"smithy.api#enumValue" => "PERTAINS_TO_FAMILY"}))
    ICD10CMTraitName.add_member(:hypothetical, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HYPOTHETICAL', traits: {"smithy.api#enumValue" => "HYPOTHETICAL"}))
    ICD10CMTraitName.add_member(:low_confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW_CONFIDENCE', traits: {"smithy.api#enumValue" => "LOW_CONFIDENCE"}))
    InferICD10CMRequest.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: OntologyLinkingBoundedLengthString, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>The input text used for analysis.</p>", "smithy.api#required" => {}}))
    InferICD10CMRequest.type = Types::InferICD10CMRequest
    InferICD10CMResponse.add_member(:entities, Smithy::Schema::Shapes::ShapeRef.new(shape: ICD10CMEntityList, location_name: 'Entities', traits: {"smithy.api#documentation" => "<p>The medical conditions detected in the text linked to ICD-10-CM concepts. If the action is\n      successful, the service sends back an HTTP 200 response, as well as the entities\n      detected.</p>", "smithy.api#required" => {}}))
    InferICD10CMResponse.add_member(:pagination_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PaginationToken', traits: {"smithy.api#documentation" => "<p>If the result of the previous request to <code>InferICD10CM</code> was truncated, include\n      the <code>PaginationToken</code> to fetch the next page of medical condition entities. </p>"}))
    InferICD10CMResponse.add_member(:model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the model used to analyze the documents, in the format\n        <i>n</i>.<i>n</i>.<i>n</i> You can use this\n      information to track the model used for a particular batch of documents.</p>"}))
    InferICD10CMResponse.type = Types::InferICD10CMResponse
    InferRxNormRequest.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: OntologyLinkingBoundedLengthString, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>The input text used for analysis.</p>", "smithy.api#required" => {}}))
    InferRxNormRequest.type = Types::InferRxNormRequest
    InferRxNormResponse.add_member(:entities, Smithy::Schema::Shapes::ShapeRef.new(shape: RxNormEntityList, location_name: 'Entities', traits: {"smithy.api#documentation" => "<p>The medication entities detected in the text linked to RxNorm concepts. If the action is\n      successful, the service sends back an HTTP 200 response, as well as the entities\n      detected.</p>", "smithy.api#required" => {}}))
    InferRxNormResponse.add_member(:pagination_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PaginationToken', traits: {"smithy.api#documentation" => "<p>If the result of the previous request to <code>InferRxNorm</code> was truncated, include\n      the <code>PaginationToken</code> to fetch the next page of medication entities.</p>"}))
    InferRxNormResponse.add_member(:model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the model used to analyze the documents, in the format\n        <i>n</i>.<i>n</i>.<i>n</i> You can use this\n      information to track the model used for a particular batch of documents.</p>"}))
    InferRxNormResponse.type = Types::InferRxNormResponse
    InferSNOMEDCTRequest.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: OntologyLinkingBoundedLengthString, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>The input text to be analyzed using InferSNOMEDCT.</p>", "smithy.api#required" => {}}))
    InferSNOMEDCTRequest.type = Types::InferSNOMEDCTRequest
    InferSNOMEDCTResponse.add_member(:entities, Smithy::Schema::Shapes::ShapeRef.new(shape: SNOMEDCTEntityList, location_name: 'Entities', traits: {"smithy.api#documentation" => "<p>\n      The collection of medical concept entities extracted from the input text and their associated information. For each entity, the response provides the entity text, the entity category, where the entity text begins and ends, and the level of confidence that Amazon Comprehend Medical has in the detection and analysis. Attributes and traits of the entity are also returned.\n    </p>", "smithy.api#required" => {}}))
    InferSNOMEDCTResponse.add_member(:pagination_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PaginationToken', traits: {"smithy.api#documentation" => "<p>\n      If the result of the request is truncated, the pagination token can be used to fetch the next page of entities.\n    </p>"}))
    InferSNOMEDCTResponse.add_member(:model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ModelVersion', traits: {"smithy.api#documentation" => "<p>\n      The version of the model used to analyze the documents, in the format n.n.n You can use this information to track the model used for a particular batch of documents.\n    </p>"}))
    InferSNOMEDCTResponse.add_member(:snomedct_details, Smithy::Schema::Shapes::ShapeRef.new(shape: SNOMEDCTDetails, location_name: 'SNOMEDCTDetails', traits: {"smithy.api#documentation" => "<p>\n      The details of the SNOMED-CT revision, including the edition, language, and version date. \n    </p>"}))
    InferSNOMEDCTResponse.add_member(:characters, Smithy::Schema::Shapes::ShapeRef.new(shape: Characters, location_name: 'Characters', traits: {"smithy.api#documentation" => "<p>\n      The number of characters in the input request documentation. \n    </p>"}))
    InferSNOMEDCTResponse.type = Types::InferSNOMEDCTResponse
    InputDataConfig.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'S3Bucket', traits: {"smithy.api#documentation" => "<p>The URI of the S3 bucket that contains the input data. The bucket must be in the same\n      region as the API endpoint that you are calling.</p>", "smithy.api#required" => {}}))
    InputDataConfig.add_member(:s3_key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'S3Key', traits: {"smithy.api#documentation" => "<p>The path to the input data files in the S3 bucket.</p>"}))
    InputDataConfig.type = Types::InputDataConfig
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    InvalidEncodingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidEncodingException.type = Types::InvalidEncodingException
    InvalidRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidRequestException.type = Types::InvalidRequestException
    JobStatus.add_member(:submitted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBMITTED', traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    JobStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    JobStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    JobStatus.add_member(:partial_success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARTIAL_SUCCESS', traits: {"smithy.api#enumValue" => "PARTIAL_SUCCESS"}))
    JobStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    JobStatus.add_member(:stop_requested, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_REQUESTED', traits: {"smithy.api#enumValue" => "STOP_REQUESTED"}))
    JobStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    LanguageCode.add_member(:en, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN', traits: {"smithy.api#enumValue" => "en"}))
    ListEntitiesDetectionV2JobsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters the jobs that are returned. You can filter jobs based on their names, status, or\n      the date and time that they were submitted. You can only set one filter at a time.</p>"}))
    ListEntitiesDetectionV2JobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListEntitiesDetectionV2JobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in each page. The default is 100.</p>"}))
    ListEntitiesDetectionV2JobsRequest.type = Types::ListEntitiesDetectionV2JobsRequest
    ListEntitiesDetectionV2JobsResponse.add_member(:comprehend_medical_async_job_properties_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobPropertiesList, location_name: 'ComprehendMedicalAsyncJobPropertiesList', traits: {"smithy.api#documentation" => "<p>A list containing the properties of each job returned.</p>"}))
    ListEntitiesDetectionV2JobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListEntitiesDetectionV2JobsResponse.type = Types::ListEntitiesDetectionV2JobsResponse
    ListICD10CMInferenceJobsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters the jobs that are returned. You can filter jobs based on their names, status, or\n      the date and time that they were submitted. You can only set one filter at a time.</p>"}))
    ListICD10CMInferenceJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListICD10CMInferenceJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in each page. The default is 100.</p>"}))
    ListICD10CMInferenceJobsRequest.type = Types::ListICD10CMInferenceJobsRequest
    ListICD10CMInferenceJobsResponse.add_member(:comprehend_medical_async_job_properties_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobPropertiesList, location_name: 'ComprehendMedicalAsyncJobPropertiesList', traits: {"smithy.api#documentation" => "<p>A list containing the properties of each job that is returned.</p>"}))
    ListICD10CMInferenceJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListICD10CMInferenceJobsResponse.type = Types::ListICD10CMInferenceJobsResponse
    ListPHIDetectionJobsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters the jobs that are returned. You can filter jobs based on their names, status, or\n      the date and time that they were submitted. You can only set one filter at a time.</p>"}))
    ListPHIDetectionJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListPHIDetectionJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in each page. The default is 100.</p>"}))
    ListPHIDetectionJobsRequest.type = Types::ListPHIDetectionJobsRequest
    ListPHIDetectionJobsResponse.add_member(:comprehend_medical_async_job_properties_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobPropertiesList, location_name: 'ComprehendMedicalAsyncJobPropertiesList', traits: {"smithy.api#documentation" => "<p>A list containing the properties of each job returned.</p>"}))
    ListPHIDetectionJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListPHIDetectionJobsResponse.type = Types::ListPHIDetectionJobsResponse
    ListRxNormInferenceJobsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters the jobs that are returned. You can filter jobs based on their names, status, or\n      the date and time that they were submitted. You can only set one filter at a time.</p>"}))
    ListRxNormInferenceJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListRxNormInferenceJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListRxNormInferenceJobsRequest.type = Types::ListRxNormInferenceJobsRequest
    ListRxNormInferenceJobsResponse.add_member(:comprehend_medical_async_job_properties_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobPropertiesList, location_name: 'ComprehendMedicalAsyncJobPropertiesList', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in each page. The default is 100.</p>"}))
    ListRxNormInferenceJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListRxNormInferenceJobsResponse.type = Types::ListRxNormInferenceJobsResponse
    ListSNOMEDCTInferenceJobsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobFilter, location_name: 'Filter'))
    ListSNOMEDCTInferenceJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n      Identifies the next page of InferSNOMEDCT results to return.\n    </p>"}))
    ListSNOMEDCTInferenceJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>\n      The maximum number of results to return in each page. The default is 100.\n    </p>"}))
    ListSNOMEDCTInferenceJobsRequest.type = Types::ListSNOMEDCTInferenceJobsRequest
    ListSNOMEDCTInferenceJobsResponse.add_member(:comprehend_medical_async_job_properties_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendMedicalAsyncJobPropertiesList, location_name: 'ComprehendMedicalAsyncJobPropertiesList', traits: {"smithy.api#documentation" => "<p>\n      A list containing the properties of each job that is returned.\n    </p>"}))
    ListSNOMEDCTInferenceJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n      Identifies the next page of results to return.\n    </p>"}))
    ListSNOMEDCTInferenceJobsResponse.type = Types::ListSNOMEDCTInferenceJobsResponse
    OutputDataConfig.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'S3Bucket', traits: {"smithy.api#documentation" => "<p>When you use the <code>OutputDataConfig</code> object with asynchronous operations, you\n      specify the Amazon S3 location where you want to write the output data. The URI must be in the\n      same region as the API endpoint that you are calling. The location is used as the prefix for\n      the actual location of the output.</p>", "smithy.api#required" => {}}))
    OutputDataConfig.add_member(:s3_key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'S3Key', traits: {"smithy.api#documentation" => "<p>The path to the output data files in the S3 bucket. Amazon Comprehend Medical creates an output directory\n      using the job ID so that the output from one job does not overwrite the output of\n      another.</p>"}))
    OutputDataConfig.type = Types::OutputDataConfig
    RelationshipType.add_member(:every, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVERY', traits: {"smithy.api#enumValue" => "EVERY"}))
    RelationshipType.add_member(:with_dosage, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WITH_DOSAGE', traits: {"smithy.api#enumValue" => "WITH_DOSAGE"}))
    RelationshipType.add_member(:administered_via, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADMINISTERED_VIA', traits: {"smithy.api#enumValue" => "ADMINISTERED_VIA"}))
    RelationshipType.add_member(:for, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FOR', traits: {"smithy.api#enumValue" => "FOR"}))
    RelationshipType.add_member(:negative, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEGATIVE', traits: {"smithy.api#enumValue" => "NEGATIVE"}))
    RelationshipType.add_member(:overlap, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OVERLAP', traits: {"smithy.api#enumValue" => "OVERLAP"}))
    RelationshipType.add_member(:dosage, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOSAGE', traits: {"smithy.api#enumValue" => "DOSAGE"}))
    RelationshipType.add_member(:route_or_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROUTE_OR_MODE', traits: {"smithy.api#enumValue" => "ROUTE_OR_MODE"}))
    RelationshipType.add_member(:form, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FORM', traits: {"smithy.api#enumValue" => "FORM"}))
    RelationshipType.add_member(:frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FREQUENCY', traits: {"smithy.api#enumValue" => "FREQUENCY"}))
    RelationshipType.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DURATION', traits: {"smithy.api#enumValue" => "DURATION"}))
    RelationshipType.add_member(:strength, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRENGTH', traits: {"smithy.api#enumValue" => "STRENGTH"}))
    RelationshipType.add_member(:rate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RATE', traits: {"smithy.api#enumValue" => "RATE"}))
    RelationshipType.add_member(:acuity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACUITY', traits: {"smithy.api#enumValue" => "ACUITY"}))
    RelationshipType.add_member(:test_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEST_VALUE', traits: {"smithy.api#enumValue" => "TEST_VALUE"}))
    RelationshipType.add_member(:test_units, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEST_UNITS', traits: {"smithy.api#enumValue" => "TEST_UNITS"}))
    RelationshipType.add_member(:test_unit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEST_UNIT', traits: {"smithy.api#enumValue" => "TEST_UNIT"}))
    RelationshipType.add_member(:direction, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECTION', traits: {"smithy.api#enumValue" => "DIRECTION"}))
    RelationshipType.add_member(:system_organ_site, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM_ORGAN_SITE', traits: {"smithy.api#enumValue" => "SYSTEM_ORGAN_SITE"}))
    RelationshipType.add_member(:amount, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMOUNT', traits: {"smithy.api#enumValue" => "AMOUNT"}))
    RelationshipType.add_member(:usage, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USAGE', traits: {"smithy.api#enumValue" => "USAGE"}))
    RelationshipType.add_member(:quality, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUALITY', traits: {"smithy.api#enumValue" => "QUALITY"}))
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RxNormAttribute.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: RxNormAttributeType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of attribute. The types of attributes recognized by InferRxNorm are\n        <code>BRAND_NAME</code> and <code>GENERIC_NAME</code>.</p>"}))
    RxNormAttribute.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p>The level of confidence that Amazon Comprehend Medical has that the segment of text is correctly\n      recognized as an attribute.</p>"}))
    RxNormAttribute.add_member(:relationship_score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'RelationshipScore', traits: {"smithy.api#documentation" => "<p>The level of confidence that Amazon Comprehend Medical has that the attribute is\n      accurately linked to an entity.</p>"}))
    RxNormAttribute.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The numeric identifier for this attribute. This is a monotonically increasing id unique\n      within this response rather than a global unique identifier.</p>"}))
    RxNormAttribute.add_member(:begin_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BeginOffset', traits: {"smithy.api#documentation" => "<p>The 0-based character offset in the input text that shows where the attribute begins. The\n      offset returns the UTF-8 code point in the string.</p>"}))
    RxNormAttribute.add_member(:end_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EndOffset', traits: {"smithy.api#documentation" => "<p>The 0-based character offset in the input text that shows where the attribute ends. The\n      offset returns the UTF-8 code point in the string.</p>"}))
    RxNormAttribute.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>The segment of input text which corresponds to the detected attribute.</p>"}))
    RxNormAttribute.add_member(:traits, Smithy::Schema::Shapes::ShapeRef.new(shape: RxNormTraitList, location_name: 'Traits', traits: {"smithy.api#documentation" => "<p>Contextual information for the attribute. InferRxNorm recognizes the trait\n        <code>NEGATION</code> for attributes, i.e. that the patient is not taking a specific dose or\n      form of a medication.</p>"}))
    RxNormAttribute.type = Types::RxNormAttribute
    RxNormAttributeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RxNormAttribute)
    RxNormAttributeType.add_member(:dosage, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOSAGE', traits: {"smithy.api#enumValue" => "DOSAGE"}))
    RxNormAttributeType.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DURATION', traits: {"smithy.api#enumValue" => "DURATION"}))
    RxNormAttributeType.add_member(:form, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FORM', traits: {"smithy.api#enumValue" => "FORM"}))
    RxNormAttributeType.add_member(:frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FREQUENCY', traits: {"smithy.api#enumValue" => "FREQUENCY"}))
    RxNormAttributeType.add_member(:rate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RATE', traits: {"smithy.api#enumValue" => "RATE"}))
    RxNormAttributeType.add_member(:route_or_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROUTE_OR_MODE', traits: {"smithy.api#enumValue" => "ROUTE_OR_MODE"}))
    RxNormAttributeType.add_member(:strength, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRENGTH', traits: {"smithy.api#enumValue" => "STRENGTH"}))
    RxNormConcept.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the RxNorm concept.</p>"}))
    RxNormConcept.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code', traits: {"smithy.api#documentation" => "<p>RxNorm concept ID, also known as the RxCUI.</p>"}))
    RxNormConcept.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p>The level of confidence that Amazon Comprehend Medical has that the entity is accurately\n      linked to the reported RxNorm concept.</p>"}))
    RxNormConcept.type = Types::RxNormConcept
    RxNormConceptList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RxNormConcept)
    RxNormEntity.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The numeric identifier for the entity. This is a monotonically increasing id unique within\n      this response rather than a global unique identifier.</p>"}))
    RxNormEntity.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: OntologyLinkingBoundedLengthString, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>The segment of input text extracted from which the entity was detected.</p>"}))
    RxNormEntity.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: RxNormEntityCategory, location_name: 'Category', traits: {"smithy.api#documentation" => "<p>The category of the entity. The recognized categories are <code>GENERIC</code> or\n        <code>BRAND_NAME</code>.</p>"}))
    RxNormEntity.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: RxNormEntityType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p> Describes the specific type of entity. For InferRxNorm, the recognized entity type is\n        <code>MEDICATION</code>.</p>"}))
    RxNormEntity.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p>The level of confidence that Amazon Comprehend Medical has in the accuracy of the detected\n      entity.</p>"}))
    RxNormEntity.add_member(:begin_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BeginOffset', traits: {"smithy.api#documentation" => "<p>The 0-based character offset in the input text that shows where the entity begins. The\n      offset returns the UTF-8 code point in the string.</p>"}))
    RxNormEntity.add_member(:end_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EndOffset', traits: {"smithy.api#documentation" => "<p>The 0-based character offset in the input text that shows where the entity ends. The\n      offset returns the UTF-8 code point in the string.</p>"}))
    RxNormEntity.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: RxNormAttributeList, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>The extracted attributes that relate to the entity. The attributes recognized by\n      InferRxNorm are <code>DOSAGE</code>, <code>DURATION</code>, <code>FORM</code>,\n        <code>FREQUENCY</code>, <code>RATE</code>, <code>ROUTE_OR_MODE</code>, and\n        <code>STRENGTH</code>.</p>"}))
    RxNormEntity.add_member(:traits, Smithy::Schema::Shapes::ShapeRef.new(shape: RxNormTraitList, location_name: 'Traits', traits: {"smithy.api#documentation" => "<p>Contextual information for the entity.</p>"}))
    RxNormEntity.add_member(:rx_norm_concepts, Smithy::Schema::Shapes::ShapeRef.new(shape: RxNormConceptList, location_name: 'RxNormConcepts', traits: {"smithy.api#documentation" => "<p>The RxNorm concepts that the entity could refer to, along with a score indicating the\n      likelihood of the match.</p>"}))
    RxNormEntity.type = Types::RxNormEntity
    RxNormEntityCategory.add_member(:medication, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDICATION', traits: {"smithy.api#enumValue" => "MEDICATION"}))
    RxNormEntityList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RxNormEntity)
    RxNormEntityType.add_member(:brand_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BRAND_NAME', traits: {"smithy.api#enumValue" => "BRAND_NAME"}))
    RxNormEntityType.add_member(:generic_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GENERIC_NAME', traits: {"smithy.api#enumValue" => "GENERIC_NAME"}))
    RxNormTrait.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RxNormTraitName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Provides a name or contextual description about the trait.</p>"}))
    RxNormTrait.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p>The level of confidence that Amazon Comprehend Medical has in the accuracy of the detected\n      trait.</p>"}))
    RxNormTrait.type = Types::RxNormTrait
    RxNormTraitList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RxNormTrait)
    RxNormTraitName.add_member(:negation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEGATION', traits: {"smithy.api#enumValue" => "NEGATION"}))
    RxNormTraitName.add_member(:past_history, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAST_HISTORY', traits: {"smithy.api#enumValue" => "PAST_HISTORY"}))
    SNOMEDCTAttribute.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: SNOMEDCTEntityCategory, location_name: 'Category', traits: {"smithy.api#documentation" => "<p>\n      The category of the detected attribute. Possible categories include MEDICAL_CONDITION, ANATOMY, and TEST_TREATMENT_PROCEDURE.\n    </p>"}))
    SNOMEDCTAttribute.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: SNOMEDCTAttributeType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>\n      The type of attribute. Possible types include DX_NAME, ACUITY, DIRECTION, SYSTEM_ORGAN_SITE,TEST_NAME, TEST_VALUE, TEST_UNIT, PROCEDURE_NAME, and TREATMENT_NAME.\n    </p>"}))
    SNOMEDCTAttribute.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p>\n      The level of confidence that Amazon Comprehend Medical has that the segment of text is correctly recognized as an attribute.\n    </p>"}))
    SNOMEDCTAttribute.add_member(:relationship_score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'RelationshipScore', traits: {"smithy.api#documentation" => "<p>\n      The level of confidence that Amazon Comprehend Medical has that this attribute is correctly related to this entity.\n    </p>"}))
    SNOMEDCTAttribute.add_member(:relationship_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SNOMEDCTRelationshipType, location_name: 'RelationshipType', traits: {"smithy.api#documentation" => "<p>\n      The type of relationship that exists between the entity and the related attribute. \n    </p>"}))
    SNOMEDCTAttribute.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>\n      The numeric identifier for this attribute. This is a monotonically increasing id unique within this response rather than a global unique identifier.\n    </p>"}))
    SNOMEDCTAttribute.add_member(:begin_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BeginOffset', traits: {"smithy.api#documentation" => "<p>\n      The 0-based character offset in the input text that shows where the attribute begins. The offset returns the UTF-8 code point in the string.\n    </p>"}))
    SNOMEDCTAttribute.add_member(:end_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EndOffset', traits: {"smithy.api#documentation" => "<p>\n      The 0-based character offset in the input text that shows where the attribute ends. The offset returns the UTF-8 code point in the string.\n    </p>"}))
    SNOMEDCTAttribute.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>\n      The segment of input text extracted as this attribute.\n    </p>"}))
    SNOMEDCTAttribute.add_member(:traits, Smithy::Schema::Shapes::ShapeRef.new(shape: SNOMEDCTTraitList, location_name: 'Traits', traits: {"smithy.api#documentation" => "<p>\n      Contextual information for an attribute. Examples include signs, symptoms, diagnosis, and negation.\n    </p>"}))
    SNOMEDCTAttribute.add_member(:snomedct_concepts, Smithy::Schema::Shapes::ShapeRef.new(shape: SNOMEDCTConceptList, location_name: 'SNOMEDCTConcepts', traits: {"smithy.api#documentation" => "<p>\n      The SNOMED-CT concepts specific to an attribute, along with a score indicating the likelihood of the match.\n    </p>"}))
    SNOMEDCTAttribute.type = Types::SNOMEDCTAttribute
    SNOMEDCTAttributeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SNOMEDCTAttribute)
    SNOMEDCTAttributeType.add_member(:acuity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACUITY', traits: {"smithy.api#enumValue" => "ACUITY"}))
    SNOMEDCTAttributeType.add_member(:quality, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUALITY', traits: {"smithy.api#enumValue" => "QUALITY"}))
    SNOMEDCTAttributeType.add_member(:direction, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECTION', traits: {"smithy.api#enumValue" => "DIRECTION"}))
    SNOMEDCTAttributeType.add_member(:system_organ_site, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM_ORGAN_SITE', traits: {"smithy.api#enumValue" => "SYSTEM_ORGAN_SITE"}))
    SNOMEDCTAttributeType.add_member(:test_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEST_VALUE', traits: {"smithy.api#enumValue" => "TEST_VALUE"}))
    SNOMEDCTAttributeType.add_member(:test_unit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEST_UNIT', traits: {"smithy.api#enumValue" => "TEST_UNIT"}))
    SNOMEDCTConcept.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>\n      The description of the SNOMED-CT concept. \n    </p>"}))
    SNOMEDCTConcept.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code', traits: {"smithy.api#documentation" => "<p>\n      The numeric ID for the SNOMED-CT concept.\n    </p>"}))
    SNOMEDCTConcept.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p>\n      The level of confidence Amazon Comprehend Medical has that the entity should be linked to the identified SNOMED-CT concept.\n    </p>"}))
    SNOMEDCTConcept.type = Types::SNOMEDCTConcept
    SNOMEDCTConceptList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SNOMEDCTConcept)
    SNOMEDCTDetails.add_member(:edition, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Edition', traits: {"smithy.api#documentation" => "<p>\n      The edition of SNOMED-CT used. The edition used for the InferSNOMEDCT editions is the US edition. \n    </p>"}))
    SNOMEDCTDetails.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Language', traits: {"smithy.api#documentation" => "<p>\n      The language used in the SNOMED-CT ontology. All Amazon Comprehend Medical operations are US English (en).\n    </p>"}))
    SNOMEDCTDetails.add_member(:version_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VersionDate', traits: {"smithy.api#documentation" => "<p>\n      The version date of the SNOMED-CT ontology used. \n    </p>"}))
    SNOMEDCTDetails.type = Types::SNOMEDCTDetails
    SNOMEDCTEntity.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>\n      The numeric identifier for the entity. This is a monotonically increasing id unique within this response rather than a global unique identifier.\n    </p>"}))
    SNOMEDCTEntity.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: OntologyLinkingBoundedLengthString, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>\n      The segment of input text extracted as this entity.\n    </p>"}))
    SNOMEDCTEntity.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: SNOMEDCTEntityCategory, location_name: 'Category', traits: {"smithy.api#documentation" => "<p>\n      The category of the detected entity. Possible categories are MEDICAL_CONDITION, ANATOMY, or TEST_TREATMENT_PROCEDURE. \n    </p>"}))
    SNOMEDCTEntity.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: SNOMEDCTEntityType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>\n      Describes the specific type of entity with category of entities. Possible types include DX_NAME, ACUITY, DIRECTION, SYSTEM_ORGAN_SITE, TEST_NAME, TEST_VALUE, TEST_UNIT, PROCEDURE_NAME, or TREATMENT_NAME. \n    </p>"}))
    SNOMEDCTEntity.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p>\n      The level of confidence that Amazon Comprehend Medical has in the accuracy of the detected entity.\n    </p>"}))
    SNOMEDCTEntity.add_member(:begin_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BeginOffset', traits: {"smithy.api#documentation" => "<p>\n      The 0-based character offset in the input text that shows where the entity begins. The offset returns the UTF-8 code point in the string.\n    </p>"}))
    SNOMEDCTEntity.add_member(:end_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EndOffset', traits: {"smithy.api#documentation" => "<p>\n      The 0-based character offset in the input text that shows where the entity ends. The offset returns the UTF-8 code point in the string.\n    </p>"}))
    SNOMEDCTEntity.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: SNOMEDCTAttributeList, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>\n      An extracted segment of the text that is an attribute of an entity, or otherwise related to an entity, such as the dosage of a medication taken.\n    </p>"}))
    SNOMEDCTEntity.add_member(:traits, Smithy::Schema::Shapes::ShapeRef.new(shape: SNOMEDCTTraitList, location_name: 'Traits', traits: {"smithy.api#documentation" => "<p>\n      Contextual information for the entity.\n    </p>"}))
    SNOMEDCTEntity.add_member(:snomedct_concepts, Smithy::Schema::Shapes::ShapeRef.new(shape: SNOMEDCTConceptList, location_name: 'SNOMEDCTConcepts', traits: {"smithy.api#documentation" => "<p>\n      The SNOMED concepts that the entity could refer to, along with a score indicating the likelihood of the match.\n    </p>"}))
    SNOMEDCTEntity.type = Types::SNOMEDCTEntity
    SNOMEDCTEntityCategory.add_member(:medical_condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDICAL_CONDITION', traits: {"smithy.api#enumValue" => "MEDICAL_CONDITION"}))
    SNOMEDCTEntityCategory.add_member(:anatomy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANATOMY', traits: {"smithy.api#enumValue" => "ANATOMY"}))
    SNOMEDCTEntityCategory.add_member(:test_treatment_procedure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEST_TREATMENT_PROCEDURE', traits: {"smithy.api#enumValue" => "TEST_TREATMENT_PROCEDURE"}))
    SNOMEDCTEntityList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SNOMEDCTEntity)
    SNOMEDCTEntityType.add_member(:dx_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DX_NAME', traits: {"smithy.api#enumValue" => "DX_NAME"}))
    SNOMEDCTEntityType.add_member(:test_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEST_NAME', traits: {"smithy.api#enumValue" => "TEST_NAME"}))
    SNOMEDCTEntityType.add_member(:procedure_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCEDURE_NAME', traits: {"smithy.api#enumValue" => "PROCEDURE_NAME"}))
    SNOMEDCTEntityType.add_member(:treatment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TREATMENT_NAME', traits: {"smithy.api#enumValue" => "TREATMENT_NAME"}))
    SNOMEDCTRelationshipType.add_member(:acuity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACUITY', traits: {"smithy.api#enumValue" => "ACUITY"}))
    SNOMEDCTRelationshipType.add_member(:quality, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUALITY', traits: {"smithy.api#enumValue" => "QUALITY"}))
    SNOMEDCTRelationshipType.add_member(:test_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEST_VALUE', traits: {"smithy.api#enumValue" => "TEST_VALUE"}))
    SNOMEDCTRelationshipType.add_member(:test_units, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEST_UNITS', traits: {"smithy.api#enumValue" => "TEST_UNITS"}))
    SNOMEDCTRelationshipType.add_member(:direction, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECTION', traits: {"smithy.api#enumValue" => "DIRECTION"}))
    SNOMEDCTRelationshipType.add_member(:system_organ_site, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM_ORGAN_SITE', traits: {"smithy.api#enumValue" => "SYSTEM_ORGAN_SITE"}))
    SNOMEDCTRelationshipType.add_member(:test_unit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEST_UNIT', traits: {"smithy.api#enumValue" => "TEST_UNIT"}))
    SNOMEDCTTrait.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SNOMEDCTTraitName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>\n      The name or contextual description of a detected trait.\n    </p>"}))
    SNOMEDCTTrait.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p>\n      The level of confidence that Amazon Comprehend Medical has in the accuracy of a detected trait.\n    </p>"}))
    SNOMEDCTTrait.type = Types::SNOMEDCTTrait
    SNOMEDCTTraitList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SNOMEDCTTrait)
    SNOMEDCTTraitName.add_member(:negation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEGATION', traits: {"smithy.api#enumValue" => "NEGATION"}))
    SNOMEDCTTraitName.add_member(:diagnosis, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIAGNOSIS', traits: {"smithy.api#enumValue" => "DIAGNOSIS"}))
    SNOMEDCTTraitName.add_member(:sign, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIGN', traits: {"smithy.api#enumValue" => "SIGN"}))
    SNOMEDCTTraitName.add_member(:symptom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYMPTOM', traits: {"smithy.api#enumValue" => "SYMPTOM"}))
    SNOMEDCTTraitName.add_member(:pertains_to_family, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERTAINS_TO_FAMILY', traits: {"smithy.api#enumValue" => "PERTAINS_TO_FAMILY"}))
    SNOMEDCTTraitName.add_member(:hypothetical, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HYPOTHETICAL', traits: {"smithy.api#enumValue" => "HYPOTHETICAL"}))
    SNOMEDCTTraitName.add_member(:low_confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW_CONFIDENCE', traits: {"smithy.api#enumValue" => "LOW_CONFIDENCE"}))
    SNOMEDCTTraitName.add_member(:past_history, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAST_HISTORY', traits: {"smithy.api#enumValue" => "PAST_HISTORY"}))
    SNOMEDCTTraitName.add_member(:future, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FUTURE', traits: {"smithy.api#enumValue" => "FUTURE"}))
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StartEntitiesDetectionV2JobRequest.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>The input configuration that specifies the format and location of the input data for the job.</p>", "smithy.api#required" => {}}))
    StartEntitiesDetectionV2JobRequest.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>The output configuration that specifies where to send the output files.</p>", "smithy.api#required" => {}}))
    StartEntitiesDetectionV2JobRequest.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that\n      grants Amazon Comprehend Medical read access to your input data. For more information, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med\">Role-Based Permissions Required for Asynchronous Operations</a>.</p>", "smithy.api#required" => {}}))
    StartEntitiesDetectionV2JobRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The identifier of the job.</p>"}))
    StartEntitiesDetectionV2JobRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for the request. If you don't set the client request token, Amazon Comprehend Medical\n      generates one for you.</p>", "smithy.api#idempotencyToken" => {}}))
    StartEntitiesDetectionV2JobRequest.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKey, location_name: 'KMSKey', traits: {"smithy.api#documentation" => "<p>An AWS Key Management Service key to encrypt your output files. If you do not specify a\n      key, the files are written in plain text.</p>"}))
    StartEntitiesDetectionV2JobRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language of the input documents. All documents must be in the same language. Amazon Comprehend Medical processes files in US English (en).</p>", "smithy.api#required" => {}}))
    StartEntitiesDetectionV2JobRequest.type = Types::StartEntitiesDetectionV2JobRequest
    StartEntitiesDetectionV2JobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier generated for the job. To get the status of a job, use this identifier with\n      the <code>DescribeEntitiesDetectionV2Job</code> operation.</p>"}))
    StartEntitiesDetectionV2JobResponse.type = Types::StartEntitiesDetectionV2JobResponse
    StartICD10CMInferenceJobRequest.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies the format and location of the input data for the job.</p>", "smithy.api#required" => {}}))
    StartICD10CMInferenceJobRequest.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies where to send the output files.</p>", "smithy.api#required" => {}}))
    StartICD10CMInferenceJobRequest.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that\n      grants Amazon Comprehend Medical read access to your input data. For more information, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med\"> Role-Based Permissions Required for Asynchronous Operations</a>.</p>", "smithy.api#required" => {}}))
    StartICD10CMInferenceJobRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The identifier of the job.</p>"}))
    StartICD10CMInferenceJobRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for the request. If you don't set the client request token, Amazon Comprehend Medical generates one.</p>", "smithy.api#idempotencyToken" => {}}))
    StartICD10CMInferenceJobRequest.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKey, location_name: 'KMSKey', traits: {"smithy.api#documentation" => "<p>An AWS Key Management Service key to encrypt your output files. If you do not specify a\n      key, the files are written in plain text.</p>"}))
    StartICD10CMInferenceJobRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language of the input documents. All documents must be in the same language.</p>", "smithy.api#required" => {}}))
    StartICD10CMInferenceJobRequest.type = Types::StartICD10CMInferenceJobRequest
    StartICD10CMInferenceJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier generated for the job. To get the status of a job, use this identifier with\n      the <code>StartICD10CMInferenceJob</code> operation.</p>"}))
    StartICD10CMInferenceJobResponse.type = Types::StartICD10CMInferenceJobResponse
    StartPHIDetectionJobRequest.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies the format and location of the input data for the job.</p>", "smithy.api#required" => {}}))
    StartPHIDetectionJobRequest.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies where to send the output files.</p>", "smithy.api#required" => {}}))
    StartPHIDetectionJobRequest.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that\n      grants Amazon Comprehend Medical read access to your input data. For more information, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med\"> Role-Based Permissions Required for Asynchronous Operations</a>.</p>", "smithy.api#required" => {}}))
    StartPHIDetectionJobRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The identifier of the job.</p>"}))
    StartPHIDetectionJobRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for the request. If you don't set the client request token, Amazon Comprehend Medical\n      generates one.</p>", "smithy.api#idempotencyToken" => {}}))
    StartPHIDetectionJobRequest.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKey, location_name: 'KMSKey', traits: {"smithy.api#documentation" => "<p>An AWS Key Management Service key to encrypt your output files. If you do not specify a\n      key, the files are written in plain text.</p>"}))
    StartPHIDetectionJobRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language of the input documents. All documents must be in the same language.</p>", "smithy.api#required" => {}}))
    StartPHIDetectionJobRequest.type = Types::StartPHIDetectionJobRequest
    StartPHIDetectionJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier generated for the job. To get the status of a job, use this identifier with\n      the <code>DescribePHIDetectionJob</code> operation.</p>"}))
    StartPHIDetectionJobResponse.type = Types::StartPHIDetectionJobResponse
    StartRxNormInferenceJobRequest.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies the format and location of the input data for the job.</p>", "smithy.api#required" => {}}))
    StartRxNormInferenceJobRequest.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies where to send the output files.</p>", "smithy.api#required" => {}}))
    StartRxNormInferenceJobRequest.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that\n      grants Amazon Comprehend Medical read access to your input data. For more information, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med\"> Role-Based Permissions Required for Asynchronous Operations</a>.</p>", "smithy.api#required" => {}}))
    StartRxNormInferenceJobRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The identifier of the job.</p>"}))
    StartRxNormInferenceJobRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for the request. If you don't set the client request token, Amazon Comprehend Medical\n      generates one.</p>", "smithy.api#idempotencyToken" => {}}))
    StartRxNormInferenceJobRequest.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKey, location_name: 'KMSKey', traits: {"smithy.api#documentation" => "<p>An AWS Key Management Service key to encrypt your output files. If you do not specify a\n      key, the files are written in plain text.</p>"}))
    StartRxNormInferenceJobRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language of the input documents. All documents must be in the same language.</p>", "smithy.api#required" => {}}))
    StartRxNormInferenceJobRequest.type = Types::StartRxNormInferenceJobRequest
    StartRxNormInferenceJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the job.</p>"}))
    StartRxNormInferenceJobResponse.type = Types::StartRxNormInferenceJobResponse
    StartSNOMEDCTInferenceJobRequest.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#required" => {}}))
    StartSNOMEDCTInferenceJobRequest.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#required" => {}}))
    StartSNOMEDCTInferenceJobRequest.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>\n      The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend Medical read access to your input data. \n    </p>", "smithy.api#required" => {}}))
    StartSNOMEDCTInferenceJobRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>\n      The user generated name the asynchronous InferSNOMEDCT job.\n    </p>"}))
    StartSNOMEDCTInferenceJobRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>\n      A unique identifier for the request. If you don't set the client request token, Amazon Comprehend Medical generates one.\n    </p>", "smithy.api#idempotencyToken" => {}}))
    StartSNOMEDCTInferenceJobRequest.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKey, location_name: 'KMSKey', traits: {"smithy.api#documentation" => "<p>\n      An AWS Key Management Service key used to encrypt your output files. If you do not specify a key, the files are written in plain text.\n    </p>"}))
    StartSNOMEDCTInferenceJobRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>\n      The language of the input documents. All documents must be in the same language.\n    </p>", "smithy.api#required" => {}}))
    StartSNOMEDCTInferenceJobRequest.type = Types::StartSNOMEDCTInferenceJobRequest
    StartSNOMEDCTInferenceJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>\n      The identifier generated for the job. To get the status of a job, use this identifier with the StartSNOMEDCTInferenceJob operation.\n    </p>"}))
    StartSNOMEDCTInferenceJobResponse.type = Types::StartSNOMEDCTInferenceJobResponse
    StopEntitiesDetectionV2JobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the medical entities job to stop.</p>", "smithy.api#required" => {}}))
    StopEntitiesDetectionV2JobRequest.type = Types::StopEntitiesDetectionV2JobRequest
    StopEntitiesDetectionV2JobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the medical entities detection job that was stopped.</p>"}))
    StopEntitiesDetectionV2JobResponse.type = Types::StopEntitiesDetectionV2JobResponse
    StopICD10CMInferenceJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the job.</p>", "smithy.api#required" => {}}))
    StopICD10CMInferenceJobRequest.type = Types::StopICD10CMInferenceJobRequest
    StopICD10CMInferenceJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier generated for the job. To get the status of job, use this identifier with\n      the <code>DescribeICD10CMInferenceJob</code> operation.</p>"}))
    StopICD10CMInferenceJobResponse.type = Types::StopICD10CMInferenceJobResponse
    StopPHIDetectionJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the PHI detection job to stop.</p>", "smithy.api#required" => {}}))
    StopPHIDetectionJobRequest.type = Types::StopPHIDetectionJobRequest
    StopPHIDetectionJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the PHI detection job that was stopped.</p>"}))
    StopPHIDetectionJobResponse.type = Types::StopPHIDetectionJobResponse
    StopRxNormInferenceJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the job.</p>", "smithy.api#required" => {}}))
    StopRxNormInferenceJobRequest.type = Types::StopRxNormInferenceJobRequest
    StopRxNormInferenceJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier generated for the job. To get the status of job, use this identifier with\n      the <code>DescribeRxNormInferenceJob</code> operation.</p>"}))
    StopRxNormInferenceJobResponse.type = Types::StopRxNormInferenceJobResponse
    StopSNOMEDCTInferenceJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>\n      The job id of the asynchronous InferSNOMEDCT job to be stopped.\n    </p>", "smithy.api#required" => {}}))
    StopSNOMEDCTInferenceJobRequest.type = Types::StopSNOMEDCTInferenceJobRequest
    StopSNOMEDCTInferenceJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>\n      The identifier generated for the job. To get the status of job, use this identifier with the DescribeSNOMEDCTInferenceJob operation.\n    </p>"}))
    StopSNOMEDCTInferenceJobResponse.type = Types::StopSNOMEDCTInferenceJobResponse
    TextSizeLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TextSizeLimitExceededException.type = Types::TextSizeLimitExceededException
    TooManyRequestsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyRequestsException.type = Types::TooManyRequestsException
    Trait.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p> Provides a name or contextual description about the trait. </p>"}))
    Trait.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p> The level of confidence that Amazon Comprehend Medical has in the accuracy of this trait.</p>"}))
    Trait.type = Types::Trait
    TraitList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Trait)
    UnmappedAttribute.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p> The type of the unmapped attribute, could be one of the following values: \"MEDICATION\",\n      \"MEDICAL_CONDITION\", \"ANATOMY\", \"TEST_AND_TREATMENT_PROCEDURE\" or\n      \"PROTECTED_HEALTH_INFORMATION\". </p>"}))
    UnmappedAttribute.add_member(:attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: Attribute, location_name: 'Attribute', traits: {"smithy.api#documentation" => "<p> The specific attribute that has been extracted but not mapped to an entity. </p>"}))
    UnmappedAttribute.type = Types::UnmappedAttribute
    UnmappedAttributeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UnmappedAttribute)
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ValidationException.type = Types::ValidationException

    ComprehendMedical20181030 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.comprehendmedical#ComprehendMedical_20181030"
      service.name = "ComprehendMedical20181030"
      service.version = "2018-10-30"
      service.traits = {"aws.api#service" => {"sdkId" => "ComprehendMedical", "arnNamespace" => "comprehendmedical", "cloudFormationName" => "ComprehendMedical", "cloudTrailEventSource" => "comprehendmedical.amazonaws.com", "endpointPrefix" => "comprehendmedical"}, "aws.auth#sigv4" => {"name" => "comprehendmedical"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Comprehend Medical"}
      service.add_operation(:describe_entities_detection_v2_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#DescribeEntitiesDetectionV2Job"
        operation.name = "DescribeEntitiesDetectionV2Job"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEntitiesDetectionV2JobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEntitiesDetectionV2JobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_icd10_cm_inference_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#DescribeICD10CMInferenceJob"
        operation.name = "DescribeICD10CMInferenceJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeICD10CMInferenceJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeICD10CMInferenceJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_phi_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#DescribePHIDetectionJob"
        operation.name = "DescribePHIDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePHIDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePHIDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_rx_norm_inference_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#DescribeRxNormInferenceJob"
        operation.name = "DescribeRxNormInferenceJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRxNormInferenceJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRxNormInferenceJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_snomedct_inference_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#DescribeSNOMEDCTInferenceJob"
        operation.name = "DescribeSNOMEDCTInferenceJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSNOMEDCTInferenceJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSNOMEDCTInferenceJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:detect_entities, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#DetectEntities"
        operation.name = "DetectEntities"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectEntitiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectEntitiesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEncodingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This operation is deprecated, use DetectEntitiesV2 instead."}}
      end)
      service.add_operation(:detect_entities_v2, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#DetectEntitiesV2"
        operation.name = "DetectEntitiesV2"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectEntitiesV2Request)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectEntitiesV2Response)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEncodingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:detect_phi, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#DetectPHI"
        operation.name = "DetectPHI"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectPHIRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectPHIResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEncodingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:infer_icd10_cm, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#InferICD10CM"
        operation.name = "InferICD10CM"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: InferICD10CMRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: InferICD10CMResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEncodingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:infer_rx_norm, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#InferRxNorm"
        operation.name = "InferRxNorm"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: InferRxNormRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: InferRxNormResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEncodingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:infer_snomedct, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#InferSNOMEDCT"
        operation.name = "InferSNOMEDCT"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: InferSNOMEDCTRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: InferSNOMEDCTResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEncodingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:list_entities_detection_v2_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#ListEntitiesDetectionV2Jobs"
        operation.name = "ListEntitiesDetectionV2Jobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEntitiesDetectionV2JobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEntitiesDetectionV2JobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_icd10_cm_inference_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#ListICD10CMInferenceJobs"
        operation.name = "ListICD10CMInferenceJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListICD10CMInferenceJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListICD10CMInferenceJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_phi_detection_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#ListPHIDetectionJobs"
        operation.name = "ListPHIDetectionJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPHIDetectionJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPHIDetectionJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_rx_norm_inference_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#ListRxNormInferenceJobs"
        operation.name = "ListRxNormInferenceJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRxNormInferenceJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRxNormInferenceJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_snomedct_inference_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#ListSNOMEDCTInferenceJobs"
        operation.name = "ListSNOMEDCTInferenceJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSNOMEDCTInferenceJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSNOMEDCTInferenceJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:start_entities_detection_v2_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#StartEntitiesDetectionV2Job"
        operation.name = "StartEntitiesDetectionV2Job"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartEntitiesDetectionV2JobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartEntitiesDetectionV2JobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:start_icd10_cm_inference_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#StartICD10CMInferenceJob"
        operation.name = "StartICD10CMInferenceJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartICD10CMInferenceJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartICD10CMInferenceJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:start_phi_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#StartPHIDetectionJob"
        operation.name = "StartPHIDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartPHIDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartPHIDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:start_rx_norm_inference_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#StartRxNormInferenceJob"
        operation.name = "StartRxNormInferenceJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartRxNormInferenceJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartRxNormInferenceJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:start_snomedct_inference_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#StartSNOMEDCTInferenceJob"
        operation.name = "StartSNOMEDCTInferenceJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSNOMEDCTInferenceJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSNOMEDCTInferenceJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:stop_entities_detection_v2_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#StopEntitiesDetectionV2Job"
        operation.name = "StopEntitiesDetectionV2Job"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopEntitiesDetectionV2JobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopEntitiesDetectionV2JobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:stop_icd10_cm_inference_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#StopICD10CMInferenceJob"
        operation.name = "StopICD10CMInferenceJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopICD10CMInferenceJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopICD10CMInferenceJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:stop_phi_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#StopPHIDetectionJob"
        operation.name = "StopPHIDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopPHIDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopPHIDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:stop_rx_norm_inference_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#StopRxNormInferenceJob"
        operation.name = "StopRxNormInferenceJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopRxNormInferenceJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopRxNormInferenceJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:stop_snomedct_inference_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehendmedical#StopSNOMEDCTInferenceJob"
        operation.name = "StopSNOMEDCTInferenceJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopSNOMEDCTInferenceJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopSNOMEDCTInferenceJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
