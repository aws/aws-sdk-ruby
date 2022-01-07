# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DataExchange
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Action = Shapes::StructureShape.new(name: 'Action')
    ApiDescription = Shapes::StringShape.new(name: 'ApiDescription')
    ApiGatewayApiAsset = Shapes::StructureShape.new(name: 'ApiGatewayApiAsset')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssetDestinationEntry = Shapes::StructureShape.new(name: 'AssetDestinationEntry')
    AssetDetails = Shapes::StructureShape.new(name: 'AssetDetails')
    AssetEntry = Shapes::StructureShape.new(name: 'AssetEntry')
    AssetName = Shapes::StringShape.new(name: 'AssetName')
    AssetSourceEntry = Shapes::StructureShape.new(name: 'AssetSourceEntry')
    AssetType = Shapes::StringShape.new(name: 'AssetType')
    AutoExportRevisionDestinationEntry = Shapes::StructureShape.new(name: 'AutoExportRevisionDestinationEntry')
    AutoExportRevisionToS3RequestDetails = Shapes::StructureShape.new(name: 'AutoExportRevisionToS3RequestDetails')
    CancelJobRequest = Shapes::StructureShape.new(name: 'CancelJobRequest')
    Code = Shapes::StringShape.new(name: 'Code')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateDataSetRequest = Shapes::StructureShape.new(name: 'CreateDataSetRequest')
    CreateDataSetResponse = Shapes::StructureShape.new(name: 'CreateDataSetResponse')
    CreateEventActionRequest = Shapes::StructureShape.new(name: 'CreateEventActionRequest')
    CreateEventActionResponse = Shapes::StructureShape.new(name: 'CreateEventActionResponse')
    CreateJobRequest = Shapes::StructureShape.new(name: 'CreateJobRequest')
    CreateJobResponse = Shapes::StructureShape.new(name: 'CreateJobResponse')
    CreateRevisionRequest = Shapes::StructureShape.new(name: 'CreateRevisionRequest')
    CreateRevisionResponse = Shapes::StructureShape.new(name: 'CreateRevisionResponse')
    DataSetEntry = Shapes::StructureShape.new(name: 'DataSetEntry')
    DeleteAssetRequest = Shapes::StructureShape.new(name: 'DeleteAssetRequest')
    DeleteDataSetRequest = Shapes::StructureShape.new(name: 'DeleteDataSetRequest')
    DeleteEventActionRequest = Shapes::StructureShape.new(name: 'DeleteEventActionRequest')
    DeleteRevisionRequest = Shapes::StructureShape.new(name: 'DeleteRevisionRequest')
    Description = Shapes::StringShape.new(name: 'Description')
    Details = Shapes::StructureShape.new(name: 'Details')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventActionEntry = Shapes::StructureShape.new(name: 'EventActionEntry')
    ExceptionCause = Shapes::StringShape.new(name: 'ExceptionCause')
    ExportAssetToSignedUrlRequestDetails = Shapes::StructureShape.new(name: 'ExportAssetToSignedUrlRequestDetails')
    ExportAssetToSignedUrlResponseDetails = Shapes::StructureShape.new(name: 'ExportAssetToSignedUrlResponseDetails')
    ExportAssetsToS3RequestDetails = Shapes::StructureShape.new(name: 'ExportAssetsToS3RequestDetails')
    ExportAssetsToS3ResponseDetails = Shapes::StructureShape.new(name: 'ExportAssetsToS3ResponseDetails')
    ExportRevisionsToS3RequestDetails = Shapes::StructureShape.new(name: 'ExportRevisionsToS3RequestDetails')
    ExportRevisionsToS3ResponseDetails = Shapes::StructureShape.new(name: 'ExportRevisionsToS3ResponseDetails')
    ExportServerSideEncryption = Shapes::StructureShape.new(name: 'ExportServerSideEncryption')
    GetAssetRequest = Shapes::StructureShape.new(name: 'GetAssetRequest')
    GetAssetResponse = Shapes::StructureShape.new(name: 'GetAssetResponse')
    GetDataSetRequest = Shapes::StructureShape.new(name: 'GetDataSetRequest')
    GetDataSetResponse = Shapes::StructureShape.new(name: 'GetDataSetResponse')
    GetEventActionRequest = Shapes::StructureShape.new(name: 'GetEventActionRequest')
    GetEventActionResponse = Shapes::StructureShape.new(name: 'GetEventActionResponse')
    GetJobRequest = Shapes::StructureShape.new(name: 'GetJobRequest')
    GetJobResponse = Shapes::StructureShape.new(name: 'GetJobResponse')
    GetRevisionRequest = Shapes::StructureShape.new(name: 'GetRevisionRequest')
    GetRevisionResponse = Shapes::StructureShape.new(name: 'GetRevisionResponse')
    Id = Shapes::StringShape.new(name: 'Id')
    ImportAssetFromApiGatewayApiRequestDetails = Shapes::StructureShape.new(name: 'ImportAssetFromApiGatewayApiRequestDetails')
    ImportAssetFromApiGatewayApiResponseDetails = Shapes::StructureShape.new(name: 'ImportAssetFromApiGatewayApiResponseDetails')
    ImportAssetFromSignedUrlJobErrorDetails = Shapes::StructureShape.new(name: 'ImportAssetFromSignedUrlJobErrorDetails')
    ImportAssetFromSignedUrlRequestDetails = Shapes::StructureShape.new(name: 'ImportAssetFromSignedUrlRequestDetails')
    ImportAssetFromSignedUrlResponseDetails = Shapes::StructureShape.new(name: 'ImportAssetFromSignedUrlResponseDetails')
    ImportAssetsFromRedshiftDataSharesRequestDetails = Shapes::StructureShape.new(name: 'ImportAssetsFromRedshiftDataSharesRequestDetails')
    ImportAssetsFromRedshiftDataSharesResponseDetails = Shapes::StructureShape.new(name: 'ImportAssetsFromRedshiftDataSharesResponseDetails')
    ImportAssetsFromS3RequestDetails = Shapes::StructureShape.new(name: 'ImportAssetsFromS3RequestDetails')
    ImportAssetsFromS3ResponseDetails = Shapes::StructureShape.new(name: 'ImportAssetsFromS3ResponseDetails')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JobEntry = Shapes::StructureShape.new(name: 'JobEntry')
    JobError = Shapes::StructureShape.new(name: 'JobError')
    JobErrorLimitName = Shapes::StringShape.new(name: 'JobErrorLimitName')
    JobErrorResourceTypes = Shapes::StringShape.new(name: 'JobErrorResourceTypes')
    LimitName = Shapes::StringShape.new(name: 'LimitName')
    ListDataSetRevisionsRequest = Shapes::StructureShape.new(name: 'ListDataSetRevisionsRequest')
    ListDataSetRevisionsResponse = Shapes::StructureShape.new(name: 'ListDataSetRevisionsResponse')
    ListDataSetsRequest = Shapes::StructureShape.new(name: 'ListDataSetsRequest')
    ListDataSetsResponse = Shapes::StructureShape.new(name: 'ListDataSetsResponse')
    ListEventActionsRequest = Shapes::StructureShape.new(name: 'ListEventActionsRequest')
    ListEventActionsResponse = Shapes::StructureShape.new(name: 'ListEventActionsResponse')
    ListJobsRequest = Shapes::StructureShape.new(name: 'ListJobsRequest')
    ListJobsResponse = Shapes::StructureShape.new(name: 'ListJobsResponse')
    ListOfAssetDestinationEntry = Shapes::ListShape.new(name: 'ListOfAssetDestinationEntry')
    ListOfAssetEntry = Shapes::ListShape.new(name: 'ListOfAssetEntry')
    ListOfAssetSourceEntry = Shapes::ListShape.new(name: 'ListOfAssetSourceEntry')
    ListOfDataSetEntry = Shapes::ListShape.new(name: 'ListOfDataSetEntry')
    ListOfEventActionEntry = Shapes::ListShape.new(name: 'ListOfEventActionEntry')
    ListOfJobEntry = Shapes::ListShape.new(name: 'ListOfJobEntry')
    ListOfJobError = Shapes::ListShape.new(name: 'ListOfJobError')
    ListOfRedshiftDataShareAssetSourceEntry = Shapes::ListShape.new(name: 'ListOfRedshiftDataShareAssetSourceEntry')
    ListOfRevisionDestinationEntry = Shapes::ListShape.new(name: 'ListOfRevisionDestinationEntry')
    ListOfRevisionEntry = Shapes::ListShape.new(name: 'ListOfRevisionEntry')
    ListOf__string = Shapes::ListShape.new(name: 'ListOf__string')
    ListRevisionAssetsRequest = Shapes::StructureShape.new(name: 'ListRevisionAssetsRequest')
    ListRevisionAssetsResponse = Shapes::StructureShape.new(name: 'ListRevisionAssetsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MapOf__string = Shapes::MapShape.new(name: 'MapOf__string')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Origin = Shapes::StringShape.new(name: 'Origin')
    OriginDetails = Shapes::StructureShape.new(name: 'OriginDetails')
    ProtocolType = Shapes::StringShape.new(name: 'ProtocolType')
    RedshiftDataShareAsset = Shapes::StructureShape.new(name: 'RedshiftDataShareAsset')
    RedshiftDataShareAssetSourceEntry = Shapes::StructureShape.new(name: 'RedshiftDataShareAssetSourceEntry')
    RequestDetails = Shapes::StructureShape.new(name: 'RequestDetails')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResponseDetails = Shapes::StructureShape.new(name: 'ResponseDetails')
    RevisionDestinationEntry = Shapes::StructureShape.new(name: 'RevisionDestinationEntry')
    RevisionEntry = Shapes::StructureShape.new(name: 'RevisionEntry')
    RevisionPublished = Shapes::StructureShape.new(name: 'RevisionPublished')
    S3SnapshotAsset = Shapes::StructureShape.new(name: 'S3SnapshotAsset')
    SendApiAssetRequest = Shapes::StructureShape.new(name: 'SendApiAssetRequest')
    SendApiAssetResponse = Shapes::StructureShape.new(name: 'SendApiAssetResponse')
    ServerSideEncryptionTypes = Shapes::StringShape.new(name: 'ServerSideEncryptionTypes')
    ServiceLimitExceededException = Shapes::StructureShape.new(name: 'ServiceLimitExceededException')
    StartJobRequest = Shapes::StructureShape.new(name: 'StartJobRequest')
    StartJobResponse = Shapes::StructureShape.new(name: 'StartJobResponse')
    State = Shapes::StringShape.new(name: 'State')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    Type = Shapes::StringShape.new(name: 'Type')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateAssetRequest = Shapes::StructureShape.new(name: 'UpdateAssetRequest')
    UpdateAssetResponse = Shapes::StructureShape.new(name: 'UpdateAssetResponse')
    UpdateDataSetRequest = Shapes::StructureShape.new(name: 'UpdateDataSetRequest')
    UpdateDataSetResponse = Shapes::StructureShape.new(name: 'UpdateDataSetResponse')
    UpdateEventActionRequest = Shapes::StructureShape.new(name: 'UpdateEventActionRequest')
    UpdateEventActionResponse = Shapes::StructureShape.new(name: 'UpdateEventActionResponse')
    UpdateRevisionRequest = Shapes::StructureShape.new(name: 'UpdateRevisionRequest')
    UpdateRevisionResponse = Shapes::StructureShape.new(name: 'UpdateRevisionResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __doubleMin0 = Shapes::FloatShape.new(name: '__doubleMin0')
    __string = Shapes::StringShape.new(name: '__string')
    __stringMin0Max16384 = Shapes::StringShape.new(name: '__stringMin0Max16384')
    __stringMin24Max24PatternAZaZ094AZaZ092AZaZ093 = Shapes::StringShape.new(name: '__stringMin24Max24PatternAZaZ094AZaZ092AZaZ093')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Action.add_member(:export_revision_to_s3, Shapes::ShapeRef.new(shape: AutoExportRevisionToS3RequestDetails, location_name: "ExportRevisionToS3"))
    Action.struct_class = Types::Action

    ApiGatewayApiAsset.add_member(:api_description, Shapes::ShapeRef.new(shape: ApiDescription, location_name: "ApiDescription"))
    ApiGatewayApiAsset.add_member(:api_endpoint, Shapes::ShapeRef.new(shape: __string, location_name: "ApiEndpoint"))
    ApiGatewayApiAsset.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, location_name: "ApiId"))
    ApiGatewayApiAsset.add_member(:api_key, Shapes::ShapeRef.new(shape: __string, location_name: "ApiKey"))
    ApiGatewayApiAsset.add_member(:api_name, Shapes::ShapeRef.new(shape: __string, location_name: "ApiName"))
    ApiGatewayApiAsset.add_member(:api_specification_download_url, Shapes::ShapeRef.new(shape: __string, location_name: "ApiSpecificationDownloadUrl"))
    ApiGatewayApiAsset.add_member(:api_specification_download_url_expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ApiSpecificationDownloadUrlExpiresAt"))
    ApiGatewayApiAsset.add_member(:protocol_type, Shapes::ShapeRef.new(shape: ProtocolType, location_name: "ProtocolType"))
    ApiGatewayApiAsset.add_member(:stage, Shapes::ShapeRef.new(shape: __string, location_name: "Stage"))
    ApiGatewayApiAsset.struct_class = Types::ApiGatewayApiAsset

    AssetDestinationEntry.add_member(:asset_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "AssetId"))
    AssetDestinationEntry.add_member(:bucket, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Bucket"))
    AssetDestinationEntry.add_member(:key, Shapes::ShapeRef.new(shape: __string, location_name: "Key"))
    AssetDestinationEntry.struct_class = Types::AssetDestinationEntry

    AssetDetails.add_member(:s3_snapshot_asset, Shapes::ShapeRef.new(shape: S3SnapshotAsset, location_name: "S3SnapshotAsset"))
    AssetDetails.add_member(:redshift_data_share_asset, Shapes::ShapeRef.new(shape: RedshiftDataShareAsset, location_name: "RedshiftDataShareAsset"))
    AssetDetails.add_member(:api_gateway_api_asset, Shapes::ShapeRef.new(shape: ApiGatewayApiAsset, location_name: "ApiGatewayApiAsset"))
    AssetDetails.struct_class = Types::AssetDetails

    AssetEntry.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    AssetEntry.add_member(:asset_details, Shapes::ShapeRef.new(shape: AssetDetails, required: true, location_name: "AssetDetails"))
    AssetEntry.add_member(:asset_type, Shapes::ShapeRef.new(shape: AssetType, required: true, location_name: "AssetType"))
    AssetEntry.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    AssetEntry.add_member(:data_set_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "DataSetId"))
    AssetEntry.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "Id"))
    AssetEntry.add_member(:name, Shapes::ShapeRef.new(shape: AssetName, required: true, location_name: "Name"))
    AssetEntry.add_member(:revision_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "RevisionId"))
    AssetEntry.add_member(:source_id, Shapes::ShapeRef.new(shape: Id, location_name: "SourceId"))
    AssetEntry.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdatedAt"))
    AssetEntry.struct_class = Types::AssetEntry

    AssetSourceEntry.add_member(:bucket, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Bucket"))
    AssetSourceEntry.add_member(:key, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Key"))
    AssetSourceEntry.struct_class = Types::AssetSourceEntry

    AutoExportRevisionDestinationEntry.add_member(:bucket, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Bucket"))
    AutoExportRevisionDestinationEntry.add_member(:key_pattern, Shapes::ShapeRef.new(shape: __string, location_name: "KeyPattern"))
    AutoExportRevisionDestinationEntry.struct_class = Types::AutoExportRevisionDestinationEntry

    AutoExportRevisionToS3RequestDetails.add_member(:encryption, Shapes::ShapeRef.new(shape: ExportServerSideEncryption, location_name: "Encryption"))
    AutoExportRevisionToS3RequestDetails.add_member(:revision_destination, Shapes::ShapeRef.new(shape: AutoExportRevisionDestinationEntry, required: true, location_name: "RevisionDestination"))
    AutoExportRevisionToS3RequestDetails.struct_class = Types::AutoExportRevisionToS3RequestDetails

    CancelJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "JobId"))
    CancelJobRequest.struct_class = Types::CancelJobRequest

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: __string, location_name: "ResourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateDataSetRequest.add_member(:asset_type, Shapes::ShapeRef.new(shape: AssetType, required: true, location_name: "AssetType"))
    CreateDataSetRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "Description"))
    CreateDataSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateDataSetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "Tags"))
    CreateDataSetRequest.struct_class = Types::CreateDataSetRequest

    CreateDataSetResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CreateDataSetResponse.add_member(:asset_type, Shapes::ShapeRef.new(shape: AssetType, location_name: "AssetType"))
    CreateDataSetResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    CreateDataSetResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateDataSetResponse.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    CreateDataSetResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    CreateDataSetResponse.add_member(:origin, Shapes::ShapeRef.new(shape: Origin, location_name: "Origin"))
    CreateDataSetResponse.add_member(:origin_details, Shapes::ShapeRef.new(shape: OriginDetails, location_name: "OriginDetails"))
    CreateDataSetResponse.add_member(:source_id, Shapes::ShapeRef.new(shape: Id, location_name: "SourceId"))
    CreateDataSetResponse.add_member(:tags, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "Tags"))
    CreateDataSetResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    CreateDataSetResponse.struct_class = Types::CreateDataSetResponse

    CreateEventActionRequest.add_member(:action, Shapes::ShapeRef.new(shape: Action, required: true, location_name: "Action"))
    CreateEventActionRequest.add_member(:event, Shapes::ShapeRef.new(shape: Event, required: true, location_name: "Event"))
    CreateEventActionRequest.struct_class = Types::CreateEventActionRequest

    CreateEventActionResponse.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "Action"))
    CreateEventActionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CreateEventActionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    CreateEventActionResponse.add_member(:event, Shapes::ShapeRef.new(shape: Event, location_name: "Event"))
    CreateEventActionResponse.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    CreateEventActionResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    CreateEventActionResponse.struct_class = Types::CreateEventActionResponse

    CreateJobRequest.add_member(:details, Shapes::ShapeRef.new(shape: RequestDetails, required: true, location_name: "Details"))
    CreateJobRequest.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "Type"))
    CreateJobRequest.struct_class = Types::CreateJobRequest

    CreateJobResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CreateJobResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    CreateJobResponse.add_member(:details, Shapes::ShapeRef.new(shape: ResponseDetails, location_name: "Details"))
    CreateJobResponse.add_member(:errors, Shapes::ShapeRef.new(shape: ListOfJobError, location_name: "Errors"))
    CreateJobResponse.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    CreateJobResponse.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "State"))
    CreateJobResponse.add_member(:type, Shapes::ShapeRef.new(shape: Type, location_name: "Type"))
    CreateJobResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    CreateJobResponse.struct_class = Types::CreateJobResponse

    CreateRevisionRequest.add_member(:comment, Shapes::ShapeRef.new(shape: __stringMin0Max16384, location_name: "Comment"))
    CreateRevisionRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "DataSetId"))
    CreateRevisionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "Tags"))
    CreateRevisionRequest.struct_class = Types::CreateRevisionRequest

    CreateRevisionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CreateRevisionResponse.add_member(:comment, Shapes::ShapeRef.new(shape: __stringMin0Max16384, location_name: "Comment"))
    CreateRevisionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    CreateRevisionResponse.add_member(:data_set_id, Shapes::ShapeRef.new(shape: Id, location_name: "DataSetId"))
    CreateRevisionResponse.add_member(:finalized, Shapes::ShapeRef.new(shape: __boolean, location_name: "Finalized"))
    CreateRevisionResponse.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    CreateRevisionResponse.add_member(:source_id, Shapes::ShapeRef.new(shape: Id, location_name: "SourceId"))
    CreateRevisionResponse.add_member(:tags, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "Tags"))
    CreateRevisionResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    CreateRevisionResponse.struct_class = Types::CreateRevisionResponse

    DataSetEntry.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    DataSetEntry.add_member(:asset_type, Shapes::ShapeRef.new(shape: AssetType, required: true, location_name: "AssetType"))
    DataSetEntry.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    DataSetEntry.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "Description"))
    DataSetEntry.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "Id"))
    DataSetEntry.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    DataSetEntry.add_member(:origin, Shapes::ShapeRef.new(shape: Origin, required: true, location_name: "Origin"))
    DataSetEntry.add_member(:origin_details, Shapes::ShapeRef.new(shape: OriginDetails, location_name: "OriginDetails"))
    DataSetEntry.add_member(:source_id, Shapes::ShapeRef.new(shape: Id, location_name: "SourceId"))
    DataSetEntry.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdatedAt"))
    DataSetEntry.struct_class = Types::DataSetEntry

    DeleteAssetRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "AssetId"))
    DeleteAssetRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "DataSetId"))
    DeleteAssetRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "RevisionId"))
    DeleteAssetRequest.struct_class = Types::DeleteAssetRequest

    DeleteDataSetRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "DataSetId"))
    DeleteDataSetRequest.struct_class = Types::DeleteDataSetRequest

    DeleteEventActionRequest.add_member(:event_action_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "EventActionId"))
    DeleteEventActionRequest.struct_class = Types::DeleteEventActionRequest

    DeleteRevisionRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "DataSetId"))
    DeleteRevisionRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "RevisionId"))
    DeleteRevisionRequest.struct_class = Types::DeleteRevisionRequest

    Details.add_member(:import_asset_from_signed_url_job_error_details, Shapes::ShapeRef.new(shape: ImportAssetFromSignedUrlJobErrorDetails, location_name: "ImportAssetFromSignedUrlJobErrorDetails"))
    Details.add_member(:import_assets_from_s3_job_error_details, Shapes::ShapeRef.new(shape: ListOfAssetSourceEntry, location_name: "ImportAssetsFromS3JobErrorDetails"))
    Details.struct_class = Types::Details

    Event.add_member(:revision_published, Shapes::ShapeRef.new(shape: RevisionPublished, location_name: "RevisionPublished"))
    Event.struct_class = Types::Event

    EventActionEntry.add_member(:action, Shapes::ShapeRef.new(shape: Action, required: true, location_name: "Action"))
    EventActionEntry.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    EventActionEntry.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    EventActionEntry.add_member(:event, Shapes::ShapeRef.new(shape: Event, required: true, location_name: "Event"))
    EventActionEntry.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "Id"))
    EventActionEntry.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdatedAt"))
    EventActionEntry.struct_class = Types::EventActionEntry

    ExportAssetToSignedUrlRequestDetails.add_member(:asset_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "AssetId"))
    ExportAssetToSignedUrlRequestDetails.add_member(:data_set_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "DataSetId"))
    ExportAssetToSignedUrlRequestDetails.add_member(:revision_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "RevisionId"))
    ExportAssetToSignedUrlRequestDetails.struct_class = Types::ExportAssetToSignedUrlRequestDetails

    ExportAssetToSignedUrlResponseDetails.add_member(:asset_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "AssetId"))
    ExportAssetToSignedUrlResponseDetails.add_member(:data_set_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "DataSetId"))
    ExportAssetToSignedUrlResponseDetails.add_member(:revision_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "RevisionId"))
    ExportAssetToSignedUrlResponseDetails.add_member(:signed_url, Shapes::ShapeRef.new(shape: __string, location_name: "SignedUrl"))
    ExportAssetToSignedUrlResponseDetails.add_member(:signed_url_expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SignedUrlExpiresAt"))
    ExportAssetToSignedUrlResponseDetails.struct_class = Types::ExportAssetToSignedUrlResponseDetails

    ExportAssetsToS3RequestDetails.add_member(:asset_destinations, Shapes::ShapeRef.new(shape: ListOfAssetDestinationEntry, required: true, location_name: "AssetDestinations"))
    ExportAssetsToS3RequestDetails.add_member(:data_set_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "DataSetId"))
    ExportAssetsToS3RequestDetails.add_member(:encryption, Shapes::ShapeRef.new(shape: ExportServerSideEncryption, location_name: "Encryption"))
    ExportAssetsToS3RequestDetails.add_member(:revision_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "RevisionId"))
    ExportAssetsToS3RequestDetails.struct_class = Types::ExportAssetsToS3RequestDetails

    ExportAssetsToS3ResponseDetails.add_member(:asset_destinations, Shapes::ShapeRef.new(shape: ListOfAssetDestinationEntry, required: true, location_name: "AssetDestinations"))
    ExportAssetsToS3ResponseDetails.add_member(:data_set_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "DataSetId"))
    ExportAssetsToS3ResponseDetails.add_member(:encryption, Shapes::ShapeRef.new(shape: ExportServerSideEncryption, location_name: "Encryption"))
    ExportAssetsToS3ResponseDetails.add_member(:revision_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "RevisionId"))
    ExportAssetsToS3ResponseDetails.struct_class = Types::ExportAssetsToS3ResponseDetails

    ExportRevisionsToS3RequestDetails.add_member(:data_set_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "DataSetId"))
    ExportRevisionsToS3RequestDetails.add_member(:encryption, Shapes::ShapeRef.new(shape: ExportServerSideEncryption, location_name: "Encryption"))
    ExportRevisionsToS3RequestDetails.add_member(:revision_destinations, Shapes::ShapeRef.new(shape: ListOfRevisionDestinationEntry, required: true, location_name: "RevisionDestinations"))
    ExportRevisionsToS3RequestDetails.struct_class = Types::ExportRevisionsToS3RequestDetails

    ExportRevisionsToS3ResponseDetails.add_member(:data_set_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "DataSetId"))
    ExportRevisionsToS3ResponseDetails.add_member(:encryption, Shapes::ShapeRef.new(shape: ExportServerSideEncryption, location_name: "Encryption"))
    ExportRevisionsToS3ResponseDetails.add_member(:revision_destinations, Shapes::ShapeRef.new(shape: ListOfRevisionDestinationEntry, required: true, location_name: "RevisionDestinations"))
    ExportRevisionsToS3ResponseDetails.add_member(:event_action_arn, Shapes::ShapeRef.new(shape: __string, location_name: "EventActionArn"))
    ExportRevisionsToS3ResponseDetails.struct_class = Types::ExportRevisionsToS3ResponseDetails

    ExportServerSideEncryption.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: __string, location_name: "KmsKeyArn"))
    ExportServerSideEncryption.add_member(:type, Shapes::ShapeRef.new(shape: ServerSideEncryptionTypes, required: true, location_name: "Type"))
    ExportServerSideEncryption.struct_class = Types::ExportServerSideEncryption

    GetAssetRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "AssetId"))
    GetAssetRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "DataSetId"))
    GetAssetRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "RevisionId"))
    GetAssetRequest.struct_class = Types::GetAssetRequest

    GetAssetResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    GetAssetResponse.add_member(:asset_details, Shapes::ShapeRef.new(shape: AssetDetails, location_name: "AssetDetails"))
    GetAssetResponse.add_member(:asset_type, Shapes::ShapeRef.new(shape: AssetType, location_name: "AssetType"))
    GetAssetResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    GetAssetResponse.add_member(:data_set_id, Shapes::ShapeRef.new(shape: Id, location_name: "DataSetId"))
    GetAssetResponse.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    GetAssetResponse.add_member(:name, Shapes::ShapeRef.new(shape: AssetName, location_name: "Name"))
    GetAssetResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: Id, location_name: "RevisionId"))
    GetAssetResponse.add_member(:source_id, Shapes::ShapeRef.new(shape: Id, location_name: "SourceId"))
    GetAssetResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    GetAssetResponse.struct_class = Types::GetAssetResponse

    GetDataSetRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "DataSetId"))
    GetDataSetRequest.struct_class = Types::GetDataSetRequest

    GetDataSetResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    GetDataSetResponse.add_member(:asset_type, Shapes::ShapeRef.new(shape: AssetType, location_name: "AssetType"))
    GetDataSetResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    GetDataSetResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GetDataSetResponse.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    GetDataSetResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    GetDataSetResponse.add_member(:origin, Shapes::ShapeRef.new(shape: Origin, location_name: "Origin"))
    GetDataSetResponse.add_member(:origin_details, Shapes::ShapeRef.new(shape: OriginDetails, location_name: "OriginDetails"))
    GetDataSetResponse.add_member(:source_id, Shapes::ShapeRef.new(shape: Id, location_name: "SourceId"))
    GetDataSetResponse.add_member(:tags, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "Tags"))
    GetDataSetResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    GetDataSetResponse.struct_class = Types::GetDataSetResponse

    GetEventActionRequest.add_member(:event_action_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "EventActionId"))
    GetEventActionRequest.struct_class = Types::GetEventActionRequest

    GetEventActionResponse.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "Action"))
    GetEventActionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    GetEventActionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    GetEventActionResponse.add_member(:event, Shapes::ShapeRef.new(shape: Event, location_name: "Event"))
    GetEventActionResponse.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    GetEventActionResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    GetEventActionResponse.struct_class = Types::GetEventActionResponse

    GetJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "JobId"))
    GetJobRequest.struct_class = Types::GetJobRequest

    GetJobResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    GetJobResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    GetJobResponse.add_member(:details, Shapes::ShapeRef.new(shape: ResponseDetails, location_name: "Details"))
    GetJobResponse.add_member(:errors, Shapes::ShapeRef.new(shape: ListOfJobError, location_name: "Errors"))
    GetJobResponse.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    GetJobResponse.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "State"))
    GetJobResponse.add_member(:type, Shapes::ShapeRef.new(shape: Type, location_name: "Type"))
    GetJobResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    GetJobResponse.struct_class = Types::GetJobResponse

    GetRevisionRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "DataSetId"))
    GetRevisionRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "RevisionId"))
    GetRevisionRequest.struct_class = Types::GetRevisionRequest

    GetRevisionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    GetRevisionResponse.add_member(:comment, Shapes::ShapeRef.new(shape: __stringMin0Max16384, location_name: "Comment"))
    GetRevisionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    GetRevisionResponse.add_member(:data_set_id, Shapes::ShapeRef.new(shape: Id, location_name: "DataSetId"))
    GetRevisionResponse.add_member(:finalized, Shapes::ShapeRef.new(shape: __boolean, location_name: "Finalized"))
    GetRevisionResponse.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    GetRevisionResponse.add_member(:source_id, Shapes::ShapeRef.new(shape: Id, location_name: "SourceId"))
    GetRevisionResponse.add_member(:tags, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "Tags"))
    GetRevisionResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    GetRevisionResponse.struct_class = Types::GetRevisionResponse

    ImportAssetFromApiGatewayApiRequestDetails.add_member(:api_description, Shapes::ShapeRef.new(shape: ApiDescription, location_name: "ApiDescription"))
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ApiId"))
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:api_key, Shapes::ShapeRef.new(shape: __string, location_name: "ApiKey"))
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:api_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ApiName"))
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:api_specification_md_5_hash, Shapes::ShapeRef.new(shape: __stringMin24Max24PatternAZaZ094AZaZ092AZaZ093, required: true, location_name: "ApiSpecificationMd5Hash"))
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:data_set_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "DataSetId"))
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:protocol_type, Shapes::ShapeRef.new(shape: ProtocolType, required: true, location_name: "ProtocolType"))
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:revision_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "RevisionId"))
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:stage, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Stage"))
    ImportAssetFromApiGatewayApiRequestDetails.struct_class = Types::ImportAssetFromApiGatewayApiRequestDetails

    ImportAssetFromApiGatewayApiResponseDetails.add_member(:api_description, Shapes::ShapeRef.new(shape: ApiDescription, location_name: "ApiDescription"))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ApiId"))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:api_key, Shapes::ShapeRef.new(shape: __string, location_name: "ApiKey"))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:api_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ApiName"))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:api_specification_md_5_hash, Shapes::ShapeRef.new(shape: __stringMin24Max24PatternAZaZ094AZaZ092AZaZ093, required: true, location_name: "ApiSpecificationMd5Hash"))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:api_specification_upload_url, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ApiSpecificationUploadUrl"))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:api_specification_upload_url_expires_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ApiSpecificationUploadUrlExpiresAt"))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:data_set_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "DataSetId"))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:protocol_type, Shapes::ShapeRef.new(shape: ProtocolType, required: true, location_name: "ProtocolType"))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:revision_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "RevisionId"))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:stage, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Stage"))
    ImportAssetFromApiGatewayApiResponseDetails.struct_class = Types::ImportAssetFromApiGatewayApiResponseDetails

    ImportAssetFromSignedUrlJobErrorDetails.add_member(:asset_name, Shapes::ShapeRef.new(shape: AssetName, required: true, location_name: "AssetName"))
    ImportAssetFromSignedUrlJobErrorDetails.struct_class = Types::ImportAssetFromSignedUrlJobErrorDetails

    ImportAssetFromSignedUrlRequestDetails.add_member(:asset_name, Shapes::ShapeRef.new(shape: AssetName, required: true, location_name: "AssetName"))
    ImportAssetFromSignedUrlRequestDetails.add_member(:data_set_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "DataSetId"))
    ImportAssetFromSignedUrlRequestDetails.add_member(:md_5_hash, Shapes::ShapeRef.new(shape: __stringMin24Max24PatternAZaZ094AZaZ092AZaZ093, required: true, location_name: "Md5Hash"))
    ImportAssetFromSignedUrlRequestDetails.add_member(:revision_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "RevisionId"))
    ImportAssetFromSignedUrlRequestDetails.struct_class = Types::ImportAssetFromSignedUrlRequestDetails

    ImportAssetFromSignedUrlResponseDetails.add_member(:asset_name, Shapes::ShapeRef.new(shape: AssetName, required: true, location_name: "AssetName"))
    ImportAssetFromSignedUrlResponseDetails.add_member(:data_set_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "DataSetId"))
    ImportAssetFromSignedUrlResponseDetails.add_member(:md_5_hash, Shapes::ShapeRef.new(shape: __stringMin24Max24PatternAZaZ094AZaZ092AZaZ093, location_name: "Md5Hash"))
    ImportAssetFromSignedUrlResponseDetails.add_member(:revision_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "RevisionId"))
    ImportAssetFromSignedUrlResponseDetails.add_member(:signed_url, Shapes::ShapeRef.new(shape: __string, location_name: "SignedUrl"))
    ImportAssetFromSignedUrlResponseDetails.add_member(:signed_url_expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SignedUrlExpiresAt"))
    ImportAssetFromSignedUrlResponseDetails.struct_class = Types::ImportAssetFromSignedUrlResponseDetails

    ImportAssetsFromRedshiftDataSharesRequestDetails.add_member(:asset_sources, Shapes::ShapeRef.new(shape: ListOfRedshiftDataShareAssetSourceEntry, required: true, location_name: "AssetSources"))
    ImportAssetsFromRedshiftDataSharesRequestDetails.add_member(:data_set_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "DataSetId"))
    ImportAssetsFromRedshiftDataSharesRequestDetails.add_member(:revision_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "RevisionId"))
    ImportAssetsFromRedshiftDataSharesRequestDetails.struct_class = Types::ImportAssetsFromRedshiftDataSharesRequestDetails

    ImportAssetsFromRedshiftDataSharesResponseDetails.add_member(:asset_sources, Shapes::ShapeRef.new(shape: ListOfRedshiftDataShareAssetSourceEntry, required: true, location_name: "AssetSources"))
    ImportAssetsFromRedshiftDataSharesResponseDetails.add_member(:data_set_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "DataSetId"))
    ImportAssetsFromRedshiftDataSharesResponseDetails.add_member(:revision_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "RevisionId"))
    ImportAssetsFromRedshiftDataSharesResponseDetails.struct_class = Types::ImportAssetsFromRedshiftDataSharesResponseDetails

    ImportAssetsFromS3RequestDetails.add_member(:asset_sources, Shapes::ShapeRef.new(shape: ListOfAssetSourceEntry, required: true, location_name: "AssetSources"))
    ImportAssetsFromS3RequestDetails.add_member(:data_set_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "DataSetId"))
    ImportAssetsFromS3RequestDetails.add_member(:revision_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "RevisionId"))
    ImportAssetsFromS3RequestDetails.struct_class = Types::ImportAssetsFromS3RequestDetails

    ImportAssetsFromS3ResponseDetails.add_member(:asset_sources, Shapes::ShapeRef.new(shape: ListOfAssetSourceEntry, required: true, location_name: "AssetSources"))
    ImportAssetsFromS3ResponseDetails.add_member(:data_set_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "DataSetId"))
    ImportAssetsFromS3ResponseDetails.add_member(:revision_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "RevisionId"))
    ImportAssetsFromS3ResponseDetails.struct_class = Types::ImportAssetsFromS3ResponseDetails

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    JobEntry.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    JobEntry.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    JobEntry.add_member(:details, Shapes::ShapeRef.new(shape: ResponseDetails, required: true, location_name: "Details"))
    JobEntry.add_member(:errors, Shapes::ShapeRef.new(shape: ListOfJobError, location_name: "Errors"))
    JobEntry.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "Id"))
    JobEntry.add_member(:state, Shapes::ShapeRef.new(shape: State, required: true, location_name: "State"))
    JobEntry.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "Type"))
    JobEntry.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdatedAt"))
    JobEntry.struct_class = Types::JobEntry

    JobError.add_member(:code, Shapes::ShapeRef.new(shape: Code, required: true, location_name: "Code"))
    JobError.add_member(:details, Shapes::ShapeRef.new(shape: Details, location_name: "Details"))
    JobError.add_member(:limit_name, Shapes::ShapeRef.new(shape: JobErrorLimitName, location_name: "LimitName"))
    JobError.add_member(:limit_value, Shapes::ShapeRef.new(shape: __double, location_name: "LimitValue"))
    JobError.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    JobError.add_member(:resource_id, Shapes::ShapeRef.new(shape: __string, location_name: "ResourceId"))
    JobError.add_member(:resource_type, Shapes::ShapeRef.new(shape: JobErrorResourceTypes, location_name: "ResourceType"))
    JobError.struct_class = Types::JobError

    ListDataSetRevisionsRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "DataSetId"))
    ListDataSetRevisionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDataSetRevisionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListDataSetRevisionsRequest.struct_class = Types::ListDataSetRevisionsRequest

    ListDataSetRevisionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDataSetRevisionsResponse.add_member(:revisions, Shapes::ShapeRef.new(shape: ListOfRevisionEntry, location_name: "Revisions"))
    ListDataSetRevisionsResponse.struct_class = Types::ListDataSetRevisionsResponse

    ListDataSetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDataSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListDataSetsRequest.add_member(:origin, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "origin"))
    ListDataSetsRequest.struct_class = Types::ListDataSetsRequest

    ListDataSetsResponse.add_member(:data_sets, Shapes::ShapeRef.new(shape: ListOfDataSetEntry, location_name: "DataSets"))
    ListDataSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDataSetsResponse.struct_class = Types::ListDataSetsResponse

    ListEventActionsRequest.add_member(:event_source_id, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "eventSourceId"))
    ListEventActionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEventActionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListEventActionsRequest.struct_class = Types::ListEventActionsRequest

    ListEventActionsResponse.add_member(:event_actions, Shapes::ShapeRef.new(shape: ListOfEventActionEntry, location_name: "EventActions"))
    ListEventActionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEventActionsResponse.struct_class = Types::ListEventActionsResponse

    ListJobsRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "dataSetId"))
    ListJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListJobsRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "revisionId"))
    ListJobsRequest.struct_class = Types::ListJobsRequest

    ListJobsResponse.add_member(:jobs, Shapes::ShapeRef.new(shape: ListOfJobEntry, location_name: "Jobs"))
    ListJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListJobsResponse.struct_class = Types::ListJobsResponse

    ListOfAssetDestinationEntry.member = Shapes::ShapeRef.new(shape: AssetDestinationEntry)

    ListOfAssetEntry.member = Shapes::ShapeRef.new(shape: AssetEntry)

    ListOfAssetSourceEntry.member = Shapes::ShapeRef.new(shape: AssetSourceEntry)

    ListOfDataSetEntry.member = Shapes::ShapeRef.new(shape: DataSetEntry)

    ListOfEventActionEntry.member = Shapes::ShapeRef.new(shape: EventActionEntry)

    ListOfJobEntry.member = Shapes::ShapeRef.new(shape: JobEntry)

    ListOfJobError.member = Shapes::ShapeRef.new(shape: JobError)

    ListOfRedshiftDataShareAssetSourceEntry.member = Shapes::ShapeRef.new(shape: RedshiftDataShareAssetSourceEntry)

    ListOfRevisionDestinationEntry.member = Shapes::ShapeRef.new(shape: RevisionDestinationEntry)

    ListOfRevisionEntry.member = Shapes::ShapeRef.new(shape: RevisionEntry)

    ListOf__string.member = Shapes::ShapeRef.new(shape: __string)

    ListRevisionAssetsRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "DataSetId"))
    ListRevisionAssetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListRevisionAssetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListRevisionAssetsRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "RevisionId"))
    ListRevisionAssetsRequest.struct_class = Types::ListRevisionAssetsRequest

    ListRevisionAssetsResponse.add_member(:assets, Shapes::ShapeRef.new(shape: ListOfAssetEntry, location_name: "Assets"))
    ListRevisionAssetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRevisionAssetsResponse.struct_class = Types::ListRevisionAssetsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resource-arn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MapOf__string.key = Shapes::ShapeRef.new(shape: __string)
    MapOf__string.value = Shapes::ShapeRef.new(shape: __string)

    OriginDetails.add_member(:product_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ProductId"))
    OriginDetails.struct_class = Types::OriginDetails

    RedshiftDataShareAsset.add_member(:arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Arn"))
    RedshiftDataShareAsset.struct_class = Types::RedshiftDataShareAsset

    RedshiftDataShareAssetSourceEntry.add_member(:data_share_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "DataShareArn"))
    RedshiftDataShareAssetSourceEntry.struct_class = Types::RedshiftDataShareAssetSourceEntry

    RequestDetails.add_member(:export_asset_to_signed_url, Shapes::ShapeRef.new(shape: ExportAssetToSignedUrlRequestDetails, location_name: "ExportAssetToSignedUrl"))
    RequestDetails.add_member(:export_assets_to_s3, Shapes::ShapeRef.new(shape: ExportAssetsToS3RequestDetails, location_name: "ExportAssetsToS3"))
    RequestDetails.add_member(:export_revisions_to_s3, Shapes::ShapeRef.new(shape: ExportRevisionsToS3RequestDetails, location_name: "ExportRevisionsToS3"))
    RequestDetails.add_member(:import_asset_from_signed_url, Shapes::ShapeRef.new(shape: ImportAssetFromSignedUrlRequestDetails, location_name: "ImportAssetFromSignedUrl"))
    RequestDetails.add_member(:import_assets_from_s3, Shapes::ShapeRef.new(shape: ImportAssetsFromS3RequestDetails, location_name: "ImportAssetsFromS3"))
    RequestDetails.add_member(:import_assets_from_redshift_data_shares, Shapes::ShapeRef.new(shape: ImportAssetsFromRedshiftDataSharesRequestDetails, location_name: "ImportAssetsFromRedshiftDataShares"))
    RequestDetails.add_member(:import_asset_from_api_gateway_api, Shapes::ShapeRef.new(shape: ImportAssetFromApiGatewayApiRequestDetails, location_name: "ImportAssetFromApiGatewayApi"))
    RequestDetails.struct_class = Types::RequestDetails

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: __string, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResponseDetails.add_member(:export_asset_to_signed_url, Shapes::ShapeRef.new(shape: ExportAssetToSignedUrlResponseDetails, location_name: "ExportAssetToSignedUrl"))
    ResponseDetails.add_member(:export_assets_to_s3, Shapes::ShapeRef.new(shape: ExportAssetsToS3ResponseDetails, location_name: "ExportAssetsToS3"))
    ResponseDetails.add_member(:export_revisions_to_s3, Shapes::ShapeRef.new(shape: ExportRevisionsToS3ResponseDetails, location_name: "ExportRevisionsToS3"))
    ResponseDetails.add_member(:import_asset_from_signed_url, Shapes::ShapeRef.new(shape: ImportAssetFromSignedUrlResponseDetails, location_name: "ImportAssetFromSignedUrl"))
    ResponseDetails.add_member(:import_assets_from_s3, Shapes::ShapeRef.new(shape: ImportAssetsFromS3ResponseDetails, location_name: "ImportAssetsFromS3"))
    ResponseDetails.add_member(:import_assets_from_redshift_data_shares, Shapes::ShapeRef.new(shape: ImportAssetsFromRedshiftDataSharesResponseDetails, location_name: "ImportAssetsFromRedshiftDataShares"))
    ResponseDetails.add_member(:import_asset_from_api_gateway_api, Shapes::ShapeRef.new(shape: ImportAssetFromApiGatewayApiResponseDetails, location_name: "ImportAssetFromApiGatewayApi"))
    ResponseDetails.struct_class = Types::ResponseDetails

    RevisionDestinationEntry.add_member(:bucket, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Bucket"))
    RevisionDestinationEntry.add_member(:key_pattern, Shapes::ShapeRef.new(shape: __string, location_name: "KeyPattern"))
    RevisionDestinationEntry.add_member(:revision_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "RevisionId"))
    RevisionDestinationEntry.struct_class = Types::RevisionDestinationEntry

    RevisionEntry.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    RevisionEntry.add_member(:comment, Shapes::ShapeRef.new(shape: __stringMin0Max16384, location_name: "Comment"))
    RevisionEntry.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    RevisionEntry.add_member(:data_set_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "DataSetId"))
    RevisionEntry.add_member(:finalized, Shapes::ShapeRef.new(shape: __boolean, location_name: "Finalized"))
    RevisionEntry.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "Id"))
    RevisionEntry.add_member(:source_id, Shapes::ShapeRef.new(shape: Id, location_name: "SourceId"))
    RevisionEntry.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdatedAt"))
    RevisionEntry.struct_class = Types::RevisionEntry

    RevisionPublished.add_member(:data_set_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "DataSetId"))
    RevisionPublished.struct_class = Types::RevisionPublished

    S3SnapshotAsset.add_member(:size, Shapes::ShapeRef.new(shape: __doubleMin0, required: true, location_name: "Size"))
    S3SnapshotAsset.struct_class = Types::S3SnapshotAsset

    SendApiAssetRequest.add_member(:body, Shapes::ShapeRef.new(shape: __string, location_name: "Body"))
    SendApiAssetRequest.add_member(:query_string_parameters, Shapes::ShapeRef.new(shape: MapOf__string, location: "querystring", location_name: "QueryStringParameters"))
    SendApiAssetRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "header", location_name: "x-amzn-dataexchange-asset-id"))
    SendApiAssetRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "header", location_name: "x-amzn-dataexchange-data-set-id"))
    SendApiAssetRequest.add_member(:request_headers, Shapes::ShapeRef.new(shape: MapOf__string, location: "headers", location_name: "x-amzn-dataexchange-header-"))
    SendApiAssetRequest.add_member(:method, Shapes::ShapeRef.new(shape: __string, location: "header", location_name: "x-amzn-dataexchange-http-method"))
    SendApiAssetRequest.add_member(:path, Shapes::ShapeRef.new(shape: __string, location: "header", location_name: "x-amzn-dataexchange-path"))
    SendApiAssetRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "header", location_name: "x-amzn-dataexchange-revision-id"))
    SendApiAssetRequest.struct_class = Types::SendApiAssetRequest
    SendApiAssetRequest[:payload] = :body
    SendApiAssetRequest[:payload_member] = SendApiAssetRequest.member(:body)

    SendApiAssetResponse.add_member(:body, Shapes::ShapeRef.new(shape: __string, location_name: "Body"))
    SendApiAssetResponse.add_member(:response_headers, Shapes::ShapeRef.new(shape: MapOf__string, location: "headers", location_name: ""))
    SendApiAssetResponse.struct_class = Types::SendApiAssetResponse
    SendApiAssetResponse[:payload] = :body
    SendApiAssetResponse[:payload_member] = SendApiAssetResponse.member(:body)

    ServiceLimitExceededException.add_member(:limit_name, Shapes::ShapeRef.new(shape: LimitName, location_name: "LimitName"))
    ServiceLimitExceededException.add_member(:limit_value, Shapes::ShapeRef.new(shape: __double, location_name: "LimitValue"))
    ServiceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    ServiceLimitExceededException.struct_class = Types::ServiceLimitExceededException

    StartJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "JobId"))
    StartJobRequest.struct_class = Types::StartJobRequest

    StartJobResponse.struct_class = Types::StartJobResponse

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resource-arn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: MapOf__string, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resource-arn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: ListOf__string, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateAssetRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "AssetId"))
    UpdateAssetRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "DataSetId"))
    UpdateAssetRequest.add_member(:name, Shapes::ShapeRef.new(shape: AssetName, required: true, location_name: "Name"))
    UpdateAssetRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "RevisionId"))
    UpdateAssetRequest.struct_class = Types::UpdateAssetRequest

    UpdateAssetResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    UpdateAssetResponse.add_member(:asset_details, Shapes::ShapeRef.new(shape: AssetDetails, location_name: "AssetDetails"))
    UpdateAssetResponse.add_member(:asset_type, Shapes::ShapeRef.new(shape: AssetType, location_name: "AssetType"))
    UpdateAssetResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    UpdateAssetResponse.add_member(:data_set_id, Shapes::ShapeRef.new(shape: Id, location_name: "DataSetId"))
    UpdateAssetResponse.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    UpdateAssetResponse.add_member(:name, Shapes::ShapeRef.new(shape: AssetName, location_name: "Name"))
    UpdateAssetResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: Id, location_name: "RevisionId"))
    UpdateAssetResponse.add_member(:source_id, Shapes::ShapeRef.new(shape: Id, location_name: "SourceId"))
    UpdateAssetResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    UpdateAssetResponse.struct_class = Types::UpdateAssetResponse

    UpdateDataSetRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "DataSetId"))
    UpdateDataSetRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateDataSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    UpdateDataSetRequest.struct_class = Types::UpdateDataSetRequest

    UpdateDataSetResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    UpdateDataSetResponse.add_member(:asset_type, Shapes::ShapeRef.new(shape: AssetType, location_name: "AssetType"))
    UpdateDataSetResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    UpdateDataSetResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateDataSetResponse.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    UpdateDataSetResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    UpdateDataSetResponse.add_member(:origin, Shapes::ShapeRef.new(shape: Origin, location_name: "Origin"))
    UpdateDataSetResponse.add_member(:origin_details, Shapes::ShapeRef.new(shape: OriginDetails, location_name: "OriginDetails"))
    UpdateDataSetResponse.add_member(:source_id, Shapes::ShapeRef.new(shape: Id, location_name: "SourceId"))
    UpdateDataSetResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    UpdateDataSetResponse.struct_class = Types::UpdateDataSetResponse

    UpdateEventActionRequest.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "Action"))
    UpdateEventActionRequest.add_member(:event_action_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "EventActionId"))
    UpdateEventActionRequest.struct_class = Types::UpdateEventActionRequest

    UpdateEventActionResponse.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "Action"))
    UpdateEventActionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    UpdateEventActionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    UpdateEventActionResponse.add_member(:event, Shapes::ShapeRef.new(shape: Event, location_name: "Event"))
    UpdateEventActionResponse.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    UpdateEventActionResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    UpdateEventActionResponse.struct_class = Types::UpdateEventActionResponse

    UpdateRevisionRequest.add_member(:comment, Shapes::ShapeRef.new(shape: __stringMin0Max16384, location_name: "Comment"))
    UpdateRevisionRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "DataSetId"))
    UpdateRevisionRequest.add_member(:finalized, Shapes::ShapeRef.new(shape: __boolean, location_name: "Finalized"))
    UpdateRevisionRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "RevisionId"))
    UpdateRevisionRequest.struct_class = Types::UpdateRevisionRequest

    UpdateRevisionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    UpdateRevisionResponse.add_member(:comment, Shapes::ShapeRef.new(shape: __stringMin0Max16384, location_name: "Comment"))
    UpdateRevisionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    UpdateRevisionResponse.add_member(:data_set_id, Shapes::ShapeRef.new(shape: Id, location_name: "DataSetId"))
    UpdateRevisionResponse.add_member(:finalized, Shapes::ShapeRef.new(shape: __boolean, location_name: "Finalized"))
    UpdateRevisionResponse.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    UpdateRevisionResponse.add_member(:source_id, Shapes::ShapeRef.new(shape: Id, location_name: "SourceId"))
    UpdateRevisionResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    UpdateRevisionResponse.struct_class = Types::UpdateRevisionResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    ValidationException.add_member(:exception_cause, Shapes::ShapeRef.new(shape: ExceptionCause, location_name: "ExceptionCause"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-07-25"

      api.metadata = {
        "apiVersion" => "2017-07-25",
        "endpointPrefix" => "dataexchange",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Data Exchange",
        "serviceId" => "DataExchange",
        "signatureVersion" => "v4",
        "signingName" => "dataexchange",
        "uid" => "dataexchange-2017-07-25",
      }

      api.add_operation(:cancel_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelJob"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/jobs/{JobId}"
        o.input = Shapes::ShapeRef.new(shape: CancelJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_data_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataSet"
        o.http_method = "POST"
        o.http_request_uri = "/v1/data-sets"
        o.input = Shapes::ShapeRef.new(shape: CreateDataSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_event_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEventAction"
        o.http_method = "POST"
        o.http_request_uri = "/v1/event-actions"
        o.input = Shapes::ShapeRef.new(shape: CreateEventActionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEventActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateJob"
        o.http_method = "POST"
        o.http_request_uri = "/v1/jobs"
        o.input = Shapes::ShapeRef.new(shape: CreateJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_revision, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRevision"
        o.http_method = "POST"
        o.http_request_uri = "/v1/data-sets/{DataSetId}/revisions"
        o.input = Shapes::ShapeRef.new(shape: CreateRevisionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRevisionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_asset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAsset"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAssetRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_data_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataSet"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/data-sets/{DataSetId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataSetRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_event_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventAction"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/event-actions/{EventActionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventActionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_revision, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRevision"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/data-sets/{DataSetId}/revisions/{RevisionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRevisionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_asset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAsset"
        o.http_method = "GET"
        o.http_request_uri = "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}"
        o.input = Shapes::ShapeRef.new(shape: GetAssetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAssetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_data_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataSet"
        o.http_method = "GET"
        o.http_request_uri = "/v1/data-sets/{DataSetId}"
        o.input = Shapes::ShapeRef.new(shape: GetDataSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_event_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEventAction"
        o.http_method = "GET"
        o.http_request_uri = "/v1/event-actions/{EventActionId}"
        o.input = Shapes::ShapeRef.new(shape: GetEventActionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEventActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetJob"
        o.http_method = "GET"
        o.http_request_uri = "/v1/jobs/{JobId}"
        o.input = Shapes::ShapeRef.new(shape: GetJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_revision, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRevision"
        o.http_method = "GET"
        o.http_request_uri = "/v1/data-sets/{DataSetId}/revisions/{RevisionId}"
        o.input = Shapes::ShapeRef.new(shape: GetRevisionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRevisionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_data_set_revisions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataSetRevisions"
        o.http_method = "GET"
        o.http_request_uri = "/v1/data-sets/{DataSetId}/revisions"
        o.input = Shapes::ShapeRef.new(shape: ListDataSetRevisionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataSetRevisionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_data_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataSets"
        o.http_method = "GET"
        o.http_request_uri = "/v1/data-sets"
        o.input = Shapes::ShapeRef.new(shape: ListDataSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_event_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventActions"
        o.http_method = "GET"
        o.http_request_uri = "/v1/event-actions"
        o.input = Shapes::ShapeRef.new(shape: ListEventActionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventActionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJobs"
        o.http_method = "GET"
        o.http_request_uri = "/v1/jobs"
        o.input = Shapes::ShapeRef.new(shape: ListJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_revision_assets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRevisionAssets"
        o.http_method = "GET"
        o.http_request_uri = "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets"
        o.input = Shapes::ShapeRef.new(shape: ListRevisionAssetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRevisionAssetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resource-arn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
      end)

      api.add_operation(:send_api_asset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendApiAsset"
        o.http_method = "POST"
        o.http_request_uri = "/v1"
        o.endpoint_pattern = {
          "hostPrefix" => "api-fulfill.",
        }
        o.input = Shapes::ShapeRef.new(shape: SendApiAssetRequest)
        o.output = Shapes::ShapeRef.new(shape: SendApiAssetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartJob"
        o.http_method = "PATCH"
        o.http_request_uri = "/v1/jobs/{JobId}"
        o.input = Shapes::ShapeRef.new(shape: StartJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resource-arn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resource-arn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:update_asset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAsset"
        o.http_method = "PATCH"
        o.http_request_uri = "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAssetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAssetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_data_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataSet"
        o.http_method = "PATCH"
        o.http_request_uri = "/v1/data-sets/{DataSetId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_event_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEventAction"
        o.http_method = "PATCH"
        o.http_request_uri = "/v1/event-actions/{EventActionId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateEventActionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEventActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_revision, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRevision"
        o.http_method = "PATCH"
        o.http_request_uri = "/v1/data-sets/{DataSetId}/revisions/{RevisionId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRevisionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRevisionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
