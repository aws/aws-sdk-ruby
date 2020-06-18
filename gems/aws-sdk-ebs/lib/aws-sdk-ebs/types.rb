# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EBS
  module Types

    # A block of data in an Amazon Elastic Block Store snapshot.
    #
    # @!attribute [rw] block_index
    #   The block index.
    #   @return [Integer]
    #
    # @!attribute [rw] block_token
    #   The block token for the block index.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/Block AWS API Documentation
    #
    class Block < Struct.new(
      :block_index,
      :block_token)
      include Aws::Structure
    end

    # A block of data in an Amazon Elastic Block Store snapshot that is
    # different from another snapshot of the same volume/snapshot lineage.
    #
    # @!attribute [rw] block_index
    #   The block index.
    #   @return [Integer]
    #
    # @!attribute [rw] first_block_token
    #   The block token for the block index of the `FirstSnapshotId`
    #   specified in the `ListChangedBlocks` operation. This value is absent
    #   if the first snapshot does not have the changed block that is on the
    #   second snapshot.
    #   @return [String]
    #
    # @!attribute [rw] second_block_token
    #   The block token for the block index of the `SecondSnapshotId`
    #   specified in the `ListChangedBlocks` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/ChangedBlock AWS API Documentation
    #
    class ChangedBlock < Struct.new(
      :block_index,
      :first_block_token,
      :second_block_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSnapshotBlockRequest
    #   data as a hash:
    #
    #       {
    #         snapshot_id: "SnapshotId", # required
    #         block_index: 1, # required
    #         block_token: "BlockToken", # required
    #       }
    #
    # @!attribute [rw] snapshot_id
    #   The ID of the snapshot containing the block from which to get data.
    #   @return [String]
    #
    # @!attribute [rw] block_index
    #   The block index of the block from which to get data.
    #
    #   Obtain the `BlockIndex` by running the `ListChangedBlocks` or
    #   `ListSnapshotBlocks` operations.
    #   @return [Integer]
    #
    # @!attribute [rw] block_token
    #   The block token of the block from which to get data.
    #
    #   Obtain the `BlockToken` by running the `ListChangedBlocks` or
    #   `ListSnapshotBlocks` operations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/GetSnapshotBlockRequest AWS API Documentation
    #
    class GetSnapshotBlockRequest < Struct.new(
      :snapshot_id,
      :block_index,
      :block_token)
      include Aws::Structure
    end

    # @!attribute [rw] data_length
    #   The size of the data in the block.
    #   @return [Integer]
    #
    # @!attribute [rw] block_data
    #   The data content of the block.
    #   @return [IO]
    #
    # @!attribute [rw] checksum
    #   The checksum generated for the block, which is Base64 encoded.
    #   @return [String]
    #
    # @!attribute [rw] checksum_algorithm
    #   The algorithm used to generate the checksum for the block, such as
    #   SHA256.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/GetSnapshotBlockResponse AWS API Documentation
    #
    class GetSnapshotBlockResponse < Struct.new(
      :data_length,
      :block_data,
      :checksum,
      :checksum_algorithm)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListChangedBlocksRequest
    #   data as a hash:
    #
    #       {
    #         first_snapshot_id: "SnapshotId",
    #         second_snapshot_id: "SnapshotId", # required
    #         next_token: "PageToken",
    #         max_results: 1,
    #         starting_block_index: 1,
    #       }
    #
    # @!attribute [rw] first_snapshot_id
    #   The ID of the first snapshot to use for the comparison.
    #
    #   The `FirstSnapshotID` parameter must be specified with a
    #   `SecondSnapshotId` parameter; otherwise, an error occurs.
    #   @return [String]
    #
    # @!attribute [rw] second_snapshot_id
    #   The ID of the second snapshot to use for the comparison.
    #
    #   The `SecondSnapshotId` parameter must be specified with a
    #   `FirstSnapshotID` parameter; otherwise, an error occurs.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] starting_block_index
    #   The block index from which the comparison should start.
    #
    #   The list in the response will start from this block index or the
    #   next valid block index in the snapshots.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/ListChangedBlocksRequest AWS API Documentation
    #
    class ListChangedBlocksRequest < Struct.new(
      :first_snapshot_id,
      :second_snapshot_id,
      :next_token,
      :max_results,
      :starting_block_index)
      include Aws::Structure
    end

    # @!attribute [rw] changed_blocks
    #   An array of objects containing information about the changed blocks.
    #   @return [Array<Types::ChangedBlock>]
    #
    # @!attribute [rw] expiry_time
    #   The time when the `BlockToken` expires.
    #   @return [Time]
    #
    # @!attribute [rw] volume_size
    #   The size of the volume in GB.
    #   @return [Integer]
    #
    # @!attribute [rw] block_size
    #   The size of the block.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   null when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/ListChangedBlocksResponse AWS API Documentation
    #
    class ListChangedBlocksResponse < Struct.new(
      :changed_blocks,
      :expiry_time,
      :volume_size,
      :block_size,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSnapshotBlocksRequest
    #   data as a hash:
    #
    #       {
    #         snapshot_id: "SnapshotId", # required
    #         next_token: "PageToken",
    #         max_results: 1,
    #         starting_block_index: 1,
    #       }
    #
    # @!attribute [rw] snapshot_id
    #   The ID of the snapshot from which to get block indexes and block
    #   tokens.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] starting_block_index
    #   The block index from which the list should start. The list in the
    #   response will start from this block index or the next valid block
    #   index in the snapshot.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/ListSnapshotBlocksRequest AWS API Documentation
    #
    class ListSnapshotBlocksRequest < Struct.new(
      :snapshot_id,
      :next_token,
      :max_results,
      :starting_block_index)
      include Aws::Structure
    end

    # @!attribute [rw] blocks
    #   An array of objects containing information about the blocks.
    #   @return [Array<Types::Block>]
    #
    # @!attribute [rw] expiry_time
    #   The time when the `BlockToken` expires.
    #   @return [Time]
    #
    # @!attribute [rw] volume_size
    #   The size of the volume in GB.
    #   @return [Integer]
    #
    # @!attribute [rw] block_size
    #   The size of the block.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   null when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/ListSnapshotBlocksResponse AWS API Documentation
    #
    class ListSnapshotBlocksResponse < Struct.new(
      :blocks,
      :expiry_time,
      :volume_size,
      :block_size,
      :next_token)
      include Aws::Structure
    end

    # The specified resource does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The input fails to satisfy the constraints of the EBS direct APIs.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the validation exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason)
      include Aws::Structure
    end

  end
end
