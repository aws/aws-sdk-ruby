# frozen_string_literal: true

# This is generated code!

module Aws::EBS
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessDeniedExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ebs#AccessDeniedExceptionReason', name: 'AccessDeniedExceptionReason')
    Block = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#Block', name: 'Block')
    BlockData = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.ebs#BlockData', name: 'BlockData', traits: {"smithy.api#sensitive" => {}, "smithy.api#streaming" => {}})
    BlockIndex = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ebs#BlockIndex', name: 'BlockIndex', traits: {"smithy.api#range" => {"min" => 0}})
    BlockSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ebs#BlockSize', name: 'BlockSize')
    BlockToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ebs#BlockToken', name: 'BlockToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9+/=]+$"})
    Blocks = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ebs#Blocks', name: 'Blocks', traits: {"smithy.api#sensitive" => {}})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.ebs#Boolean', name: 'Boolean')
    ChangedBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#ChangedBlock', name: 'ChangedBlock', traits: {"smithy.api#sensitive" => {}})
    ChangedBlocks = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ebs#ChangedBlocks', name: 'ChangedBlocks')
    ChangedBlocksCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ebs#ChangedBlocksCount', name: 'ChangedBlocksCount', traits: {"smithy.api#range" => {"min" => 0}})
    Checksum = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ebs#Checksum', name: 'Checksum', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9+/=]+$"})
    ChecksumAggregationMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ebs#ChecksumAggregationMethod', name: 'ChecksumAggregationMethod', traits: {"smithy.api#length" => {"min" => 0, "max" => 32}, "smithy.api#pattern" => "^[A-Za-z0-9]+$"})
    ChecksumAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ebs#ChecksumAlgorithm', name: 'ChecksumAlgorithm', traits: {"smithy.api#length" => {"min" => 0, "max" => 32}, "smithy.api#pattern" => "^[A-Za-z0-9]+$"})
    CompleteSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#CompleteSnapshotRequest', name: 'CompleteSnapshotRequest')
    CompleteSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#CompleteSnapshotResponse', name: 'CompleteSnapshotResponse')
    ConcurrentLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#ConcurrentLimitExceededException', name: 'ConcurrentLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DataLength = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ebs#DataLength', name: 'DataLength')
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ebs#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\S\\s]+$"})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ebs#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    GetSnapshotBlockRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#GetSnapshotBlockRequest', name: 'GetSnapshotBlockRequest')
    GetSnapshotBlockResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#GetSnapshotBlockResponse', name: 'GetSnapshotBlockResponse')
    IdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ebs#IdempotencyToken', name: 'IdempotencyToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\S]+$"})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ebs#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:kms:.*:[0-9]{12}:key/", "smithy.api#sensitive" => {}})
    ListChangedBlocksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#ListChangedBlocksRequest', name: 'ListChangedBlocksRequest')
    ListChangedBlocksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#ListChangedBlocksResponse', name: 'ListChangedBlocksResponse')
    ListSnapshotBlocksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#ListSnapshotBlocksRequest', name: 'ListSnapshotBlocksRequest')
    ListSnapshotBlocksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#ListSnapshotBlocksResponse', name: 'ListSnapshotBlocksResponse')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ebs#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 100, "max" => 10000}})
    OwnerId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ebs#OwnerId', name: 'OwnerId', traits: {"smithy.api#length" => {"min" => 1, "max" => 24}, "smithy.api#pattern" => "^\\S+$"})
    PageToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ebs#PageToken', name: 'PageToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9+/=]+$"})
    Progress = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ebs#Progress', name: 'Progress', traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    PutSnapshotBlockRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#PutSnapshotBlockRequest', name: 'PutSnapshotBlockRequest')
    PutSnapshotBlockResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#PutSnapshotBlockResponse', name: 'PutSnapshotBlockResponse')
    RequestThrottledException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#RequestThrottledException', name: 'RequestThrottledException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RequestThrottledExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ebs#RequestThrottledExceptionReason', name: 'RequestThrottledExceptionReason')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceNotFoundExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ebs#ResourceNotFoundExceptionReason', name: 'ResourceNotFoundExceptionReason')
    SSEType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ebs#SSEType', name: 'SSEType')
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceQuotaExceededExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ebs#ServiceQuotaExceededExceptionReason', name: 'ServiceQuotaExceededExceptionReason')
    SnapshotId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ebs#SnapshotId', name: 'SnapshotId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^snap-[0-9a-f]+$"})
    StartSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#StartSnapshotRequest', name: 'StartSnapshotRequest')
    StartSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#StartSnapshotResponse', name: 'StartSnapshotResponse')
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ebs#Status', name: 'Status', traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ebs#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 127}, "smithy.api#pattern" => "^[\\S\\s]+$"})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ebs#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ebs#Tags', name: 'Tags')
    TimeStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.ebs#TimeStamp', name: 'TimeStamp')
    Timeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ebs#Timeout', name: 'Timeout', traits: {"smithy.api#range" => {"min" => 10, "max" => 4320}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ebs#ValidationExceptionReason', name: 'ValidationExceptionReason')
    VolumeSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ebs#VolumeSize', name: 'VolumeSize', traits: {"smithy.api#range" => {"min" => 1}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccessDeniedException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedExceptionReason, location_name: 'Reason', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessDeniedExceptionReason.add_member(:unauthorized_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNAUTHORIZED_ACCOUNT', traits: {"smithy.api#enumValue" => "UNAUTHORIZED_ACCOUNT"}))
    AccessDeniedExceptionReason.add_member(:dependency_access_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPENDENCY_ACCESS_DENIED', traits: {"smithy.api#enumValue" => "DEPENDENCY_ACCESS_DENIED"}))
    Block.add_member(:block_index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockIndex, location_name: 'BlockIndex'))
    Block.add_member(:block_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockToken, location_name: 'BlockToken'))
    Block.type = Types::Block
    Blocks.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Block)
    ChangedBlock.add_member(:block_index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockIndex, location_name: 'BlockIndex'))
    ChangedBlock.add_member(:first_block_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockToken, location_name: 'FirstBlockToken'))
    ChangedBlock.add_member(:second_block_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockToken, location_name: 'SecondBlockToken'))
    ChangedBlock.type = Types::ChangedBlock
    ChangedBlocks.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangedBlock)
    ChecksumAggregationMethod.add_member(:checksum_aggregation_linear, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHECKSUM_AGGREGATION_LINEAR', traits: {"smithy.api#enumValue" => "LINEAR"}))
    ChecksumAlgorithm.add_member(:checksum_algorithm_sha256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHECKSUM_ALGORITHM_SHA256', traits: {"smithy.api#enumValue" => "SHA256"}))
    CompleteSnapshotRequest.add_member(:snapshot_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'SnapshotId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CompleteSnapshotRequest.add_member(:changed_blocks_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangedBlocksCount, location_name: 'ChangedBlocksCount', traits: {"smithy.api#httpHeader" => "x-amz-ChangedBlocksCount", "smithy.api#required" => {}}))
    CompleteSnapshotRequest.add_member(:checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Checksum, location_name: 'Checksum', traits: {"smithy.api#httpHeader" => "x-amz-Checksum"}))
    CompleteSnapshotRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChecksumAlgorithm, location_name: 'ChecksumAlgorithm', traits: {"smithy.api#httpHeader" => "x-amz-Checksum-Algorithm"}))
    CompleteSnapshotRequest.add_member(:checksum_aggregation_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChecksumAggregationMethod, location_name: 'ChecksumAggregationMethod', traits: {"smithy.api#httpHeader" => "x-amz-Checksum-Aggregation-Method"}))
    CompleteSnapshotRequest.type = Types::CompleteSnapshotRequest
    CompleteSnapshotResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status'))
    CompleteSnapshotResponse.type = Types::CompleteSnapshotResponse
    ConcurrentLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ConcurrentLimitExceededException.type = Types::ConcurrentLimitExceededException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    GetSnapshotBlockRequest.add_member(:snapshot_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'SnapshotId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSnapshotBlockRequest.add_member(:block_index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockIndex, location_name: 'BlockIndex', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSnapshotBlockRequest.add_member(:block_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockToken, location_name: 'BlockToken', traits: {"smithy.api#httpQuery" => "blockToken", "smithy.api#required" => {}}))
    GetSnapshotBlockRequest.type = Types::GetSnapshotBlockRequest
    GetSnapshotBlockResponse.add_member(:data_length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLength, location_name: 'DataLength', traits: {"smithy.api#httpHeader" => "x-amz-Data-Length"}))
    GetSnapshotBlockResponse.add_member(:block_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockData, location_name: 'BlockData', traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    GetSnapshotBlockResponse.add_member(:checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Checksum, location_name: 'Checksum', traits: {"smithy.api#httpHeader" => "x-amz-Checksum"}))
    GetSnapshotBlockResponse.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChecksumAlgorithm, location_name: 'ChecksumAlgorithm', traits: {"smithy.api#httpHeader" => "x-amz-Checksum-Algorithm"}))
    GetSnapshotBlockResponse[:http_payload] = :block_data
    GetSnapshotBlockResponse[:http_payload_member] = GetSnapshotBlockResponse.member(:block_data)
    GetSnapshotBlockResponse.type = Types::GetSnapshotBlockResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    ListChangedBlocksRequest.add_member(:first_snapshot_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'FirstSnapshotId', traits: {"smithy.api#httpQuery" => "firstSnapshotId"}))
    ListChangedBlocksRequest.add_member(:second_snapshot_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'SecondSnapshotId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListChangedBlocksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "pageToken"}))
    ListChangedBlocksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListChangedBlocksRequest.add_member(:starting_block_index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockIndex, location_name: 'StartingBlockIndex', traits: {"smithy.api#httpQuery" => "startingBlockIndex"}))
    ListChangedBlocksRequest.type = Types::ListChangedBlocksRequest
    ListChangedBlocksResponse.add_member(:changed_blocks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangedBlocks, location_name: 'ChangedBlocks'))
    ListChangedBlocksResponse.add_member(:expiry_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'ExpiryTime'))
    ListChangedBlocksResponse.add_member(:volume_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeSize, location_name: 'VolumeSize'))
    ListChangedBlocksResponse.add_member(:block_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockSize, location_name: 'BlockSize'))
    ListChangedBlocksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextToken'))
    ListChangedBlocksResponse.type = Types::ListChangedBlocksResponse
    ListSnapshotBlocksRequest.add_member(:snapshot_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'SnapshotId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSnapshotBlocksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "pageToken"}))
    ListSnapshotBlocksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSnapshotBlocksRequest.add_member(:starting_block_index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockIndex, location_name: 'StartingBlockIndex', traits: {"smithy.api#httpQuery" => "startingBlockIndex"}))
    ListSnapshotBlocksRequest.type = Types::ListSnapshotBlocksRequest
    ListSnapshotBlocksResponse.add_member(:blocks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Blocks, location_name: 'Blocks'))
    ListSnapshotBlocksResponse.add_member(:expiry_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'ExpiryTime'))
    ListSnapshotBlocksResponse.add_member(:volume_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeSize, location_name: 'VolumeSize'))
    ListSnapshotBlocksResponse.add_member(:block_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockSize, location_name: 'BlockSize'))
    ListSnapshotBlocksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextToken'))
    ListSnapshotBlocksResponse.type = Types::ListSnapshotBlocksResponse
    PutSnapshotBlockRequest.add_member(:snapshot_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'SnapshotId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSnapshotBlockRequest.add_member(:block_index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockIndex, location_name: 'BlockIndex', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSnapshotBlockRequest.add_member(:block_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockData, location_name: 'BlockData', traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PutSnapshotBlockRequest.add_member(:data_length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLength, location_name: 'DataLength', traits: {"smithy.api#httpHeader" => "x-amz-Data-Length", "smithy.api#required" => {}}))
    PutSnapshotBlockRequest.add_member(:progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Progress, location_name: 'Progress', traits: {"smithy.api#httpHeader" => "x-amz-Progress"}))
    PutSnapshotBlockRequest.add_member(:checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Checksum, location_name: 'Checksum', traits: {"smithy.api#httpHeader" => "x-amz-Checksum", "smithy.api#required" => {}}))
    PutSnapshotBlockRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChecksumAlgorithm, location_name: 'ChecksumAlgorithm', traits: {"smithy.api#httpHeader" => "x-amz-Checksum-Algorithm", "smithy.api#required" => {}}))
    PutSnapshotBlockRequest[:http_payload] = :block_data
    PutSnapshotBlockRequest[:http_payload_member] = PutSnapshotBlockRequest.member(:block_data)
    PutSnapshotBlockRequest.type = Types::PutSnapshotBlockRequest
    PutSnapshotBlockResponse.add_member(:checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Checksum, location_name: 'Checksum', traits: {"smithy.api#httpHeader" => "x-amz-Checksum"}))
    PutSnapshotBlockResponse.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChecksumAlgorithm, location_name: 'ChecksumAlgorithm', traits: {"smithy.api#httpHeader" => "x-amz-Checksum-Algorithm"}))
    PutSnapshotBlockResponse.type = Types::PutSnapshotBlockResponse
    RequestThrottledException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    RequestThrottledException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottledExceptionReason, location_name: 'Reason'))
    RequestThrottledException.type = Types::RequestThrottledException
    RequestThrottledExceptionReason.add_member(:account_throttled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_THROTTLED', traits: {"smithy.api#enumValue" => "ACCOUNT_THROTTLED"}))
    RequestThrottledExceptionReason.add_member(:dependency_request_throttled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPENDENCY_REQUEST_THROTTLED', traits: {"smithy.api#enumValue" => "DEPENDENCY_REQUEST_THROTTLED"}))
    RequestThrottledExceptionReason.add_member(:resource_level_throttle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_LEVEL_THROTTLE', traits: {"smithy.api#enumValue" => "RESOURCE_LEVEL_THROTTLE"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundExceptionReason, location_name: 'Reason'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceNotFoundExceptionReason.add_member(:snapshot_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNAPSHOT_NOT_FOUND', traits: {"smithy.api#enumValue" => "SNAPSHOT_NOT_FOUND"}))
    ResourceNotFoundExceptionReason.add_member(:grant_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GRANT_NOT_FOUND', traits: {"smithy.api#enumValue" => "GRANT_NOT_FOUND"}))
    ResourceNotFoundExceptionReason.add_member(:dependency_resource_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPENDENCY_RESOURCE_NOT_FOUND', traits: {"smithy.api#enumValue" => "DEPENDENCY_RESOURCE_NOT_FOUND"}))
    ResourceNotFoundExceptionReason.add_member(:image_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMAGE_NOT_FOUND', traits: {"smithy.api#enumValue" => "IMAGE_NOT_FOUND"}))
    SSEType.add_member(:sse_ebs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSE_EBS', traits: {"smithy.api#enumValue" => "sse-ebs"}))
    SSEType.add_member(:sse_kms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSE_KMS', traits: {"smithy.api#enumValue" => "sse-kms"}))
    SSEType.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "none"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ServiceQuotaExceededException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededExceptionReason, location_name: 'Reason'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceQuotaExceededExceptionReason.add_member(:dependency_service_quota_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPENDENCY_SERVICE_QUOTA_EXCEEDED', traits: {"smithy.api#enumValue" => "DEPENDENCY_SERVICE_QUOTA_EXCEEDED"}))
    StartSnapshotRequest.add_member(:volume_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeSize, location_name: 'VolumeSize', traits: {"smithy.api#required" => {}}))
    StartSnapshotRequest.add_member(:parent_snapshot_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'ParentSnapshotId'))
    StartSnapshotRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    StartSnapshotRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    StartSnapshotRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    StartSnapshotRequest.add_member(:encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Encrypted'))
    StartSnapshotRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'KmsKeyArn'))
    StartSnapshotRequest.add_member(:timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timeout, location_name: 'Timeout'))
    StartSnapshotRequest.type = Types::StartSnapshotRequest
    StartSnapshotResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    StartSnapshotResponse.add_member(:snapshot_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'SnapshotId'))
    StartSnapshotResponse.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerId, location_name: 'OwnerId'))
    StartSnapshotResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status'))
    StartSnapshotResponse.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'StartTime'))
    StartSnapshotResponse.add_member(:volume_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeSize, location_name: 'VolumeSize'))
    StartSnapshotResponse.add_member(:block_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockSize, location_name: 'BlockSize'))
    StartSnapshotResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    StartSnapshotResponse.add_member(:parent_snapshot_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'ParentSnapshotId'))
    StartSnapshotResponse.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'KmsKeyArn'))
    StartSnapshotResponse.add_member(:sse_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSEType, location_name: 'SseType'))
    StartSnapshotResponse.type = Types::StartSnapshotResponse
    Status.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "completed"}))
    Status.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "pending"}))
    Status.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "error"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key'))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value'))
    Tag.type = Types::Tag
    Tags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'Reason'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionReason.add_member(:invalid_customer_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_CUSTOMER_KEY', traits: {"smithy.api#enumValue" => "INVALID_CUSTOMER_KEY"}))
    ValidationExceptionReason.add_member(:invalid_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PAGE_TOKEN', traits: {"smithy.api#enumValue" => "INVALID_PAGE_TOKEN"}))
    ValidationExceptionReason.add_member(:invalid_block_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_BLOCK_TOKEN', traits: {"smithy.api#enumValue" => "INVALID_BLOCK_TOKEN"}))
    ValidationExceptionReason.add_member(:invalid_grant_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_GRANT_TOKEN', traits: {"smithy.api#enumValue" => "INVALID_GRANT_TOKEN"}))
    ValidationExceptionReason.add_member(:invalid_snapshot_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_SNAPSHOT_ID', traits: {"smithy.api#enumValue" => "INVALID_SNAPSHOT_ID"}))
    ValidationExceptionReason.add_member(:unrelated_snapshots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNRELATED_SNAPSHOTS', traits: {"smithy.api#enumValue" => "UNRELATED_SNAPSHOTS"}))
    ValidationExceptionReason.add_member(:invalid_block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_BLOCK', traits: {"smithy.api#enumValue" => "INVALID_BLOCK"}))
    ValidationExceptionReason.add_member(:invalid_content_encoding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_CONTENT_ENCODING', traits: {"smithy.api#enumValue" => "INVALID_CONTENT_ENCODING"}))
    ValidationExceptionReason.add_member(:invalid_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_TAG', traits: {"smithy.api#enumValue" => "INVALID_TAG"}))
    ValidationExceptionReason.add_member(:invalid_dependency_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_DEPENDENCY_REQUEST', traits: {"smithy.api#enumValue" => "INVALID_DEPENDENCY_REQUEST"}))
    ValidationExceptionReason.add_member(:invalid_parameter_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PARAMETER_VALUE', traits: {"smithy.api#enumValue" => "INVALID_PARAMETER_VALUE"}))
    ValidationExceptionReason.add_member(:invalid_volume_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_VOLUME_SIZE', traits: {"smithy.api#enumValue" => "INVALID_VOLUME_SIZE"}))
    ValidationExceptionReason.add_member(:conflicting_block_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFLICTING_BLOCK_UPDATE', traits: {"smithy.api#enumValue" => "CONFLICTING_BLOCK_UPDATE"}))
    ValidationExceptionReason.add_member(:invalid_image_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_IMAGE_ID', traits: {"smithy.api#enumValue" => "INVALID_IMAGE_ID"}))
    ValidationExceptionReason.add_member(:write_request_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WRITE_REQUEST_TIMEOUT', traits: {"smithy.api#enumValue" => "WRITE_REQUEST_TIMEOUT"}))

    Ebs = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ebs#Ebs"
      service.name = "Ebs"
      service.version = "2019-11-02"
      service.traits = {"aws.api#service" => {"sdkId" => "EBS", "arnNamespace" => "ebs", "cloudFormationName" => "EBS", "cloudTrailEventSource" => "ebs.amazonaws.com", "endpointPrefix" => "ebs"}, "aws.auth#sigv4" => {"name" => "ebs"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Elastic Block Store"}
      service.add_operation(:complete_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ebs#CompleteSnapshot"
        operation.name = "CompleteSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompleteSnapshotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompleteSnapshotResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/snapshots/completion/{SnapshotId}", "code" => 202}}
      end)
      service.add_operation(:get_snapshot_block, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ebs#GetSnapshotBlock"
        operation.name = "GetSnapshotBlock"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSnapshotBlockRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSnapshotBlockResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/snapshots/{SnapshotId}/blocks/{BlockIndex}", "code" => 200}}
      end)
      service.add_operation(:list_changed_blocks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ebs#ListChangedBlocks"
        operation.name = "ListChangedBlocks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListChangedBlocksRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListChangedBlocksResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/snapshots/{SecondSnapshotId}/changedblocks", "code" => 200}}
        operation[:paginator] = Paginators::ListChangedBlocks.new
      end)
      service.add_operation(:list_snapshot_blocks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ebs#ListSnapshotBlocks"
        operation.name = "ListSnapshotBlocks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSnapshotBlocksRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSnapshotBlocksResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/snapshots/{SnapshotId}/blocks", "code" => 200}}
        operation[:paginator] = Paginators::ListSnapshotBlocks.new
      end)
      service.add_operation(:put_snapshot_block, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ebs#PutSnapshotBlock"
        operation.name = "PutSnapshotBlock"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutSnapshotBlockRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutSnapshotBlockResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.auth#unsignedPayload" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#http" => {"method" => "PUT", "uri" => "/snapshots/{SnapshotId}/blocks/{BlockIndex}", "code" => 201}}
      end)
      service.add_operation(:start_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ebs#StartSnapshot"
        operation.name = "StartSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSnapshotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSnapshotResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/snapshots", "code" => 201}}
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
