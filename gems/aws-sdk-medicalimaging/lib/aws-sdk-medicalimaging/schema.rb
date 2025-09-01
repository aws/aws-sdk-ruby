# frozen_string_literal: true

# This is generated code!

module Aws::MedicalImaging
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#Arn', name: 'Arn', traits: {"smithy.api#pattern" => "^arn:aws((-us-gov)|(-iso)|(-iso-b)|(-cn))?:medical-imaging:[a-z0-9-]+:[0-9]{12}:datastore/[0-9a-z]{32}(/imageset/[0-9a-z]{32})?$"})
    AwsAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#AwsAccountId', name: 'AwsAccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d+$"})
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9._-]+$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CopiableAttributes = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#CopiableAttributes', name: 'CopiableAttributes', traits: {"smithy.api#length" => {"min" => 1, "max" => 260000}, "smithy.api#sensitive" => {}})
    CopyDestinationImageSet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#CopyDestinationImageSet', name: 'CopyDestinationImageSet')
    CopyDestinationImageSetProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#CopyDestinationImageSetProperties', name: 'CopyDestinationImageSetProperties')
    CopyImageSetInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#CopyImageSetInformation', name: 'CopyImageSetInformation')
    CopyImageSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#CopyImageSetRequest', name: 'CopyImageSetRequest')
    CopyImageSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#CopyImageSetResponse', name: 'CopyImageSetResponse')
    CopySourceImageSetInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#CopySourceImageSetInformation', name: 'CopySourceImageSetInformation')
    CopySourceImageSetProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#CopySourceImageSetProperties', name: 'CopySourceImageSetProperties')
    CreateDatastoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#CreateDatastoreRequest', name: 'CreateDatastoreRequest')
    CreateDatastoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#CreateDatastoreResponse', name: 'CreateDatastoreResponse')
    DICOMAccessionNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#DICOMAccessionNumber', name: 'DICOMAccessionNumber', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    DICOMAttribute = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.medicalimaging#DICOMAttribute', name: 'DICOMAttribute', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#sensitive" => {}})
    DICOMImportJobProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#DICOMImportJobProperties', name: 'DICOMImportJobProperties')
    DICOMImportJobSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.medicalimaging#DICOMImportJobSummaries', name: 'DICOMImportJobSummaries')
    DICOMImportJobSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#DICOMImportJobSummary', name: 'DICOMImportJobSummary')
    DICOMNumberOfStudyRelatedInstances = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.medicalimaging#DICOMNumberOfStudyRelatedInstances', name: 'DICOMNumberOfStudyRelatedInstances', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 10000}})
    DICOMNumberOfStudyRelatedSeries = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.medicalimaging#DICOMNumberOfStudyRelatedSeries', name: 'DICOMNumberOfStudyRelatedSeries', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1000000}})
    DICOMPatientBirthDate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#DICOMPatientBirthDate', name: 'DICOMPatientBirthDate', traits: {"smithy.api#length" => {"min" => 0, "max" => 18}, "smithy.api#sensitive" => {}})
    DICOMPatientId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#DICOMPatientId', name: 'DICOMPatientId', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    DICOMPatientName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#DICOMPatientName', name: 'DICOMPatientName', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    DICOMPatientSex = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#DICOMPatientSex', name: 'DICOMPatientSex', traits: {"smithy.api#length" => {"min" => 0, "max" => 16}, "smithy.api#sensitive" => {}})
    DICOMSeriesBodyPart = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#DICOMSeriesBodyPart', name: 'DICOMSeriesBodyPart', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#sensitive" => {}})
    DICOMSeriesInstanceUID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#DICOMSeriesInstanceUID', name: 'DICOMSeriesInstanceUID', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^(?:[0-9][0-9]*|0)(\\.(?:[1-9][0-9]*|0))*$", "smithy.api#sensitive" => {}})
    DICOMSeriesModality = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#DICOMSeriesModality', name: 'DICOMSeriesModality', traits: {"smithy.api#length" => {"min" => 0, "max" => 16}, "smithy.api#sensitive" => {}})
    DICOMSeriesNumber = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.medicalimaging#DICOMSeriesNumber', name: 'DICOMSeriesNumber', traits: {"smithy.api#range" => {"min" => -2147483648, "max" => 2147483647}, "smithy.api#sensitive" => {}})
    DICOMStudyDate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#DICOMStudyDate', name: 'DICOMStudyDate', traits: {"smithy.api#length" => {"min" => 0, "max" => 18}, "smithy.api#sensitive" => {}})
    DICOMStudyDateAndTime = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#DICOMStudyDateAndTime', name: 'DICOMStudyDateAndTime')
    DICOMStudyDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#DICOMStudyDescription', name: 'DICOMStudyDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#sensitive" => {}})
    DICOMStudyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#DICOMStudyId', name: 'DICOMStudyId', traits: {"smithy.api#length" => {"min" => 0, "max" => 16}, "smithy.api#sensitive" => {}})
    DICOMStudyInstanceUID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#DICOMStudyInstanceUID', name: 'DICOMStudyInstanceUID', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^(?:[0-9][0-9]*|0)(\\.(?:[1-9][0-9]*|0))*$", "smithy.api#sensitive" => {}})
    DICOMStudyTime = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#DICOMStudyTime', name: 'DICOMStudyTime', traits: {"smithy.api#length" => {"min" => 0, "max" => 28}, "smithy.api#sensitive" => {}})
    DICOMTags = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#DICOMTags', name: 'DICOMTags')
    DICOMUpdates = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#DICOMUpdates', name: 'DICOMUpdates')
    DatastoreId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#DatastoreId', name: 'DatastoreId', traits: {"smithy.api#pattern" => "^[0-9a-z]{32}$"})
    DatastoreName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#DatastoreName', name: 'DatastoreName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9._/#-]+$"})
    DatastoreProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#DatastoreProperties', name: 'DatastoreProperties')
    DatastoreStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.medicalimaging#DatastoreStatus', name: 'DatastoreStatus')
    DatastoreSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.medicalimaging#DatastoreSummaries', name: 'DatastoreSummaries')
    DatastoreSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#DatastoreSummary', name: 'DatastoreSummary')
    Date = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.medicalimaging#Date', name: 'Date')
    DeleteDatastoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#DeleteDatastoreRequest', name: 'DeleteDatastoreRequest')
    DeleteDatastoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#DeleteDatastoreResponse', name: 'DeleteDatastoreResponse')
    DeleteImageSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#DeleteImageSetRequest', name: 'DeleteImageSetRequest')
    DeleteImageSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#DeleteImageSetResponse', name: 'DeleteImageSetResponse')
    GetDICOMImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#GetDICOMImportJobRequest', name: 'GetDICOMImportJobRequest')
    GetDICOMImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#GetDICOMImportJobResponse', name: 'GetDICOMImportJobResponse')
    GetDatastoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#GetDatastoreRequest', name: 'GetDatastoreRequest')
    GetDatastoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#GetDatastoreResponse', name: 'GetDatastoreResponse')
    GetImageFrameRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#GetImageFrameRequest', name: 'GetImageFrameRequest')
    GetImageFrameResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#GetImageFrameResponse', name: 'GetImageFrameResponse')
    GetImageSetMetadataRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#GetImageSetMetadataRequest', name: 'GetImageSetMetadataRequest')
    GetImageSetMetadataResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#GetImageSetMetadataResponse', name: 'GetImageSetMetadataResponse')
    GetImageSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#GetImageSetRequest', name: 'GetImageSetRequest')
    GetImageSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#GetImageSetResponse', name: 'GetImageSetResponse')
    ImageFrameId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#ImageFrameId', name: 'ImageFrameId', traits: {"smithy.api#pattern" => "^[0-9a-z]{32}$"})
    ImageFrameInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#ImageFrameInformation', name: 'ImageFrameInformation')
    ImageSetExternalVersionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#ImageSetExternalVersionId', name: 'ImageSetExternalVersionId', traits: {"smithy.api#pattern" => "^\\d+$"})
    ImageSetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#ImageSetId', name: 'ImageSetId', traits: {"smithy.api#pattern" => "^[0-9a-z]{32}$"})
    ImageSetMetadataBlob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.medicalimaging#ImageSetMetadataBlob', name: 'ImageSetMetadataBlob', traits: {"smithy.api#streaming" => {}})
    ImageSetProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#ImageSetProperties', name: 'ImageSetProperties')
    ImageSetPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.medicalimaging#ImageSetPropertiesList', name: 'ImageSetPropertiesList')
    ImageSetState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.medicalimaging#ImageSetState', name: 'ImageSetState')
    ImageSetWorkflowStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.medicalimaging#ImageSetWorkflowStatus', name: 'ImageSetWorkflowStatus')
    ImageSetsMetadataSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.medicalimaging#ImageSetsMetadataSummaries', name: 'ImageSetsMetadataSummaries')
    ImageSetsMetadataSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#ImageSetsMetadataSummary', name: 'ImageSetsMetadataSummary')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#JobId', name: 'JobId', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[0-9a-z]+$"})
    JobName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#JobName', name: 'JobName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9._/#-]+$"})
    JobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.medicalimaging#JobStatus', name: 'JobStatus')
    KmsKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#KmsKeyArn', name: 'KmsKeyArn', traits: {"aws.api#arnReference" => {}, "smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]{0,16}:kms:[a-z]{2}(-[a-z]{1,16}){1,3}-\\d{1}:\\d{12}:((key/[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12})|(alias/[a-zA-Z0-9:/_-]{1,256}))$"})
    ListDICOMImportJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#ListDICOMImportJobsRequest', name: 'ListDICOMImportJobsRequest')
    ListDICOMImportJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#ListDICOMImportJobsResponse', name: 'ListDICOMImportJobsResponse')
    ListDatastoresRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#ListDatastoresRequest', name: 'ListDatastoresRequest')
    ListDatastoresResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#ListDatastoresResponse', name: 'ListDatastoresResponse')
    ListImageSetVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#ListImageSetVersionsRequest', name: 'ListImageSetVersionsRequest')
    ListImageSetVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#ListImageSetVersionsResponse', name: 'ListImageSetVersionsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    Message = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#Message', name: 'Message', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\w -:]+$"})
    MetadataCopies = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#MetadataCopies', name: 'MetadataCopies')
    MetadataUpdates = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.medicalimaging#MetadataUpdates', name: 'MetadataUpdates')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}, "smithy.api#pattern" => "^\\p{ASCII}{0,8192}$"})
    Operator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.medicalimaging#Operator', name: 'Operator')
    Overrides = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#Overrides', name: 'Overrides')
    PayloadBlob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.medicalimaging#PayloadBlob', name: 'PayloadBlob', traits: {"smithy.api#streaming" => {}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#RoleArn', name: 'RoleArn', traits: {"aws.api#arnReference" => {"type" => "AWS::IAM::Role"}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+$"})
    S3Uri = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#S3Uri', name: 'S3Uri', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?$"})
    SearchByAttributeValue = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.medicalimaging#SearchByAttributeValue', name: 'SearchByAttributeValue')
    SearchByAttributeValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.medicalimaging#SearchByAttributeValues', name: 'SearchByAttributeValues')
    SearchCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#SearchCriteria', name: 'SearchCriteria', traits: {"smithy.api#sensitive" => {}})
    SearchFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#SearchFilter', name: 'SearchFilter')
    SearchFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.medicalimaging#SearchFilters', name: 'SearchFilters')
    SearchImageSetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#SearchImageSetsRequest', name: 'SearchImageSetsRequest')
    SearchImageSetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#SearchImageSetsResponse', name: 'SearchImageSetsResponse')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Sort = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#Sort', name: 'Sort')
    SortField = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.medicalimaging#SortField', name: 'SortField')
    SortOrder = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.medicalimaging#SortOrder', name: 'SortOrder')
    StartDICOMImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#StartDICOMImportJobRequest', name: 'StartDICOMImportJobRequest')
    StartDICOMImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#StartDICOMImportJobResponse', name: 'StartDICOMImportJobResponse')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.medicalimaging#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.medicalimaging#TagMap', name: 'TagMap')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#TagResourceRequest', name: 'TagResourceRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.medicalimaging#DatastoreResource", "ids" => {"datastoreId" => "resourceArn"}}, {"resource" => "com.amazonaws.medicalimaging#ImageSetResource", "ids" => {"datastoreId" => "resourceArn", "imageSetId" => "resourceArn"}}]})
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.medicalimaging#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#UntagResourceRequest', name: 'UntagResourceRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.medicalimaging#DatastoreResource", "ids" => {"datastoreId" => "resourceArn"}}, {"resource" => "com.amazonaws.medicalimaging#ImageSetResource", "ids" => {"datastoreId" => "resourceArn", "imageSetId" => "resourceArn"}}]})
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateImageSetMetadataRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#UpdateImageSetMetadataRequest', name: 'UpdateImageSetMetadataRequest')
    UpdateImageSetMetadataResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#UpdateImageSetMetadataResponse', name: 'UpdateImageSetMetadataResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.medicalimaging#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CopyDestinationImageSet.add_member(:image_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetId, location_name: 'imageSetId', traits: {"smithy.api#documentation" => "<p>The image set identifier for the destination image set.</p>", "smithy.api#required" => {}}))
    CopyDestinationImageSet.add_member(:latest_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetExternalVersionId, location_name: 'latestVersionId', traits: {"smithy.api#documentation" => "<p>The latest version identifier for the destination image set.</p>", "smithy.api#required" => {}}))
    CopyDestinationImageSet.type = Types::CopyDestinationImageSet
    CopyDestinationImageSetProperties.add_member(:image_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetId, location_name: 'imageSetId', traits: {"smithy.api#documentation" => "<p>The image set identifier of the copied image set properties.</p>", "smithy.api#required" => {}}))
    CopyDestinationImageSetProperties.add_member(:latest_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetExternalVersionId, location_name: 'latestVersionId', traits: {"smithy.api#documentation" => "<p>The latest version identifier for the destination image set properties.</p>", "smithy.api#required" => {}}))
    CopyDestinationImageSetProperties.add_member(:image_set_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetState, location_name: 'imageSetState', traits: {"smithy.api#documentation" => "<p>The image set state of the destination image set properties.</p>"}))
    CopyDestinationImageSetProperties.add_member(:image_set_workflow_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetWorkflowStatus, location_name: 'imageSetWorkflowStatus', traits: {"smithy.api#documentation" => "<p>The image set workflow status of the destination image set properties.</p>"}))
    CopyDestinationImageSetProperties.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the destination image set properties were created.</p>"}))
    CopyDestinationImageSetProperties.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the destination image set properties were last updated.</p>"}))
    CopyDestinationImageSetProperties.add_member(:image_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'imageSetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) assigned to the destination image set.</p>"}))
    CopyDestinationImageSetProperties.type = Types::CopyDestinationImageSetProperties
    CopyImageSetInformation.add_member(:source_image_set, Smithy::Schema::Shapes::ShapeRef.new(shape: CopySourceImageSetInformation, location_name: 'sourceImageSet', traits: {"smithy.api#documentation" => "<p>The source image set.</p>", "smithy.api#required" => {}}))
    CopyImageSetInformation.add_member(:destination_image_set, Smithy::Schema::Shapes::ShapeRef.new(shape: CopyDestinationImageSet, location_name: 'destinationImageSet', traits: {"smithy.api#documentation" => "<p>The destination image set.</p>"}))
    CopyImageSetInformation.type = Types::CopyImageSetInformation
    CopyImageSetRequest.add_member(:datastore_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreId, location_name: 'datastoreId', traits: {"smithy.api#documentation" => "<p>The data store identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CopyImageSetRequest.add_member(:source_image_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetId, location_name: 'sourceImageSetId', traits: {"smithy.api#documentation" => "<p>The source image set identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CopyImageSetRequest.add_member(:copy_image_set_information, Smithy::Schema::Shapes::ShapeRef.new(shape: CopyImageSetInformation, location_name: 'copyImageSetInformation', traits: {"smithy.api#documentation" => "<p>Copy image set information.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CopyImageSetRequest.add_member(:force, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'force', traits: {"smithy.api#documentation" => "<p>Providing this parameter will force completion of the <code>CopyImageSet</code> operation, even if there are inconsistent Patient, Study, and/or Series level metadata elements between the <code>sourceImageSet</code> and <code>destinationImageSet</code>.</p>", "smithy.api#httpQuery" => "force"}))
    CopyImageSetRequest.add_member(:promote_to_primary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'promoteToPrimary', traits: {"smithy.api#documentation" => "<p>Providing this parameter will configure the <code>CopyImageSet</code> operation to promote the given image set to the primary DICOM hierarchy. If successful, a new primary image set ID will be returned as the destination image set.</p>", "smithy.api#httpQuery" => "promoteToPrimary"}))
    CopyImageSetRequest[:http_payload] = :copy_image_set_information
    CopyImageSetRequest[:http_payload_member] = CopyImageSetRequest.member(:copy_image_set_information)
    CopyImageSetRequest.type = Types::CopyImageSetRequest
    CopyImageSetResponse.add_member(:datastore_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreId, location_name: 'datastoreId', traits: {"smithy.api#documentation" => "<p>The data store identifier.</p>", "smithy.api#required" => {}}))
    CopyImageSetResponse.add_member(:source_image_set_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: CopySourceImageSetProperties, location_name: 'sourceImageSetProperties', traits: {"smithy.api#documentation" => "<p>The properties of the source image set.</p>", "smithy.api#required" => {}}))
    CopyImageSetResponse.add_member(:destination_image_set_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: CopyDestinationImageSetProperties, location_name: 'destinationImageSetProperties', traits: {"smithy.api#documentation" => "<p>The properties of the destination image set.</p>", "smithy.api#required" => {}}))
    CopyImageSetResponse.type = Types::CopyImageSetResponse
    CopySourceImageSetInformation.add_member(:latest_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetExternalVersionId, location_name: 'latestVersionId', traits: {"smithy.api#documentation" => "<p>The latest version identifier for the source image set.</p>", "smithy.api#required" => {}}))
    CopySourceImageSetInformation.add_member(:dicom_copies, Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataCopies, location_name: 'DICOMCopies', traits: {"smithy.api#documentation" => "<p>Contains <code>MetadataCopies</code> structure and wraps information related to specific copy use cases. For example, when copying subsets.</p>"}))
    CopySourceImageSetInformation.type = Types::CopySourceImageSetInformation
    CopySourceImageSetProperties.add_member(:image_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetId, location_name: 'imageSetId', traits: {"smithy.api#documentation" => "<p>The image set identifier for the copied source image set.</p>", "smithy.api#required" => {}}))
    CopySourceImageSetProperties.add_member(:latest_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetExternalVersionId, location_name: 'latestVersionId', traits: {"smithy.api#documentation" => "<p>The latest version identifier for the copied source image set.</p>", "smithy.api#required" => {}}))
    CopySourceImageSetProperties.add_member(:image_set_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetState, location_name: 'imageSetState', traits: {"smithy.api#documentation" => "<p>The image set state of the copied source image set.</p>"}))
    CopySourceImageSetProperties.add_member(:image_set_workflow_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetWorkflowStatus, location_name: 'imageSetWorkflowStatus', traits: {"smithy.api#documentation" => "<p>The workflow status of the copied source image set.</p>"}))
    CopySourceImageSetProperties.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the source image set properties were created.</p>"}))
    CopySourceImageSetProperties.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the source image set properties were updated.</p>"}))
    CopySourceImageSetProperties.add_member(:image_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'imageSetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) assigned to the source image set.</p>"}))
    CopySourceImageSetProperties.type = Types::CopySourceImageSetProperties
    CreateDatastoreRequest.add_member(:datastore_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreName, location_name: 'datastoreName', traits: {"smithy.api#documentation" => "<p>The data store name.</p>"}))
    CreateDatastoreRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for API idempotency.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateDatastoreRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags provided when creating a data store.</p>"}))
    CreateDatastoreRequest.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) assigned to the Key Management Service (KMS) key for accessing encrypted data.</p>"}))
    CreateDatastoreRequest.type = Types::CreateDatastoreRequest
    CreateDatastoreResponse.add_member(:datastore_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreId, location_name: 'datastoreId', traits: {"smithy.api#documentation" => "<p>The data store identifier.</p>", "smithy.api#required" => {}}))
    CreateDatastoreResponse.add_member(:datastore_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreStatus, location_name: 'datastoreStatus', traits: {"smithy.api#documentation" => "<p>The data store status.</p>", "smithy.api#required" => {}}))
    CreateDatastoreResponse.type = Types::CreateDatastoreResponse
    DICOMImportJobProperties.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The import job identifier.</p>", "smithy.api#required" => {}}))
    DICOMImportJobProperties.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'jobName', traits: {"smithy.api#documentation" => "<p>The import job name.</p>", "smithy.api#required" => {}}))
    DICOMImportJobProperties.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'jobStatus', traits: {"smithy.api#documentation" => "<p>The filters for listing import jobs based on status.</p>", "smithy.api#required" => {}}))
    DICOMImportJobProperties.add_member(:datastore_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreId, location_name: 'datastoreId', traits: {"smithy.api#documentation" => "<p>The data store identifier.</p>", "smithy.api#required" => {}}))
    DICOMImportJobProperties.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'dataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that grants permissions to access medical imaging resources.</p>", "smithy.api#required" => {}}))
    DICOMImportJobProperties.add_member(:ended_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'endedAt', traits: {"smithy.api#documentation" => "<p>The timestamp for when the import job was ended.</p>"}))
    DICOMImportJobProperties.add_member(:submitted_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'submittedAt', traits: {"smithy.api#documentation" => "<p>The timestamp for when the import job was submitted.</p>"}))
    DICOMImportJobProperties.add_member(:input_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'inputS3Uri', traits: {"smithy.api#documentation" => "<p>The input prefix path for the S3 bucket that contains the DICOM P10 files to be imported.</p>", "smithy.api#required" => {}}))
    DICOMImportJobProperties.add_member(:output_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'outputS3Uri', traits: {"smithy.api#documentation" => "<p>The output prefix of the S3 bucket to upload the results of the DICOM import job.</p>", "smithy.api#required" => {}}))
    DICOMImportJobProperties.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message thrown if an import job fails.</p>"}))
    DICOMImportJobProperties.type = Types::DICOMImportJobProperties
    DICOMImportJobSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMImportJobSummary)
    DICOMImportJobSummary.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The import job identifier.</p>", "smithy.api#required" => {}}))
    DICOMImportJobSummary.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'jobName', traits: {"smithy.api#documentation" => "<p>The import job name.</p>", "smithy.api#required" => {}}))
    DICOMImportJobSummary.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'jobStatus', traits: {"smithy.api#documentation" => "<p>The filters for listing import jobs based on status.</p>", "smithy.api#required" => {}}))
    DICOMImportJobSummary.add_member(:datastore_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreId, location_name: 'datastoreId', traits: {"smithy.api#documentation" => "<p>The data store identifier.</p>", "smithy.api#required" => {}}))
    DICOMImportJobSummary.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'dataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that grants permissions to access medical imaging resources.</p>"}))
    DICOMImportJobSummary.add_member(:ended_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'endedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when an import job ended.</p>"}))
    DICOMImportJobSummary.add_member(:submitted_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'submittedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when an import job was submitted.</p>"}))
    DICOMImportJobSummary.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message thrown if an import job fails.</p>"}))
    DICOMImportJobSummary.type = Types::DICOMImportJobSummary
    DICOMStudyDateAndTime.add_member(:dicom_study_date, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMStudyDate, location_name: 'DICOMStudyDate', traits: {"smithy.api#documentation" => "<p>The DICOM study date provided in <code>yyMMdd</code> format.</p>", "smithy.api#required" => {}}))
    DICOMStudyDateAndTime.add_member(:dicom_study_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMStudyTime, location_name: 'DICOMStudyTime', traits: {"smithy.api#documentation" => "<p>The DICOM study time provided in <code>HHmmss.FFFFFF</code> format.</p>"}))
    DICOMStudyDateAndTime.type = Types::DICOMStudyDateAndTime
    DICOMTags.add_member(:dicom_patient_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMPatientId, location_name: 'DICOMPatientId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a patient in a DICOM Study.</p>"}))
    DICOMTags.add_member(:dicom_patient_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMPatientName, location_name: 'DICOMPatientName', traits: {"smithy.api#documentation" => "<p>The patient name.</p>"}))
    DICOMTags.add_member(:dicom_patient_birth_date, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMPatientBirthDate, location_name: 'DICOMPatientBirthDate', traits: {"smithy.api#documentation" => "<p>The patient birth date.</p>"}))
    DICOMTags.add_member(:dicom_patient_sex, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMPatientSex, location_name: 'DICOMPatientSex', traits: {"smithy.api#documentation" => "<p>The patient sex.</p>"}))
    DICOMTags.add_member(:dicom_study_instance_uid, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMStudyInstanceUID, location_name: 'DICOMStudyInstanceUID', traits: {"smithy.api#documentation" => "<p>The DICOM provided identifier for the Study Instance UID.</p>"}))
    DICOMTags.add_member(:dicom_study_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMStudyId, location_name: 'DICOMStudyId', traits: {"smithy.api#documentation" => "<p>The DICOM provided identifier for the Study ID.</p>"}))
    DICOMTags.add_member(:dicom_study_description, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMStudyDescription, location_name: 'DICOMStudyDescription', traits: {"smithy.api#documentation" => "<p>The DICOM provided Study Description.</p>"}))
    DICOMTags.add_member(:dicom_number_of_study_related_series, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMNumberOfStudyRelatedSeries, location_name: 'DICOMNumberOfStudyRelatedSeries', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of series in the DICOM study.</p>"}))
    DICOMTags.add_member(:dicom_number_of_study_related_instances, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMNumberOfStudyRelatedInstances, location_name: 'DICOMNumberOfStudyRelatedInstances', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of instances in the DICOM study.</p>"}))
    DICOMTags.add_member(:dicom_accession_number, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMAccessionNumber, location_name: 'DICOMAccessionNumber', traits: {"smithy.api#documentation" => "<p>The accession number for the DICOM study.</p>"}))
    DICOMTags.add_member(:dicom_series_instance_uid, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMSeriesInstanceUID, location_name: 'DICOMSeriesInstanceUID', traits: {"smithy.api#documentation" => "<p>The DICOM provided identifier for the Series Instance UID.</p>"}))
    DICOMTags.add_member(:dicom_series_modality, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMSeriesModality, location_name: 'DICOMSeriesModality', traits: {"smithy.api#documentation" => "<p>The DICOM provided identifier for the series Modality.</p>"}))
    DICOMTags.add_member(:dicom_series_body_part, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMSeriesBodyPart, location_name: 'DICOMSeriesBodyPart', traits: {"smithy.api#documentation" => "<p>The DICOM provided identifier for the series Body Part Examined.</p>"}))
    DICOMTags.add_member(:dicom_series_number, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMSeriesNumber, location_name: 'DICOMSeriesNumber', traits: {"smithy.api#documentation" => "<p>The DICOM provided identifier for the Series Number.</p>"}))
    DICOMTags.add_member(:dicom_study_date, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMStudyDate, location_name: 'DICOMStudyDate', traits: {"smithy.api#documentation" => "<p>The study date.</p>"}))
    DICOMTags.add_member(:dicom_study_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMStudyTime, location_name: 'DICOMStudyTime', traits: {"smithy.api#documentation" => "<p>The study time.</p>"}))
    DICOMTags.type = Types::DICOMTags
    DICOMUpdates.add_member(:removable_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMAttribute, location_name: 'removableAttributes', traits: {"smithy.api#documentation" => "<p>The DICOM tags to be removed from <code>ImageSetMetadata</code>.</p>"}))
    DICOMUpdates.add_member(:updatable_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMAttribute, location_name: 'updatableAttributes', traits: {"smithy.api#documentation" => "<p>The DICOM tags that need to be updated in <code>ImageSetMetadata</code>.</p>"}))
    DICOMUpdates.type = Types::DICOMUpdates
    DatastoreProperties.add_member(:datastore_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreId, location_name: 'datastoreId', traits: {"smithy.api#documentation" => "<p>The data store identifier.</p>", "smithy.api#required" => {}}))
    DatastoreProperties.add_member(:datastore_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreName, location_name: 'datastoreName', traits: {"smithy.api#documentation" => "<p>The data store name.</p>", "smithy.api#required" => {}}))
    DatastoreProperties.add_member(:datastore_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreStatus, location_name: 'datastoreStatus', traits: {"smithy.api#documentation" => "<p>The data store status.</p>", "smithy.api#required" => {}}))
    DatastoreProperties.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) assigned to the Key Management Service (KMS) key for accessing encrypted data.</p>"}))
    DatastoreProperties.add_member(:datastore_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datastoreArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the data store.</p>"}))
    DatastoreProperties.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the data store was created.</p>"}))
    DatastoreProperties.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the data store was last updated.</p>"}))
    DatastoreProperties.type = Types::DatastoreProperties
    DatastoreStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    DatastoreStatus.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    DatastoreStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DatastoreStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    DatastoreStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    DatastoreSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreSummary)
    DatastoreSummary.add_member(:datastore_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreId, location_name: 'datastoreId', traits: {"smithy.api#documentation" => "<p>The data store identifier.</p>", "smithy.api#required" => {}}))
    DatastoreSummary.add_member(:datastore_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreName, location_name: 'datastoreName', traits: {"smithy.api#documentation" => "<p>The data store name.</p>", "smithy.api#required" => {}}))
    DatastoreSummary.add_member(:datastore_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreStatus, location_name: 'datastoreStatus', traits: {"smithy.api#documentation" => "<p>The data store status.</p>", "smithy.api#required" => {}}))
    DatastoreSummary.add_member(:datastore_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datastoreArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the data store.</p>"}))
    DatastoreSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the data store was created.</p>"}))
    DatastoreSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the data store was last updated.</p>"}))
    DatastoreSummary.type = Types::DatastoreSummary
    DeleteDatastoreRequest.add_member(:datastore_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreId, location_name: 'datastoreId', traits: {"smithy.api#documentation" => "<p>The data store identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDatastoreRequest.type = Types::DeleteDatastoreRequest
    DeleteDatastoreResponse.add_member(:datastore_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreId, location_name: 'datastoreId', traits: {"smithy.api#documentation" => "<p>The data store identifier.</p>", "smithy.api#required" => {}}))
    DeleteDatastoreResponse.add_member(:datastore_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreStatus, location_name: 'datastoreStatus', traits: {"smithy.api#documentation" => "<p>The data store status.</p>", "smithy.api#required" => {}}))
    DeleteDatastoreResponse.type = Types::DeleteDatastoreResponse
    DeleteImageSetRequest.add_member(:datastore_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreId, location_name: 'datastoreId', traits: {"smithy.api#documentation" => "<p>The data store identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteImageSetRequest.add_member(:image_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetId, location_name: 'imageSetId', traits: {"smithy.api#documentation" => "<p>The image set identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteImageSetRequest.type = Types::DeleteImageSetRequest
    DeleteImageSetResponse.add_member(:datastore_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreId, location_name: 'datastoreId', traits: {"smithy.api#documentation" => "<p>The data store identifier.</p>", "smithy.api#required" => {}}))
    DeleteImageSetResponse.add_member(:image_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetId, location_name: 'imageSetId', traits: {"smithy.api#documentation" => "<p>The image set identifier.</p>", "smithy.api#required" => {}}))
    DeleteImageSetResponse.add_member(:image_set_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetState, location_name: 'imageSetState', traits: {"smithy.api#documentation" => "<p>The image set state.</p>", "smithy.api#required" => {}}))
    DeleteImageSetResponse.add_member(:image_set_workflow_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetWorkflowStatus, location_name: 'imageSetWorkflowStatus', traits: {"smithy.api#documentation" => "<p>The image set workflow status.</p>", "smithy.api#required" => {}}))
    DeleteImageSetResponse.type = Types::DeleteImageSetResponse
    GetDICOMImportJobRequest.add_member(:datastore_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreId, location_name: 'datastoreId', traits: {"smithy.api#documentation" => "<p>The data store identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDICOMImportJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The import job identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDICOMImportJobRequest.type = Types::GetDICOMImportJobRequest
    GetDICOMImportJobResponse.add_member(:job_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMImportJobProperties, location_name: 'jobProperties', traits: {"smithy.api#documentation" => "<p>The properties of the import job.</p>", "smithy.api#required" => {}}))
    GetDICOMImportJobResponse.type = Types::GetDICOMImportJobResponse
    GetDatastoreRequest.add_member(:datastore_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreId, location_name: 'datastoreId', traits: {"smithy.api#documentation" => "<p>The data store identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDatastoreRequest.type = Types::GetDatastoreRequest
    GetDatastoreResponse.add_member(:datastore_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreProperties, location_name: 'datastoreProperties', traits: {"smithy.api#documentation" => "<p>The data store properties.</p>", "smithy.api#required" => {}}))
    GetDatastoreResponse.type = Types::GetDatastoreResponse
    GetImageFrameRequest.add_member(:datastore_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreId, location_name: 'datastoreId', traits: {"smithy.api#documentation" => "<p>The data store identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImageFrameRequest.add_member(:image_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetId, location_name: 'imageSetId', traits: {"smithy.api#documentation" => "<p>The image set identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImageFrameRequest.add_member(:image_frame_information, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageFrameInformation, location_name: 'imageFrameInformation', traits: {"smithy.api#documentation" => "<p>Information about the image frame (pixel data) identifier.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetImageFrameRequest[:http_payload] = :image_frame_information
    GetImageFrameRequest[:http_payload_member] = GetImageFrameRequest.member(:image_frame_information)
    GetImageFrameRequest.type = Types::GetImageFrameRequest
    GetImageFrameResponse.add_member(:image_frame_blob, Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadBlob, location_name: 'imageFrameBlob', traits: {"smithy.api#documentation" => "<p>The blob containing the aggregated image frame information.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetImageFrameResponse.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The format in which the image frame information is returned to the customer. Default is <code>application/octet-stream</code>.</p> <note> <ul> <li> <p>If the stored transfer syntax is <code>1.2.840.10008.1.2.1</code>, the returned <code>contentType</code> is <code>application/octet-stream</code>.</p> </li> </ul> <ul> <li> <p>If the stored transfer syntax is <code>1.2.840.10008.1.2.4.50</code>, the returned <code>contentType</code> is <code>image/jpeg</code>.</p> </li> </ul> <ul> <li> <p>If the stored transfer syntax is <code>1.2.840.10008.1.2.4.91</code>, the returned <code>contentType</code> is <code>image/j2c</code>.</p> </li> </ul> <ul> <li> <p>If the stored transfer syntax is MPEG2, <code>1.2.840.10008.1.2.4.100</code>, <code>1.2.840.10008.1.2.4.100.1</code>, <code>1.2.840.10008.1.2.4.101</code>, or <code>1.2.840.10008.1.2.4.101.1</code>, the returned <code>contentType</code> is <code>video/mpeg</code>.</p> </li> </ul> <ul> <li> <p>If the stored transfer syntax is MPEG-4 AVC/H.264, UID <code>1.2.840.10008.1.2.4.102</code>, <code>1.2.840.10008.1.2.4.102.1</code>, <code>1.2.840.10008.1.2.4.103</code>, <code>1.2.840.10008.1.2.4.103.1</code>, <code>1.2.840.10008.1.2.4.104</code>, <code>1.2.840.10008.1.2.4.104.1</code>, <code>1.2.840.10008.1.2.4.105</code>, <code>1.2.840.10008.1.2.4.105.1</code>, <code>1.2.840.10008.1.2.4.106</code>, or <code>1.2.840.10008.1.2.4.106.1</code>, the returned <code>contentType</code> is <code>video/mp4</code>.</p> </li> </ul> <ul> <li> <p>If the stored transfer syntax is HEVC/H.265, UID <code>1.2.840.10008.1.2.4.107</code> or <code>1.2.840.10008.1.2.4.108</code>, the returned <code>contentType</code> is <code>video/H256</code>.</p> </li> </ul> <ul> <li> <p>If the stored transfer syntax is <code>1.2.840.10008.1.2.4.202</code> or if the stored transfer syntax is <i>missing</i>, the returned <code>contentType</code> is <code>image/jph</code>.</p> </li> </ul> <ul> <li> <p>If the stored transfer syntax is <code>1.2.840.10008.1.2.4.203</code>, the returned contentType is <code>image/jphc</code>.</p> </li> </ul> </note>", "smithy.api#httpHeader" => "Content-Type"}))
    GetImageFrameResponse[:http_payload] = :image_frame_blob
    GetImageFrameResponse[:http_payload_member] = GetImageFrameResponse.member(:image_frame_blob)
    GetImageFrameResponse.type = Types::GetImageFrameResponse
    GetImageSetMetadataRequest.add_member(:datastore_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreId, location_name: 'datastoreId', traits: {"smithy.api#documentation" => "<p>The data store identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImageSetMetadataRequest.add_member(:image_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetId, location_name: 'imageSetId', traits: {"smithy.api#documentation" => "<p>The image set identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImageSetMetadataRequest.add_member(:version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetExternalVersionId, location_name: 'versionId', traits: {"smithy.api#documentation" => "<p>The image set version identifier.</p>", "smithy.api#httpQuery" => "version"}))
    GetImageSetMetadataRequest.type = Types::GetImageSetMetadataRequest
    GetImageSetMetadataResponse.add_member(:image_set_metadata_blob, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetMetadataBlob, location_name: 'imageSetMetadataBlob', traits: {"smithy.api#documentation" => "<p>The blob containing the aggregated metadata information for the image set.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetImageSetMetadataResponse.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The format in which the study metadata is returned to the customer. Default is <code>text/plain</code>.</p>", "smithy.api#httpHeader" => "Content-Type"}))
    GetImageSetMetadataResponse.add_member(:content_encoding, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'contentEncoding', traits: {"smithy.api#documentation" => "<p>The compression format in which image set metadata attributes are returned.</p>", "smithy.api#httpHeader" => "Content-Encoding"}))
    GetImageSetMetadataResponse[:http_payload] = :image_set_metadata_blob
    GetImageSetMetadataResponse[:http_payload_member] = GetImageSetMetadataResponse.member(:image_set_metadata_blob)
    GetImageSetMetadataResponse.type = Types::GetImageSetMetadataResponse
    GetImageSetRequest.add_member(:datastore_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreId, location_name: 'datastoreId', traits: {"smithy.api#documentation" => "<p>The data store identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImageSetRequest.add_member(:image_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetId, location_name: 'imageSetId', traits: {"smithy.api#documentation" => "<p>The image set identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImageSetRequest.add_member(:version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetExternalVersionId, location_name: 'versionId', traits: {"smithy.api#documentation" => "<p>The image set version identifier.</p>", "smithy.api#httpQuery" => "version"}))
    GetImageSetRequest.type = Types::GetImageSetRequest
    GetImageSetResponse.add_member(:datastore_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreId, location_name: 'datastoreId', traits: {"smithy.api#documentation" => "<p>The data store identifier.</p>", "smithy.api#required" => {}}))
    GetImageSetResponse.add_member(:image_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetId, location_name: 'imageSetId', traits: {"smithy.api#documentation" => "<p>The image set identifier.</p>", "smithy.api#required" => {}}))
    GetImageSetResponse.add_member(:version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetExternalVersionId, location_name: 'versionId', traits: {"smithy.api#documentation" => "<p>The image set version identifier.</p>", "smithy.api#required" => {}}))
    GetImageSetResponse.add_member(:image_set_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetState, location_name: 'imageSetState', traits: {"smithy.api#documentation" => "<p>The image set state.</p>", "smithy.api#required" => {}}))
    GetImageSetResponse.add_member(:image_set_workflow_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetWorkflowStatus, location_name: 'imageSetWorkflowStatus', traits: {"smithy.api#documentation" => "<p>The image set workflow status.</p>"}))
    GetImageSetResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp when image set properties were created.</p>"}))
    GetImageSetResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when image set properties were updated.</p>"}))
    GetImageSetResponse.add_member(:deleted_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'deletedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the image set properties were deleted.</p>"}))
    GetImageSetResponse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message thrown if an image set action fails.</p>"}))
    GetImageSetResponse.add_member(:image_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'imageSetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) assigned to the image set.</p>"}))
    GetImageSetResponse.add_member(:overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: Overrides, location_name: 'overrides', traits: {"smithy.api#documentation" => "<p>This object contains the details of any overrides used while creating a specific image set version. If an image set was copied or updated using the <code>force</code> flag, this object will contain the <code>forced</code> flag.</p>"}))
    GetImageSetResponse.add_member(:is_primary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isPrimary', traits: {"smithy.api#documentation" => "<p>The flag to determine whether the image set is primary or not.</p>"}))
    GetImageSetResponse.type = Types::GetImageSetResponse
    ImageFrameInformation.add_member(:image_frame_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageFrameId, location_name: 'imageFrameId', traits: {"smithy.api#documentation" => "<p>The image frame (pixel data) identifier.</p>", "smithy.api#required" => {}}))
    ImageFrameInformation.type = Types::ImageFrameInformation
    ImageSetProperties.add_member(:image_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetId, location_name: 'imageSetId', traits: {"smithy.api#documentation" => "<p>The image set identifier.</p>", "smithy.api#required" => {}}))
    ImageSetProperties.add_member(:version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetExternalVersionId, location_name: 'versionId', traits: {"smithy.api#documentation" => "<p>The image set version identifier.</p>", "smithy.api#required" => {}}))
    ImageSetProperties.add_member(:image_set_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetState, location_name: 'imageSetState', traits: {"smithy.api#documentation" => "<p>The image set state.</p>", "smithy.api#required" => {}}))
    ImageSetProperties.add_member(:image_set_workflow_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetWorkflowStatus, location_name: 'ImageSetWorkflowStatus', traits: {"smithy.api#documentation" => "<p>The image set workflow status.</p>"}))
    ImageSetProperties.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the image set properties were created.</p>"}))
    ImageSetProperties.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the image set properties were updated.</p>"}))
    ImageSetProperties.add_member(:deleted_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'deletedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the image set properties were deleted.</p>"}))
    ImageSetProperties.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message thrown if an image set action fails.</p>"}))
    ImageSetProperties.add_member(:overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: Overrides, location_name: 'overrides', traits: {"smithy.api#documentation" => "<p>Contains details on overrides used when creating the returned version of an image set. For example, if <code>forced</code> exists, the <code>forced</code> flag was used when creating the image set.</p>"}))
    ImageSetProperties.add_member(:is_primary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isPrimary', traits: {"smithy.api#documentation" => "<p>The flag to determine whether the image set is primary or not.</p>"}))
    ImageSetProperties.type = Types::ImageSetProperties
    ImageSetPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetProperties)
    ImageSetState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ImageSetState.add_member(:locked, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOCKED', traits: {"smithy.api#enumValue" => "LOCKED"}))
    ImageSetState.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    ImageSetWorkflowStatus.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    ImageSetWorkflowStatus.add_member(:copied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COPIED', traits: {"smithy.api#enumValue" => "COPIED"}))
    ImageSetWorkflowStatus.add_member(:copying, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COPYING', traits: {"smithy.api#enumValue" => "COPYING"}))
    ImageSetWorkflowStatus.add_member(:copying_with_read_only_access, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COPYING_WITH_READ_ONLY_ACCESS', traits: {"smithy.api#enumValue" => "COPYING_WITH_READ_ONLY_ACCESS"}))
    ImageSetWorkflowStatus.add_member(:copy_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COPY_FAILED', traits: {"smithy.api#enumValue" => "COPY_FAILED"}))
    ImageSetWorkflowStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    ImageSetWorkflowStatus.add_member(:updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATED', traits: {"smithy.api#enumValue" => "UPDATED"}))
    ImageSetWorkflowStatus.add_member(:update_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    ImageSetWorkflowStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ImageSetWorkflowStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    ImageSetsMetadataSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetsMetadataSummary)
    ImageSetsMetadataSummary.add_member(:image_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetId, location_name: 'imageSetId', traits: {"smithy.api#documentation" => "<p>The image set identifier.</p>", "smithy.api#required" => {}}))
    ImageSetsMetadataSummary.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The image set version.</p>"}))
    ImageSetsMetadataSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time an image set is created. Sample creation date is provided in <code>1985-04-12T23:20:50.52Z</code> format.</p>"}))
    ImageSetsMetadataSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time an image set was last updated.</p>"}))
    ImageSetsMetadataSummary.add_member(:dicom_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMTags, location_name: 'DICOMTags', traits: {"smithy.api#documentation" => "<p>The DICOM tags associated with the image set.</p>"}))
    ImageSetsMetadataSummary.add_member(:is_primary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isPrimary', traits: {"smithy.api#documentation" => "<p>The flag to determine whether the image set is primary or not.</p>"}))
    ImageSetsMetadataSummary.type = Types::ImageSetsMetadataSummary
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    JobStatus.add_member(:submitted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBMITTED', traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    JobStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    JobStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    JobStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ListDICOMImportJobsRequest.add_member(:datastore_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreId, location_name: 'datastoreId', traits: {"smithy.api#documentation" => "<p>The data store identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDICOMImportJobsRequest.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'jobStatus', traits: {"smithy.api#documentation" => "<p>The filters for listing import jobs based on status.</p>", "smithy.api#httpQuery" => "jobStatus"}))
    ListDICOMImportJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to request the list of import jobs on the next page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDICOMImportJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The max results count. The upper bound is determined by load testing.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListDICOMImportJobsRequest.type = Types::ListDICOMImportJobsRequest
    ListDICOMImportJobsResponse.add_member(:job_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMImportJobSummaries, location_name: 'jobSummaries', traits: {"smithy.api#documentation" => "<p>A list of job summaries.</p>", "smithy.api#required" => {}}))
    ListDICOMImportJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the list of import jobs on the next page.</p>"}))
    ListDICOMImportJobsResponse.type = Types::ListDICOMImportJobsResponse
    ListDatastoresRequest.add_member(:datastore_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreStatus, location_name: 'datastoreStatus', traits: {"smithy.api#documentation" => "<p>The data store status.</p>", "smithy.api#httpQuery" => "datastoreStatus"}))
    ListDatastoresRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to request the list of data stores on the next page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDatastoresRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Valid Range: Minimum value of 1. Maximum value of 50.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListDatastoresRequest.type = Types::ListDatastoresRequest
    ListDatastoresResponse.add_member(:datastore_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreSummaries, location_name: 'datastoreSummaries', traits: {"smithy.api#documentation" => "<p>The list of summaries of data stores.</p>"}))
    ListDatastoresResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the list of data stores on the next page.</p>"}))
    ListDatastoresResponse.type = Types::ListDatastoresResponse
    ListImageSetVersionsRequest.add_member(:datastore_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreId, location_name: 'datastoreId', traits: {"smithy.api#documentation" => "<p>The data store identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListImageSetVersionsRequest.add_member(:image_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetId, location_name: 'imageSetId', traits: {"smithy.api#documentation" => "<p>The image set identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListImageSetVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to request the list of image set versions on the next page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListImageSetVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The max results count.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListImageSetVersionsRequest.type = Types::ListImageSetVersionsRequest
    ListImageSetVersionsResponse.add_member(:image_set_properties_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetPropertiesList, location_name: 'imageSetPropertiesList', traits: {"smithy.api#documentation" => "<p>Lists all properties associated with an image set.</p>", "smithy.api#required" => {}}))
    ListImageSetVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the list of image set versions on the next page.</p>"}))
    ListImageSetVersionsResponse.type = Types::ListImageSetVersionsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the medical imaging resource to list tags for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of all tags associated with a medical imaging resource.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MetadataCopies.add_member(:copiable_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: CopiableAttributes, location_name: 'copiableAttributes', traits: {"smithy.api#documentation" => "<p>The JSON string used to specify a subset of SOP Instances to copy from source to destination image set.</p>", "smithy.api#required" => {}}))
    MetadataCopies.type = Types::MetadataCopies
    MetadataUpdates.add_member(:dicom_updates, Types::MetadataUpdates::DicomUpdates, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMUpdates, location_name: 'DICOMUpdates', traits: {"smithy.api#documentation" => "<p>The object containing <code>removableAttributes</code> and <code>updatableAttributes</code>.</p>"}))
    MetadataUpdates.add_member(:revert_to_version_id, Types::MetadataUpdates::RevertToVersionId, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetExternalVersionId, location_name: 'revertToVersionId', traits: {"smithy.api#documentation" => "<p>Specifies the previous image set version ID to revert the current image set back to.</p> <note> <p>You must provide either <code>revertToVersionId</code> or <code>DICOMUpdates</code> in your request. A <code>ValidationException</code> error is thrown if both parameters are provided at the same time.</p> </note>"}))
    MetadataUpdates.add_member(:unknown, Types::MetadataUpdates::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    MetadataUpdates.type = Types::MetadataUpdates
    Operator.add_member(:equal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUAL', traits: {"smithy.api#enumValue" => "EQUAL"}))
    Operator.add_member(:between, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BETWEEN', traits: {"smithy.api#enumValue" => "BETWEEN"}))
    Overrides.add_member(:forced, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'forced', traits: {"smithy.api#documentation" => "<p>Providing this parameter will force completion of the <code>CopyImageSet</code> and <code>UpdateImageSetMetadata</code> actions, even if metadata is inconsistent at the Patient, Study, and/or Series levels.</p>"}))
    Overrides.type = Types::Overrides
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SearchByAttributeValue.add_member(:dicom_patient_id, Types::SearchByAttributeValue::DicomPatientId, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMPatientId, location_name: 'DICOMPatientId', traits: {"smithy.api#documentation" => "<p>The patient ID input for search.</p>"}))
    SearchByAttributeValue.add_member(:dicom_accession_number, Types::SearchByAttributeValue::DicomAccessionNumber, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMAccessionNumber, location_name: 'DICOMAccessionNumber', traits: {"smithy.api#documentation" => "<p>The DICOM accession number for search.</p>"}))
    SearchByAttributeValue.add_member(:dicom_study_id, Types::SearchByAttributeValue::DicomStudyId, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMStudyId, location_name: 'DICOMStudyId', traits: {"smithy.api#documentation" => "<p>The DICOM study ID for search.</p>"}))
    SearchByAttributeValue.add_member(:dicom_study_instance_uid, Types::SearchByAttributeValue::DicomStudyInstanceUid, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMStudyInstanceUID, location_name: 'DICOMStudyInstanceUID', traits: {"smithy.api#documentation" => "<p>The DICOM study instance UID for search.</p>"}))
    SearchByAttributeValue.add_member(:dicom_series_instance_uid, Types::SearchByAttributeValue::DicomSeriesInstanceUid, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMSeriesInstanceUID, location_name: 'DICOMSeriesInstanceUID', traits: {"smithy.api#documentation" => "<p>The Series Instance UID input for search.</p>"}))
    SearchByAttributeValue.add_member(:created_at, Types::SearchByAttributeValue::CreatedAt, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The created at time of the image set provided for search.</p>"}))
    SearchByAttributeValue.add_member(:updated_at, Types::SearchByAttributeValue::UpdatedAt, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp input for search.</p>"}))
    SearchByAttributeValue.add_member(:dicom_study_date_and_time, Types::SearchByAttributeValue::DicomStudyDateAndTime, Smithy::Schema::Shapes::ShapeRef.new(shape: DICOMStudyDateAndTime, location_name: 'DICOMStudyDateAndTime', traits: {"smithy.api#documentation" => "<p>The aggregated structure containing DICOM study date and study time for search.</p>"}))
    SearchByAttributeValue.add_member(:is_primary, Types::SearchByAttributeValue::IsPrimary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isPrimary', traits: {"smithy.api#documentation" => "<p>The primary image set flag provided for search.</p>"}))
    SearchByAttributeValue.add_member(:unknown, Types::SearchByAttributeValue::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    SearchByAttributeValue.type = Types::SearchByAttributeValue
    SearchByAttributeValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchByAttributeValue)
    SearchCriteria.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>The filters for the search criteria.</p>", "smithy.api#length" => {"min" => 1, "max" => 2}}))
    SearchCriteria.add_member(:sort, Smithy::Schema::Shapes::ShapeRef.new(shape: Sort, location_name: 'sort', traits: {"smithy.api#documentation" => "<p>The sort input for search criteria.</p>"}))
    SearchCriteria.type = Types::SearchCriteria
    SearchFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchByAttributeValues, location_name: 'values', traits: {"smithy.api#documentation" => "<p>The search filter values.</p>", "smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#required" => {}}))
    SearchFilter.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: Operator, location_name: 'operator', traits: {"smithy.api#documentation" => "<p>The search filter operator for <code>imageSetDateTime</code>.</p>", "smithy.api#required" => {}}))
    SearchFilter.type = Types::SearchFilter
    SearchFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFilter)
    SearchImageSetsRequest.add_member(:datastore_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreId, location_name: 'datastoreId', traits: {"smithy.api#documentation" => "<p>The identifier of the data store where the image sets reside.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchImageSetsRequest.add_member(:search_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchCriteria, location_name: 'searchCriteria', traits: {"smithy.api#documentation" => "<p>The search criteria that filters by applying a maximum of 1 item to <code>SearchByAttribute</code>.</p>", "smithy.api#httpPayload" => {}}))
    SearchImageSetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that can be returned in a search.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    SearchImageSetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token used for pagination of results returned in the response. Use the token returned from the previous request to continue results where the previous request ended.</p>", "smithy.api#httpQuery" => "nextToken"}))
    SearchImageSetsRequest[:http_payload] = :search_criteria
    SearchImageSetsRequest[:http_payload_member] = SearchImageSetsRequest.member(:search_criteria)
    SearchImageSetsRequest.type = Types::SearchImageSetsRequest
    SearchImageSetsResponse.add_member(:image_sets_metadata_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetsMetadataSummaries, location_name: 'imageSetsMetadataSummaries', traits: {"smithy.api#documentation" => "<p>The model containing the image set results.</p>", "smithy.api#required" => {}}))
    SearchImageSetsResponse.add_member(:sort, Smithy::Schema::Shapes::ShapeRef.new(shape: Sort, location_name: 'sort', traits: {"smithy.api#documentation" => "<p>The sort order for image set search results.</p>"}))
    SearchImageSetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for pagination results.</p>"}))
    SearchImageSetsResponse.type = Types::SearchImageSetsResponse
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Sort.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>The sort order for search criteria.</p>", "smithy.api#required" => {}}))
    Sort.add_member(:sort_field, Smithy::Schema::Shapes::ShapeRef.new(shape: SortField, location_name: 'sortField', traits: {"smithy.api#documentation" => "<p>The sort field for search criteria.</p>", "smithy.api#required" => {}}))
    Sort.type = Types::Sort
    SortField.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'updatedAt', traits: {"smithy.api#enumValue" => "updatedAt"}))
    SortField.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'createdAt', traits: {"smithy.api#enumValue" => "createdAt"}))
    SortField.add_member(:dicom_study_date_and_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DICOMStudyDateAndTime', traits: {"smithy.api#enumValue" => "DICOMStudyDateAndTime"}))
    SortOrder.add_member(:asc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASC', traits: {"smithy.api#enumValue" => "ASC"}))
    SortOrder.add_member(:desc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESC', traits: {"smithy.api#enumValue" => "DESC"}))
    StartDICOMImportJobRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'jobName', traits: {"smithy.api#documentation" => "<p>The import job name.</p>"}))
    StartDICOMImportJobRequest.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'dataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that grants permission to access medical imaging resources.</p>", "smithy.api#required" => {}}))
    StartDICOMImportJobRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for API idempotency.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StartDICOMImportJobRequest.add_member(:datastore_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreId, location_name: 'datastoreId', traits: {"smithy.api#documentation" => "<p>The data store identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDICOMImportJobRequest.add_member(:input_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'inputS3Uri', traits: {"smithy.api#documentation" => "<p>The input prefix path for the S3 bucket that contains the DICOM files to be imported.</p>", "smithy.api#required" => {}}))
    StartDICOMImportJobRequest.add_member(:output_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'outputS3Uri', traits: {"smithy.api#documentation" => "<p>The output prefix of the S3 bucket to upload the results of the DICOM import job.</p>", "smithy.api#required" => {}}))
    StartDICOMImportJobRequest.add_member(:input_owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'inputOwnerAccountId', traits: {"smithy.api#documentation" => "<p>The account ID of the source S3 bucket owner.</p>"}))
    StartDICOMImportJobRequest.type = Types::StartDICOMImportJobRequest
    StartDICOMImportJobResponse.add_member(:datastore_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreId, location_name: 'datastoreId', traits: {"smithy.api#documentation" => "<p>The data store identifier.</p>", "smithy.api#required" => {}}))
    StartDICOMImportJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The import job identifier.</p>", "smithy.api#required" => {}}))
    StartDICOMImportJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'jobStatus', traits: {"smithy.api#documentation" => "<p>The import job status.</p>", "smithy.api#required" => {}}))
    StartDICOMImportJobResponse.add_member(:submitted_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'submittedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the import job was submitted.</p>", "smithy.api#required" => {}}))
    StartDICOMImportJobResponse.type = Types::StartDICOMImportJobResponse
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the medical imaging resource that tags are being added to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The user-specified key and value tag pairs added to a medical imaging resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the medical imaging resource that tags are being removed from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The keys for the tags to be removed from the medical imaging resource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateImageSetMetadataRequest.add_member(:datastore_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreId, location_name: 'datastoreId', traits: {"smithy.api#documentation" => "<p>The data store identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateImageSetMetadataRequest.add_member(:image_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetId, location_name: 'imageSetId', traits: {"smithy.api#documentation" => "<p>The image set identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateImageSetMetadataRequest.add_member(:latest_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetExternalVersionId, location_name: 'latestVersionId', traits: {"smithy.api#documentation" => "<p>The latest image set version identifier.</p>", "smithy.api#httpQuery" => "latestVersion", "smithy.api#required" => {}}))
    UpdateImageSetMetadataRequest.add_member(:force, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'force', traits: {"smithy.api#documentation" => "<p>Setting this flag will force the <code>UpdateImageSetMetadata</code> operation for the following attributes:</p> <ul> <li> <p> <code>Tag.StudyInstanceUID</code>, <code>Tag.SeriesInstanceUID</code>, <code>Tag.SOPInstanceUID</code>, and <code>Tag.StudyID</code> </p> </li> <li> <p>Adding, removing, or updating private tags for an individual SOP Instance</p> </li> </ul>", "smithy.api#httpQuery" => "force"}))
    UpdateImageSetMetadataRequest.add_member(:update_image_set_metadata_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataUpdates, location_name: 'updateImageSetMetadataUpdates', traits: {"smithy.api#documentation" => "<p>Update image set metadata updates.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateImageSetMetadataRequest[:http_payload] = :update_image_set_metadata_updates
    UpdateImageSetMetadataRequest[:http_payload_member] = UpdateImageSetMetadataRequest.member(:update_image_set_metadata_updates)
    UpdateImageSetMetadataRequest.type = Types::UpdateImageSetMetadataRequest
    UpdateImageSetMetadataResponse.add_member(:datastore_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreId, location_name: 'datastoreId', traits: {"smithy.api#documentation" => "<p>The data store identifier.</p>", "smithy.api#required" => {}}))
    UpdateImageSetMetadataResponse.add_member(:image_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetId, location_name: 'imageSetId', traits: {"smithy.api#documentation" => "<p>The image set identifier.</p>", "smithy.api#required" => {}}))
    UpdateImageSetMetadataResponse.add_member(:latest_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetExternalVersionId, location_name: 'latestVersionId', traits: {"smithy.api#documentation" => "<p>The latest image set version identifier.</p>", "smithy.api#required" => {}}))
    UpdateImageSetMetadataResponse.add_member(:image_set_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetState, location_name: 'imageSetState', traits: {"smithy.api#documentation" => "<p>The image set state.</p>", "smithy.api#required" => {}}))
    UpdateImageSetMetadataResponse.add_member(:image_set_workflow_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSetWorkflowStatus, location_name: 'imageSetWorkflowStatus', traits: {"smithy.api#documentation" => "<p>The image set workflow status.</p>"}))
    UpdateImageSetMetadataResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp when image set metadata was created.</p>"}))
    UpdateImageSetMetadataResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when image set metadata was updated.</p>"}))
    UpdateImageSetMetadataResponse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message thrown if an update image set metadata action fails.</p>"}))
    UpdateImageSetMetadataResponse.type = Types::UpdateImageSetMetadataResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    AHIGatewayService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.medicalimaging#AHIGatewayService"
      service.name = "AHIGatewayService"
      service.version = "2023-07-19"
      service.traits = {"aws.api#service" => {"sdkId" => "Medical Imaging", "arnNamespace" => "medical-imaging", "endpointPrefix" => "medical-imaging"}, "aws.auth#sigv4" => {"name" => "medical-imaging"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair of a resource"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair that is allowed in the request"}, "aws:TagKeys" => {"type" => "String", "documentation" => "Filters access by a list of tag keys that are allowed in the request"}}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Health Imaging"}
      service.add_operation(:copy_image_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#CopyImageSet"
        operation.name = "CopyImageSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CopyImageSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CopyImageSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "runtime-"}, "smithy.api#http" => {"uri" => "/datastore/{datastoreId}/imageSet/{sourceImageSetId}/copyImageSet", "method" => "POST"}}
      end)
      service.add_operation(:create_datastore, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#CreateDatastore"
        operation.name = "CreateDatastore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatastoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatastoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"method" => "POST", "uri" => "/datastore"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_datastore, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#DeleteDatastore"
        operation.name = "DeleteDatastore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDatastoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDatastoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/datastore/{datastoreId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_image_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#DeleteImageSet"
        operation.name = "DeleteImageSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteImageSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteImageSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "runtime-"}, "smithy.api#http" => {"uri" => "/datastore/{datastoreId}/imageSet/{imageSetId}/deleteImageSet", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_dicom_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#GetDICOMImportJob"
        operation.name = "GetDICOMImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDICOMImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDICOMImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/getDICOMImportJob/datastore/{datastoreId}/job/{jobId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_datastore, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#GetDatastore"
        operation.name = "GetDatastore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDatastoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDatastoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/datastore/{datastoreId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_image_frame, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#GetImageFrame"
        operation.name = "GetImageFrame"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetImageFrameRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetImageFrameResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "runtime-"}, "smithy.api#http" => {"uri" => "/datastore/{datastoreId}/imageSet/{imageSetId}/getImageFrame", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_image_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#GetImageSet"
        operation.name = "GetImageSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetImageSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetImageSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "runtime-"}, "smithy.api#http" => {"uri" => "/datastore/{datastoreId}/imageSet/{imageSetId}/getImageSet", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_image_set_metadata, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#GetImageSetMetadata"
        operation.name = "GetImageSetMetadata"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetImageSetMetadataRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetImageSetMetadataResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "runtime-"}, "smithy.api#http" => {"uri" => "/datastore/{datastoreId}/imageSet/{imageSetId}/getImageSetMetadata", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_dicom_import_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#ListDICOMImportJobs"
        operation.name = "ListDICOMImportJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDICOMImportJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDICOMImportJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/listDICOMImportJobs/datastore/{datastoreId}"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDICOMImportJobs.new
      end)
      service.add_operation(:list_datastores, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#ListDatastores"
        operation.name = "ListDatastores"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatastoresRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatastoresResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/datastore"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDatastores.new
      end)
      service.add_operation(:list_image_set_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#ListImageSetVersions"
        operation.name = "ListImageSetVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListImageSetVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListImageSetVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "runtime-"}, "smithy.api#http" => {"uri" => "/datastore/{datastoreId}/imageSet/{imageSetId}/listImageSetVersions", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListImageSetVersions.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:search_image_sets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#SearchImageSets"
        operation.name = "SearchImageSets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchImageSetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchImageSetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "runtime-"}, "smithy.api#http" => {"uri" => "/datastore/{datastoreId}/searchImageSets", "method" => "POST"}}
        operation[:paginator] = Paginators::SearchImageSets.new
      end)
      service.add_operation(:start_dicom_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#StartDICOMImportJob"
        operation.name = "StartDICOMImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDICOMImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDICOMImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/startDICOMImportJob/datastore/{datastoreId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_image_set_metadata, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#UpdateImageSetMetadata"
        operation.name = "UpdateImageSetMetadata"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateImageSetMetadataRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateImageSetMetadataResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "runtime-"}, "smithy.api#http" => {"uri" => "/datastore/{datastoreId}/imageSet/{imageSetId}/updateImageSetMetadata", "method" => "POST"}}
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
