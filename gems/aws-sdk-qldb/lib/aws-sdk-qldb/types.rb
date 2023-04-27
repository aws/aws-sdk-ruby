# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::QLDB
  module Types

    # @!attribute [rw] ledger_name
    #   The name of the ledger.
    #   @return [String]
    #
    # @!attribute [rw] stream_id
    #   The UUID (represented in Base62-encoded text) of the QLDB journal
    #   stream to be canceled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/CancelJournalKinesisStreamRequest AWS API Documentation
    #
    class CancelJournalKinesisStreamRequest < Struct.new(
      :ledger_name,
      :stream_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_id
    #   The UUID (Base62-encoded text) of the canceled QLDB journal stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/CancelJournalKinesisStreamResponse AWS API Documentation
    #
    class CancelJournalKinesisStreamResponse < Struct.new(
      :stream_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the ledger that you want to create. The name must be
    #   unique among all of the ledgers in your Amazon Web Services account
    #   in the current Region.
    #
    #   Naming constraints for ledger names are defined in [Quotas in Amazon
    #   QLDB][1] in the *Amazon QLDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pairs to add as tags to the ledger that you want to
    #   create. Tag keys are case sensitive. Tag values are case sensitive
    #   and can be null.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] permissions_mode
    #   The permissions mode to assign to the ledger that you want to
    #   create. This parameter can have one of the following values:
    #
    #   * `ALLOW_ALL`: A legacy permissions mode that enables access control
    #     with API-level granularity for ledgers.
    #
    #     This mode allows users who have the `SendCommand` API permission
    #     for this ledger to run all PartiQL commands (hence, `ALLOW_ALL`)
    #     on any tables in the specified ledger. This mode disregards any
    #     table-level or command-level IAM permissions policies that you
    #     create for the ledger.
    #
    #   * `STANDARD`: (*Recommended*) A permissions mode that enables access
    #     control with finer granularity for ledgers, tables, and PartiQL
    #     commands.
    #
    #     By default, this mode denies all user requests to run any PartiQL
    #     commands on any tables in this ledger. To allow PartiQL commands
    #     to run, you must create IAM permissions policies for specific
    #     table resources and PartiQL actions, in addition to the
    #     `SendCommand` API permission for the ledger. For information, see
    #     [Getting started with the standard permissions mode][1] in the
    #     *Amazon QLDB Developer Guide*.
    #
    #   <note markdown="1"> We strongly recommend using the `STANDARD` permissions mode to
    #   maximize the security of your ledger data.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-standard-mode.html
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   Specifies whether the ledger is protected from being deleted by any
    #   user. If not defined during ledger creation, this feature is enabled
    #   (`true`) by default.
    #
    #   If deletion protection is enabled, you must first disable it before
    #   you can delete the ledger. You can disable it by calling the
    #   `UpdateLedger` operation to set this parameter to `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key
    #   The key in Key Management Service (KMS) to use for encryption of
    #   data at rest in the ledger. For more information, see [Encryption at
    #   rest][1] in the *Amazon QLDB Developer Guide*.
    #
    #   Use one of the following options to specify this parameter:
    #
    #   * `AWS_OWNED_KMS_KEY`: Use an KMS key that is owned and managed by
    #     Amazon Web Services on your behalf.
    #
    #   * **Undefined**: By default, use an Amazon Web Services owned KMS
    #     key.
    #
    #   * **A valid symmetric customer managed KMS key**: Use the specified
    #     symmetric encryption KMS key in your account that you create, own,
    #     and manage.
    #
    #     Amazon QLDB does not support asymmetric keys. For more
    #     information, see [Using symmetric and asymmetric keys][2] in the
    #     *Key Management Service Developer Guide*.
    #
    #   To specify a customer managed KMS key, you can use its key ID,
    #   Amazon Resource Name (ARN), alias name, or alias ARN. When using an
    #   alias name, prefix it with `"alias/"`. To specify a key in a
    #   different Amazon Web Services account, you must use the key ARN or
    #   alias ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`
    #
    #   For more information, see [Key identifiers (KeyId)][3] in the *Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/qldb/latest/developerguide/encryption-at-rest.html
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/CreateLedgerRequest AWS API Documentation
    #
    class CreateLedgerRequest < Struct.new(
      :name,
      :tags,
      :permissions_mode,
      :deletion_protection,
      :kms_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the ledger.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the ledger.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current status of the ledger.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time, in epoch time format, when the ledger was
    #   created. (Epoch time format is the number of seconds elapsed since
    #   12:00:00 AM January 1, 1970 UTC.)
    #   @return [Time]
    #
    # @!attribute [rw] permissions_mode
    #   The permissions mode of the ledger that you created.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   Specifies whether the ledger is protected from being deleted by any
    #   user. If not defined during ledger creation, this feature is enabled
    #   (`true`) by default.
    #
    #   If deletion protection is enabled, you must first disable it before
    #   you can delete the ledger. You can disable it by calling the
    #   `UpdateLedger` operation to set this parameter to `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the customer managed KMS key that the ledger uses for
    #   encryption at rest. If this parameter is undefined, the ledger uses
    #   an Amazon Web Services owned KMS key for encryption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/CreateLedgerResponse AWS API Documentation
    #
    class CreateLedgerResponse < Struct.new(
      :name,
      :arn,
      :state,
      :creation_date_time,
      :permissions_mode,
      :deletion_protection,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the ledger that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/DeleteLedgerRequest AWS API Documentation
    #
    class DeleteLedgerRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ledger_name
    #   The name of the ledger.
    #   @return [String]
    #
    # @!attribute [rw] stream_id
    #   The UUID (represented in Base62-encoded text) of the QLDB journal
    #   stream to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/DescribeJournalKinesisStreamRequest AWS API Documentation
    #
    class DescribeJournalKinesisStreamRequest < Struct.new(
      :ledger_name,
      :stream_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream
    #   Information about the QLDB journal stream returned by a
    #   `DescribeJournalS3Export` request.
    #   @return [Types::JournalKinesisStreamDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/DescribeJournalKinesisStreamResponse AWS API Documentation
    #
    class DescribeJournalKinesisStreamResponse < Struct.new(
      :stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the ledger.
    #   @return [String]
    #
    # @!attribute [rw] export_id
    #   The UUID (represented in Base62-encoded text) of the journal export
    #   job to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/DescribeJournalS3ExportRequest AWS API Documentation
    #
    class DescribeJournalS3ExportRequest < Struct.new(
      :name,
      :export_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_description
    #   Information about the journal export job returned by a
    #   `DescribeJournalS3Export` request.
    #   @return [Types::JournalS3ExportDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/DescribeJournalS3ExportResponse AWS API Documentation
    #
    class DescribeJournalS3ExportResponse < Struct.new(
      :export_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the ledger that you want to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/DescribeLedgerRequest AWS API Documentation
    #
    class DescribeLedgerRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the ledger.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the ledger.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current status of the ledger.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time, in epoch time format, when the ledger was
    #   created. (Epoch time format is the number of seconds elapsed since
    #   12:00:00 AM January 1, 1970 UTC.)
    #   @return [Time]
    #
    # @!attribute [rw] permissions_mode
    #   The permissions mode of the ledger.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   Specifies whether the ledger is protected from being deleted by any
    #   user. If not defined during ledger creation, this feature is enabled
    #   (`true`) by default.
    #
    #   If deletion protection is enabled, you must first disable it before
    #   you can delete the ledger. You can disable it by calling the
    #   `UpdateLedger` operation to set this parameter to `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] encryption_description
    #   Information about the encryption of data at rest in the ledger. This
    #   includes the current status, the KMS key, and when the key became
    #   inaccessible (in the case of an error).
    #   @return [Types::LedgerEncryptionDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/DescribeLedgerResponse AWS API Documentation
    #
    class DescribeLedgerResponse < Struct.new(
      :name,
      :arn,
      :state,
      :creation_date_time,
      :permissions_mode,
      :deletion_protection,
      :encryption_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the ledger.
    #   @return [String]
    #
    # @!attribute [rw] inclusive_start_time
    #   The inclusive start date and time for the range of journal contents
    #   to export.
    #
    #   The `InclusiveStartTime` must be in `ISO 8601` date and time format
    #   and in Universal Coordinated Time (UTC). For example:
    #   `2019-06-13T21:36:34Z`.
    #
    #   The `InclusiveStartTime` must be before `ExclusiveEndTime`.
    #
    #   If you provide an `InclusiveStartTime` that is before the ledger's
    #   `CreationDateTime`, Amazon QLDB defaults it to the ledger's
    #   `CreationDateTime`.
    #   @return [Time]
    #
    # @!attribute [rw] exclusive_end_time
    #   The exclusive end date and time for the range of journal contents to
    #   export.
    #
    #   The `ExclusiveEndTime` must be in `ISO 8601` date and time format
    #   and in Universal Coordinated Time (UTC). For example:
    #   `2019-06-13T21:36:34Z`.
    #
    #   The `ExclusiveEndTime` must be less than or equal to the current UTC
    #   date and time.
    #   @return [Time]
    #
    # @!attribute [rw] s3_export_configuration
    #   The configuration settings of the Amazon S3 bucket destination for
    #   your export request.
    #   @return [Types::S3ExportConfiguration]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants QLDB
    #   permissions for a journal export job to do the following:
    #
    #   * Write objects into your Amazon S3 bucket.
    #
    #   * (Optional) Use your customer managed key in Key Management Service
    #     (KMS) for server-side encryption of your exported data.
    #
    #   To pass a role to QLDB when requesting a journal export, you must
    #   have permissions to perform the `iam:PassRole` action on the IAM
    #   role resource. This is required for all journal export requests.
    #   @return [String]
    #
    # @!attribute [rw] output_format
    #   The output format of your exported journal data. A journal export
    #   job can write the data objects in either the text or binary
    #   representation of [Amazon Ion][1] format, or in [JSON Lines][2] text
    #   format.
    #
    #   Default: `ION_TEXT`
    #
    #   In JSON Lines format, each journal block in an exported data object
    #   is a valid JSON object that is delimited by a newline. You can use
    #   this format to directly integrate JSON exports with analytics tools
    #   such as Amazon Athena and Glue because these services can parse
    #   newline-delimited JSON automatically.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/qldb/latest/developerguide/ion.html
    #   [2]: https://jsonlines.org/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ExportJournalToS3Request AWS API Documentation
    #
    class ExportJournalToS3Request < Struct.new(
      :name,
      :inclusive_start_time,
      :exclusive_end_time,
      :s3_export_configuration,
      :role_arn,
      :output_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_id
    #   The UUID (represented in Base62-encoded text) that QLDB assigns to
    #   each journal export job.
    #
    #   To describe your export request and check the status of the job, you
    #   can use `ExportId` to call `DescribeJournalS3Export`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ExportJournalToS3Response AWS API Documentation
    #
    class ExportJournalToS3Response < Struct.new(
      :export_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the ledger.
    #   @return [String]
    #
    # @!attribute [rw] block_address
    #   The location of the block that you want to request. An address is an
    #   Amazon Ion structure that has two fields: `strandId` and
    #   `sequenceNo`.
    #
    #   For example: `\{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:14\}`.
    #   @return [Types::ValueHolder]
    #
    # @!attribute [rw] digest_tip_address
    #   The latest block location covered by the digest for which to request
    #   a proof. An address is an Amazon Ion structure that has two fields:
    #   `strandId` and `sequenceNo`.
    #
    #   For example: `\{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:49\}`.
    #   @return [Types::ValueHolder]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/GetBlockRequest AWS API Documentation
    #
    class GetBlockRequest < Struct.new(
      :name,
      :block_address,
      :digest_tip_address)
      SENSITIVE = [:block_address, :digest_tip_address]
      include Aws::Structure
    end

    # @!attribute [rw] block
    #   The block data object in Amazon Ion format.
    #   @return [Types::ValueHolder]
    #
    # @!attribute [rw] proof
    #   The proof object in Amazon Ion format returned by a `GetBlock`
    #   request. A proof contains the list of hash values required to
    #   recalculate the specified digest using a Merkle tree, starting with
    #   the specified block.
    #   @return [Types::ValueHolder]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/GetBlockResponse AWS API Documentation
    #
    class GetBlockResponse < Struct.new(
      :block,
      :proof)
      SENSITIVE = [:block, :proof]
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the ledger.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/GetDigestRequest AWS API Documentation
    #
    class GetDigestRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] digest
    #   The 256-bit hash value representing the digest returned by a
    #   `GetDigest` request.
    #   @return [String]
    #
    # @!attribute [rw] digest_tip_address
    #   The latest block location covered by the digest that you requested.
    #   An address is an Amazon Ion structure that has two fields:
    #   `strandId` and `sequenceNo`.
    #   @return [Types::ValueHolder]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/GetDigestResponse AWS API Documentation
    #
    class GetDigestResponse < Struct.new(
      :digest,
      :digest_tip_address)
      SENSITIVE = [:digest_tip_address]
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the ledger.
    #   @return [String]
    #
    # @!attribute [rw] block_address
    #   The block location of the document revision to be verified. An
    #   address is an Amazon Ion structure that has two fields: `strandId`
    #   and `sequenceNo`.
    #
    #   For example: `\{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:14\}`.
    #   @return [Types::ValueHolder]
    #
    # @!attribute [rw] document_id
    #   The UUID (represented in Base62-encoded text) of the document to be
    #   verified.
    #   @return [String]
    #
    # @!attribute [rw] digest_tip_address
    #   The latest block location covered by the digest for which to request
    #   a proof. An address is an Amazon Ion structure that has two fields:
    #   `strandId` and `sequenceNo`.
    #
    #   For example: `\{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:49\}`.
    #   @return [Types::ValueHolder]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/GetRevisionRequest AWS API Documentation
    #
    class GetRevisionRequest < Struct.new(
      :name,
      :block_address,
      :document_id,
      :digest_tip_address)
      SENSITIVE = [:block_address, :digest_tip_address]
      include Aws::Structure
    end

    # @!attribute [rw] proof
    #   The proof object in Amazon Ion format returned by a `GetRevision`
    #   request. A proof contains the list of hash values that are required
    #   to recalculate the specified digest using a Merkle tree, starting
    #   with the specified document revision.
    #   @return [Types::ValueHolder]
    #
    # @!attribute [rw] revision
    #   The document revision data object in Amazon Ion format.
    #   @return [Types::ValueHolder]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/GetRevisionResponse AWS API Documentation
    #
    class GetRevisionResponse < Struct.new(
      :proof,
      :revision)
      SENSITIVE = [:proof, :revision]
      include Aws::Structure
    end

    # One or more parameters in the request aren't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] parameter_name
    #   The name of the invalid parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message,
      :parameter_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Amazon QLDB journal stream, including the Amazon
    # Resource Name (ARN), stream name, creation time, current status, and
    # the parameters of the original stream creation request.
    #
    # @!attribute [rw] ledger_name
    #   The name of the ledger.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time, in epoch time format, when the QLDB journal
    #   stream was created. (Epoch time format is the number of seconds
    #   elapsed since 12:00:00 AM January 1, 1970 UTC.)
    #   @return [Time]
    #
    # @!attribute [rw] inclusive_start_time
    #   The inclusive start date and time from which to start streaming
    #   journal data.
    #   @return [Time]
    #
    # @!attribute [rw] exclusive_end_time
    #   The exclusive date and time that specifies when the stream ends. If
    #   this parameter is undefined, the stream runs indefinitely until you
    #   cancel it.
    #   @return [Time]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants QLDB
    #   permissions for a journal stream to write data records to a Kinesis
    #   Data Streams resource.
    #   @return [String]
    #
    # @!attribute [rw] stream_id
    #   The UUID (represented in Base62-encoded text) of the QLDB journal
    #   stream.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the QLDB journal stream.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current state of the QLDB journal stream.
    #   @return [String]
    #
    # @!attribute [rw] kinesis_configuration
    #   The configuration settings of the Amazon Kinesis Data Streams
    #   destination for a QLDB journal stream.
    #   @return [Types::KinesisConfiguration]
    #
    # @!attribute [rw] error_cause
    #   The error message that describes the reason that a stream has a
    #   status of `IMPAIRED` or `FAILED`. This is not applicable to streams
    #   that have other status values.
    #   @return [String]
    #
    # @!attribute [rw] stream_name
    #   The user-defined name of the QLDB journal stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/JournalKinesisStreamDescription AWS API Documentation
    #
    class JournalKinesisStreamDescription < Struct.new(
      :ledger_name,
      :creation_time,
      :inclusive_start_time,
      :exclusive_end_time,
      :role_arn,
      :stream_id,
      :arn,
      :status,
      :kinesis_configuration,
      :error_cause,
      :stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a journal export job, including the ledger name,
    # export ID, creation time, current status, and the parameters of the
    # original export creation request.
    #
    # @!attribute [rw] ledger_name
    #   The name of the ledger.
    #   @return [String]
    #
    # @!attribute [rw] export_id
    #   The UUID (represented in Base62-encoded text) of the journal export
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] export_creation_time
    #   The date and time, in epoch time format, when the export job was
    #   created. (Epoch time format is the number of seconds elapsed since
    #   12:00:00 AM January 1, 1970 UTC.)
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current state of the journal export job.
    #   @return [String]
    #
    # @!attribute [rw] inclusive_start_time
    #   The inclusive start date and time for the range of journal contents
    #   that was specified in the original export request.
    #   @return [Time]
    #
    # @!attribute [rw] exclusive_end_time
    #   The exclusive end date and time for the range of journal contents
    #   that was specified in the original export request.
    #   @return [Time]
    #
    # @!attribute [rw] s3_export_configuration
    #   The Amazon Simple Storage Service (Amazon S3) bucket location in
    #   which a journal export job writes the journal contents.
    #   @return [Types::S3ExportConfiguration]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants QLDB
    #   permissions for a journal export job to do the following:
    #
    #   * Write objects into your Amazon Simple Storage Service (Amazon S3)
    #     bucket.
    #
    #   * (Optional) Use your customer managed key in Key Management Service
    #     (KMS) for server-side encryption of your exported data.
    #   @return [String]
    #
    # @!attribute [rw] output_format
    #   The output format of the exported journal data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/JournalS3ExportDescription AWS API Documentation
    #
    class JournalS3ExportDescription < Struct.new(
      :ledger_name,
      :export_id,
      :export_creation_time,
      :status,
      :inclusive_start_time,
      :exclusive_end_time,
      :s3_export_configuration,
      :role_arn,
      :output_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration settings of the Amazon Kinesis Data Streams
    # destination for an Amazon QLDB journal stream.
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the Kinesis Data Streams resource.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_enabled
    #   Enables QLDB to publish multiple data records in a single Kinesis
    #   Data Streams record, increasing the number of records sent per API
    #   call.
    #
    #   Default: `True`
    #
    #   Record aggregation has important implications for processing records
    #   and requires de-aggregation in your stream consumer. To learn more,
    #   see [KPL Key Concepts][1] and [Consumer De-aggregation][2] in the
    #   *Amazon Kinesis Data Streams Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/streams/latest/dev/kinesis-kpl-concepts.html
    #   [2]: https://docs.aws.amazon.com/streams/latest/dev/kinesis-kpl-consumer-deaggregation.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/KinesisConfiguration AWS API Documentation
    #
    class KinesisConfiguration < Struct.new(
      :stream_arn,
      :aggregation_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the encryption of data at rest in an Amazon QLDB
    # ledger. This includes the current status, the key in Key Management
    # Service (KMS), and when the key became inaccessible (in the case of an
    # error).
    #
    # For more information, see [Encryption at rest][1] in the *Amazon QLDB
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/qldb/latest/developerguide/encryption-at-rest.html
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the customer managed KMS key that
    #   the ledger uses for encryption at rest. If this parameter is
    #   undefined, the ledger uses an Amazon Web Services owned KMS key for
    #   encryption.
    #   @return [String]
    #
    # @!attribute [rw] encryption_status
    #   The current state of encryption at rest for the ledger. This can be
    #   one of the following values:
    #
    #   * `ENABLED`: Encryption is fully enabled using the specified key.
    #
    #   * `UPDATING`: The ledger is actively processing the specified key
    #     change.
    #
    #     Key changes in QLDB are asynchronous. The ledger is fully
    #     accessible without any performance impact while the key change is
    #     being processed. The amount of time it takes to update a key
    #     varies depending on the ledger size.
    #
    #   * `KMS_KEY_INACCESSIBLE`: The specified customer managed KMS key is
    #     not accessible, and the ledger is impaired. Either the key was
    #     disabled or deleted, or the grants on the key were revoked. When a
    #     ledger is impaired, it is not accessible and does not accept any
    #     read or write requests.
    #
    #     An impaired ledger automatically returns to an active state after
    #     you restore the grants on the key, or re-enable the key that was
    #     disabled. However, deleting a customer managed KMS key is
    #     irreversible. After a key is deleted, you can no longer access the
    #     ledgers that are protected with that key, and the data becomes
    #     unrecoverable permanently.
    #   @return [String]
    #
    # @!attribute [rw] inaccessible_kms_key_date_time
    #   The date and time, in epoch time format, when the KMS key first
    #   became inaccessible, in the case of an error. (Epoch time format is
    #   the number of seconds that have elapsed since 12:00:00 AM January 1,
    #   1970 UTC.)
    #
    #   This parameter is undefined if the KMS key is accessible.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/LedgerEncryptionDescription AWS API Documentation
    #
    class LedgerEncryptionDescription < Struct.new(
      :kms_key_arn,
      :encryption_status,
      :inaccessible_kms_key_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a ledger, including its name, state, and when it was
    # created.
    #
    # @!attribute [rw] name
    #   The name of the ledger.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current status of the ledger.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time, in epoch time format, when the ledger was
    #   created. (Epoch time format is the number of seconds elapsed since
    #   12:00:00 AM January 1, 1970 UTC.)
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/LedgerSummary AWS API Documentation
    #
    class LedgerSummary < Struct.new(
      :name,
      :state,
      :creation_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have reached the limit on the maximum number of resources allowed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ledger_name
    #   The name of the ledger.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single
    #   `ListJournalKinesisStreamsForLedger` request. (The actual number of
    #   results returned might be fewer.)
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token, indicating that you want to retrieve the next
    #   page of results. If you received a value for `NextToken` in the
    #   response from a previous `ListJournalKinesisStreamsForLedger` call,
    #   you should use that value as input here.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ListJournalKinesisStreamsForLedgerRequest AWS API Documentation
    #
    class ListJournalKinesisStreamsForLedgerRequest < Struct.new(
      :ledger_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] streams
    #   The QLDB journal streams that are currently associated with the
    #   given ledger.
    #   @return [Array<Types::JournalKinesisStreamDescription>]
    #
    # @!attribute [rw] next_token
    #   * If `NextToken` is empty, the last page of results has been
    #     processed and there are no more results to be retrieved.
    #
    #   * If `NextToken` is *not* empty, more results are available. To
    #     retrieve the next page of results, use the value of `NextToken` in
    #     a subsequent `ListJournalKinesisStreamsForLedger` call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ListJournalKinesisStreamsForLedgerResponse AWS API Documentation
    #
    class ListJournalKinesisStreamsForLedgerResponse < Struct.new(
      :streams,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the ledger.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single
    #   `ListJournalS3ExportsForLedger` request. (The actual number of
    #   results returned might be fewer.)
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token, indicating that you want to retrieve the next
    #   page of results. If you received a value for `NextToken` in the
    #   response from a previous `ListJournalS3ExportsForLedger` call, then
    #   you should use that value as input here.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ListJournalS3ExportsForLedgerRequest AWS API Documentation
    #
    class ListJournalS3ExportsForLedgerRequest < Struct.new(
      :name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] journal_s3_exports
    #   The journal export jobs that are currently associated with the
    #   specified ledger.
    #   @return [Array<Types::JournalS3ExportDescription>]
    #
    # @!attribute [rw] next_token
    #   * If `NextToken` is empty, then the last page of results has been
    #     processed and there are no more results to be retrieved.
    #
    #   * If `NextToken` is *not* empty, then there are more results
    #     available. To retrieve the next page of results, use the value of
    #     `NextToken` in a subsequent `ListJournalS3ExportsForLedger` call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ListJournalS3ExportsForLedgerResponse AWS API Documentation
    #
    class ListJournalS3ExportsForLedgerResponse < Struct.new(
      :journal_s3_exports,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single
    #   `ListJournalS3Exports` request. (The actual number of results
    #   returned might be fewer.)
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token, indicating that you want to retrieve the next
    #   page of results. If you received a value for `NextToken` in the
    #   response from a previous `ListJournalS3Exports` call, then you
    #   should use that value as input here.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ListJournalS3ExportsRequest AWS API Documentation
    #
    class ListJournalS3ExportsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] journal_s3_exports
    #   The journal export jobs for all ledgers that are associated with the
    #   current Amazon Web Services account and Region.
    #   @return [Array<Types::JournalS3ExportDescription>]
    #
    # @!attribute [rw] next_token
    #   * If `NextToken` is empty, then the last page of results has been
    #     processed and there are no more results to be retrieved.
    #
    #   * If `NextToken` is *not* empty, then there are more results
    #     available. To retrieve the next page of results, use the value of
    #     `NextToken` in a subsequent `ListJournalS3Exports` call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ListJournalS3ExportsResponse AWS API Documentation
    #
    class ListJournalS3ExportsResponse < Struct.new(
      :journal_s3_exports,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single `ListLedgers`
    #   request. (The actual number of results returned might be fewer.)
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token, indicating that you want to retrieve the next
    #   page of results. If you received a value for `NextToken` in the
    #   response from a previous `ListLedgers` call, then you should use
    #   that value as input here.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ListLedgersRequest AWS API Documentation
    #
    class ListLedgersRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ledgers
    #   The ledgers that are associated with the current Amazon Web Services
    #   account and Region.
    #   @return [Array<Types::LedgerSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token, indicating whether there are more results
    #   available:
    #
    #   * If `NextToken` is empty, then the last page of results has been
    #     processed and there are no more results to be retrieved.
    #
    #   * If `NextToken` is *not* empty, then there are more results
    #     available. To retrieve the next page of results, use the value of
    #     `NextToken` in a subsequent `ListLedgers` call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ListLedgersResponse AWS API Documentation
    #
    class ListLedgersResponse < Struct.new(
      :ledgers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for which to list the tags. For
    #   example:
    #
    #   `arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags that are currently associated with the specified Amazon
    #   QLDB resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Struct.new(
      :message,
      :resource_type,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource can't be modified at this time.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message,
      :resource_type,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_type,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because a condition wasn't satisfied in advance.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ResourcePreconditionNotMetException AWS API Documentation
    #
    class ResourcePreconditionNotMetException < Struct.new(
      :message,
      :resource_type,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The encryption settings that are used by a journal export job to write
    # data in an Amazon Simple Storage Service (Amazon S3) bucket.
    #
    # @!attribute [rw] object_encryption_type
    #   The Amazon S3 object encryption type.
    #
    #   To learn more about server-side encryption options in Amazon S3, see
    #   [Protecting Data Using Server-Side Encryption][1] in the *Amazon S3
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of a symmetric encryption key in Key
    #   Management Service (KMS). Amazon S3 does not support asymmetric KMS
    #   keys.
    #
    #   You must provide a `KmsKeyArn` if you specify `SSE_KMS` as the
    #   `ObjectEncryptionType`.
    #
    #   `KmsKeyArn` is not required if you specify `SSE_S3` as the
    #   `ObjectEncryptionType`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/S3EncryptionConfiguration AWS API Documentation
    #
    class S3EncryptionConfiguration < Struct.new(
      :object_encryption_type,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Simple Storage Service (Amazon S3) bucket location in which
    # a journal export job writes the journal contents.
    #
    # @!attribute [rw] bucket
    #   The Amazon S3 bucket name in which a journal export job writes the
    #   journal contents.
    #
    #   The bucket name must comply with the Amazon S3 bucket naming
    #   conventions. For more information, see [Bucket Restrictions and
    #   Limitations][1] in the *Amazon S3 Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The prefix for the Amazon S3 bucket in which a journal export job
    #   writes the journal contents.
    #
    #   The prefix must comply with Amazon S3 key naming rules and
    #   restrictions. For more information, see [Object Key and Metadata][1]
    #   in the *Amazon S3 Developer Guide*.
    #
    #   The following are examples of valid `Prefix` values:
    #
    #   * `JournalExports-ForMyLedger/Testing/`
    #
    #   * `JournalExports`
    #
    #   * `My:Tests/`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption settings that are used by a journal export job to
    #   write data in an Amazon S3 bucket.
    #   @return [Types::S3EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/S3ExportConfiguration AWS API Documentation
    #
    class S3ExportConfiguration < Struct.new(
      :bucket,
      :prefix,
      :encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ledger_name
    #   The name of the ledger.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants QLDB
    #   permissions for a journal stream to write data records to a Kinesis
    #   Data Streams resource.
    #
    #   To pass a role to QLDB when requesting a journal stream, you must
    #   have permissions to perform the `iam:PassRole` action on the IAM
    #   role resource. This is required for all journal stream requests.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pairs to add as tags to the stream that you want to
    #   create. Tag keys are case sensitive. Tag values are case sensitive
    #   and can be null.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] inclusive_start_time
    #   The inclusive start date and time from which to start streaming
    #   journal data. This parameter must be in `ISO 8601` date and time
    #   format and in Universal Coordinated Time (UTC). For example:
    #   `2019-06-13T21:36:34Z`.
    #
    #   The `InclusiveStartTime` cannot be in the future and must be before
    #   `ExclusiveEndTime`.
    #
    #   If you provide an `InclusiveStartTime` that is before the ledger's
    #   `CreationDateTime`, QLDB effectively defaults it to the ledger's
    #   `CreationDateTime`.
    #   @return [Time]
    #
    # @!attribute [rw] exclusive_end_time
    #   The exclusive date and time that specifies when the stream ends. If
    #   you don't define this parameter, the stream runs indefinitely until
    #   you cancel it.
    #
    #   The `ExclusiveEndTime` must be in `ISO 8601` date and time format
    #   and in Universal Coordinated Time (UTC). For example:
    #   `2019-06-13T21:36:34Z`.
    #   @return [Time]
    #
    # @!attribute [rw] kinesis_configuration
    #   The configuration settings of the Kinesis Data Streams destination
    #   for your stream request.
    #   @return [Types::KinesisConfiguration]
    #
    # @!attribute [rw] stream_name
    #   The name that you want to assign to the QLDB journal stream.
    #   User-defined names can help identify and indicate the purpose of a
    #   stream.
    #
    #   Your stream name must be unique among other *active* streams for a
    #   given ledger. Stream names have the same naming constraints as
    #   ledger names, as defined in [Quotas in Amazon QLDB][1] in the
    #   *Amazon QLDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/StreamJournalToKinesisRequest AWS API Documentation
    #
    class StreamJournalToKinesisRequest < Struct.new(
      :ledger_name,
      :role_arn,
      :tags,
      :inclusive_start_time,
      :exclusive_end_time,
      :kinesis_configuration,
      :stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_id
    #   The UUID (represented in Base62-encoded text) that QLDB assigns to
    #   each QLDB journal stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/StreamJournalToKinesisResponse AWS API Documentation
    #
    class StreamJournalToKinesisResponse < Struct.new(
      :stream_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) to which you want to add the tags.
    #   For example:
    #
    #   `arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger`
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pairs to add as tags to the specified QLDB resource.
    #   Tag keys are case sensitive. If you specify a key that already
    #   exists for the resource, your request fails and returns an error.
    #   Tag values are case sensitive and can be null.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) from which to remove the tags. For
    #   example:
    #
    #   `arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger`
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the ledger.
    #   @return [String]
    #
    # @!attribute [rw] permissions_mode
    #   The permissions mode to assign to the ledger. This parameter can
    #   have one of the following values:
    #
    #   * `ALLOW_ALL`: A legacy permissions mode that enables access control
    #     with API-level granularity for ledgers.
    #
    #     This mode allows users who have the `SendCommand` API permission
    #     for this ledger to run all PartiQL commands (hence, `ALLOW_ALL`)
    #     on any tables in the specified ledger. This mode disregards any
    #     table-level or command-level IAM permissions policies that you
    #     create for the ledger.
    #
    #   * `STANDARD`: (*Recommended*) A permissions mode that enables access
    #     control with finer granularity for ledgers, tables, and PartiQL
    #     commands.
    #
    #     By default, this mode denies all user requests to run any PartiQL
    #     commands on any tables in this ledger. To allow PartiQL commands
    #     to run, you must create IAM permissions policies for specific
    #     table resources and PartiQL actions, in addition to the
    #     `SendCommand` API permission for the ledger. For information, see
    #     [Getting started with the standard permissions mode][1] in the
    #     *Amazon QLDB Developer Guide*.
    #
    #   <note markdown="1"> We strongly recommend using the `STANDARD` permissions mode to
    #   maximize the security of your ledger data.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-standard-mode.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/UpdateLedgerPermissionsModeRequest AWS API Documentation
    #
    class UpdateLedgerPermissionsModeRequest < Struct.new(
      :name,
      :permissions_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the ledger.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the ledger.
    #   @return [String]
    #
    # @!attribute [rw] permissions_mode
    #   The current permissions mode of the ledger.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/UpdateLedgerPermissionsModeResponse AWS API Documentation
    #
    class UpdateLedgerPermissionsModeResponse < Struct.new(
      :name,
      :arn,
      :permissions_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the ledger.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   Specifies whether the ledger is protected from being deleted by any
    #   user. If not defined during ledger creation, this feature is enabled
    #   (`true`) by default.
    #
    #   If deletion protection is enabled, you must first disable it before
    #   you can delete the ledger. You can disable it by calling the
    #   `UpdateLedger` operation to set this parameter to `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key
    #   The key in Key Management Service (KMS) to use for encryption of
    #   data at rest in the ledger. For more information, see [Encryption at
    #   rest][1] in the *Amazon QLDB Developer Guide*.
    #
    #   Use one of the following options to specify this parameter:
    #
    #   * `AWS_OWNED_KMS_KEY`: Use an KMS key that is owned and managed by
    #     Amazon Web Services on your behalf.
    #
    #   * **Undefined**: Make no changes to the KMS key of the ledger.
    #
    #   * **A valid symmetric customer managed KMS key**: Use the specified
    #     symmetric encryption KMS key in your account that you create, own,
    #     and manage.
    #
    #     Amazon QLDB does not support asymmetric keys. For more
    #     information, see [Using symmetric and asymmetric keys][2] in the
    #     *Key Management Service Developer Guide*.
    #
    #   To specify a customer managed KMS key, you can use its key ID,
    #   Amazon Resource Name (ARN), alias name, or alias ARN. When using an
    #   alias name, prefix it with `"alias/"`. To specify a key in a
    #   different Amazon Web Services account, you must use the key ARN or
    #   alias ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`
    #
    #   For more information, see [Key identifiers (KeyId)][3] in the *Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/qldb/latest/developerguide/encryption-at-rest.html
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/UpdateLedgerRequest AWS API Documentation
    #
    class UpdateLedgerRequest < Struct.new(
      :name,
      :deletion_protection,
      :kms_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the ledger.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the ledger.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current status of the ledger.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time, in epoch time format, when the ledger was
    #   created. (Epoch time format is the number of seconds elapsed since
    #   12:00:00 AM January 1, 1970 UTC.)
    #   @return [Time]
    #
    # @!attribute [rw] deletion_protection
    #   Specifies whether the ledger is protected from being deleted by any
    #   user. If not defined during ledger creation, this feature is enabled
    #   (`true`) by default.
    #
    #   If deletion protection is enabled, you must first disable it before
    #   you can delete the ledger. You can disable it by calling the
    #   `UpdateLedger` operation to set this parameter to `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] encryption_description
    #   Information about the encryption of data at rest in the ledger. This
    #   includes the current status, the KMS key, and when the key became
    #   inaccessible (in the case of an error).
    #   @return [Types::LedgerEncryptionDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/UpdateLedgerResponse AWS API Documentation
    #
    class UpdateLedgerResponse < Struct.new(
      :name,
      :arn,
      :state,
      :creation_date_time,
      :deletion_protection,
      :encryption_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that can contain a value in multiple encoding formats.
    #
    # @!attribute [rw] ion_text
    #   An Amazon Ion plaintext value contained in a `ValueHolder`
    #   structure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ValueHolder AWS API Documentation
    #
    class ValueHolder < Struct.new(
      :ion_text)
      SENSITIVE = [:ion_text]
      include Aws::Structure
    end

  end
end
