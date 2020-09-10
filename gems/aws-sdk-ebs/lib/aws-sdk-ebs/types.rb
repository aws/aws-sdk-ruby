# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EBS
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CompleteSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         snapshot_id: "SnapshotId", # required
    #         changed_blocks_count: 1, # required
    #         checksum: "Checksum",
    #         checksum_algorithm: "SHA256", # accepts SHA256
    #         checksum_aggregation_method: "LINEAR", # accepts LINEAR
    #       }
    #
    # @!attribute [rw] snapshot_id
    #   The ID of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] changed_blocks_count
    #   The number of blocks that were written to the snapshot.
    #   @return [Integer]
    #
    # @!attribute [rw] checksum
    #   An aggregated Base-64 SHA256 checksum based on the checksums of each
    #   written block.
    #
    #   To generate the aggregated checksum using the linear aggregation
    #   method, arrange the checksums for each written block in ascending
    #   order of their block index, concatenate them to form a single
    #   string, and then generate the checksum on the entire string using
    #   the SHA256 algorithm.
    #   @return [String]
    #
    # @!attribute [rw] checksum_algorithm
    #   The algorithm used to generate the checksum. Currently, the only
    #   supported algorithm is `SHA256`.
    #   @return [String]
    #
    # @!attribute [rw] checksum_aggregation_method
    #   The aggregation method used to generate the checksum. Currently, the
    #   only supported aggregation method is `LINEAR`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/CompleteSnapshotRequest AWS API Documentation
    #
    class CompleteSnapshotRequest < Struct.new(
      :snapshot_id,
      :changed_blocks_count,
      :checksum,
      :checksum_algorithm,
      :checksum_aggregation_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/CompleteSnapshotResponse AWS API Documentation
    #
    class CompleteSnapshotResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have reached the limit for concurrent API requests. For more
    # information, see [Optimizing performance of the EBS direct APIs][1] in
    # the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html#ebsapi-performance
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/ConcurrentLimitExceededException AWS API Documentation
    #
    class ConcurrentLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request uses the same client token as a previous, but
    # non-identical request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = [:block_data]
      include Aws::Structure
    end

    # An internal error has occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = [:blocks]
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutSnapshotBlockRequest
    #   data as a hash:
    #
    #       {
    #         snapshot_id: "SnapshotId", # required
    #         block_index: 1, # required
    #         block_data: "data", # required
    #         data_length: 1, # required
    #         progress: 1,
    #         checksum: "Checksum", # required
    #         checksum_algorithm: "SHA256", # required, accepts SHA256
    #       }
    #
    # @!attribute [rw] snapshot_id
    #   The ID of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] block_index
    #   The block index of the block in which to write the data. A block
    #   index is a logical index in units of `512` KiB blocks. To identify
    #   the block index, divide the logical offset of the data in the
    #   logical volume by the block size (logical offset of data/`524288`).
    #   The logical offset of the data must be `512` KiB aligned.
    #   @return [Integer]
    #
    # @!attribute [rw] block_data
    #   The data to write to the block.
    #
    #   The block data is not signed as part of the Signature Version 4
    #   signing process. As a result, you must generate and provide a
    #   Base64-encoded SHA256 checksum for the block data using the
    #   **x-amz-Checksum** header. Also, you must specify the checksum
    #   algorithm using the **x-amz-Checksum-Algorithm** header. The
    #   checksum that you provide is part of the Signature Version 4 signing
    #   process. It is validated against a checksum generated by Amazon EBS
    #   to ensure the validity and authenticity of the data. If the
    #   checksums do not correspond, the request fails. For more
    #   information, see [ Using checksums with the EBS direct APIs][1] in
    #   the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html#ebsapis-using-checksums
    #   @return [IO]
    #
    # @!attribute [rw] data_length
    #   The size of the data to write to the block, in bytes. Currently, the
    #   only supported size is `524288`.
    #
    #   Valid values: `524288`
    #   @return [Integer]
    #
    # @!attribute [rw] progress
    #   The progress of the write process, as a percentage.
    #   @return [Integer]
    #
    # @!attribute [rw] checksum
    #   A Base64-encoded SHA256 checksum of the data. Only SHA256 checksums
    #   are supported.
    #   @return [String]
    #
    # @!attribute [rw] checksum_algorithm
    #   The algorithm used to generate the checksum. Currently, the only
    #   supported algorithm is `SHA256`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/PutSnapshotBlockRequest AWS API Documentation
    #
    class PutSnapshotBlockRequest < Struct.new(
      :snapshot_id,
      :block_index,
      :block_data,
      :data_length,
      :progress,
      :checksum,
      :checksum_algorithm)
      SENSITIVE = [:block_data]
      include Aws::Structure
    end

    # @!attribute [rw] checksum
    #   The SHA256 checksum generated for the block data by Amazon EBS.
    #   @return [String]
    #
    # @!attribute [rw] checksum_algorithm
    #   The algorithm used by Amazon EBS to generate the checksum.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/PutSnapshotBlockResponse AWS API Documentation
    #
    class PutSnapshotBlockResponse < Struct.new(
      :checksum,
      :checksum_algorithm)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of API requests has exceed the maximum allowed API request
    # throttling limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/RequestThrottledException AWS API Documentation
    #
    class RequestThrottledException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your current service quotas do not allow you to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         volume_size: 1, # required
    #         parent_snapshot_id: "SnapshotId",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #         description: "Description",
    #         client_token: "IdempotencyToken",
    #         encrypted: false,
    #         kms_key_arn: "KmsKeyArn",
    #         timeout: 1,
    #       }
    #
    # @!attribute [rw] volume_size
    #   The size of the volume, in GiB. The maximum size is `16384` GiB (16
    #   TiB).
    #   @return [Integer]
    #
    # @!attribute [rw] parent_snapshot_id
    #   The ID of the parent snapshot. If there is no parent snapshot, or if
    #   you are creating the first snapshot for an on-premises volume, omit
    #   this parameter.
    #
    #   If your account is enabled for encryption by default, you cannot use
    #   an unencrypted snapshot as a parent snapshot. You must first create
    #   an encrypted copy of the parent snapshot using [CopySnapshot][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CopySnapshot.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the snapshot.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] description
    #   A description for the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully. The subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   For more information, see [ Idempotency for StartSnapshot API][1] in
    #   the *Amazon Elastic Compute Cloud User Guide*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-direct-api-idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   Indicates whether to encrypt the snapshot. To create an encrypted
    #   snapshot, specify `true`. To create an unencrypted snapshot, omit
    #   this parameter.
    #
    #   If you specify a value for **ParentSnapshotId**, omit this
    #   parameter.
    #
    #   If you specify `true`, the snapshot is encrypted using the CMK
    #   specified using the **KmsKeyArn** parameter. If no value is
    #   specified for **KmsKeyArn**, the default CMK for your account is
    #   used. If no default CMK has been specified for your account, the AWS
    #   managed CMK is used. To set a default CMK for your account, use [
    #   ModifyEbsDefaultKmsKeyId][1].
    #
    #   If your account is enabled for encryption by default, you cannot set
    #   this parameter to `false`. In this case, you can omit this
    #   parameter.
    #
    #   For more information, see [ Using encryption][2] in the *Amazon
    #   Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyEbsDefaultKmsKeyId.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html#ebsapis-using-encryption
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the AWS Key Management Service
    #   (AWS KMS) customer master key (CMK) to be used to encrypt the
    #   snapshot. If you do not specify a CMK, the default AWS managed CMK
    #   is used.
    #
    #   If you specify a **ParentSnapshotId**, omit this parameter; the
    #   snapshot will be encrypted using the same CMK that was used to
    #   encrypt the parent snapshot.
    #
    #   If **Encrypted** is set to `true`, you must specify a CMK ARN.
    #   @return [String]
    #
    # @!attribute [rw] timeout
    #   The amount of time (in minutes) after which the snapshot is
    #   automatically cancelled if:
    #
    #   * No blocks are written to the snapshot.
    #
    #   * The snapshot is not completed after writing the last block of
    #     data.
    #
    #   If no value is specified, the timeout defaults to `60` minutes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/StartSnapshotRequest AWS API Documentation
    #
    class StartSnapshotRequest < Struct.new(
      :volume_size,
      :parent_snapshot_id,
      :tags,
      :description,
      :client_token,
      :encrypted,
      :kms_key_arn,
      :timeout)
      SENSITIVE = [:kms_key_arn]
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The ID of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The AWS account ID of the snapshot owner.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp when the snapshot was created.
    #   @return [Time]
    #
    # @!attribute [rw] volume_size
    #   The size of the volume, in GiB.
    #   @return [Integer]
    #
    # @!attribute [rw] block_size
    #   The size of the blocks in the snapshot, in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   The tags applied to the snapshot. You can specify up to 50 tags per
    #   snapshot. For more information, see [ Tagging your Amazon EC2
    #   resources][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] parent_snapshot_id
    #   The ID of the parent snapshot.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the AWS Key Management Service
    #   (AWS KMS) customer master key (CMK) used to encrypt the snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/StartSnapshotResponse AWS API Documentation
    #
    class StartSnapshotResponse < Struct.new(
      :description,
      :snapshot_id,
      :owner_id,
      :status,
      :start_time,
      :volume_size,
      :block_size,
      :tags,
      :parent_snapshot_id,
      :kms_key_arn)
      SENSITIVE = [:kms_key_arn]
      include Aws::Structure
    end

    # Describes a tag.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       }
    #
    # @!attribute [rw] key
    #   The key of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
