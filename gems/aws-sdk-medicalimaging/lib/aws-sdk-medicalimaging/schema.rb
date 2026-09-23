# frozen_string_literal: true

# This is generated code!

module Aws::MedicalImaging
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#Arn", name: "Arn", traits: {"smithy.api#pattern" => "^arn:aws((-us-gov)|(-iso)|(-iso-b)|(-cn))?:medical-imaging:[a-z0-9-]+:[0-9]{12}:datastore/[0-9a-z]{32}(/imageset/[0-9a-z]{32})?$"})
    AwsAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#AwsAccountId", name: "AwsAccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d+$"})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9._-]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CopiableAttributes = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#CopiableAttributes", name: "CopiableAttributes", traits: {"smithy.api#length" => {"min" => 1, "max" => 260000}, "smithy.api#sensitive" => {}})
    CopyDestinationImageSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#CopyDestinationImageSet", name: "CopyDestinationImageSet")
    CopyDestinationImageSetProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#CopyDestinationImageSetProperties", name: "CopyDestinationImageSetProperties")
    CopyImageSetInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#CopyImageSetInformation", name: "CopyImageSetInformation")
    CopyImageSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#CopyImageSetRequest", name: "CopyImageSetRequest")
    CopyImageSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#CopyImageSetResponse", name: "CopyImageSetResponse")
    CopySourceImageSetInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#CopySourceImageSetInformation", name: "CopySourceImageSetInformation")
    CopySourceImageSetProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#CopySourceImageSetProperties", name: "CopySourceImageSetProperties")
    CreateDatastoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#CreateDatastoreRequest", name: "CreateDatastoreRequest")
    CreateDatastoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#CreateDatastoreResponse", name: "CreateDatastoreResponse")
    DICOMAccessionNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#DICOMAccessionNumber", name: "DICOMAccessionNumber", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    DICOMAttribute = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.medicalimaging#DICOMAttribute", name: "DICOMAttribute", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#sensitive" => {}})
    DICOMImportJobProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#DICOMImportJobProperties", name: "DICOMImportJobProperties")
    DICOMImportJobSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.medicalimaging#DICOMImportJobSummaries", name: "DICOMImportJobSummaries")
    DICOMImportJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#DICOMImportJobSummary", name: "DICOMImportJobSummary")
    DICOMNumberOfStudyRelatedInstances = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.medicalimaging#DICOMNumberOfStudyRelatedInstances", name: "DICOMNumberOfStudyRelatedInstances", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1000000}})
    DICOMNumberOfStudyRelatedSeries = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.medicalimaging#DICOMNumberOfStudyRelatedSeries", name: "DICOMNumberOfStudyRelatedSeries", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1000000}})
    DICOMPatientBirthDate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#DICOMPatientBirthDate", name: "DICOMPatientBirthDate", traits: {"smithy.api#length" => {"min" => 0, "max" => 18}, "smithy.api#sensitive" => {}})
    DICOMPatientId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#DICOMPatientId", name: "DICOMPatientId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    DICOMPatientName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#DICOMPatientName", name: "DICOMPatientName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    DICOMPatientSex = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#DICOMPatientSex", name: "DICOMPatientSex", traits: {"smithy.api#length" => {"min" => 0, "max" => 16}, "smithy.api#sensitive" => {}})
    DICOMSeriesBodyPart = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#DICOMSeriesBodyPart", name: "DICOMSeriesBodyPart", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#sensitive" => {}})
    DICOMSeriesInstanceUID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#DICOMSeriesInstanceUID", name: "DICOMSeriesInstanceUID", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^(?:[0-9][0-9]*|0)(\\.(?:[0-9][0-9]*|0))*$", "smithy.api#sensitive" => {}})
    DICOMSeriesModality = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#DICOMSeriesModality", name: "DICOMSeriesModality", traits: {"smithy.api#length" => {"min" => 0, "max" => 16}, "smithy.api#sensitive" => {}})
    DICOMSeriesNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.medicalimaging#DICOMSeriesNumber", name: "DICOMSeriesNumber", traits: {"smithy.api#range" => {"min" => -2147483648, "max" => 2147483647}, "smithy.api#sensitive" => {}})
    DICOMStudyDate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#DICOMStudyDate", name: "DICOMStudyDate", traits: {"smithy.api#length" => {"min" => 0, "max" => 18}, "smithy.api#sensitive" => {}})
    DICOMStudyDateAndTime = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#DICOMStudyDateAndTime", name: "DICOMStudyDateAndTime")
    DICOMStudyDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#DICOMStudyDescription", name: "DICOMStudyDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    DICOMStudyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#DICOMStudyId", name: "DICOMStudyId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    DICOMStudyInstanceUID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#DICOMStudyInstanceUID", name: "DICOMStudyInstanceUID", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^(?:[0-9][0-9]*|0)(\\.(?:[0-9][0-9]*|0))*$", "smithy.api#sensitive" => {}})
    DICOMStudyTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#DICOMStudyTime", name: "DICOMStudyTime", traits: {"smithy.api#length" => {"min" => 0, "max" => 28}, "smithy.api#sensitive" => {}})
    DICOMTags = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#DICOMTags", name: "DICOMTags")
    DICOMUpdates = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#DICOMUpdates", name: "DICOMUpdates")
    DatastoreId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#DatastoreId", name: "DatastoreId", traits: {"smithy.api#pattern" => "^[0-9a-z]{32}$"})
    DatastoreName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#DatastoreName", name: "DatastoreName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9._/#-]+$"})
    DatastoreProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#DatastoreProperties", name: "DatastoreProperties")
    DatastoreStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.medicalimaging#DatastoreStatus", name: "DatastoreStatus")
    DatastoreSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.medicalimaging#DatastoreSummaries", name: "DatastoreSummaries")
    DatastoreSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#DatastoreSummary", name: "DatastoreSummary")
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.medicalimaging#Date", name: "Date")
    DeleteDatastoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#DeleteDatastoreRequest", name: "DeleteDatastoreRequest")
    DeleteDatastoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#DeleteDatastoreResponse", name: "DeleteDatastoreResponse")
    DeleteImageSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#DeleteImageSetRequest", name: "DeleteImageSetRequest")
    DeleteImageSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#DeleteImageSetResponse", name: "DeleteImageSetResponse")
    GetDICOMImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#GetDICOMImportJobRequest", name: "GetDICOMImportJobRequest")
    GetDICOMImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#GetDICOMImportJobResponse", name: "GetDICOMImportJobResponse")
    GetDatastoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#GetDatastoreRequest", name: "GetDatastoreRequest")
    GetDatastoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#GetDatastoreResponse", name: "GetDatastoreResponse")
    GetImageFrameRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#GetImageFrameRequest", name: "GetImageFrameRequest")
    GetImageFrameResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#GetImageFrameResponse", name: "GetImageFrameResponse")
    GetImageSetMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#GetImageSetMetadataRequest", name: "GetImageSetMetadataRequest")
    GetImageSetMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#GetImageSetMetadataResponse", name: "GetImageSetMetadataResponse")
    GetImageSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#GetImageSetRequest", name: "GetImageSetRequest")
    GetImageSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#GetImageSetResponse", name: "GetImageSetResponse")
    ImageFrameId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#ImageFrameId", name: "ImageFrameId", traits: {"smithy.api#pattern" => "^[0-9a-z]{32}$"})
    ImageFrameInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#ImageFrameInformation", name: "ImageFrameInformation")
    ImageSetExternalVersionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#ImageSetExternalVersionId", name: "ImageSetExternalVersionId", traits: {"smithy.api#pattern" => "^\\d+$"})
    ImageSetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#ImageSetId", name: "ImageSetId", traits: {"smithy.api#pattern" => "^[0-9a-z]{32}$"})
    ImageSetMetadataBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.medicalimaging#ImageSetMetadataBlob", name: "ImageSetMetadataBlob", traits: {"smithy.api#streaming" => {}})
    ImageSetProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#ImageSetProperties", name: "ImageSetProperties")
    ImageSetPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.medicalimaging#ImageSetPropertiesList", name: "ImageSetPropertiesList")
    ImageSetState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.medicalimaging#ImageSetState", name: "ImageSetState")
    ImageSetWorkflowStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.medicalimaging#ImageSetWorkflowStatus", name: "ImageSetWorkflowStatus")
    ImageSetsMetadataSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.medicalimaging#ImageSetsMetadataSummaries", name: "ImageSetsMetadataSummaries")
    ImageSetsMetadataSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#ImageSetsMetadataSummary", name: "ImageSetsMetadataSummary")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#JobId", name: "JobId", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[0-9a-z]+$"})
    JobName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#JobName", name: "JobName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9._/#-]+$"})
    JobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.medicalimaging#JobStatus", name: "JobStatus")
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#KmsKeyArn", name: "KmsKeyArn", traits: {"aws.api#arnReference" => {}, "smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]{0,16}:kms:[a-z]{2}(-[a-z]{1,16}){1,3}-\\d{1}:\\d{12}:((key/[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12})|(alias/[a-zA-Z0-9:/_-]{1,256}))$"})
    LambdaArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#LambdaArn", name: "LambdaArn", traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}((-gov)|(-iso(b?)))?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?$"})
    ListDICOMImportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#ListDICOMImportJobsRequest", name: "ListDICOMImportJobsRequest")
    ListDICOMImportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#ListDICOMImportJobsResponse", name: "ListDICOMImportJobsResponse")
    ListDatastoresRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#ListDatastoresRequest", name: "ListDatastoresRequest")
    ListDatastoresResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#ListDatastoresResponse", name: "ListDatastoresResponse")
    ListImageSetVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#ListImageSetVersionsRequest", name: "ListImageSetVersionsRequest")
    ListImageSetVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#ListImageSetVersionsResponse", name: "ListImageSetVersionsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#Message", name: "Message", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\w -:]+$"})
    MetadataCopies = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#MetadataCopies", name: "MetadataCopies")
    MetadataUpdates = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.medicalimaging#MetadataUpdates", name: "MetadataUpdates")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}, "smithy.api#pattern" => "^\\p{ASCII}{0,8192}$"})
    Operator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.medicalimaging#Operator", name: "Operator")
    Overrides = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#Overrides", name: "Overrides")
    PayloadBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.medicalimaging#PayloadBlob", name: "PayloadBlob", traits: {"smithy.api#streaming" => {}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#RoleArn", name: "RoleArn", traits: {"aws.api#arnReference" => {"type" => "AWS::IAM::Role"}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+$"})
    S3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#S3Uri", name: "S3Uri", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?$"})
    SearchByAttributeValue = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.medicalimaging#SearchByAttributeValue", name: "SearchByAttributeValue")
    SearchByAttributeValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.medicalimaging#SearchByAttributeValues", name: "SearchByAttributeValues")
    SearchCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#SearchCriteria", name: "SearchCriteria", traits: {"smithy.api#sensitive" => {}})
    SearchFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#SearchFilter", name: "SearchFilter")
    SearchFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.medicalimaging#SearchFilters", name: "SearchFilters")
    SearchImageSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#SearchImageSetsRequest", name: "SearchImageSetsRequest")
    SearchImageSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#SearchImageSetsResponse", name: "SearchImageSetsResponse")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Sort = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#Sort", name: "Sort")
    SortField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.medicalimaging#SortField", name: "SortField")
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.medicalimaging#SortOrder", name: "SortOrder")
    StartDICOMImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#StartDICOMImportJobRequest", name: "StartDICOMImportJobRequest")
    StartDICOMImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#StartDICOMImportJobResponse", name: "StartDICOMImportJobResponse")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.medicalimaging#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.medicalimaging#TagMap", name: "TagMap")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#TagResourceRequest", name: "TagResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.medicalimaging#DatastoreResource", "ids" => {"datastoreId" => "resourceArn"}}, {"resource" => "com.amazonaws.medicalimaging#ImageSetResource", "ids" => {"datastoreId" => "resourceArn", "imageSetId" => "resourceArn"}}]})
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.medicalimaging#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#UntagResourceRequest", name: "UntagResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.medicalimaging#DatastoreResource", "ids" => {"datastoreId" => "resourceArn"}}, {"resource" => "com.amazonaws.medicalimaging#ImageSetResource", "ids" => {"datastoreId" => "resourceArn", "imageSetId" => "resourceArn"}}]})
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateImageSetMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#UpdateImageSetMetadataRequest", name: "UpdateImageSetMetadataRequest")
    UpdateImageSetMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#UpdateImageSetMetadataResponse", name: "UpdateImageSetMetadataResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.medicalimaging#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CopyDestinationImageSet.add_member(:image_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetId, name: "imageSetId", traits: {"smithy.api#required" => {}}))
    CopyDestinationImageSet.add_member(:latest_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetExternalVersionId, name: "latestVersionId", traits: {"smithy.api#required" => {}}))
    CopyDestinationImageSet.type = Types::CopyDestinationImageSet
    CopyDestinationImageSetProperties.add_member(:image_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetId, name: "imageSetId", traits: {"smithy.api#required" => {}}))
    CopyDestinationImageSetProperties.add_member(:latest_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetExternalVersionId, name: "latestVersionId", traits: {"smithy.api#required" => {}}))
    CopyDestinationImageSetProperties.add_member(:image_set_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetState, name: "imageSetState"))
    CopyDestinationImageSetProperties.add_member(:image_set_workflow_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetWorkflowStatus, name: "imageSetWorkflowStatus"))
    CopyDestinationImageSetProperties.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAt"))
    CopyDestinationImageSetProperties.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "updatedAt"))
    CopyDestinationImageSetProperties.add_member(:image_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "imageSetArn"))
    CopyDestinationImageSetProperties.type = Types::CopyDestinationImageSetProperties
    CopyImageSetInformation.add_member(:source_image_set, ::Smithy::Schema::Shapes::MemberShape.new(target: CopySourceImageSetInformation, name: "sourceImageSet", traits: {"smithy.api#required" => {}}))
    CopyImageSetInformation.add_member(:destination_image_set, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyDestinationImageSet, name: "destinationImageSet"))
    CopyImageSetInformation.type = Types::CopyImageSetInformation
    CopyImageSetRequest.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "datastoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CopyImageSetRequest.add_member(:source_image_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetId, name: "sourceImageSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CopyImageSetRequest.add_member(:copy_image_set_information, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyImageSetInformation, name: "copyImageSetInformation", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CopyImageSetRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "force", traits: {"smithy.api#httpQuery" => "force"}))
    CopyImageSetRequest.add_member(:promote_to_primary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "promoteToPrimary", traits: {"smithy.api#httpQuery" => "promoteToPrimary"}))
    CopyImageSetRequest[:http_payload] = :copy_image_set_information
    CopyImageSetRequest[:http_payload_member] = CopyImageSetRequest.member(:copy_image_set_information)
    CopyImageSetRequest.type = Types::CopyImageSetRequest
    CopyImageSetResponse.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "datastoreId", traits: {"smithy.api#required" => {}}))
    CopyImageSetResponse.add_member(:source_image_set_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: CopySourceImageSetProperties, name: "sourceImageSetProperties", traits: {"smithy.api#required" => {}}))
    CopyImageSetResponse.add_member(:destination_image_set_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyDestinationImageSetProperties, name: "destinationImageSetProperties", traits: {"smithy.api#required" => {}}))
    CopyImageSetResponse.type = Types::CopyImageSetResponse
    CopySourceImageSetInformation.add_member(:latest_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetExternalVersionId, name: "latestVersionId", traits: {"smithy.api#required" => {}}))
    CopySourceImageSetInformation.add_member(:dicom_copies, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataCopies, name: "DICOMCopies"))
    CopySourceImageSetInformation.type = Types::CopySourceImageSetInformation
    CopySourceImageSetProperties.add_member(:image_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetId, name: "imageSetId", traits: {"smithy.api#required" => {}}))
    CopySourceImageSetProperties.add_member(:latest_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetExternalVersionId, name: "latestVersionId", traits: {"smithy.api#required" => {}}))
    CopySourceImageSetProperties.add_member(:image_set_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetState, name: "imageSetState"))
    CopySourceImageSetProperties.add_member(:image_set_workflow_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetWorkflowStatus, name: "imageSetWorkflowStatus"))
    CopySourceImageSetProperties.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAt"))
    CopySourceImageSetProperties.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "updatedAt"))
    CopySourceImageSetProperties.add_member(:image_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "imageSetArn"))
    CopySourceImageSetProperties.type = Types::CopySourceImageSetProperties
    CreateDatastoreRequest.add_member(:datastore_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreName, name: "datastoreName"))
    CreateDatastoreRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateDatastoreRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateDatastoreRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    CreateDatastoreRequest.add_member(:lambda_authorizer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaArn, name: "lambdaAuthorizerArn"))
    CreateDatastoreRequest.type = Types::CreateDatastoreRequest
    CreateDatastoreResponse.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "datastoreId", traits: {"smithy.api#required" => {}}))
    CreateDatastoreResponse.add_member(:datastore_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreStatus, name: "datastoreStatus", traits: {"smithy.api#required" => {}}))
    CreateDatastoreResponse.type = Types::CreateDatastoreResponse
    DICOMImportJobProperties.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    DICOMImportJobProperties.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "jobName", traits: {"smithy.api#required" => {}}))
    DICOMImportJobProperties.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "jobStatus", traits: {"smithy.api#required" => {}}))
    DICOMImportJobProperties.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "datastoreId", traits: {"smithy.api#required" => {}}))
    DICOMImportJobProperties.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "dataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    DICOMImportJobProperties.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "endedAt"))
    DICOMImportJobProperties.add_member(:submitted_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "submittedAt"))
    DICOMImportJobProperties.add_member(:input_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "inputS3Uri", traits: {"smithy.api#required" => {}}))
    DICOMImportJobProperties.add_member(:output_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "outputS3Uri", traits: {"smithy.api#required" => {}}))
    DICOMImportJobProperties.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    DICOMImportJobProperties.type = Types::DICOMImportJobProperties
    DICOMImportJobSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMImportJobSummary, name: "member"))
    DICOMImportJobSummary.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    DICOMImportJobSummary.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "jobName", traits: {"smithy.api#required" => {}}))
    DICOMImportJobSummary.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "jobStatus", traits: {"smithy.api#required" => {}}))
    DICOMImportJobSummary.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "datastoreId", traits: {"smithy.api#required" => {}}))
    DICOMImportJobSummary.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "dataAccessRoleArn"))
    DICOMImportJobSummary.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "endedAt"))
    DICOMImportJobSummary.add_member(:submitted_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "submittedAt"))
    DICOMImportJobSummary.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    DICOMImportJobSummary.type = Types::DICOMImportJobSummary
    DICOMStudyDateAndTime.add_member(:dicom_study_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMStudyDate, name: "DICOMStudyDate", traits: {"smithy.api#required" => {}}))
    DICOMStudyDateAndTime.add_member(:dicom_study_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMStudyTime, name: "DICOMStudyTime"))
    DICOMStudyDateAndTime.type = Types::DICOMStudyDateAndTime
    DICOMTags.add_member(:dicom_patient_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMPatientId, name: "DICOMPatientId"))
    DICOMTags.add_member(:dicom_patient_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMPatientName, name: "DICOMPatientName"))
    DICOMTags.add_member(:dicom_patient_birth_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMPatientBirthDate, name: "DICOMPatientBirthDate"))
    DICOMTags.add_member(:dicom_patient_sex, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMPatientSex, name: "DICOMPatientSex"))
    DICOMTags.add_member(:dicom_study_instance_uid, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMStudyInstanceUID, name: "DICOMStudyInstanceUID"))
    DICOMTags.add_member(:dicom_study_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMStudyId, name: "DICOMStudyId"))
    DICOMTags.add_member(:dicom_study_description, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMStudyDescription, name: "DICOMStudyDescription"))
    DICOMTags.add_member(:dicom_number_of_study_related_series, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMNumberOfStudyRelatedSeries, name: "DICOMNumberOfStudyRelatedSeries", traits: {"smithy.api#default" => 0}))
    DICOMTags.add_member(:dicom_number_of_study_related_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMNumberOfStudyRelatedInstances, name: "DICOMNumberOfStudyRelatedInstances", traits: {"smithy.api#default" => 0}))
    DICOMTags.add_member(:dicom_accession_number, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMAccessionNumber, name: "DICOMAccessionNumber"))
    DICOMTags.add_member(:dicom_series_instance_uid, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMSeriesInstanceUID, name: "DICOMSeriesInstanceUID"))
    DICOMTags.add_member(:dicom_series_modality, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMSeriesModality, name: "DICOMSeriesModality"))
    DICOMTags.add_member(:dicom_series_body_part, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMSeriesBodyPart, name: "DICOMSeriesBodyPart"))
    DICOMTags.add_member(:dicom_series_number, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMSeriesNumber, name: "DICOMSeriesNumber"))
    DICOMTags.add_member(:dicom_study_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMStudyDate, name: "DICOMStudyDate"))
    DICOMTags.add_member(:dicom_study_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMStudyTime, name: "DICOMStudyTime"))
    DICOMTags.type = Types::DICOMTags
    DICOMUpdates.add_member(:removable_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMAttribute, name: "removableAttributes"))
    DICOMUpdates.add_member(:updatable_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMAttribute, name: "updatableAttributes"))
    DICOMUpdates.type = Types::DICOMUpdates
    DatastoreProperties.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "datastoreId", traits: {"smithy.api#required" => {}}))
    DatastoreProperties.add_member(:datastore_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreName, name: "datastoreName", traits: {"smithy.api#required" => {}}))
    DatastoreProperties.add_member(:datastore_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreStatus, name: "datastoreStatus", traits: {"smithy.api#required" => {}}))
    DatastoreProperties.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    DatastoreProperties.add_member(:lambda_authorizer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaArn, name: "lambdaAuthorizerArn"))
    DatastoreProperties.add_member(:datastore_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "datastoreArn"))
    DatastoreProperties.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAt"))
    DatastoreProperties.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "updatedAt"))
    DatastoreProperties.type = Types::DatastoreProperties
    DatastoreStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    DatastoreStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    DatastoreStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DatastoreStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    DatastoreStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    DatastoreSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreSummary, name: "member"))
    DatastoreSummary.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "datastoreId", traits: {"smithy.api#required" => {}}))
    DatastoreSummary.add_member(:datastore_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreName, name: "datastoreName", traits: {"smithy.api#required" => {}}))
    DatastoreSummary.add_member(:datastore_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreStatus, name: "datastoreStatus", traits: {"smithy.api#required" => {}}))
    DatastoreSummary.add_member(:datastore_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "datastoreArn"))
    DatastoreSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAt"))
    DatastoreSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "updatedAt"))
    DatastoreSummary.type = Types::DatastoreSummary
    DeleteDatastoreRequest.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "datastoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDatastoreRequest.type = Types::DeleteDatastoreRequest
    DeleteDatastoreResponse.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "datastoreId", traits: {"smithy.api#required" => {}}))
    DeleteDatastoreResponse.add_member(:datastore_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreStatus, name: "datastoreStatus", traits: {"smithy.api#required" => {}}))
    DeleteDatastoreResponse.type = Types::DeleteDatastoreResponse
    DeleteImageSetRequest.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "datastoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteImageSetRequest.add_member(:image_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetId, name: "imageSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteImageSetRequest.type = Types::DeleteImageSetRequest
    DeleteImageSetResponse.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "datastoreId", traits: {"smithy.api#required" => {}}))
    DeleteImageSetResponse.add_member(:image_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetId, name: "imageSetId", traits: {"smithy.api#required" => {}}))
    DeleteImageSetResponse.add_member(:image_set_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetState, name: "imageSetState", traits: {"smithy.api#required" => {}}))
    DeleteImageSetResponse.add_member(:image_set_workflow_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetWorkflowStatus, name: "imageSetWorkflowStatus", traits: {"smithy.api#required" => {}}))
    DeleteImageSetResponse.type = Types::DeleteImageSetResponse
    GetDICOMImportJobRequest.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "datastoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDICOMImportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDICOMImportJobRequest.type = Types::GetDICOMImportJobRequest
    GetDICOMImportJobResponse.add_member(:job_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMImportJobProperties, name: "jobProperties", traits: {"smithy.api#required" => {}}))
    GetDICOMImportJobResponse.type = Types::GetDICOMImportJobResponse
    GetDatastoreRequest.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "datastoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDatastoreRequest.type = Types::GetDatastoreRequest
    GetDatastoreResponse.add_member(:datastore_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreProperties, name: "datastoreProperties", traits: {"smithy.api#required" => {}}))
    GetDatastoreResponse.type = Types::GetDatastoreResponse
    GetImageFrameRequest.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "datastoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImageFrameRequest.add_member(:image_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetId, name: "imageSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImageFrameRequest.add_member(:image_frame_information, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageFrameInformation, name: "imageFrameInformation", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetImageFrameRequest[:http_payload] = :image_frame_information
    GetImageFrameRequest[:http_payload_member] = GetImageFrameRequest.member(:image_frame_information)
    GetImageFrameRequest.type = Types::GetImageFrameRequest
    GetImageFrameResponse.add_member(:image_frame_blob, ::Smithy::Schema::Shapes::MemberShape.new(target: PayloadBlob, name: "imageFrameBlob", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetImageFrameResponse.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetImageFrameResponse[:http_payload] = :image_frame_blob
    GetImageFrameResponse[:http_payload_member] = GetImageFrameResponse.member(:image_frame_blob)
    GetImageFrameResponse.type = Types::GetImageFrameResponse
    GetImageSetMetadataRequest.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "datastoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImageSetMetadataRequest.add_member(:image_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetId, name: "imageSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImageSetMetadataRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetExternalVersionId, name: "versionId", traits: {"smithy.api#httpQuery" => "version"}))
    GetImageSetMetadataRequest.type = Types::GetImageSetMetadataRequest
    GetImageSetMetadataResponse.add_member(:image_set_metadata_blob, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetMetadataBlob, name: "imageSetMetadataBlob", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetImageSetMetadataResponse.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetImageSetMetadataResponse.add_member(:content_encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "contentEncoding", traits: {"smithy.api#httpHeader" => "Content-Encoding"}))
    GetImageSetMetadataResponse[:http_payload] = :image_set_metadata_blob
    GetImageSetMetadataResponse[:http_payload_member] = GetImageSetMetadataResponse.member(:image_set_metadata_blob)
    GetImageSetMetadataResponse.type = Types::GetImageSetMetadataResponse
    GetImageSetRequest.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "datastoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImageSetRequest.add_member(:image_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetId, name: "imageSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImageSetRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetExternalVersionId, name: "versionId", traits: {"smithy.api#httpQuery" => "version"}))
    GetImageSetRequest.type = Types::GetImageSetRequest
    GetImageSetResponse.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "datastoreId", traits: {"smithy.api#required" => {}}))
    GetImageSetResponse.add_member(:image_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetId, name: "imageSetId", traits: {"smithy.api#required" => {}}))
    GetImageSetResponse.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetExternalVersionId, name: "versionId", traits: {"smithy.api#required" => {}}))
    GetImageSetResponse.add_member(:image_set_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetState, name: "imageSetState", traits: {"smithy.api#required" => {}}))
    GetImageSetResponse.add_member(:image_set_workflow_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetWorkflowStatus, name: "imageSetWorkflowStatus"))
    GetImageSetResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAt"))
    GetImageSetResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "updatedAt"))
    GetImageSetResponse.add_member(:deleted_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "deletedAt"))
    GetImageSetResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    GetImageSetResponse.add_member(:image_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "imageSetArn"))
    GetImageSetResponse.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: Overrides, name: "overrides"))
    GetImageSetResponse.add_member(:is_primary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isPrimary"))
    GetImageSetResponse.type = Types::GetImageSetResponse
    ImageFrameInformation.add_member(:image_frame_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageFrameId, name: "imageFrameId", traits: {"smithy.api#required" => {}}))
    ImageFrameInformation.type = Types::ImageFrameInformation
    ImageSetProperties.add_member(:image_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetId, name: "imageSetId", traits: {"smithy.api#required" => {}}))
    ImageSetProperties.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetExternalVersionId, name: "versionId", traits: {"smithy.api#required" => {}}))
    ImageSetProperties.add_member(:image_set_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetState, name: "imageSetState", traits: {"smithy.api#required" => {}}))
    ImageSetProperties.add_member(:image_set_workflow_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetWorkflowStatus, name: "ImageSetWorkflowStatus"))
    ImageSetProperties.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAt"))
    ImageSetProperties.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "updatedAt"))
    ImageSetProperties.add_member(:deleted_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "deletedAt"))
    ImageSetProperties.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ImageSetProperties.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: Overrides, name: "overrides"))
    ImageSetProperties.add_member(:is_primary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isPrimary"))
    ImageSetProperties.type = Types::ImageSetProperties
    ImageSetPropertiesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetProperties, name: "member"))
    ImageSetState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ImageSetState.add_member(:locked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOCKED", traits: {"smithy.api#enumValue" => "LOCKED"}))
    ImageSetState.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    ImageSetWorkflowStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    ImageSetWorkflowStatus.add_member(:copied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COPIED", traits: {"smithy.api#enumValue" => "COPIED"}))
    ImageSetWorkflowStatus.add_member(:copying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COPYING", traits: {"smithy.api#enumValue" => "COPYING"}))
    ImageSetWorkflowStatus.add_member(:copying_with_read_only_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COPYING_WITH_READ_ONLY_ACCESS", traits: {"smithy.api#enumValue" => "COPYING_WITH_READ_ONLY_ACCESS"}))
    ImageSetWorkflowStatus.add_member(:copy_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COPY_FAILED", traits: {"smithy.api#enumValue" => "COPY_FAILED"}))
    ImageSetWorkflowStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ImageSetWorkflowStatus.add_member(:updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATED", traits: {"smithy.api#enumValue" => "UPDATED"}))
    ImageSetWorkflowStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    ImageSetWorkflowStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ImageSetWorkflowStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    ImageSetWorkflowStatus.add_member(:importing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORTING", traits: {"smithy.api#enumValue" => "IMPORTING"}))
    ImageSetWorkflowStatus.add_member(:imported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORTED", traits: {"smithy.api#enumValue" => "IMPORTED"}))
    ImageSetWorkflowStatus.add_member(:import_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORT_FAILED", traits: {"smithy.api#enumValue" => "IMPORT_FAILED"}))
    ImageSetsMetadataSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetsMetadataSummary, name: "member"))
    ImageSetsMetadataSummary.add_member(:image_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetId, name: "imageSetId", traits: {"smithy.api#required" => {}}))
    ImageSetsMetadataSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "version"))
    ImageSetsMetadataSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAt"))
    ImageSetsMetadataSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "updatedAt"))
    ImageSetsMetadataSummary.add_member(:dicom_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMTags, name: "DICOMTags"))
    ImageSetsMetadataSummary.add_member(:is_primary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isPrimary"))
    ImageSetsMetadataSummary.type = Types::ImageSetsMetadataSummary
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    JobStatus.add_member(:submitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBMITTED", traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    JobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    JobStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    JobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ListDICOMImportJobsRequest.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "datastoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDICOMImportJobsRequest.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "jobStatus", traits: {"smithy.api#httpQuery" => "jobStatus"}))
    ListDICOMImportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDICOMImportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListDICOMImportJobsRequest.type = Types::ListDICOMImportJobsRequest
    ListDICOMImportJobsResponse.add_member(:job_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMImportJobSummaries, name: "jobSummaries", traits: {"smithy.api#required" => {}}))
    ListDICOMImportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDICOMImportJobsResponse.type = Types::ListDICOMImportJobsResponse
    ListDatastoresRequest.add_member(:datastore_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreStatus, name: "datastoreStatus", traits: {"smithy.api#httpQuery" => "datastoreStatus"}))
    ListDatastoresRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDatastoresRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListDatastoresRequest.type = Types::ListDatastoresRequest
    ListDatastoresResponse.add_member(:datastore_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreSummaries, name: "datastoreSummaries"))
    ListDatastoresResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDatastoresResponse.type = Types::ListDatastoresResponse
    ListImageSetVersionsRequest.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "datastoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListImageSetVersionsRequest.add_member(:image_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetId, name: "imageSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListImageSetVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListImageSetVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListImageSetVersionsRequest.type = Types::ListImageSetVersionsRequest
    ListImageSetVersionsResponse.add_member(:image_set_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetPropertiesList, name: "imageSetPropertiesList", traits: {"smithy.api#required" => {}}))
    ListImageSetVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListImageSetVersionsResponse.type = Types::ListImageSetVersionsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MetadataCopies.add_member(:copiable_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CopiableAttributes, name: "copiableAttributes", traits: {"smithy.api#required" => {}}))
    MetadataCopies.type = Types::MetadataCopies
    MetadataUpdates.add_member(:dicom_updates, Types::MetadataUpdates::DICOMUpdates, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMUpdates, name: "DICOMUpdates"))
    MetadataUpdates.add_member(:revert_to_version_id, Types::MetadataUpdates::RevertToVersionId, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetExternalVersionId, name: "revertToVersionId"))
    MetadataUpdates.add_member(:unknown, Types::MetadataUpdates::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MetadataUpdates.type = Types::MetadataUpdates
    Operator.add_member(:equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUAL", traits: {"smithy.api#enumValue" => "EQUAL"}))
    Operator.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    Overrides.add_member(:forced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "forced"))
    Overrides.type = Types::Overrides
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SearchByAttributeValue.add_member(:dicom_patient_id, Types::SearchByAttributeValue::DICOMPatientId, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMPatientId, name: "DICOMPatientId"))
    SearchByAttributeValue.add_member(:dicom_accession_number, Types::SearchByAttributeValue::DICOMAccessionNumber, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMAccessionNumber, name: "DICOMAccessionNumber"))
    SearchByAttributeValue.add_member(:dicom_study_id, Types::SearchByAttributeValue::DICOMStudyId, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMStudyId, name: "DICOMStudyId"))
    SearchByAttributeValue.add_member(:dicom_study_instance_uid, Types::SearchByAttributeValue::DICOMStudyInstanceUID, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMStudyInstanceUID, name: "DICOMStudyInstanceUID"))
    SearchByAttributeValue.add_member(:dicom_series_instance_uid, Types::SearchByAttributeValue::DICOMSeriesInstanceUID, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMSeriesInstanceUID, name: "DICOMSeriesInstanceUID"))
    SearchByAttributeValue.add_member(:created_at, Types::SearchByAttributeValue::CreatedAt, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAt"))
    SearchByAttributeValue.add_member(:updated_at, Types::SearchByAttributeValue::UpdatedAt, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "updatedAt"))
    SearchByAttributeValue.add_member(:dicom_study_date_and_time, Types::SearchByAttributeValue::DICOMStudyDateAndTime, ::Smithy::Schema::Shapes::MemberShape.new(target: DICOMStudyDateAndTime, name: "DICOMStudyDateAndTime"))
    SearchByAttributeValue.add_member(:is_primary, Types::SearchByAttributeValue::IsPrimary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isPrimary"))
    SearchByAttributeValue.add_member(:unknown, Types::SearchByAttributeValue::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SearchByAttributeValue.type = Types::SearchByAttributeValue
    SearchByAttributeValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchByAttributeValue, name: "member"))
    SearchCriteria.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFilters, name: "filters", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}}))
    SearchCriteria.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: Sort, name: "sort"))
    SearchCriteria.type = Types::SearchCriteria
    SearchFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchByAttributeValues, name: "values", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#required" => {}}))
    SearchFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: Operator, name: "operator", traits: {"smithy.api#required" => {}}))
    SearchFilter.type = Types::SearchFilter
    SearchFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFilter, name: "member"))
    SearchImageSetsRequest.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "datastoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchImageSetsRequest.add_member(:search_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchCriteria, name: "searchCriteria", traits: {"smithy.api#httpPayload" => {}}))
    SearchImageSetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    SearchImageSetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    SearchImageSetsRequest[:http_payload] = :search_criteria
    SearchImageSetsRequest[:http_payload_member] = SearchImageSetsRequest.member(:search_criteria)
    SearchImageSetsRequest.type = Types::SearchImageSetsRequest
    SearchImageSetsResponse.add_member(:image_sets_metadata_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetsMetadataSummaries, name: "imageSetsMetadataSummaries", traits: {"smithy.api#required" => {}}))
    SearchImageSetsResponse.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: Sort, name: "sort"))
    SearchImageSetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchImageSetsResponse.type = Types::SearchImageSetsResponse
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Sort.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder", traits: {"smithy.api#required" => {}}))
    Sort.add_member(:sort_field, ::Smithy::Schema::Shapes::MemberShape.new(target: SortField, name: "sortField", traits: {"smithy.api#required" => {}}))
    Sort.type = Types::Sort
    SortField.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "updatedAt", traits: {"smithy.api#enumValue" => "updatedAt"}))
    SortField.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "createdAt", traits: {"smithy.api#enumValue" => "createdAt"}))
    SortField.add_member(:dicom_study_date_and_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DICOMStudyDateAndTime", traits: {"smithy.api#enumValue" => "DICOMStudyDateAndTime"}))
    SortOrder.add_member(:asc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASC", traits: {"smithy.api#enumValue" => "ASC"}))
    SortOrder.add_member(:desc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESC", traits: {"smithy.api#enumValue" => "DESC"}))
    StartDICOMImportJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "jobName"))
    StartDICOMImportJobRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "dataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    StartDICOMImportJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StartDICOMImportJobRequest.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "datastoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDICOMImportJobRequest.add_member(:input_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "inputS3Uri", traits: {"smithy.api#required" => {}}))
    StartDICOMImportJobRequest.add_member(:output_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "outputS3Uri", traits: {"smithy.api#required" => {}}))
    StartDICOMImportJobRequest.add_member(:input_owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "inputOwnerAccountId"))
    StartDICOMImportJobRequest.type = Types::StartDICOMImportJobRequest
    StartDICOMImportJobResponse.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "datastoreId", traits: {"smithy.api#required" => {}}))
    StartDICOMImportJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    StartDICOMImportJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "jobStatus", traits: {"smithy.api#required" => {}}))
    StartDICOMImportJobResponse.add_member(:submitted_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "submittedAt", traits: {"smithy.api#required" => {}}))
    StartDICOMImportJobResponse.type = Types::StartDICOMImportJobResponse
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateImageSetMetadataRequest.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "datastoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateImageSetMetadataRequest.add_member(:image_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetId, name: "imageSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateImageSetMetadataRequest.add_member(:latest_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetExternalVersionId, name: "latestVersionId", traits: {"smithy.api#httpQuery" => "latestVersion", "smithy.api#required" => {}}))
    UpdateImageSetMetadataRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "force", traits: {"smithy.api#httpQuery" => "force"}))
    UpdateImageSetMetadataRequest.add_member(:update_image_set_metadata_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataUpdates, name: "updateImageSetMetadataUpdates", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateImageSetMetadataRequest[:http_payload] = :update_image_set_metadata_updates
    UpdateImageSetMetadataRequest[:http_payload_member] = UpdateImageSetMetadataRequest.member(:update_image_set_metadata_updates)
    UpdateImageSetMetadataRequest.type = Types::UpdateImageSetMetadataRequest
    UpdateImageSetMetadataResponse.add_member(:datastore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreId, name: "datastoreId", traits: {"smithy.api#required" => {}}))
    UpdateImageSetMetadataResponse.add_member(:image_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetId, name: "imageSetId", traits: {"smithy.api#required" => {}}))
    UpdateImageSetMetadataResponse.add_member(:latest_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetExternalVersionId, name: "latestVersionId", traits: {"smithy.api#required" => {}}))
    UpdateImageSetMetadataResponse.add_member(:image_set_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetState, name: "imageSetState", traits: {"smithy.api#required" => {}}))
    UpdateImageSetMetadataResponse.add_member(:image_set_workflow_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSetWorkflowStatus, name: "imageSetWorkflowStatus"))
    UpdateImageSetMetadataResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAt"))
    UpdateImageSetMetadataResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "updatedAt"))
    UpdateImageSetMetadataResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    UpdateImageSetMetadataResponse.type = Types::UpdateImageSetMetadataResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    AHIGatewayService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.medicalimaging#AHIGatewayService"
      service.name = "AHIGatewayService"
      service.version = "2023-07-19"
      service.traits = {"aws.api#service" => {"sdkId" => "Medical Imaging", "arnNamespace" => "medical-imaging", "endpointPrefix" => "medical-imaging"}, "aws.auth#sigv4" => {"name" => "medical-imaging"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair of a resource"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair that is allowed in the request"}, "aws:TagKeys" => {"type" => "String", "documentation" => "Filters access by a list of tag keys that are allowed in the request"}}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Health Imaging"}
      service.add_operation(:copy_image_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#CopyImageSet"
        operation.name = "CopyImageSet"
        operation.input = CopyImageSetRequest
        operation.output = CopyImageSetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "runtime-"}, "smithy.api#http" => {"uri" => "/datastore/{datastoreId}/imageSet/{sourceImageSetId}/copyImageSet", "method" => "POST"}}
      end)
      service.add_operation(:create_datastore, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#CreateDatastore"
        operation.name = "CreateDatastore"
        operation.input = CreateDatastoreRequest
        operation.output = CreateDatastoreResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"method" => "POST", "uri" => "/datastore"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_datastore, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#DeleteDatastore"
        operation.name = "DeleteDatastore"
        operation.input = DeleteDatastoreRequest
        operation.output = DeleteDatastoreResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/datastore/{datastoreId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_image_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#DeleteImageSet"
        operation.name = "DeleteImageSet"
        operation.input = DeleteImageSetRequest
        operation.output = DeleteImageSetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "runtime-"}, "smithy.api#http" => {"uri" => "/datastore/{datastoreId}/imageSet/{imageSetId}/deleteImageSet", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_dicom_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#GetDICOMImportJob"
        operation.name = "GetDICOMImportJob"
        operation.input = GetDICOMImportJobRequest
        operation.output = GetDICOMImportJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/getDICOMImportJob/datastore/{datastoreId}/job/{jobId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_datastore, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#GetDatastore"
        operation.name = "GetDatastore"
        operation.input = GetDatastoreRequest
        operation.output = GetDatastoreResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/datastore/{datastoreId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_image_frame, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#GetImageFrame"
        operation.name = "GetImageFrame"
        operation.input = GetImageFrameRequest
        operation.output = GetImageFrameResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "runtime-"}, "smithy.api#http" => {"uri" => "/datastore/{datastoreId}/imageSet/{imageSetId}/getImageFrame", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_image_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#GetImageSet"
        operation.name = "GetImageSet"
        operation.input = GetImageSetRequest
        operation.output = GetImageSetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "runtime-"}, "smithy.api#http" => {"uri" => "/datastore/{datastoreId}/imageSet/{imageSetId}/getImageSet", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_image_set_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#GetImageSetMetadata"
        operation.name = "GetImageSetMetadata"
        operation.input = GetImageSetMetadataRequest
        operation.output = GetImageSetMetadataResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "runtime-"}, "smithy.api#http" => {"uri" => "/datastore/{datastoreId}/imageSet/{imageSetId}/getImageSetMetadata", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_dicom_import_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#ListDICOMImportJobs"
        operation.name = "ListDICOMImportJobs"
        operation.input = ListDICOMImportJobsRequest
        operation.output = ListDICOMImportJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/listDICOMImportJobs/datastore/{datastoreId}"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDICOMImportJobs.new
      end)
      service.add_operation(:list_datastores, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#ListDatastores"
        operation.name = "ListDatastores"
        operation.input = ListDatastoresRequest
        operation.output = ListDatastoresResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/datastore"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDatastores.new
      end)
      service.add_operation(:list_image_set_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#ListImageSetVersions"
        operation.name = "ListImageSetVersions"
        operation.input = ListImageSetVersionsRequest
        operation.output = ListImageSetVersionsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "runtime-"}, "smithy.api#http" => {"uri" => "/datastore/{datastoreId}/imageSet/{imageSetId}/listImageSetVersions", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListImageSetVersions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:search_image_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#SearchImageSets"
        operation.name = "SearchImageSets"
        operation.input = SearchImageSetsRequest
        operation.output = SearchImageSetsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "runtime-"}, "smithy.api#http" => {"uri" => "/datastore/{datastoreId}/searchImageSets", "method" => "POST"}}
        operation[:paginator] = Paginators::SearchImageSets.new
      end)
      service.add_operation(:start_dicom_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#StartDICOMImportJob"
        operation.name = "StartDICOMImportJob"
        operation.input = StartDICOMImportJobRequest
        operation.output = StartDICOMImportJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/startDICOMImportJob/datastore/{datastoreId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_image_set_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.medicalimaging#UpdateImageSetMetadata"
        operation.name = "UpdateImageSetMetadata"
        operation.input = UpdateImageSetMetadataRequest
        operation.output = UpdateImageSetMetadataResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "runtime-"}, "smithy.api#http" => {"uri" => "/datastore/{datastoreId}/imageSet/{imageSetId}/updateImageSetMetadata", "method" => "POST"}}
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
