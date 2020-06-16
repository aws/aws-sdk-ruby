# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::QLDB
  # @api private
  module ClientApi

    include Seahorse::Model

    Arn = Shapes::StringShape.new(name: 'Arn')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CancelJournalKinesisStreamRequest = Shapes::StructureShape.new(name: 'CancelJournalKinesisStreamRequest')
    CancelJournalKinesisStreamResponse = Shapes::StructureShape.new(name: 'CancelJournalKinesisStreamResponse')
    CreateLedgerRequest = Shapes::StructureShape.new(name: 'CreateLedgerRequest')
    CreateLedgerResponse = Shapes::StructureShape.new(name: 'CreateLedgerResponse')
    DeleteLedgerRequest = Shapes::StructureShape.new(name: 'DeleteLedgerRequest')
    DeletionProtection = Shapes::BooleanShape.new(name: 'DeletionProtection')
    DescribeJournalKinesisStreamRequest = Shapes::StructureShape.new(name: 'DescribeJournalKinesisStreamRequest')
    DescribeJournalKinesisStreamResponse = Shapes::StructureShape.new(name: 'DescribeJournalKinesisStreamResponse')
    DescribeJournalS3ExportRequest = Shapes::StructureShape.new(name: 'DescribeJournalS3ExportRequest')
    DescribeJournalS3ExportResponse = Shapes::StructureShape.new(name: 'DescribeJournalS3ExportResponse')
    DescribeLedgerRequest = Shapes::StructureShape.new(name: 'DescribeLedgerRequest')
    DescribeLedgerResponse = Shapes::StructureShape.new(name: 'DescribeLedgerResponse')
    Digest = Shapes::BlobShape.new(name: 'Digest')
    ErrorCause = Shapes::StringShape.new(name: 'ErrorCause')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExportJournalToS3Request = Shapes::StructureShape.new(name: 'ExportJournalToS3Request')
    ExportJournalToS3Response = Shapes::StructureShape.new(name: 'ExportJournalToS3Response')
    ExportStatus = Shapes::StringShape.new(name: 'ExportStatus')
    GetBlockRequest = Shapes::StructureShape.new(name: 'GetBlockRequest')
    GetBlockResponse = Shapes::StructureShape.new(name: 'GetBlockResponse')
    GetDigestRequest = Shapes::StructureShape.new(name: 'GetDigestRequest')
    GetDigestResponse = Shapes::StructureShape.new(name: 'GetDigestResponse')
    GetRevisionRequest = Shapes::StructureShape.new(name: 'GetRevisionRequest')
    GetRevisionResponse = Shapes::StructureShape.new(name: 'GetRevisionResponse')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    IonText = Shapes::StringShape.new(name: 'IonText')
    JournalKinesisStreamDescription = Shapes::StructureShape.new(name: 'JournalKinesisStreamDescription')
    JournalKinesisStreamDescriptionList = Shapes::ListShape.new(name: 'JournalKinesisStreamDescriptionList')
    JournalS3ExportDescription = Shapes::StructureShape.new(name: 'JournalS3ExportDescription')
    JournalS3ExportList = Shapes::ListShape.new(name: 'JournalS3ExportList')
    KinesisConfiguration = Shapes::StructureShape.new(name: 'KinesisConfiguration')
    LedgerList = Shapes::ListShape.new(name: 'LedgerList')
    LedgerName = Shapes::StringShape.new(name: 'LedgerName')
    LedgerState = Shapes::StringShape.new(name: 'LedgerState')
    LedgerSummary = Shapes::StructureShape.new(name: 'LedgerSummary')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListJournalKinesisStreamsForLedgerRequest = Shapes::StructureShape.new(name: 'ListJournalKinesisStreamsForLedgerRequest')
    ListJournalKinesisStreamsForLedgerResponse = Shapes::StructureShape.new(name: 'ListJournalKinesisStreamsForLedgerResponse')
    ListJournalS3ExportsForLedgerRequest = Shapes::StructureShape.new(name: 'ListJournalS3ExportsForLedgerRequest')
    ListJournalS3ExportsForLedgerResponse = Shapes::StructureShape.new(name: 'ListJournalS3ExportsForLedgerResponse')
    ListJournalS3ExportsRequest = Shapes::StructureShape.new(name: 'ListJournalS3ExportsRequest')
    ListJournalS3ExportsResponse = Shapes::StructureShape.new(name: 'ListJournalS3ExportsResponse')
    ListLedgersRequest = Shapes::StructureShape.new(name: 'ListLedgersRequest')
    ListLedgersResponse = Shapes::StructureShape.new(name: 'ListLedgersResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ParameterName = Shapes::StringShape.new(name: 'ParameterName')
    PermissionsMode = Shapes::StringShape.new(name: 'PermissionsMode')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePreconditionNotMetException = Shapes::StructureShape.new(name: 'ResourcePreconditionNotMetException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3EncryptionConfiguration = Shapes::StructureShape.new(name: 'S3EncryptionConfiguration')
    S3ExportConfiguration = Shapes::StructureShape.new(name: 'S3ExportConfiguration')
    S3ObjectEncryptionType = Shapes::StringShape.new(name: 'S3ObjectEncryptionType')
    S3Prefix = Shapes::StringShape.new(name: 'S3Prefix')
    StreamJournalToKinesisRequest = Shapes::StructureShape.new(name: 'StreamJournalToKinesisRequest')
    StreamJournalToKinesisResponse = Shapes::StructureShape.new(name: 'StreamJournalToKinesisResponse')
    StreamName = Shapes::StringShape.new(name: 'StreamName')
    StreamStatus = Shapes::StringShape.new(name: 'StreamStatus')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UniqueId = Shapes::StringShape.new(name: 'UniqueId')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateLedgerRequest = Shapes::StructureShape.new(name: 'UpdateLedgerRequest')
    UpdateLedgerResponse = Shapes::StructureShape.new(name: 'UpdateLedgerResponse')
    ValueHolder = Shapes::StructureShape.new(name: 'ValueHolder')

    CancelJournalKinesisStreamRequest.add_member(:ledger_name, Shapes::ShapeRef.new(shape: LedgerName, required: true, location: "uri", location_name: "name"))
    CancelJournalKinesisStreamRequest.add_member(:stream_id, Shapes::ShapeRef.new(shape: UniqueId, required: true, location: "uri", location_name: "streamId"))
    CancelJournalKinesisStreamRequest.struct_class = Types::CancelJournalKinesisStreamRequest

    CancelJournalKinesisStreamResponse.add_member(:stream_id, Shapes::ShapeRef.new(shape: UniqueId, location_name: "StreamId"))
    CancelJournalKinesisStreamResponse.struct_class = Types::CancelJournalKinesisStreamResponse

    CreateLedgerRequest.add_member(:name, Shapes::ShapeRef.new(shape: LedgerName, required: true, location_name: "Name"))
    CreateLedgerRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateLedgerRequest.add_member(:permissions_mode, Shapes::ShapeRef.new(shape: PermissionsMode, required: true, location_name: "PermissionsMode"))
    CreateLedgerRequest.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: DeletionProtection, location_name: "DeletionProtection"))
    CreateLedgerRequest.struct_class = Types::CreateLedgerRequest

    CreateLedgerResponse.add_member(:name, Shapes::ShapeRef.new(shape: LedgerName, location_name: "Name"))
    CreateLedgerResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CreateLedgerResponse.add_member(:state, Shapes::ShapeRef.new(shape: LedgerState, location_name: "State"))
    CreateLedgerResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationDateTime"))
    CreateLedgerResponse.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: DeletionProtection, location_name: "DeletionProtection"))
    CreateLedgerResponse.struct_class = Types::CreateLedgerResponse

    DeleteLedgerRequest.add_member(:name, Shapes::ShapeRef.new(shape: LedgerName, required: true, location: "uri", location_name: "name"))
    DeleteLedgerRequest.struct_class = Types::DeleteLedgerRequest

    DescribeJournalKinesisStreamRequest.add_member(:ledger_name, Shapes::ShapeRef.new(shape: LedgerName, required: true, location: "uri", location_name: "name"))
    DescribeJournalKinesisStreamRequest.add_member(:stream_id, Shapes::ShapeRef.new(shape: UniqueId, required: true, location: "uri", location_name: "streamId"))
    DescribeJournalKinesisStreamRequest.struct_class = Types::DescribeJournalKinesisStreamRequest

    DescribeJournalKinesisStreamResponse.add_member(:stream, Shapes::ShapeRef.new(shape: JournalKinesisStreamDescription, location_name: "Stream"))
    DescribeJournalKinesisStreamResponse.struct_class = Types::DescribeJournalKinesisStreamResponse

    DescribeJournalS3ExportRequest.add_member(:name, Shapes::ShapeRef.new(shape: LedgerName, required: true, location: "uri", location_name: "name"))
    DescribeJournalS3ExportRequest.add_member(:export_id, Shapes::ShapeRef.new(shape: UniqueId, required: true, location: "uri", location_name: "exportId"))
    DescribeJournalS3ExportRequest.struct_class = Types::DescribeJournalS3ExportRequest

    DescribeJournalS3ExportResponse.add_member(:export_description, Shapes::ShapeRef.new(shape: JournalS3ExportDescription, required: true, location_name: "ExportDescription"))
    DescribeJournalS3ExportResponse.struct_class = Types::DescribeJournalS3ExportResponse

    DescribeLedgerRequest.add_member(:name, Shapes::ShapeRef.new(shape: LedgerName, required: true, location: "uri", location_name: "name"))
    DescribeLedgerRequest.struct_class = Types::DescribeLedgerRequest

    DescribeLedgerResponse.add_member(:name, Shapes::ShapeRef.new(shape: LedgerName, location_name: "Name"))
    DescribeLedgerResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DescribeLedgerResponse.add_member(:state, Shapes::ShapeRef.new(shape: LedgerState, location_name: "State"))
    DescribeLedgerResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationDateTime"))
    DescribeLedgerResponse.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: DeletionProtection, location_name: "DeletionProtection"))
    DescribeLedgerResponse.struct_class = Types::DescribeLedgerResponse

    ExportJournalToS3Request.add_member(:name, Shapes::ShapeRef.new(shape: LedgerName, required: true, location: "uri", location_name: "name"))
    ExportJournalToS3Request.add_member(:inclusive_start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "InclusiveStartTime"))
    ExportJournalToS3Request.add_member(:exclusive_end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ExclusiveEndTime"))
    ExportJournalToS3Request.add_member(:s3_export_configuration, Shapes::ShapeRef.new(shape: S3ExportConfiguration, required: true, location_name: "S3ExportConfiguration"))
    ExportJournalToS3Request.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoleArn"))
    ExportJournalToS3Request.struct_class = Types::ExportJournalToS3Request

    ExportJournalToS3Response.add_member(:export_id, Shapes::ShapeRef.new(shape: UniqueId, required: true, location_name: "ExportId"))
    ExportJournalToS3Response.struct_class = Types::ExportJournalToS3Response

    GetBlockRequest.add_member(:name, Shapes::ShapeRef.new(shape: LedgerName, required: true, location: "uri", location_name: "name"))
    GetBlockRequest.add_member(:block_address, Shapes::ShapeRef.new(shape: ValueHolder, required: true, location_name: "BlockAddress"))
    GetBlockRequest.add_member(:digest_tip_address, Shapes::ShapeRef.new(shape: ValueHolder, location_name: "DigestTipAddress"))
    GetBlockRequest.struct_class = Types::GetBlockRequest

    GetBlockResponse.add_member(:block, Shapes::ShapeRef.new(shape: ValueHolder, required: true, location_name: "Block"))
    GetBlockResponse.add_member(:proof, Shapes::ShapeRef.new(shape: ValueHolder, location_name: "Proof"))
    GetBlockResponse.struct_class = Types::GetBlockResponse

    GetDigestRequest.add_member(:name, Shapes::ShapeRef.new(shape: LedgerName, required: true, location: "uri", location_name: "name"))
    GetDigestRequest.struct_class = Types::GetDigestRequest

    GetDigestResponse.add_member(:digest, Shapes::ShapeRef.new(shape: Digest, required: true, location_name: "Digest"))
    GetDigestResponse.add_member(:digest_tip_address, Shapes::ShapeRef.new(shape: ValueHolder, required: true, location_name: "DigestTipAddress"))
    GetDigestResponse.struct_class = Types::GetDigestResponse

    GetRevisionRequest.add_member(:name, Shapes::ShapeRef.new(shape: LedgerName, required: true, location: "uri", location_name: "name"))
    GetRevisionRequest.add_member(:block_address, Shapes::ShapeRef.new(shape: ValueHolder, required: true, location_name: "BlockAddress"))
    GetRevisionRequest.add_member(:document_id, Shapes::ShapeRef.new(shape: UniqueId, required: true, location_name: "DocumentId"))
    GetRevisionRequest.add_member(:digest_tip_address, Shapes::ShapeRef.new(shape: ValueHolder, location_name: "DigestTipAddress"))
    GetRevisionRequest.struct_class = Types::GetRevisionRequest

    GetRevisionResponse.add_member(:proof, Shapes::ShapeRef.new(shape: ValueHolder, location_name: "Proof"))
    GetRevisionResponse.add_member(:revision, Shapes::ShapeRef.new(shape: ValueHolder, required: true, location_name: "Revision"))
    GetRevisionResponse.struct_class = Types::GetRevisionResponse

    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidParameterException.add_member(:parameter_name, Shapes::ShapeRef.new(shape: ParameterName, location_name: "ParameterName"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    JournalKinesisStreamDescription.add_member(:ledger_name, Shapes::ShapeRef.new(shape: LedgerName, required: true, location_name: "LedgerName"))
    JournalKinesisStreamDescription.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    JournalKinesisStreamDescription.add_member(:inclusive_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "InclusiveStartTime"))
    JournalKinesisStreamDescription.add_member(:exclusive_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExclusiveEndTime"))
    JournalKinesisStreamDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoleArn"))
    JournalKinesisStreamDescription.add_member(:stream_id, Shapes::ShapeRef.new(shape: UniqueId, required: true, location_name: "StreamId"))
    JournalKinesisStreamDescription.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    JournalKinesisStreamDescription.add_member(:status, Shapes::ShapeRef.new(shape: StreamStatus, required: true, location_name: "Status"))
    JournalKinesisStreamDescription.add_member(:kinesis_configuration, Shapes::ShapeRef.new(shape: KinesisConfiguration, required: true, location_name: "KinesisConfiguration"))
    JournalKinesisStreamDescription.add_member(:error_cause, Shapes::ShapeRef.new(shape: ErrorCause, location_name: "ErrorCause"))
    JournalKinesisStreamDescription.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    JournalKinesisStreamDescription.struct_class = Types::JournalKinesisStreamDescription

    JournalKinesisStreamDescriptionList.member = Shapes::ShapeRef.new(shape: JournalKinesisStreamDescription)

    JournalS3ExportDescription.add_member(:ledger_name, Shapes::ShapeRef.new(shape: LedgerName, required: true, location_name: "LedgerName"))
    JournalS3ExportDescription.add_member(:export_id, Shapes::ShapeRef.new(shape: UniqueId, required: true, location_name: "ExportId"))
    JournalS3ExportDescription.add_member(:export_creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ExportCreationTime"))
    JournalS3ExportDescription.add_member(:status, Shapes::ShapeRef.new(shape: ExportStatus, required: true, location_name: "Status"))
    JournalS3ExportDescription.add_member(:inclusive_start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "InclusiveStartTime"))
    JournalS3ExportDescription.add_member(:exclusive_end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ExclusiveEndTime"))
    JournalS3ExportDescription.add_member(:s3_export_configuration, Shapes::ShapeRef.new(shape: S3ExportConfiguration, required: true, location_name: "S3ExportConfiguration"))
    JournalS3ExportDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoleArn"))
    JournalS3ExportDescription.struct_class = Types::JournalS3ExportDescription

    JournalS3ExportList.member = Shapes::ShapeRef.new(shape: JournalS3ExportDescription)

    KinesisConfiguration.add_member(:stream_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "StreamArn"))
    KinesisConfiguration.add_member(:aggregation_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "AggregationEnabled"))
    KinesisConfiguration.struct_class = Types::KinesisConfiguration

    LedgerList.member = Shapes::ShapeRef.new(shape: LedgerSummary)

    LedgerSummary.add_member(:name, Shapes::ShapeRef.new(shape: LedgerName, location_name: "Name"))
    LedgerSummary.add_member(:state, Shapes::ShapeRef.new(shape: LedgerState, location_name: "State"))
    LedgerSummary.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationDateTime"))
    LedgerSummary.struct_class = Types::LedgerSummary

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    LimitExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListJournalKinesisStreamsForLedgerRequest.add_member(:ledger_name, Shapes::ShapeRef.new(shape: LedgerName, required: true, location: "uri", location_name: "name"))
    ListJournalKinesisStreamsForLedgerRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max_results"))
    ListJournalKinesisStreamsForLedgerRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next_token"))
    ListJournalKinesisStreamsForLedgerRequest.struct_class = Types::ListJournalKinesisStreamsForLedgerRequest

    ListJournalKinesisStreamsForLedgerResponse.add_member(:streams, Shapes::ShapeRef.new(shape: JournalKinesisStreamDescriptionList, location_name: "Streams"))
    ListJournalKinesisStreamsForLedgerResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListJournalKinesisStreamsForLedgerResponse.struct_class = Types::ListJournalKinesisStreamsForLedgerResponse

    ListJournalS3ExportsForLedgerRequest.add_member(:name, Shapes::ShapeRef.new(shape: LedgerName, required: true, location: "uri", location_name: "name"))
    ListJournalS3ExportsForLedgerRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max_results"))
    ListJournalS3ExportsForLedgerRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next_token"))
    ListJournalS3ExportsForLedgerRequest.struct_class = Types::ListJournalS3ExportsForLedgerRequest

    ListJournalS3ExportsForLedgerResponse.add_member(:journal_s3_exports, Shapes::ShapeRef.new(shape: JournalS3ExportList, location_name: "JournalS3Exports"))
    ListJournalS3ExportsForLedgerResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListJournalS3ExportsForLedgerResponse.struct_class = Types::ListJournalS3ExportsForLedgerResponse

    ListJournalS3ExportsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max_results"))
    ListJournalS3ExportsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next_token"))
    ListJournalS3ExportsRequest.struct_class = Types::ListJournalS3ExportsRequest

    ListJournalS3ExportsResponse.add_member(:journal_s3_exports, Shapes::ShapeRef.new(shape: JournalS3ExportList, location_name: "JournalS3Exports"))
    ListJournalS3ExportsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListJournalS3ExportsResponse.struct_class = Types::ListJournalS3ExportsResponse

    ListLedgersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max_results"))
    ListLedgersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next_token"))
    ListLedgersRequest.struct_class = Types::ListLedgersRequest

    ListLedgersResponse.add_member(:ledgers, Shapes::ShapeRef.new(shape: LedgerList, location_name: "Ledgers"))
    ListLedgersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLedgersResponse.struct_class = Types::ListLedgersResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ResourceAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceAlreadyExistsException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceAlreadyExistsException.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ResourceName"))
    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceInUseException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceInUseException.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ResourceName"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceNotFoundException.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ResourceName"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourcePreconditionNotMetException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourcePreconditionNotMetException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourcePreconditionNotMetException.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ResourceName"))
    ResourcePreconditionNotMetException.struct_class = Types::ResourcePreconditionNotMetException

    S3EncryptionConfiguration.add_member(:object_encryption_type, Shapes::ShapeRef.new(shape: S3ObjectEncryptionType, required: true, location_name: "ObjectEncryptionType"))
    S3EncryptionConfiguration.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "KmsKeyArn"))
    S3EncryptionConfiguration.struct_class = Types::S3EncryptionConfiguration

    S3ExportConfiguration.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "Bucket"))
    S3ExportConfiguration.add_member(:prefix, Shapes::ShapeRef.new(shape: S3Prefix, required: true, location_name: "Prefix"))
    S3ExportConfiguration.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: S3EncryptionConfiguration, required: true, location_name: "EncryptionConfiguration"))
    S3ExportConfiguration.struct_class = Types::S3ExportConfiguration

    StreamJournalToKinesisRequest.add_member(:ledger_name, Shapes::ShapeRef.new(shape: LedgerName, required: true, location: "uri", location_name: "name"))
    StreamJournalToKinesisRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoleArn"))
    StreamJournalToKinesisRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    StreamJournalToKinesisRequest.add_member(:inclusive_start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "InclusiveStartTime"))
    StreamJournalToKinesisRequest.add_member(:exclusive_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExclusiveEndTime"))
    StreamJournalToKinesisRequest.add_member(:kinesis_configuration, Shapes::ShapeRef.new(shape: KinesisConfiguration, required: true, location_name: "KinesisConfiguration"))
    StreamJournalToKinesisRequest.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    StreamJournalToKinesisRequest.struct_class = Types::StreamJournalToKinesisRequest

    StreamJournalToKinesisResponse.add_member(:stream_id, Shapes::ShapeRef.new(shape: UniqueId, location_name: "StreamId"))
    StreamJournalToKinesisResponse.struct_class = Types::StreamJournalToKinesisResponse

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateLedgerRequest.add_member(:name, Shapes::ShapeRef.new(shape: LedgerName, required: true, location: "uri", location_name: "name"))
    UpdateLedgerRequest.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: DeletionProtection, location_name: "DeletionProtection"))
    UpdateLedgerRequest.struct_class = Types::UpdateLedgerRequest

    UpdateLedgerResponse.add_member(:name, Shapes::ShapeRef.new(shape: LedgerName, location_name: "Name"))
    UpdateLedgerResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    UpdateLedgerResponse.add_member(:state, Shapes::ShapeRef.new(shape: LedgerState, location_name: "State"))
    UpdateLedgerResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationDateTime"))
    UpdateLedgerResponse.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: DeletionProtection, location_name: "DeletionProtection"))
    UpdateLedgerResponse.struct_class = Types::UpdateLedgerResponse

    ValueHolder.add_member(:ion_text, Shapes::ShapeRef.new(shape: IonText, location_name: "IonText"))
    ValueHolder.struct_class = Types::ValueHolder


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-01-02"

      api.metadata = {
        "apiVersion" => "2019-01-02",
        "endpointPrefix" => "qldb",
        "jsonVersion" => "1.0",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "QLDB",
        "serviceFullName" => "Amazon QLDB",
        "serviceId" => "QLDB",
        "signatureVersion" => "v4",
        "signingName" => "qldb",
        "uid" => "qldb-2019-01-02",
      }

      api.add_operation(:cancel_journal_kinesis_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelJournalKinesisStream"
        o.http_method = "DELETE"
        o.http_request_uri = "/ledgers/{name}/journal-kinesis-streams/{streamId}"
        o.input = Shapes::ShapeRef.new(shape: CancelJournalKinesisStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelJournalKinesisStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourcePreconditionNotMetException)
      end)

      api.add_operation(:create_ledger, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLedger"
        o.http_method = "POST"
        o.http_request_uri = "/ledgers"
        o.input = Shapes::ShapeRef.new(shape: CreateLedgerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLedgerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_ledger, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLedger"
        o.http_method = "DELETE"
        o.http_request_uri = "/ledgers/{name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteLedgerRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourcePreconditionNotMetException)
      end)

      api.add_operation(:describe_journal_kinesis_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeJournalKinesisStream"
        o.http_method = "GET"
        o.http_request_uri = "/ledgers/{name}/journal-kinesis-streams/{streamId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeJournalKinesisStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeJournalKinesisStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourcePreconditionNotMetException)
      end)

      api.add_operation(:describe_journal_s3_export, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeJournalS3Export"
        o.http_method = "GET"
        o.http_request_uri = "/ledgers/{name}/journal-s3-exports/{exportId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeJournalS3ExportRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeJournalS3ExportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_ledger, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLedger"
        o.http_method = "GET"
        o.http_request_uri = "/ledgers/{name}"
        o.input = Shapes::ShapeRef.new(shape: DescribeLedgerRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLedgerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:export_journal_to_s3, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportJournalToS3"
        o.http_method = "POST"
        o.http_request_uri = "/ledgers/{name}/journal-s3-exports"
        o.input = Shapes::ShapeRef.new(shape: ExportJournalToS3Request)
        o.output = Shapes::ShapeRef.new(shape: ExportJournalToS3Response)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourcePreconditionNotMetException)
      end)

      api.add_operation(:get_block, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBlock"
        o.http_method = "POST"
        o.http_request_uri = "/ledgers/{name}/block"
        o.input = Shapes::ShapeRef.new(shape: GetBlockRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBlockResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourcePreconditionNotMetException)
      end)

      api.add_operation(:get_digest, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDigest"
        o.http_method = "POST"
        o.http_request_uri = "/ledgers/{name}/digest"
        o.input = Shapes::ShapeRef.new(shape: GetDigestRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDigestResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourcePreconditionNotMetException)
      end)

      api.add_operation(:get_revision, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRevision"
        o.http_method = "POST"
        o.http_request_uri = "/ledgers/{name}/revision"
        o.input = Shapes::ShapeRef.new(shape: GetRevisionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRevisionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourcePreconditionNotMetException)
      end)

      api.add_operation(:list_journal_kinesis_streams_for_ledger, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJournalKinesisStreamsForLedger"
        o.http_method = "GET"
        o.http_request_uri = "/ledgers/{name}/journal-kinesis-streams"
        o.input = Shapes::ShapeRef.new(shape: ListJournalKinesisStreamsForLedgerRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJournalKinesisStreamsForLedgerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourcePreconditionNotMetException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_journal_s3_exports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJournalS3Exports"
        o.http_method = "GET"
        o.http_request_uri = "/journal-s3-exports"
        o.input = Shapes::ShapeRef.new(shape: ListJournalS3ExportsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJournalS3ExportsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_journal_s3_exports_for_ledger, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJournalS3ExportsForLedger"
        o.http_method = "GET"
        o.http_request_uri = "/ledgers/{name}/journal-s3-exports"
        o.input = Shapes::ShapeRef.new(shape: ListJournalS3ExportsForLedgerRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJournalS3ExportsForLedgerResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_ledgers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLedgers"
        o.http_method = "GET"
        o.http_request_uri = "/ledgers"
        o.input = Shapes::ShapeRef.new(shape: ListLedgersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLedgersResponse)
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
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:stream_journal_to_kinesis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StreamJournalToKinesis"
        o.http_method = "POST"
        o.http_request_uri = "/ledgers/{name}/journal-kinesis-streams"
        o.input = Shapes::ShapeRef.new(shape: StreamJournalToKinesisRequest)
        o.output = Shapes::ShapeRef.new(shape: StreamJournalToKinesisResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourcePreconditionNotMetException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_ledger, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLedger"
        o.http_method = "PATCH"
        o.http_request_uri = "/ledgers/{name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateLedgerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLedgerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
