# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EBS
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessDeniedExceptionReason = Shapes::StringShape.new(name: 'AccessDeniedExceptionReason')
    Block = Shapes::StructureShape.new(name: 'Block')
    BlockData = Shapes::BlobShape.new(name: 'BlockData', streaming: true)
    BlockIndex = Shapes::IntegerShape.new(name: 'BlockIndex')
    BlockSize = Shapes::IntegerShape.new(name: 'BlockSize')
    BlockToken = Shapes::StringShape.new(name: 'BlockToken')
    Blocks = Shapes::ListShape.new(name: 'Blocks')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ChangedBlock = Shapes::StructureShape.new(name: 'ChangedBlock')
    ChangedBlocks = Shapes::ListShape.new(name: 'ChangedBlocks')
    ChangedBlocksCount = Shapes::IntegerShape.new(name: 'ChangedBlocksCount')
    Checksum = Shapes::StringShape.new(name: 'Checksum')
    ChecksumAggregationMethod = Shapes::StringShape.new(name: 'ChecksumAggregationMethod')
    ChecksumAlgorithm = Shapes::StringShape.new(name: 'ChecksumAlgorithm')
    CompleteSnapshotRequest = Shapes::StructureShape.new(name: 'CompleteSnapshotRequest')
    CompleteSnapshotResponse = Shapes::StructureShape.new(name: 'CompleteSnapshotResponse')
    ConcurrentLimitExceededException = Shapes::StructureShape.new(name: 'ConcurrentLimitExceededException')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    DataLength = Shapes::IntegerShape.new(name: 'DataLength')
    Description = Shapes::StringShape.new(name: 'Description')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GetSnapshotBlockRequest = Shapes::StructureShape.new(name: 'GetSnapshotBlockRequest')
    GetSnapshotBlockResponse = Shapes::StructureShape.new(name: 'GetSnapshotBlockResponse')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    ListChangedBlocksRequest = Shapes::StructureShape.new(name: 'ListChangedBlocksRequest')
    ListChangedBlocksResponse = Shapes::StructureShape.new(name: 'ListChangedBlocksResponse')
    ListSnapshotBlocksRequest = Shapes::StructureShape.new(name: 'ListSnapshotBlocksRequest')
    ListSnapshotBlocksResponse = Shapes::StructureShape.new(name: 'ListSnapshotBlocksResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    OwnerId = Shapes::StringShape.new(name: 'OwnerId')
    PageToken = Shapes::StringShape.new(name: 'PageToken')
    Progress = Shapes::IntegerShape.new(name: 'Progress')
    PutSnapshotBlockRequest = Shapes::StructureShape.new(name: 'PutSnapshotBlockRequest')
    PutSnapshotBlockResponse = Shapes::StructureShape.new(name: 'PutSnapshotBlockResponse')
    RequestThrottledException = Shapes::StructureShape.new(name: 'RequestThrottledException')
    RequestThrottledExceptionReason = Shapes::StringShape.new(name: 'RequestThrottledExceptionReason')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceNotFoundExceptionReason = Shapes::StringShape.new(name: 'ResourceNotFoundExceptionReason')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceQuotaExceededExceptionReason = Shapes::StringShape.new(name: 'ServiceQuotaExceededExceptionReason')
    SnapshotId = Shapes::StringShape.new(name: 'SnapshotId')
    StartSnapshotRequest = Shapes::StructureShape.new(name: 'StartSnapshotRequest')
    StartSnapshotResponse = Shapes::StructureShape.new(name: 'StartSnapshotResponse')
    Status = Shapes::StringShape.new(name: 'Status')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    TimeStamp = Shapes::TimestampShape.new(name: 'TimeStamp')
    Timeout = Shapes::IntegerShape.new(name: 'Timeout')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VolumeSize = Shapes::IntegerShape.new(name: 'VolumeSize')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccessDeniedException.add_member(:reason, Shapes::ShapeRef.new(shape: AccessDeniedExceptionReason, required: true, location_name: "Reason"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Block.add_member(:block_index, Shapes::ShapeRef.new(shape: BlockIndex, location_name: "BlockIndex"))
    Block.add_member(:block_token, Shapes::ShapeRef.new(shape: BlockToken, location_name: "BlockToken"))
    Block.struct_class = Types::Block

    Blocks.member = Shapes::ShapeRef.new(shape: Block)

    ChangedBlock.add_member(:block_index, Shapes::ShapeRef.new(shape: BlockIndex, location_name: "BlockIndex"))
    ChangedBlock.add_member(:first_block_token, Shapes::ShapeRef.new(shape: BlockToken, location_name: "FirstBlockToken"))
    ChangedBlock.add_member(:second_block_token, Shapes::ShapeRef.new(shape: BlockToken, location_name: "SecondBlockToken"))
    ChangedBlock.struct_class = Types::ChangedBlock

    ChangedBlocks.member = Shapes::ShapeRef.new(shape: ChangedBlock)

    CompleteSnapshotRequest.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, required: true, location: "uri", location_name: "snapshotId"))
    CompleteSnapshotRequest.add_member(:changed_blocks_count, Shapes::ShapeRef.new(shape: ChangedBlocksCount, required: true, location: "header", location_name: "x-amz-ChangedBlocksCount"))
    CompleteSnapshotRequest.add_member(:checksum, Shapes::ShapeRef.new(shape: Checksum, location: "header", location_name: "x-amz-Checksum"))
    CompleteSnapshotRequest.add_member(:checksum_algorithm, Shapes::ShapeRef.new(shape: ChecksumAlgorithm, location: "header", location_name: "x-amz-Checksum-Algorithm"))
    CompleteSnapshotRequest.add_member(:checksum_aggregation_method, Shapes::ShapeRef.new(shape: ChecksumAggregationMethod, location: "header", location_name: "x-amz-Checksum-Aggregation-Method"))
    CompleteSnapshotRequest.struct_class = Types::CompleteSnapshotRequest

    CompleteSnapshotResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    CompleteSnapshotResponse.struct_class = Types::CompleteSnapshotResponse

    ConcurrentLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConcurrentLimitExceededException.struct_class = Types::ConcurrentLimitExceededException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    GetSnapshotBlockRequest.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, required: true, location: "uri", location_name: "snapshotId"))
    GetSnapshotBlockRequest.add_member(:block_index, Shapes::ShapeRef.new(shape: BlockIndex, required: true, location: "uri", location_name: "blockIndex"))
    GetSnapshotBlockRequest.add_member(:block_token, Shapes::ShapeRef.new(shape: BlockToken, required: true, location: "querystring", location_name: "blockToken"))
    GetSnapshotBlockRequest.struct_class = Types::GetSnapshotBlockRequest

    GetSnapshotBlockResponse.add_member(:data_length, Shapes::ShapeRef.new(shape: DataLength, location: "header", location_name: "x-amz-Data-Length"))
    GetSnapshotBlockResponse.add_member(:block_data, Shapes::ShapeRef.new(shape: BlockData, location_name: "BlockData"))
    GetSnapshotBlockResponse.add_member(:checksum, Shapes::ShapeRef.new(shape: Checksum, location: "header", location_name: "x-amz-Checksum"))
    GetSnapshotBlockResponse.add_member(:checksum_algorithm, Shapes::ShapeRef.new(shape: ChecksumAlgorithm, location: "header", location_name: "x-amz-Checksum-Algorithm"))
    GetSnapshotBlockResponse.struct_class = Types::GetSnapshotBlockResponse
    GetSnapshotBlockResponse[:payload] = :block_data
    GetSnapshotBlockResponse[:payload_member] = GetSnapshotBlockResponse.member(:block_data)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListChangedBlocksRequest.add_member(:first_snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location: "querystring", location_name: "firstSnapshotId"))
    ListChangedBlocksRequest.add_member(:second_snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, required: true, location: "uri", location_name: "secondSnapshotId"))
    ListChangedBlocksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location: "querystring", location_name: "pageToken"))
    ListChangedBlocksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListChangedBlocksRequest.add_member(:starting_block_index, Shapes::ShapeRef.new(shape: BlockIndex, location: "querystring", location_name: "startingBlockIndex"))
    ListChangedBlocksRequest.struct_class = Types::ListChangedBlocksRequest

    ListChangedBlocksResponse.add_member(:changed_blocks, Shapes::ShapeRef.new(shape: ChangedBlocks, location_name: "ChangedBlocks"))
    ListChangedBlocksResponse.add_member(:expiry_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "ExpiryTime"))
    ListChangedBlocksResponse.add_member(:volume_size, Shapes::ShapeRef.new(shape: VolumeSize, location_name: "VolumeSize"))
    ListChangedBlocksResponse.add_member(:block_size, Shapes::ShapeRef.new(shape: BlockSize, location_name: "BlockSize"))
    ListChangedBlocksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextToken"))
    ListChangedBlocksResponse.struct_class = Types::ListChangedBlocksResponse

    ListSnapshotBlocksRequest.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, required: true, location: "uri", location_name: "snapshotId"))
    ListSnapshotBlocksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location: "querystring", location_name: "pageToken"))
    ListSnapshotBlocksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSnapshotBlocksRequest.add_member(:starting_block_index, Shapes::ShapeRef.new(shape: BlockIndex, location: "querystring", location_name: "startingBlockIndex"))
    ListSnapshotBlocksRequest.struct_class = Types::ListSnapshotBlocksRequest

    ListSnapshotBlocksResponse.add_member(:blocks, Shapes::ShapeRef.new(shape: Blocks, location_name: "Blocks"))
    ListSnapshotBlocksResponse.add_member(:expiry_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "ExpiryTime"))
    ListSnapshotBlocksResponse.add_member(:volume_size, Shapes::ShapeRef.new(shape: VolumeSize, location_name: "VolumeSize"))
    ListSnapshotBlocksResponse.add_member(:block_size, Shapes::ShapeRef.new(shape: BlockSize, location_name: "BlockSize"))
    ListSnapshotBlocksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextToken"))
    ListSnapshotBlocksResponse.struct_class = Types::ListSnapshotBlocksResponse

    PutSnapshotBlockRequest.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, required: true, location: "uri", location_name: "snapshotId"))
    PutSnapshotBlockRequest.add_member(:block_index, Shapes::ShapeRef.new(shape: BlockIndex, required: true, location: "uri", location_name: "blockIndex"))
    PutSnapshotBlockRequest.add_member(:block_data, Shapes::ShapeRef.new(shape: BlockData, required: true, location_name: "BlockData"))
    PutSnapshotBlockRequest.add_member(:data_length, Shapes::ShapeRef.new(shape: DataLength, required: true, location: "header", location_name: "x-amz-Data-Length"))
    PutSnapshotBlockRequest.add_member(:progress, Shapes::ShapeRef.new(shape: Progress, location: "header", location_name: "x-amz-Progress"))
    PutSnapshotBlockRequest.add_member(:checksum, Shapes::ShapeRef.new(shape: Checksum, required: true, location: "header", location_name: "x-amz-Checksum"))
    PutSnapshotBlockRequest.add_member(:checksum_algorithm, Shapes::ShapeRef.new(shape: ChecksumAlgorithm, required: true, location: "header", location_name: "x-amz-Checksum-Algorithm"))
    PutSnapshotBlockRequest.struct_class = Types::PutSnapshotBlockRequest
    PutSnapshotBlockRequest[:payload] = :block_data
    PutSnapshotBlockRequest[:payload_member] = PutSnapshotBlockRequest.member(:block_data)

    PutSnapshotBlockResponse.add_member(:checksum, Shapes::ShapeRef.new(shape: Checksum, location: "header", location_name: "x-amz-Checksum"))
    PutSnapshotBlockResponse.add_member(:checksum_algorithm, Shapes::ShapeRef.new(shape: ChecksumAlgorithm, location: "header", location_name: "x-amz-Checksum-Algorithm"))
    PutSnapshotBlockResponse.struct_class = Types::PutSnapshotBlockResponse

    RequestThrottledException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    RequestThrottledException.add_member(:reason, Shapes::ShapeRef.new(shape: RequestThrottledExceptionReason, location_name: "Reason"))
    RequestThrottledException.struct_class = Types::RequestThrottledException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.add_member(:reason, Shapes::ShapeRef.new(shape: ResourceNotFoundExceptionReason, location_name: "Reason"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:reason, Shapes::ShapeRef.new(shape: ServiceQuotaExceededExceptionReason, location_name: "Reason"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartSnapshotRequest.add_member(:volume_size, Shapes::ShapeRef.new(shape: VolumeSize, required: true, location_name: "VolumeSize"))
    StartSnapshotRequest.add_member(:parent_snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "ParentSnapshotId"))
    StartSnapshotRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    StartSnapshotRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    StartSnapshotRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    StartSnapshotRequest.add_member(:encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "Encrypted"))
    StartSnapshotRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    StartSnapshotRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    StartSnapshotRequest.struct_class = Types::StartSnapshotRequest

    StartSnapshotResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    StartSnapshotResponse.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "SnapshotId"))
    StartSnapshotResponse.add_member(:owner_id, Shapes::ShapeRef.new(shape: OwnerId, location_name: "OwnerId"))
    StartSnapshotResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    StartSnapshotResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "StartTime"))
    StartSnapshotResponse.add_member(:volume_size, Shapes::ShapeRef.new(shape: VolumeSize, location_name: "VolumeSize"))
    StartSnapshotResponse.add_member(:block_size, Shapes::ShapeRef.new(shape: BlockSize, location_name: "BlockSize"))
    StartSnapshotResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    StartSnapshotResponse.add_member(:parent_snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "ParentSnapshotId"))
    StartSnapshotResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    StartSnapshotResponse.struct_class = Types::StartSnapshotResponse

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "Reason"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-11-02"

      api.metadata = {
        "apiVersion" => "2019-11-02",
        "endpointPrefix" => "ebs",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "Amazon EBS",
        "serviceFullName" => "Amazon Elastic Block Store",
        "serviceId" => "EBS",
        "signatureVersion" => "v4",
        "uid" => "ebs-2019-11-02",
      }

      api.add_operation(:complete_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CompleteSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/snapshots/completion/{snapshotId}"
        o.input = Shapes::ShapeRef.new(shape: CompleteSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: CompleteSnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_snapshot_block, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSnapshotBlock"
        o.http_method = "GET"
        o.http_request_uri = "/snapshots/{snapshotId}/blocks/{blockIndex}"
        o.input = Shapes::ShapeRef.new(shape: GetSnapshotBlockRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSnapshotBlockResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_changed_blocks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChangedBlocks"
        o.http_method = "GET"
        o.http_request_uri = "/snapshots/{secondSnapshotId}/changedblocks"
        o.input = Shapes::ShapeRef.new(shape: ListChangedBlocksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChangedBlocksResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_snapshot_blocks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSnapshotBlocks"
        o.http_method = "GET"
        o.http_request_uri = "/snapshots/{snapshotId}/blocks"
        o.input = Shapes::ShapeRef.new(shape: ListSnapshotBlocksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSnapshotBlocksResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_snapshot_block, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutSnapshotBlock"
        o.http_method = "PUT"
        o.http_request_uri = "/snapshots/{snapshotId}/blocks/{blockIndex}"
        o['authtype'] = "v4-unsigned-body"
        o.input = Shapes::ShapeRef.new(shape: PutSnapshotBlockRequest)
        o.output = Shapes::ShapeRef.new(shape: PutSnapshotBlockResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/snapshots"
        o.input = Shapes::ShapeRef.new(shape: StartSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: StartSnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
