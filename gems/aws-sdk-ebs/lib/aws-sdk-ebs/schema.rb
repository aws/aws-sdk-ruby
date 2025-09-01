# frozen_string_literal: true

# This is generated code!

module Aws::EBS
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessDeniedExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ebs#AccessDeniedExceptionReason', name: 'AccessDeniedExceptionReason')
    Block = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#Block', name: 'Block')
    BlockData = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.ebs#BlockData', name: 'BlockData', traits: {"smithy.api#sensitive" => {}, "smithy.api#streaming" => {}})
    BlockIndex = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ebs#BlockIndex', name: 'BlockIndex', traits: {"smithy.api#range" => {"min" => 0}})
    BlockSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ebs#BlockSize', name: 'BlockSize')
    BlockToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ebs#BlockToken', name: 'BlockToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9+/=]+$"})
    Blocks = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ebs#Blocks', name: 'Blocks', traits: {"smithy.api#sensitive" => {}})
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.ebs#Boolean', name: 'Boolean')
    ChangedBlock = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#ChangedBlock', name: 'ChangedBlock', traits: {"smithy.api#sensitive" => {}})
    ChangedBlocks = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ebs#ChangedBlocks', name: 'ChangedBlocks')
    ChangedBlocksCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ebs#ChangedBlocksCount', name: 'ChangedBlocksCount', traits: {"smithy.api#range" => {"min" => 0}})
    Checksum = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ebs#Checksum', name: 'Checksum', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9+/=]+$"})
    ChecksumAggregationMethod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ebs#ChecksumAggregationMethod', name: 'ChecksumAggregationMethod', traits: {"smithy.api#length" => {"min" => 0, "max" => 32}, "smithy.api#pattern" => "^[A-Za-z0-9]+$"})
    ChecksumAlgorithm = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ebs#ChecksumAlgorithm', name: 'ChecksumAlgorithm', traits: {"smithy.api#length" => {"min" => 0, "max" => 32}, "smithy.api#pattern" => "^[A-Za-z0-9]+$"})
    CompleteSnapshotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#CompleteSnapshotRequest', name: 'CompleteSnapshotRequest')
    CompleteSnapshotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#CompleteSnapshotResponse', name: 'CompleteSnapshotResponse')
    ConcurrentLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#ConcurrentLimitExceededException', name: 'ConcurrentLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DataLength = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ebs#DataLength', name: 'DataLength')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ebs#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\S\\s]+$"})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ebs#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    GetSnapshotBlockRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#GetSnapshotBlockRequest', name: 'GetSnapshotBlockRequest')
    GetSnapshotBlockResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#GetSnapshotBlockResponse', name: 'GetSnapshotBlockResponse')
    IdempotencyToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ebs#IdempotencyToken', name: 'IdempotencyToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\S]+$"})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KmsKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ebs#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:kms:.*:[0-9]{12}:key/", "smithy.api#sensitive" => {}})
    ListChangedBlocksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#ListChangedBlocksRequest', name: 'ListChangedBlocksRequest')
    ListChangedBlocksResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#ListChangedBlocksResponse', name: 'ListChangedBlocksResponse')
    ListSnapshotBlocksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#ListSnapshotBlocksRequest', name: 'ListSnapshotBlocksRequest')
    ListSnapshotBlocksResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#ListSnapshotBlocksResponse', name: 'ListSnapshotBlocksResponse')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ebs#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 100, "max" => 10000}})
    OwnerId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ebs#OwnerId', name: 'OwnerId', traits: {"smithy.api#length" => {"min" => 1, "max" => 24}, "smithy.api#pattern" => "^\\S+$"})
    PageToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ebs#PageToken', name: 'PageToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9+/=]+$"})
    Progress = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ebs#Progress', name: 'Progress', traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    PutSnapshotBlockRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#PutSnapshotBlockRequest', name: 'PutSnapshotBlockRequest')
    PutSnapshotBlockResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#PutSnapshotBlockResponse', name: 'PutSnapshotBlockResponse')
    RequestThrottledException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#RequestThrottledException', name: 'RequestThrottledException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RequestThrottledExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ebs#RequestThrottledExceptionReason', name: 'RequestThrottledExceptionReason')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceNotFoundExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ebs#ResourceNotFoundExceptionReason', name: 'ResourceNotFoundExceptionReason')
    SSEType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ebs#SSEType', name: 'SSEType')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceQuotaExceededExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ebs#ServiceQuotaExceededExceptionReason', name: 'ServiceQuotaExceededExceptionReason')
    SnapshotId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ebs#SnapshotId', name: 'SnapshotId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^snap-[0-9a-f]+$"})
    StartSnapshotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#StartSnapshotRequest', name: 'StartSnapshotRequest')
    StartSnapshotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#StartSnapshotResponse', name: 'StartSnapshotResponse')
    Status = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ebs#Status', name: 'Status', traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ebs#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 127}, "smithy.api#pattern" => "^[\\S\\s]+$"})
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ebs#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    Tags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ebs#Tags', name: 'Tags')
    TimeStamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.ebs#TimeStamp', name: 'TimeStamp')
    Timeout = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ebs#Timeout', name: 'Timeout', traits: {"smithy.api#range" => {"min" => 10, "max" => 4320}})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ebs#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ebs#ValidationExceptionReason', name: 'ValidationExceptionReason')
    VolumeSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ebs#VolumeSize', name: 'VolumeSize', traits: {"smithy.api#range" => {"min" => 1}})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccessDeniedException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedExceptionReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason for the exception.</p>", "smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessDeniedExceptionReason.add_member(:unauthorized_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNAUTHORIZED_ACCOUNT', traits: {"smithy.api#enumValue" => "UNAUTHORIZED_ACCOUNT"}))
    AccessDeniedExceptionReason.add_member(:dependency_access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPENDENCY_ACCESS_DENIED', traits: {"smithy.api#enumValue" => "DEPENDENCY_ACCESS_DENIED"}))
    Block.add_member(:block_index, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockIndex, location_name: 'BlockIndex', traits: {"smithy.api#documentation" => "<p>The block index.</p>"}))
    Block.add_member(:block_token, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockToken, location_name: 'BlockToken', traits: {"smithy.api#documentation" => "<p>The block token for the block index.</p>"}))
    Block.type = Types::Block
    Blocks.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Block)
    ChangedBlock.add_member(:block_index, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockIndex, location_name: 'BlockIndex', traits: {"smithy.api#documentation" => "<p>The block index.</p>"}))
    ChangedBlock.add_member(:first_block_token, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockToken, location_name: 'FirstBlockToken', traits: {"smithy.api#documentation" => "<p>The block token for the block index of the <code>FirstSnapshotId</code> specified in\n            the <code>ListChangedBlocks</code> operation. This value is absent if the first snapshot\n            does not have the changed block that is on the second snapshot.</p>"}))
    ChangedBlock.add_member(:second_block_token, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockToken, location_name: 'SecondBlockToken', traits: {"smithy.api#documentation" => "<p>The block token for the block index of the <code>SecondSnapshotId</code> specified in\n            the <code>ListChangedBlocks</code> operation.</p>"}))
    ChangedBlock.type = Types::ChangedBlock
    ChangedBlocks.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChangedBlock)
    ChecksumAggregationMethod.add_member(:checksum_aggregation_linear, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHECKSUM_AGGREGATION_LINEAR', traits: {"smithy.api#enumValue" => "LINEAR"}))
    ChecksumAlgorithm.add_member(:checksum_algorithm_sha256, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHECKSUM_ALGORITHM_SHA256', traits: {"smithy.api#enumValue" => "SHA256"}))
    CompleteSnapshotRequest.add_member(:snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'SnapshotId', traits: {"smithy.api#documentation" => "<p>The ID of the snapshot.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CompleteSnapshotRequest.add_member(:changed_blocks_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangedBlocksCount, location_name: 'ChangedBlocksCount', traits: {"smithy.api#documentation" => "<p>The number of blocks that were written to the snapshot.</p>", "smithy.api#httpHeader" => "x-amz-ChangedBlocksCount", "smithy.api#required" => {}}))
    CompleteSnapshotRequest.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: Checksum, location_name: 'Checksum', traits: {"smithy.api#documentation" => "<p>An aggregated Base-64 SHA256 checksum based on the checksums of each written\n            block.</p>\n         <p>To generate the aggregated checksum using the linear aggregation method, arrange the\n            checksums for each written block in ascending order of their block index, concatenate\n            them to form a single string, and then generate the checksum on the entire string using\n            the SHA256 algorithm.</p>", "smithy.api#httpHeader" => "x-amz-Checksum"}))
    CompleteSnapshotRequest.add_member(:checksum_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: ChecksumAlgorithm, location_name: 'ChecksumAlgorithm', traits: {"smithy.api#documentation" => "<p>The algorithm used to generate the checksum. Currently, the only supported algorithm\n            is <code>SHA256</code>.</p>", "smithy.api#httpHeader" => "x-amz-Checksum-Algorithm"}))
    CompleteSnapshotRequest.add_member(:checksum_aggregation_method, Smithy::Schema::Shapes::ShapeRef.new(shape: ChecksumAggregationMethod, location_name: 'ChecksumAggregationMethod', traits: {"smithy.api#documentation" => "<p>The aggregation method used to generate the checksum. Currently, the only supported\n            aggregation method is <code>LINEAR</code>.</p>", "smithy.api#httpHeader" => "x-amz-Checksum-Aggregation-Method"}))
    CompleteSnapshotRequest.type = Types::CompleteSnapshotRequest
    CompleteSnapshotResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the snapshot.</p>"}))
    CompleteSnapshotResponse.type = Types::CompleteSnapshotResponse
    ConcurrentLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ConcurrentLimitExceededException.type = Types::ConcurrentLimitExceededException
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    GetSnapshotBlockRequest.add_member(:snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'SnapshotId', traits: {"smithy.api#documentation" => "<p>The ID of the snapshot containing the block from which to get data.</p>\n         <important>\n            <p>If the specified snapshot is encrypted, you must have permission to use the \n                KMS key that was used to encrypt the snapshot. For more information, see \n                <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html\">\n                    Using encryption</a> in the <i>Amazon Elastic Compute Cloud User \n                        Guide</i>.</p>\n         </important>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSnapshotBlockRequest.add_member(:block_index, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockIndex, location_name: 'BlockIndex', traits: {"smithy.api#documentation" => "<p>The block index of the block in which to read the data. A block index is a logical \n            index in units of <code>512</code> KiB blocks. To identify the block index, divide \n            the logical offset of the data in the logical volume by the block size (logical offset \n            of data/<code>524288</code>). The logical offset of the data must be <code>512</code> \n            KiB aligned.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSnapshotBlockRequest.add_member(:block_token, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockToken, location_name: 'BlockToken', traits: {"smithy.api#documentation" => "<p>The block token of the block from which to get data. You can obtain the <code>BlockToken</code> \n            by running the <code>ListChangedBlocks</code> or <code>ListSnapshotBlocks</code> operations.</p>", "smithy.api#httpQuery" => "blockToken", "smithy.api#required" => {}}))
    GetSnapshotBlockRequest.type = Types::GetSnapshotBlockRequest
    GetSnapshotBlockResponse.add_member(:data_length, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLength, location_name: 'DataLength', traits: {"smithy.api#documentation" => "<p>The size of the data in the block.</p>", "smithy.api#httpHeader" => "x-amz-Data-Length"}))
    GetSnapshotBlockResponse.add_member(:block_data, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockData, location_name: 'BlockData', traits: {"smithy.api#default" => "", "smithy.api#documentation" => "<p>The data content of the block.</p>", "smithy.api#httpPayload" => {}}))
    GetSnapshotBlockResponse.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: Checksum, location_name: 'Checksum', traits: {"smithy.api#documentation" => "<p>The checksum generated for the block, which is Base64 encoded.</p>", "smithy.api#httpHeader" => "x-amz-Checksum"}))
    GetSnapshotBlockResponse.add_member(:checksum_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: ChecksumAlgorithm, location_name: 'ChecksumAlgorithm', traits: {"smithy.api#documentation" => "<p>The algorithm used to generate the checksum for the block, such as SHA256.</p>", "smithy.api#httpHeader" => "x-amz-Checksum-Algorithm"}))
    GetSnapshotBlockResponse[:http_payload] = :block_data
    GetSnapshotBlockResponse[:http_payload_member] = GetSnapshotBlockResponse.member(:block_data)
    GetSnapshotBlockResponse.type = Types::GetSnapshotBlockResponse
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    ListChangedBlocksRequest.add_member(:first_snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'FirstSnapshotId', traits: {"smithy.api#documentation" => "<p>The ID of the first snapshot to use for the comparison.</p>\n         <important>\n            <p>The <code>FirstSnapshotID</code> parameter must be specified with a\n                    <code>SecondSnapshotId</code> parameter; otherwise, an error occurs.</p>\n         </important>", "smithy.api#httpQuery" => "firstSnapshotId"}))
    ListChangedBlocksRequest.add_member(:second_snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'SecondSnapshotId', traits: {"smithy.api#documentation" => "<p>The ID of the second snapshot to use for the comparison.</p>\n         <important>\n            <p>The <code>SecondSnapshotId</code> parameter must be specified with a\n                    <code>FirstSnapshotID</code> parameter; otherwise, an error occurs.</p>\n         </important>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListChangedBlocksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to request the next page of results.</p>\n         <p>If you specify <b>NextToken</b>, then \n            <b>StartingBlockIndex</b> is ignored.</p>", "smithy.api#httpQuery" => "pageToken"}))
    ListChangedBlocksRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of blocks to be returned by the request.</p>\n         <p>Even if additional blocks can be retrieved from the snapshot, the request can \n            return less blocks than <b>MaxResults</b> or an empty \n            array of blocks.</p>\n         <p>To retrieve the next set of blocks from the snapshot, make another request with \n            the returned <b>NextToken</b> value. The value of \n            <b>NextToken</b> is <code>null</code> when there are no \n            more blocks to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListChangedBlocksRequest.add_member(:starting_block_index, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockIndex, location_name: 'StartingBlockIndex', traits: {"smithy.api#documentation" => "<p>The block index from which the comparison should start.</p>\n         <p>The list in the response will start from this block index or the next valid block\n            index in the snapshots.</p>\n         <p>If you specify <b>NextToken</b>, then \n            <b>StartingBlockIndex</b> is ignored.</p>", "smithy.api#httpQuery" => "startingBlockIndex"}))
    ListChangedBlocksRequest.type = Types::ListChangedBlocksRequest
    ListChangedBlocksResponse.add_member(:changed_blocks, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangedBlocks, location_name: 'ChangedBlocks', traits: {"smithy.api#documentation" => "<p>An array of objects containing information about the changed blocks.</p>"}))
    ListChangedBlocksResponse.add_member(:expiry_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'ExpiryTime', traits: {"smithy.api#documentation" => "<p>The time when the <code>BlockToken</code> expires.</p>"}))
    ListChangedBlocksResponse.add_member(:volume_size, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeSize, location_name: 'VolumeSize', traits: {"smithy.api#documentation" => "<p>The size of the volume in GB.</p>"}))
    ListChangedBlocksResponse.add_member(:block_size, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockSize, location_name: 'BlockSize', traits: {"smithy.api#documentation" => "<p>The size of the blocks in the snapshot, in bytes.</p>"}))
    ListChangedBlocksResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is null when there\n            are no more results to return.</p>"}))
    ListChangedBlocksResponse.type = Types::ListChangedBlocksResponse
    ListSnapshotBlocksRequest.add_member(:snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'SnapshotId', traits: {"smithy.api#documentation" => "<p>The ID of the snapshot from which to get block indexes and block tokens.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSnapshotBlocksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to request the next page of results.</p>\n         <p>If you specify <b>NextToken</b>, then \n            <b>StartingBlockIndex</b> is ignored.</p>", "smithy.api#httpQuery" => "pageToken"}))
    ListSnapshotBlocksRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of blocks to be returned by the request.</p>\n         <p>Even if additional blocks can be retrieved from the snapshot, the request can \n            return less blocks than <b>MaxResults</b> or an empty \n            array of blocks.</p>\n         <p>To retrieve the next set of blocks from the snapshot, make another request with \n            the returned <b>NextToken</b> value. The value of \n            <b>NextToken</b> is <code>null</code> when there are no \n            more blocks to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListSnapshotBlocksRequest.add_member(:starting_block_index, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockIndex, location_name: 'StartingBlockIndex', traits: {"smithy.api#documentation" => "<p>The block index from which the list should start. The list in the response will start\n            from this block index or the next valid block index in the snapshot.</p>\n         <p>If you specify <b>NextToken</b>, then \n            <b>StartingBlockIndex</b> is ignored.</p>", "smithy.api#httpQuery" => "startingBlockIndex"}))
    ListSnapshotBlocksRequest.type = Types::ListSnapshotBlocksRequest
    ListSnapshotBlocksResponse.add_member(:blocks, Smithy::Schema::Shapes::ShapeRef.new(shape: Blocks, location_name: 'Blocks', traits: {"smithy.api#documentation" => "<p>An array of objects containing information about the blocks.</p>"}))
    ListSnapshotBlocksResponse.add_member(:expiry_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'ExpiryTime', traits: {"smithy.api#documentation" => "<p>The time when the <code>BlockToken</code> expires.</p>"}))
    ListSnapshotBlocksResponse.add_member(:volume_size, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeSize, location_name: 'VolumeSize', traits: {"smithy.api#documentation" => "<p>The size of the volume in GB.</p>"}))
    ListSnapshotBlocksResponse.add_member(:block_size, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockSize, location_name: 'BlockSize', traits: {"smithy.api#documentation" => "<p>The size of the blocks in the snapshot, in bytes.</p>"}))
    ListSnapshotBlocksResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is null when there\n            are no more results to return.</p>"}))
    ListSnapshotBlocksResponse.type = Types::ListSnapshotBlocksResponse
    PutSnapshotBlockRequest.add_member(:snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'SnapshotId', traits: {"smithy.api#documentation" => "<p>The ID of the snapshot.</p>\n         <important>\n            <p>If the specified snapshot is encrypted, you must have permission to use \n                the KMS key that was used to encrypt the snapshot. For more information, \n                see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html\">\n                    Using encryption</a> in the <i>Amazon Elastic Compute Cloud User \n                        Guide</i>..</p>\n         </important>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSnapshotBlockRequest.add_member(:block_index, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockIndex, location_name: 'BlockIndex', traits: {"smithy.api#documentation" => "<p>The block index of the block in which to write the data. A block index is a logical \n    \tindex in units of <code>512</code> KiB blocks. To identify the block index, divide \n        \tthe logical offset of the data in the logical volume by the block size (logical offset of \n        \tdata/<code>524288</code>). The logical offset of the data must be <code>512</code> \n        \tKiB aligned.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSnapshotBlockRequest.add_member(:block_data, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockData, location_name: 'BlockData', traits: {"smithy.api#documentation" => "<p>The data to write to the block.</p>\n         <p>The block data is not signed as part of the Signature Version 4 signing process. As a\n            result, you must generate and provide a Base64-encoded SHA256 checksum for the block\n            data using the <b>x-amz-Checksum</b> header. Also, you \n        \tmust specify the checksum algorithm using the <b>x-amz-Checksum-Algorithm</b> \n        \theader. The checksum that you provide is part of the Signature Version 4 signing process. \n        \tIt is validated against a checksum generated by Amazon EBS to ensure the validity and authenticity \n        \tof the data. If the checksums do not correspond, the request fails. For more information, \n        \tsee <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html#ebsapis-using-checksums\">\n                Using checksums with the EBS direct APIs</a> in the <i>Amazon Elastic Compute Cloud User\n                Guide</i>.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PutSnapshotBlockRequest.add_member(:data_length, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLength, location_name: 'DataLength', traits: {"smithy.api#documentation" => "<p>The size of the data to write to the block, in bytes. Currently, the only supported\n            size is <code>524288</code> bytes.</p>\n         <p>Valid values: <code>524288</code>\n         </p>", "smithy.api#httpHeader" => "x-amz-Data-Length", "smithy.api#required" => {}}))
    PutSnapshotBlockRequest.add_member(:progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Progress, location_name: 'Progress', traits: {"smithy.api#documentation" => "<p>The progress of the write process, as a percentage.</p>", "smithy.api#httpHeader" => "x-amz-Progress"}))
    PutSnapshotBlockRequest.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: Checksum, location_name: 'Checksum', traits: {"smithy.api#documentation" => "<p>A Base64-encoded SHA256 checksum of the data. Only SHA256 checksums are\n            supported.</p>", "smithy.api#httpHeader" => "x-amz-Checksum", "smithy.api#required" => {}}))
    PutSnapshotBlockRequest.add_member(:checksum_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: ChecksumAlgorithm, location_name: 'ChecksumAlgorithm', traits: {"smithy.api#documentation" => "<p>The algorithm used to generate the checksum. Currently, the only supported algorithm\n            is <code>SHA256</code>.</p>", "smithy.api#httpHeader" => "x-amz-Checksum-Algorithm", "smithy.api#required" => {}}))
    PutSnapshotBlockRequest[:http_payload] = :block_data
    PutSnapshotBlockRequest[:http_payload_member] = PutSnapshotBlockRequest.member(:block_data)
    PutSnapshotBlockRequest.type = Types::PutSnapshotBlockRequest
    PutSnapshotBlockResponse.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: Checksum, location_name: 'Checksum', traits: {"smithy.api#documentation" => "<p>The SHA256 checksum generated for the block data by Amazon EBS.</p>", "smithy.api#httpHeader" => "x-amz-Checksum"}))
    PutSnapshotBlockResponse.add_member(:checksum_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: ChecksumAlgorithm, location_name: 'ChecksumAlgorithm', traits: {"smithy.api#documentation" => "<p>The algorithm used by Amazon EBS to generate the checksum.</p>", "smithy.api#httpHeader" => "x-amz-Checksum-Algorithm"}))
    PutSnapshotBlockResponse.type = Types::PutSnapshotBlockResponse
    RequestThrottledException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    RequestThrottledException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottledExceptionReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason for the exception.</p>"}))
    RequestThrottledException.type = Types::RequestThrottledException
    RequestThrottledExceptionReason.add_member(:account_throttled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_THROTTLED', traits: {"smithy.api#enumValue" => "ACCOUNT_THROTTLED"}))
    RequestThrottledExceptionReason.add_member(:dependency_request_throttled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPENDENCY_REQUEST_THROTTLED', traits: {"smithy.api#enumValue" => "DEPENDENCY_REQUEST_THROTTLED"}))
    RequestThrottledExceptionReason.add_member(:resource_level_throttle, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_LEVEL_THROTTLE', traits: {"smithy.api#enumValue" => "RESOURCE_LEVEL_THROTTLE"}))
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundExceptionReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason for the exception.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceNotFoundExceptionReason.add_member(:snapshot_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNAPSHOT_NOT_FOUND', traits: {"smithy.api#enumValue" => "SNAPSHOT_NOT_FOUND"}))
    ResourceNotFoundExceptionReason.add_member(:grant_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GRANT_NOT_FOUND', traits: {"smithy.api#enumValue" => "GRANT_NOT_FOUND"}))
    ResourceNotFoundExceptionReason.add_member(:dependency_resource_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPENDENCY_RESOURCE_NOT_FOUND', traits: {"smithy.api#enumValue" => "DEPENDENCY_RESOURCE_NOT_FOUND"}))
    ResourceNotFoundExceptionReason.add_member(:image_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMAGE_NOT_FOUND', traits: {"smithy.api#enumValue" => "IMAGE_NOT_FOUND"}))
    SSEType.add_member(:sse_ebs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSE_EBS', traits: {"smithy.api#enumValue" => "sse-ebs"}))
    SSEType.add_member(:sse_kms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSE_KMS', traits: {"smithy.api#enumValue" => "sse-kms"}))
    SSEType.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "none"}))
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ServiceQuotaExceededException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededExceptionReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason for the exception.</p>"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceQuotaExceededExceptionReason.add_member(:dependency_service_quota_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPENDENCY_SERVICE_QUOTA_EXCEEDED', traits: {"smithy.api#enumValue" => "DEPENDENCY_SERVICE_QUOTA_EXCEEDED"}))
    StartSnapshotRequest.add_member(:volume_size, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeSize, location_name: 'VolumeSize', traits: {"smithy.api#documentation" => "<p>The size of the volume, in GiB. The maximum size is <code>65536</code> GiB (64\n            TiB).</p>", "smithy.api#required" => {}}))
    StartSnapshotRequest.add_member(:parent_snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'ParentSnapshotId', traits: {"smithy.api#documentation" => "<p>The ID of the parent snapshot. If there is no parent snapshot, or if you are creating\n            the first snapshot for an on-premises volume, omit this parameter.</p>\n         <p>You can't specify <b>ParentSnapshotId</b> and \n            <b>Encrypted</b> in the same request. If you specify both \n            parameters, the request fails with <code>ValidationException</code>.</p>\n         <p>The encryption status of the snapshot depends on the values that you specify for \n            <b>Encrypted</b>, <b>KmsKeyArn</b>, \n            and <b>ParentSnapshotId</b>, and whether your Amazon Web Services account \n            is enabled for <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default\">\n                encryption by default</a>. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html\">\n                    Using encryption</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>\n         <important>\n            <p>If you specify an encrypted parent snapshot, you must have permission to use the \n                KMS key that was used to encrypt the parent snapshot. For more information, see \n                <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapi-permissions.html#ebsapi-kms-permissions\">\n                    Permissions to use Key Management Service keys</a> in the <i>Amazon Elastic Compute Cloud User \n                        Guide</i>.</p>\n         </important>"}))
    StartSnapshotRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to apply to the snapshot.</p>"}))
    StartSnapshotRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the snapshot.</p>"}))
    StartSnapshotRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n            request. Idempotency ensures that an API request completes only once. With an idempotent \n            request, if the original request completes successfully. The subsequent retries with the same \n            client token return the result from the original successful request and they have no additional \n            effect.</p>\n         <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services SDK.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-direct-api-idempotency.html\">\n    \t\tIdempotency for StartSnapshot API</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>", "smithy.api#idempotencyToken" => {}}))
    StartSnapshotRequest.add_member(:encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Encrypted', traits: {"smithy.api#documentation" => "<p>Indicates whether to encrypt the snapshot.</p>\n         <p>You can't specify <b>Encrypted</b> and <b>\n            ParentSnapshotId</b> in the same request. If you specify both parameters, the \n            request fails with <code>ValidationException</code>.</p>\n         <p>The encryption status of the snapshot depends on the values that you specify for \n            <b>Encrypted</b>, <b>KmsKeyArn</b>, \n            and <b>ParentSnapshotId</b>, and whether your Amazon Web Services account \n            is enabled for <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default\">\n                encryption by default</a>. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html\">\n            Using encryption</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>\n         <important>\n            <p>To create an encrypted snapshot, you must have permission to use the KMS key. For \n                more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapi-permissions.html#ebsapi-kms-permissions\">\n                    Permissions to use Key Management Service keys</a> in the <i>Amazon Elastic Compute Cloud User \n                        Guide</i>.</p>\n         </important>"}))
    StartSnapshotRequest.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Key Management Service (KMS) key to be used to encrypt the snapshot.</p>\n         <p>The encryption status of the snapshot depends on the values that you specify for \n            <b>Encrypted</b>, <b>KmsKeyArn</b>, \n            and <b>ParentSnapshotId</b>, and whether your Amazon Web Services account \n            is enabled for <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default\">\n                encryption by default</a>. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html\">\n                    Using encryption</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>\n         <important>\n            <p>To create an encrypted snapshot, you must have permission to use the KMS key. For \n                more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapi-permissions.html#ebsapi-kms-permissions\">\n                    Permissions to use Key Management Service keys</a> in the <i>Amazon Elastic Compute Cloud User \n                        Guide</i>.</p>\n         </important>"}))
    StartSnapshotRequest.add_member(:timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Timeout, location_name: 'Timeout', traits: {"smithy.api#documentation" => "<p>The amount of time (in minutes) after which the snapshot is automatically cancelled\n            if:</p>\n         <ul>\n            <li>\n               <p>No blocks are written to the snapshot.</p>\n            </li>\n            <li>\n               <p>The snapshot is not completed after writing the last block of data.</p>\n            </li>\n         </ul>\n         <p>If no value is specified, the timeout defaults to <code>60</code> minutes.</p>"}))
    StartSnapshotRequest.type = Types::StartSnapshotRequest
    StartSnapshotResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the snapshot.</p>"}))
    StartSnapshotResponse.add_member(:snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'SnapshotId', traits: {"smithy.api#documentation" => "<p>The ID of the snapshot.</p>"}))
    StartSnapshotResponse.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerId, location_name: 'OwnerId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the snapshot owner.</p>"}))
    StartSnapshotResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the snapshot.</p>"}))
    StartSnapshotResponse.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the snapshot was created.</p>"}))
    StartSnapshotResponse.add_member(:volume_size, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeSize, location_name: 'VolumeSize', traits: {"smithy.api#documentation" => "<p>The size of the volume, in GiB.</p>"}))
    StartSnapshotResponse.add_member(:block_size, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockSize, location_name: 'BlockSize', traits: {"smithy.api#documentation" => "<p>The size of the blocks in the snapshot, in bytes.</p>"}))
    StartSnapshotResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags applied to the snapshot. You can specify up to 50 tags per snapshot. For more\n            information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html\"> Tagging your Amazon EC2\n                resources</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>"}))
    StartSnapshotResponse.add_member(:parent_snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'ParentSnapshotId', traits: {"smithy.api#documentation" => "<p>The ID of the parent snapshot.</p>"}))
    StartSnapshotResponse.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Key Management Service (KMS) key used to encrypt the snapshot.</p>"}))
    StartSnapshotResponse.add_member(:sse_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SSEType, location_name: 'SseType', traits: {"smithy.api#documentation" => "<p>Reserved for future use.</p>"}))
    StartSnapshotResponse.type = Types::StartSnapshotResponse
    Status.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "completed"}))
    Status.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "pending"}))
    Status.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "error"}))
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key of the tag.</p>"}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the tag.</p>"}))
    Tag.type = Types::Tag
    Tags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason for the validation exception.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionReason.add_member(:invalid_customer_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_CUSTOMER_KEY', traits: {"smithy.api#enumValue" => "INVALID_CUSTOMER_KEY"}))
    ValidationExceptionReason.add_member(:invalid_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PAGE_TOKEN', traits: {"smithy.api#enumValue" => "INVALID_PAGE_TOKEN"}))
    ValidationExceptionReason.add_member(:invalid_block_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_BLOCK_TOKEN', traits: {"smithy.api#enumValue" => "INVALID_BLOCK_TOKEN"}))
    ValidationExceptionReason.add_member(:invalid_grant_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_GRANT_TOKEN', traits: {"smithy.api#enumValue" => "INVALID_GRANT_TOKEN"}))
    ValidationExceptionReason.add_member(:invalid_snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_SNAPSHOT_ID', traits: {"smithy.api#enumValue" => "INVALID_SNAPSHOT_ID"}))
    ValidationExceptionReason.add_member(:unrelated_snapshots, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNRELATED_SNAPSHOTS', traits: {"smithy.api#enumValue" => "UNRELATED_SNAPSHOTS"}))
    ValidationExceptionReason.add_member(:invalid_block, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_BLOCK', traits: {"smithy.api#enumValue" => "INVALID_BLOCK"}))
    ValidationExceptionReason.add_member(:invalid_content_encoding, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_CONTENT_ENCODING', traits: {"smithy.api#enumValue" => "INVALID_CONTENT_ENCODING"}))
    ValidationExceptionReason.add_member(:invalid_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_TAG', traits: {"smithy.api#enumValue" => "INVALID_TAG"}))
    ValidationExceptionReason.add_member(:invalid_dependency_request, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_DEPENDENCY_REQUEST', traits: {"smithy.api#enumValue" => "INVALID_DEPENDENCY_REQUEST"}))
    ValidationExceptionReason.add_member(:invalid_parameter_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PARAMETER_VALUE', traits: {"smithy.api#enumValue" => "INVALID_PARAMETER_VALUE"}))
    ValidationExceptionReason.add_member(:invalid_volume_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_VOLUME_SIZE', traits: {"smithy.api#enumValue" => "INVALID_VOLUME_SIZE"}))
    ValidationExceptionReason.add_member(:conflicting_block_update, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFLICTING_BLOCK_UPDATE', traits: {"smithy.api#enumValue" => "CONFLICTING_BLOCK_UPDATE"}))
    ValidationExceptionReason.add_member(:invalid_image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_IMAGE_ID', traits: {"smithy.api#enumValue" => "INVALID_IMAGE_ID"}))
    ValidationExceptionReason.add_member(:write_request_timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WRITE_REQUEST_TIMEOUT', traits: {"smithy.api#enumValue" => "WRITE_REQUEST_TIMEOUT"}))

    Ebs = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ebs#Ebs"
      service.name = "Ebs"
      service.version = "2019-11-02"
      service.traits = {"aws.api#service" => {"sdkId" => "EBS", "arnNamespace" => "ebs", "cloudFormationName" => "EBS", "cloudTrailEventSource" => "ebs.amazonaws.com", "endpointPrefix" => "ebs"}, "aws.auth#sigv4" => {"name" => "ebs"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Elastic Block Store"}
      service.add_operation(:complete_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ebs#CompleteSnapshot"
        operation.name = "CompleteSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CompleteSnapshotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CompleteSnapshotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/snapshots/completion/{SnapshotId}", "code" => 202}}
      end)
      service.add_operation(:get_snapshot_block, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ebs#GetSnapshotBlock"
        operation.name = "GetSnapshotBlock"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSnapshotBlockRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSnapshotBlockResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/snapshots/{SnapshotId}/blocks/{BlockIndex}", "code" => 200}}
      end)
      service.add_operation(:list_changed_blocks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ebs#ListChangedBlocks"
        operation.name = "ListChangedBlocks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChangedBlocksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChangedBlocksResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/snapshots/{SecondSnapshotId}/changedblocks", "code" => 200}}
        operation[:paginator] = Paginators::ListChangedBlocks.new
      end)
      service.add_operation(:list_snapshot_blocks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ebs#ListSnapshotBlocks"
        operation.name = "ListSnapshotBlocks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSnapshotBlocksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSnapshotBlocksResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/snapshots/{SnapshotId}/blocks", "code" => 200}}
        operation[:paginator] = Paginators::ListSnapshotBlocks.new
      end)
      service.add_operation(:put_snapshot_block, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ebs#PutSnapshotBlock"
        operation.name = "PutSnapshotBlock"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutSnapshotBlockRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutSnapshotBlockResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.auth#unsignedPayload" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#http" => {"method" => "PUT", "uri" => "/snapshots/{SnapshotId}/blocks/{BlockIndex}", "code" => 201}}
      end)
      service.add_operation(:start_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ebs#StartSnapshot"
        operation.name = "StartSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSnapshotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSnapshotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/snapshots", "code" => 201}}
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
