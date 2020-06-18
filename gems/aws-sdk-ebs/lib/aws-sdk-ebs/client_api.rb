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

    Block = Shapes::StructureShape.new(name: 'Block')
    BlockData = Shapes::BlobShape.new(name: 'BlockData', streaming: true)
    BlockIndex = Shapes::IntegerShape.new(name: 'BlockIndex')
    BlockSize = Shapes::IntegerShape.new(name: 'BlockSize')
    BlockToken = Shapes::StringShape.new(name: 'BlockToken')
    Blocks = Shapes::ListShape.new(name: 'Blocks')
    ChangedBlock = Shapes::StructureShape.new(name: 'ChangedBlock')
    ChangedBlocks = Shapes::ListShape.new(name: 'ChangedBlocks')
    Checksum = Shapes::StringShape.new(name: 'Checksum')
    ChecksumAlgorithm = Shapes::StringShape.new(name: 'ChecksumAlgorithm')
    DataLength = Shapes::IntegerShape.new(name: 'DataLength')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GetSnapshotBlockRequest = Shapes::StructureShape.new(name: 'GetSnapshotBlockRequest')
    GetSnapshotBlockResponse = Shapes::StructureShape.new(name: 'GetSnapshotBlockResponse')
    ListChangedBlocksRequest = Shapes::StructureShape.new(name: 'ListChangedBlocksRequest')
    ListChangedBlocksResponse = Shapes::StructureShape.new(name: 'ListChangedBlocksResponse')
    ListSnapshotBlocksRequest = Shapes::StructureShape.new(name: 'ListSnapshotBlocksRequest')
    ListSnapshotBlocksResponse = Shapes::StructureShape.new(name: 'ListSnapshotBlocksResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    PageToken = Shapes::StringShape.new(name: 'PageToken')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SnapshotId = Shapes::StringShape.new(name: 'SnapshotId')
    TimeStamp = Shapes::TimestampShape.new(name: 'TimeStamp')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VolumeSize = Shapes::IntegerShape.new(name: 'VolumeSize')

    Block.add_member(:block_index, Shapes::ShapeRef.new(shape: BlockIndex, location_name: "BlockIndex"))
    Block.add_member(:block_token, Shapes::ShapeRef.new(shape: BlockToken, location_name: "BlockToken"))
    Block.struct_class = Types::Block

    Blocks.member = Shapes::ShapeRef.new(shape: Block)

    ChangedBlock.add_member(:block_index, Shapes::ShapeRef.new(shape: BlockIndex, location_name: "BlockIndex"))
    ChangedBlock.add_member(:first_block_token, Shapes::ShapeRef.new(shape: BlockToken, location_name: "FirstBlockToken"))
    ChangedBlock.add_member(:second_block_token, Shapes::ShapeRef.new(shape: BlockToken, location_name: "SecondBlockToken"))
    ChangedBlock.struct_class = Types::ChangedBlock

    ChangedBlocks.member = Shapes::ShapeRef.new(shape: ChangedBlock)

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

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

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

      api.add_operation(:get_snapshot_block, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSnapshotBlock"
        o.http_method = "GET"
        o.http_request_uri = "/snapshots/{snapshotId}/blocks/{blockIndex}"
        o.input = Shapes::ShapeRef.new(shape: GetSnapshotBlockRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSnapshotBlockResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_changed_blocks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChangedBlocks"
        o.http_method = "GET"
        o.http_request_uri = "/snapshots/{secondSnapshotId}/changedblocks"
        o.input = Shapes::ShapeRef.new(shape: ListChangedBlocksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChangedBlocksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)
    end

  end
end
