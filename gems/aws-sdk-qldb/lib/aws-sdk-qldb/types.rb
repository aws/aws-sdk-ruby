# frozen_string_literal: true

# This is generated code!

module Aws::QLDB
  # This module contains the types returned by client operations.
  module Types

    # @!attribute ledger_name
    #   <p>The name of the ledger.</p>
    #   @return [String]
    # @!attribute stream_id
    #   <p>The UUID (represented in Base62-encoded text) of the QLDB journal stream to be
    #            canceled.</p>
    #   @return [String]
    class CancelJournalKinesisStreamRequest < Struct.new(
      :ledger_name,
      :stream_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_id
    #   <p>The UUID (Base62-encoded text) of the canceled QLDB journal stream.</p>
    #   @return [String]
    class CancelJournalKinesisStreamResponse < Struct.new(
      :stream_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the ledger that you want to create. The name must be unique among all of the
    #            ledgers in your Amazon Web Services account in the current Region.</p>
    #            <p>Naming constraints for ledger names are defined in <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming">Quotas in Amazon QLDB</a>
    #            in the <i>Amazon QLDB Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value pairs to add as tags to the ledger that you want to create. Tag keys are
    #            case sensitive. Tag values are case sensitive and can be null.</p>
    #   @return [Hash<String, String>]
    # @!attribute permissions_mode
    #   <p>The permissions mode to assign to the ledger that you want to create. This parameter can
    #            have one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_ALL</code>: A legacy permissions mode that enables access control with
    #                  API-level granularity for ledgers.</p>
    #                  <p>This mode allows users who have the <code>SendCommand</code> API permission for
    #                  this ledger to run all PartiQL commands (hence, <code>ALLOW_ALL</code>) on any tables
    #                  in the specified ledger. This mode disregards any table-level or command-level IAM
    #                  permissions policies that you create for the ledger.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STANDARD</code>: (<i>Recommended</i>) A permissions mode that
    #                  enables access control with finer granularity for ledgers, tables, and PartiQL
    #                  commands.</p>
    #                  <p>By default, this mode denies all user requests to run any PartiQL commands on any
    #                  tables in this ledger. To allow PartiQL commands to run, you must create IAM
    #                  permissions policies for specific table resources and PartiQL actions, in addition to
    #                  the <code>SendCommand</code> API permission for the ledger. For information, see
    #                     <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-standard-mode.html">Getting
    #                     started with the standard permissions mode</a> in the <i>Amazon QLDB
    #                     Developer Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>We strongly recommend using the <code>STANDARD</code> permissions mode to maximize
    #               the security of your ledger data.</p>
    #            </note>
    #   @return [String]
    # @!attribute deletion_protection
    #   <p>Specifies whether the ledger is protected from being deleted by any user. If not defined during
    #         ledger creation, this feature is enabled (<code>true</code>) by default.</p>
    #            <p>If deletion protection is enabled, you must first disable it before you can delete the
    #         ledger. You can disable it by calling the <code>UpdateLedger</code> operation to set this parameter to <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute kms_key
    #   <p>The key in Key Management Service (KMS) to use for encryption of data at rest in the ledger. For
    #            more information, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/encryption-at-rest.html">Encryption at rest</a> in
    #            the <i>Amazon QLDB Developer Guide</i>.</p>
    #            <p>Use one of the following options to specify this parameter:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_OWNED_KMS_KEY</code>: Use an KMS key that is owned and managed by Amazon Web Services
    #                  on your behalf.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Undefined</b>: By default, use an Amazon Web Services owned KMS
    #                  key.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>A valid symmetric customer managed KMS key</b>: Use
    #                  the specified symmetric encryption KMS key in your account that you create, own, and
    #                  manage.</p>
    #                  <p>Amazon QLDB does not support asymmetric keys. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using symmetric and asymmetric keys</a> in the <i>Key Management Service Developer
    #                     Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <p>To specify a customer managed KMS key, you can use its key ID, Amazon Resource Name
    #            (ARN), alias name, or alias ARN. When using an alias name, prefix it with
    #               <code>"alias/"</code>. To specify a key in a different Amazon Web Services account, you must use the key
    #            ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN:
    #                     <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN:
    #                  <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id">Key identifiers (KeyId)</a> in
    #            the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [String]
    class CreateLedgerRequest < Struct.new(
      :name,
      :tags,
      :permissions_mode,
      :deletion_protection,
      :kms_key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the ledger.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the ledger.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current status of the ledger.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time, in epoch time format, when the ledger was created. (Epoch time format
    #            is the number of seconds elapsed since 12:00:00 AM January 1, 1970 UTC.)</p>
    #   @return [Time]
    # @!attribute permissions_mode
    #   <p>The permissions mode of the ledger that you created.</p>
    #   @return [String]
    # @!attribute deletion_protection
    #   <p>Specifies whether the ledger is protected from being deleted by any user. If not defined during
    #         ledger creation, this feature is enabled (<code>true</code>) by default.</p>
    #            <p>If deletion protection is enabled, you must first disable it before you can delete the
    #         ledger. You can disable it by calling the <code>UpdateLedger</code> operation to set this parameter to <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute kms_key_arn
    #   <p>The ARN of the customer managed KMS key that the ledger uses for encryption at rest. If
    #            this parameter is undefined, the ledger uses an Amazon Web Services owned KMS key for encryption.</p>
    #   @return [String]
    class CreateLedgerResponse < Struct.new(
      :name,
      :arn,
      :state,
      :creation_date_time,
      :permissions_mode,
      :deletion_protection,
      :kms_key_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the ledger that you want to delete.</p>
    #   @return [String]
    class DeleteLedgerRequest < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ledger_name
    #   <p>The name of the ledger.</p>
    #   @return [String]
    # @!attribute stream_id
    #   <p>The UUID (represented in Base62-encoded text) of the QLDB journal stream to
    #            describe.</p>
    #   @return [String]
    class DescribeJournalKinesisStreamRequest < Struct.new(
      :ledger_name,
      :stream_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream
    #   <p>Information about the QLDB journal stream returned by a
    #               <code>DescribeJournalS3Export</code> request.</p>
    #   @return [Types::JournalKinesisStreamDescription]
    class DescribeJournalKinesisStreamResponse < Struct.new(
      :stream,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the ledger.</p>
    #   @return [String]
    # @!attribute export_id
    #   <p>The UUID (represented in Base62-encoded text) of the journal export job to
    #            describe.</p>
    #   @return [String]
    class DescribeJournalS3ExportRequest < Struct.new(
      :name,
      :export_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_description
    #   <p>Information about the journal export job returned by a
    #               <code>DescribeJournalS3Export</code> request.</p>
    #   @return [Types::JournalS3ExportDescription]
    class DescribeJournalS3ExportResponse < Struct.new(
      :export_description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the ledger that you want to describe.</p>
    #   @return [String]
    class DescribeLedgerRequest < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the ledger.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the ledger.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current status of the ledger.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time, in epoch time format, when the ledger was created. (Epoch time format
    #            is the number of seconds elapsed since 12:00:00 AM January 1, 1970 UTC.)</p>
    #   @return [Time]
    # @!attribute permissions_mode
    #   <p>The permissions mode of the ledger.</p>
    #   @return [String]
    # @!attribute deletion_protection
    #   <p>Specifies whether the ledger is protected from being deleted by any user. If not defined during
    #         ledger creation, this feature is enabled (<code>true</code>) by default.</p>
    #            <p>If deletion protection is enabled, you must first disable it before you can delete the
    #         ledger. You can disable it by calling the <code>UpdateLedger</code> operation to set this parameter to <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute encryption_description
    #   <p>Information about the encryption of data at rest in the ledger. This includes the
    #            current status, the KMS key, and when the key became inaccessible (in the case of an
    #            error). If this parameter is undefined, the ledger uses an Amazon Web Services owned KMS key for encryption.</p>
    #   @return [Types::LedgerEncryptionDescription]
    class DescribeLedgerResponse < Struct.new(
      :name,
      :arn,
      :state,
      :creation_date_time,
      :permissions_mode,
      :deletion_protection,
      :encryption_description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the ledger.</p>
    #   @return [String]
    # @!attribute inclusive_start_time
    #   <p>The inclusive start date and time for the range of journal contents to export.</p>
    #            <p>The <code>InclusiveStartTime</code> must be in <code>ISO 8601</code> date and time
    #            format and in Universal Coordinated Time (UTC). For example:
    #               <code>2019-06-13T21:36:34Z</code>.</p>
    #            <p>The <code>InclusiveStartTime</code> must be before <code>ExclusiveEndTime</code>.</p>
    #            <p>If you provide an <code>InclusiveStartTime</code> that is before the ledger's
    #               <code>CreationDateTime</code>, Amazon QLDB defaults it to the ledger's
    #               <code>CreationDateTime</code>.</p>
    #   @return [Time]
    # @!attribute exclusive_end_time
    #   <p>The exclusive end date and time for the range of journal contents to export.</p>
    #            <p>The <code>ExclusiveEndTime</code> must be in <code>ISO 8601</code> date and time format
    #            and in Universal Coordinated Time (UTC). For example:
    #            <code>2019-06-13T21:36:34Z</code>.</p>
    #            <p>The <code>ExclusiveEndTime</code> must be less than or equal to the current UTC date and
    #            time.</p>
    #   @return [Time]
    # @!attribute s3_export_configuration
    #   <p>The configuration settings of the Amazon S3 bucket destination for your export
    #            request.</p>
    #   @return [Types::S3ExportConfiguration]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a
    #            journal export job to do the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Write objects into your Amazon S3 bucket.</p>
    #               </li>
    #               <li>
    #                  <p>(Optional) Use your customer managed key in Key Management Service (KMS) for server-side
    #                  encryption of your exported data.</p>
    #               </li>
    #            </ul>
    #            <p>To pass a role to QLDB when requesting a journal export, you must have permissions to
    #            perform the <code>iam:PassRole</code> action on the IAM role resource. This is required for
    #            all journal export requests.</p>
    #   @return [String]
    # @!attribute output_format
    #   <p>The output format of your exported journal data. A journal export job can write the data
    #            objects in either the text or binary representation of <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/ion.html">Amazon Ion</a> format, or in <a href="https://jsonlines.org/">JSON Lines</a> text format.</p>
    #            <p>Default: <code>ION_TEXT</code>
    #            </p>
    #            <p>In JSON Lines format, each journal block in an exported data object is a valid JSON
    #            object that is delimited by a newline. You can use this format to directly integrate JSON
    #            exports with analytics tools such as Amazon Athena and Glue
    #            because these services can parse newline-delimited JSON automatically.</p>
    #   @return [String]
    class ExportJournalToS3Request < Struct.new(
      :name,
      :inclusive_start_time,
      :exclusive_end_time,
      :s3_export_configuration,
      :role_arn,
      :output_format,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_id
    #   <p>The UUID (represented in Base62-encoded text) that QLDB assigns to each journal export
    #            job.</p>
    #            <p>To describe your export request and check the status of the job, you can use
    #               <code>ExportId</code> to call <code>DescribeJournalS3Export</code>.</p>
    #   @return [String]
    class ExportJournalToS3Response < Struct.new(
      :export_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the ledger.</p>
    #   @return [String]
    # @!attribute block_address
    #   <p>The location of the block that you want to request. An address is an Amazon Ion
    #            structure that has two fields: <code>strandId</code> and <code>sequenceNo</code>.</p>
    #            <p>For example: <code>{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:14}</code>.</p>
    #   @return [Types::ValueHolder]
    # @!attribute digest_tip_address
    #   <p>The latest block location covered by the digest for which to request a proof. An address
    #            is an Amazon Ion structure that has two fields: <code>strandId</code> and
    #               <code>sequenceNo</code>.</p>
    #            <p>For example: <code>{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:49}</code>.</p>
    #   @return [Types::ValueHolder]
    class GetBlockRequest < Struct.new(
      :name,
      :block_address,
      :digest_tip_address,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute block
    #   <p>The block data object in Amazon Ion format.</p>
    #   @return [Types::ValueHolder]
    # @!attribute proof
    #   <p>The proof object in Amazon Ion format returned by a <code>GetBlock</code> request. A
    #            proof contains the list of hash values required to recalculate the specified digest using a
    #            Merkle tree, starting with the specified block.</p>
    #   @return [Types::ValueHolder]
    class GetBlockResponse < Struct.new(
      :block,
      :proof,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the ledger.</p>
    #   @return [String]
    class GetDigestRequest < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute digest
    #   <p>The 256-bit hash value representing the digest returned by a <code>GetDigest</code>
    #            request.</p>
    #   @return [String]
    # @!attribute digest_tip_address
    #   <p>The latest block location covered by the digest that you requested. An address is an
    #            Amazon Ion structure that has two fields: <code>strandId</code> and
    #            <code>sequenceNo</code>.</p>
    #   @return [Types::ValueHolder]
    class GetDigestResponse < Struct.new(
      :digest,
      :digest_tip_address,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the ledger.</p>
    #   @return [String]
    # @!attribute block_address
    #   <p>The block location of the document revision to be verified. An address is an Amazon Ion
    #            structure that has two fields: <code>strandId</code> and <code>sequenceNo</code>.</p>
    #            <p>For example: <code>{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:14}</code>.</p>
    #   @return [Types::ValueHolder]
    # @!attribute document_id
    #   <p>The UUID (represented in Base62-encoded text) of the document to be verified.</p>
    #   @return [String]
    # @!attribute digest_tip_address
    #   <p>The latest block location covered by the digest for which to request a proof. An address
    #            is an Amazon Ion structure that has two fields: <code>strandId</code> and
    #               <code>sequenceNo</code>.</p>
    #            <p>For example: <code>{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:49}</code>.</p>
    #   @return [Types::ValueHolder]
    class GetRevisionRequest < Struct.new(
      :name,
      :block_address,
      :document_id,
      :digest_tip_address,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute proof
    #   <p>The proof object in Amazon Ion format returned by a <code>GetRevision</code> request. A
    #            proof contains the list of hash values that are required to recalculate the specified
    #            digest using a Merkle tree, starting with the specified document revision.</p>
    #   @return [Types::ValueHolder]
    # @!attribute revision
    #   <p>The document revision data object in Amazon Ion format.</p>
    #   @return [Types::ValueHolder]
    class GetRevisionResponse < Struct.new(
      :proof,
      :revision,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>One or more parameters in the request aren't valid.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute parameter_name
    #   <p>The name of the invalid parameter.</p>
    #   @return [String]
    class InvalidParameterException < Struct.new(
      :message,
      :parameter_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an Amazon QLDB journal stream, including the Amazon Resource Name
    #          (ARN), stream name, creation time, current status, and the parameters of the original
    #          stream creation request.</p>
    # @!attribute ledger_name
    #   <p>The name of the ledger.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The date and time, in epoch time format, when the QLDB journal stream was created.
    #            (Epoch time format is the number of seconds elapsed since 12:00:00 AM January 1, 1970
    #            UTC.)</p>
    #   @return [Time]
    # @!attribute inclusive_start_time
    #   <p>The inclusive start date and time from which to start streaming journal data.</p>
    #   @return [Time]
    # @!attribute exclusive_end_time
    #   <p>The exclusive date and time that specifies when the stream ends. If this parameter is
    #            undefined, the stream runs indefinitely until you cancel it.</p>
    #   @return [Time]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a
    #            journal stream to write data records to a Kinesis Data Streams resource.</p>
    #   @return [String]
    # @!attribute stream_id
    #   <p>The UUID (represented in Base62-encoded text) of the QLDB journal stream.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the QLDB journal stream.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current state of the QLDB journal stream.</p>
    #   @return [String]
    # @!attribute kinesis_configuration
    #   <p>The configuration settings of the Amazon Kinesis Data Streams destination for a QLDB journal
    #            stream.</p>
    #   @return [Types::KinesisConfiguration]
    # @!attribute error_cause
    #   <p>The error message that describes the reason that a stream has a status of
    #               <code>IMPAIRED</code> or <code>FAILED</code>. This is not applicable to streams that
    #            have other status values.</p>
    #   @return [String]
    # @!attribute stream_name
    #   <p>The user-defined name of the QLDB journal stream.</p>
    #   @return [String]
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
      :stream_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a journal export job, including the ledger name, export ID, creation
    #          time, current status, and the parameters of the original export creation request.</p>
    # @!attribute ledger_name
    #   <p>The name of the ledger.</p>
    #   @return [String]
    # @!attribute export_id
    #   <p>The UUID (represented in Base62-encoded text) of the journal export job.</p>
    #   @return [String]
    # @!attribute export_creation_time
    #   <p>The date and time, in epoch time format, when the export job was created. (Epoch time
    #            format is the number of seconds elapsed since 12:00:00 AM January 1, 1970 UTC.)</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current state of the journal export job.</p>
    #   @return [String]
    # @!attribute inclusive_start_time
    #   <p>The inclusive start date and time for the range of journal contents that was specified
    #            in the original export request.</p>
    #   @return [Time]
    # @!attribute exclusive_end_time
    #   <p>The exclusive end date and time for the range of journal contents that was specified in
    #            the original export request.</p>
    #   @return [Time]
    # @!attribute s3_export_configuration
    #   <p>The Amazon Simple Storage Service (Amazon S3) bucket location in which a journal export job writes the journal
    #            contents.</p>
    #   @return [Types::S3ExportConfiguration]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a
    #            journal export job to do the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Write objects into your Amazon Simple Storage Service (Amazon S3) bucket.</p>
    #               </li>
    #               <li>
    #                  <p>(Optional) Use your customer managed key in Key Management Service (KMS) for server-side
    #                  encryption of your exported data.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute output_format
    #   <p>The output format of the exported journal data.</p>
    #   @return [String]
    class JournalS3ExportDescription < Struct.new(
      :ledger_name,
      :export_id,
      :export_creation_time,
      :status,
      :inclusive_start_time,
      :exclusive_end_time,
      :s3_export_configuration,
      :role_arn,
      :output_format,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings of the Amazon Kinesis Data Streams destination for an Amazon QLDB journal
    #          stream.</p>
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis Data Streams resource.</p>
    #   @return [String]
    # @!attribute aggregation_enabled
    #   <p>Enables QLDB to publish multiple data records in a single Kinesis Data Streams record, increasing the
    #            number of records sent per API call.</p>
    #            <p>Default: <code>True</code>
    #            </p>
    #            <important>
    #               <p>Record aggregation has important implications for processing records and requires
    #               de-aggregation in your stream consumer. To learn more, see <a href="https://docs.aws.amazon.com/streams/latest/dev/kinesis-kpl-concepts.html">KPL Key Concepts</a> and
    #                  <a href="https://docs.aws.amazon.com/streams/latest/dev/kinesis-kpl-consumer-deaggregation.html">Consumer
    #                  De-aggregation</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p>
    #            </important>
    #   @return [Boolean]
    class KinesisConfiguration < Struct.new(
      :stream_arn,
      :aggregation_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the encryption of data at rest in an Amazon QLDB ledger. This includes
    #          the current status, the key in Key Management Service (KMS), and when the key became inaccessible (in
    #          the case of an error).</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/encryption-at-rest.html">Encryption at rest</a> in
    #          the <i>Amazon QLDB Developer Guide</i>.</p>
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the customer managed KMS key that the ledger uses for
    #            encryption at rest. If this parameter is undefined, the ledger uses an Amazon Web Services owned KMS key
    #            for encryption. It will display <code>AWS_OWNED_KMS_KEY</code> when updating the ledger's encryption configuration to the Amazon Web Services owned KMS key.</p>
    #   @return [String]
    # @!attribute encryption_status
    #   <p>The current state of encryption at rest for the ledger. This can be one of the following
    #            values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code>: Encryption is fully enabled using the specified key.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code>: The ledger is actively processing the specified key
    #                  change.</p>
    #                  <p>Key changes in QLDB are asynchronous. The ledger is fully accessible without any
    #                  performance impact while the key change is being processed. The amount of time it
    #                  takes to update a key varies depending on the ledger size.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KMS_KEY_INACCESSIBLE</code>: The specified customer managed KMS key is not
    #                  accessible, and the ledger is impaired. Either the key was disabled or deleted, or
    #                  the grants on the key were revoked. When a ledger is impaired, it is not accessible
    #                  and does not accept any read or write requests.</p>
    #                  <p>An impaired ledger automatically returns to an active state after you restore the
    #                  grants on the key, or re-enable the key that was disabled. However, deleting a
    #                  customer managed KMS key is irreversible. After a key is deleted, you can no longer
    #                  access the ledgers that are protected with that key, and the data becomes
    #                  unrecoverable permanently.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute inaccessible_kms_key_date_time
    #   <p>The date and time, in epoch time format, when the KMS key first became inaccessible,
    #            in the case of an error. (Epoch time format is the number of seconds that have elapsed
    #            since 12:00:00 AM January 1, 1970 UTC.)</p>
    #            <p>This parameter is undefined if the KMS key is accessible.</p>
    #   @return [Time]
    class LedgerEncryptionDescription < Struct.new(
      :kms_key_arn,
      :encryption_status,
      :inaccessible_kms_key_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a ledger, including its name, state, and when it was created.</p>
    # @!attribute name
    #   <p>The name of the ledger.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current status of the ledger.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time, in epoch time format, when the ledger was created. (Epoch time format
    #            is the number of seconds elapsed since 12:00:00 AM January 1, 1970 UTC.)</p>
    #   @return [Time]
    class LedgerSummary < Struct.new(
      :name,
      :state,
      :creation_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You have reached the limit on the maximum number of resources allowed.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource.</p>
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ledger_name
    #   <p>The name of the ledger.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single
    #               <code>ListJournalKinesisStreamsForLedger</code> request. (The actual number of results
    #            returned might be fewer.)</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token, indicating that you want to retrieve the next page of results. If
    #            you received a value for <code>NextToken</code> in the response from a previous
    #               <code>ListJournalKinesisStreamsForLedger</code> call, you should use that value as input
    #            here.</p>
    #   @return [String]
    class ListJournalKinesisStreamsForLedgerRequest < Struct.new(
      :ledger_name,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute streams
    #   <p>The QLDB journal streams that are currently associated with the given ledger.</p>
    #   @return [Array<Types::JournalKinesisStreamDescription>]
    # @!attribute next_token
    #   <ul>
    #               <li>
    #                  <p>If <code>NextToken</code> is empty, the last page of results has been processed
    #                  and there are no more results to be retrieved.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>NextToken</code> is <i>not</i> empty, more results are
    #                  available. To retrieve the next page of results, use the value of
    #                     <code>NextToken</code> in a subsequent
    #                     <code>ListJournalKinesisStreamsForLedger</code> call.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ListJournalKinesisStreamsForLedgerResponse < Struct.new(
      :streams,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the ledger.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single
    #               <code>ListJournalS3ExportsForLedger</code> request. (The actual number of results
    #            returned might be fewer.)</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token, indicating that you want to retrieve the next page of results. If
    #            you received a value for <code>NextToken</code> in the response from a previous
    #               <code>ListJournalS3ExportsForLedger</code> call, then you should use that value as input
    #            here.</p>
    #   @return [String]
    class ListJournalS3ExportsForLedgerRequest < Struct.new(
      :name,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute journal_s3_exports
    #   <p>The journal export jobs that are currently associated with the specified ledger.</p>
    #   @return [Array<Types::JournalS3ExportDescription>]
    # @!attribute next_token
    #   <ul>
    #               <li>
    #                  <p>If <code>NextToken</code> is empty, then the last page of results has been
    #                  processed and there are no more results to be retrieved.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>NextToken</code> is <i>not</i> empty, then there are more
    #                  results available. To retrieve the next page of results, use the value of
    #                     <code>NextToken</code> in a subsequent <code>ListJournalS3ExportsForLedger</code>
    #                  call.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ListJournalS3ExportsForLedgerResponse < Struct.new(
      :journal_s3_exports,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single <code>ListJournalS3Exports</code>
    #            request. (The actual number of results returned might be fewer.)</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token, indicating that you want to retrieve the next page of results. If
    #            you received a value for <code>NextToken</code> in the response from a previous
    #               <code>ListJournalS3Exports</code> call, then you should use that value as input
    #            here.</p>
    #   @return [String]
    class ListJournalS3ExportsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute journal_s3_exports
    #   <p>The journal export jobs for all ledgers that are associated with the current
    #            Amazon Web Services account and Region.</p>
    #   @return [Array<Types::JournalS3ExportDescription>]
    # @!attribute next_token
    #   <ul>
    #               <li>
    #                  <p>If <code>NextToken</code> is empty, then the last page of results has been
    #                  processed and there are no more results to be retrieved.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>NextToken</code> is <i>not</i> empty, then there are more
    #                  results available. To retrieve the next page of results, use the value of
    #                     <code>NextToken</code> in a subsequent <code>ListJournalS3Exports</code>
    #                  call.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ListJournalS3ExportsResponse < Struct.new(
      :journal_s3_exports,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single <code>ListLedgers</code> request.
    #            (The actual number of results returned might be fewer.)</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token, indicating that you want to retrieve the next page of results. If
    #            you received a value for <code>NextToken</code> in the response from a previous
    #               <code>ListLedgers</code> call, then you should use that value as input here.</p>
    #   @return [String]
    class ListLedgersRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ledgers
    #   <p>The ledgers that are associated with the current Amazon Web Services account and Region.</p>
    #   @return [Array<Types::LedgerSummary>]
    # @!attribute next_token
    #   <p>A pagination token, indicating whether there are more results available:</p>
    #            <ul>
    #               <li>
    #                  <p>If <code>NextToken</code> is empty, then the last page of results has been
    #                  processed and there are no more results to be retrieved.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>NextToken</code> is <i>not</i> empty, then there are more
    #                  results available. To retrieve the next page of results, use the value of
    #                     <code>NextToken</code> in a subsequent <code>ListLedgers</code> call.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ListLedgersResponse < Struct.new(
      :ledgers,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for which to list the tags. For example:</p>
    #            <p>
    #               <code>arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger</code>
    #            </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags that are currently associated with the specified Amazon QLDB resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource already exists.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the resource.</p>
    #   @return [String]
    class ResourceAlreadyExistsException < Struct.new(
      :message,
      :resource_type,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource can't be modified at this time.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the resource.</p>
    #   @return [String]
    class ResourceInUseException < Struct.new(
      :message,
      :resource_type,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the resource.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_type,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The operation failed because a condition wasn't satisfied in advance.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the resource.</p>
    #   @return [String]
    class ResourcePreconditionNotMetException < Struct.new(
      :message,
      :resource_type,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The encryption settings that are used by a journal export job to write data in an
    #          Amazon Simple Storage Service (Amazon S3) bucket.</p>
    # @!attribute object_encryption_type
    #   <p>The Amazon S3 object encryption type.</p>
    #            <p>To learn more about server-side encryption options in Amazon S3, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html">Protecting Data
    #               Using Server-Side Encryption</a> in the <i>Amazon S3 Developer
    #            Guide</i>.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of a symmetric encryption key in Key Management Service (KMS). Amazon S3
    #            does not support asymmetric KMS keys.</p>
    #            <p>You must provide a <code>KmsKeyArn</code> if you specify <code>SSE_KMS</code> as the
    #               <code>ObjectEncryptionType</code>.</p>
    #            <p>
    #               <code>KmsKeyArn</code> is not required if you specify <code>SSE_S3</code> as the
    #               <code>ObjectEncryptionType</code>.</p>
    #   @return [String]
    class S3EncryptionConfiguration < Struct.new(
      :object_encryption_type,
      :kms_key_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Simple Storage Service (Amazon S3) bucket location in which a journal export job writes the journal
    #          contents.</p>
    # @!attribute bucket
    #   <p>The Amazon S3 bucket name in which a journal export job writes the journal contents.</p>
    #            <p>The bucket name must comply with the Amazon S3 bucket naming conventions. For more
    #            information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html">Bucket Restrictions and
    #               Limitations</a> in the <i>Amazon S3 Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The prefix for the Amazon S3 bucket in which a journal export job writes the journal
    #            contents.</p>
    #            <p>The prefix must comply with Amazon S3 key naming rules and restrictions. For more
    #            information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html">Object Key and Metadata</a> in the <i>Amazon S3 Developer
    #            Guide</i>.</p>
    #            <p>The following are examples of valid <code>Prefix</code> values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>JournalExports-ForMyLedger/Testing/</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JournalExports</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>My:Tests/</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>The encryption settings that are used by a journal export job to write data in an Amazon S3
    #            bucket.</p>
    #   @return [Types::S3EncryptionConfiguration]
    class S3ExportConfiguration < Struct.new(
      :bucket,
      :prefix,
      :encryption_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ledger_name
    #   <p>The name of the ledger.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a
    #            journal stream to write data records to a Kinesis Data Streams resource.</p>
    #            <p>To pass a role to QLDB when requesting a journal stream, you must have permissions to
    #            perform the <code>iam:PassRole</code> action on the IAM role resource. This is required for
    #            all journal stream requests.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value pairs to add as tags to the stream that you want to create. Tag keys are
    #            case sensitive. Tag values are case sensitive and can be null.</p>
    #   @return [Hash<String, String>]
    # @!attribute inclusive_start_time
    #   <p>The inclusive start date and time from which to start streaming journal data. This
    #            parameter must be in <code>ISO 8601</code> date and time format and in Universal
    #            Coordinated Time (UTC). For example: <code>2019-06-13T21:36:34Z</code>.</p>
    #            <p>The <code>InclusiveStartTime</code> cannot be in the future and must be before
    #               <code>ExclusiveEndTime</code>.</p>
    #            <p>If you provide an <code>InclusiveStartTime</code> that is before the ledger's
    #               <code>CreationDateTime</code>, QLDB effectively defaults it to the ledger's
    #               <code>CreationDateTime</code>.</p>
    #   @return [Time]
    # @!attribute exclusive_end_time
    #   <p>The exclusive date and time that specifies when the stream ends. If you don't define
    #            this parameter, the stream runs indefinitely until you cancel it.</p>
    #            <p>The <code>ExclusiveEndTime</code> must be in <code>ISO 8601</code> date and time format
    #            and in Universal Coordinated Time (UTC). For example:
    #            <code>2019-06-13T21:36:34Z</code>.</p>
    #   @return [Time]
    # @!attribute kinesis_configuration
    #   <p>The configuration settings of the Kinesis Data Streams destination for your stream request.</p>
    #   @return [Types::KinesisConfiguration]
    # @!attribute stream_name
    #   <p>The name that you want to assign to the QLDB journal stream. User-defined names can
    #            help identify and indicate the purpose of a stream.</p>
    #            <p>Your stream name must be unique among other <i>active</i> streams for a
    #            given ledger. Stream names have the same naming constraints as ledger names, as defined in
    #               <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming">Quotas in Amazon QLDB</a> in the <i>Amazon QLDB Developer
    #            Guide</i>.</p>
    #   @return [String]
    class StreamJournalToKinesisRequest < Struct.new(
      :ledger_name,
      :role_arn,
      :tags,
      :inclusive_start_time,
      :exclusive_end_time,
      :kinesis_configuration,
      :stream_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_id
    #   <p>The UUID (represented in Base62-encoded text) that QLDB assigns to each QLDB journal
    #            stream.</p>
    #   @return [String]
    class StreamJournalToKinesisResponse < Struct.new(
      :stream_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) to which you want to add the tags. For example:</p>
    #            <p>
    #               <code>arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger</code>
    #            </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value pairs to add as tags to the specified QLDB resource. Tag keys are case
    #            sensitive. If you specify a key that already exists for the resource, your request fails
    #            and returns an error. Tag values are case sensitive and can be null.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) from which to remove the tags. For example:</p>
    #            <p>
    #               <code>arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger</code>
    #            </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of tag keys to remove.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the ledger.</p>
    #   @return [String]
    # @!attribute permissions_mode
    #   <p>The permissions mode to assign to the ledger. This parameter can have one of the
    #            following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_ALL</code>: A legacy permissions mode that enables access control with
    #                  API-level granularity for ledgers.</p>
    #                  <p>This mode allows users who have the <code>SendCommand</code> API permission for
    #                  this ledger to run all PartiQL commands (hence, <code>ALLOW_ALL</code>) on any tables
    #                  in the specified ledger. This mode disregards any table-level or command-level IAM
    #                  permissions policies that you create for the ledger.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STANDARD</code>: (<i>Recommended</i>) A permissions mode that
    #                  enables access control with finer granularity for ledgers, tables, and PartiQL
    #                  commands.</p>
    #                  <p>By default, this mode denies all user requests to run any PartiQL commands on any
    #                  tables in this ledger. To allow PartiQL commands to run, you must create IAM
    #                  permissions policies for specific table resources and PartiQL actions, in addition to
    #                  the <code>SendCommand</code> API permission for the ledger. For information, see
    #                     <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-standard-mode.html">Getting
    #                     started with the standard permissions mode</a> in the <i>Amazon QLDB
    #                     Developer Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>We strongly recommend using the <code>STANDARD</code> permissions mode to maximize
    #               the security of your ledger data.</p>
    #            </note>
    #   @return [String]
    class UpdateLedgerPermissionsModeRequest < Struct.new(
      :name,
      :permissions_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the ledger.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the ledger.</p>
    #   @return [String]
    # @!attribute permissions_mode
    #   <p>The current permissions mode of the ledger.</p>
    #   @return [String]
    class UpdateLedgerPermissionsModeResponse < Struct.new(
      :name,
      :arn,
      :permissions_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the ledger.</p>
    #   @return [String]
    # @!attribute deletion_protection
    #   <p>Specifies whether the ledger is protected from being deleted by any user. If not defined during
    #         ledger creation, this feature is enabled (<code>true</code>) by default.</p>
    #            <p>If deletion protection is enabled, you must first disable it before you can delete the
    #         ledger. You can disable it by calling the <code>UpdateLedger</code> operation to set this parameter to <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute kms_key
    #   <p>The key in Key Management Service (KMS) to use for encryption of data at rest in the ledger. For
    #            more information, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/encryption-at-rest.html">Encryption at rest</a> in
    #            the <i>Amazon QLDB Developer Guide</i>.</p>
    #            <p>Use one of the following options to specify this parameter:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_OWNED_KMS_KEY</code>: Use an KMS key that is owned and managed by Amazon Web Services
    #                  on your behalf.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Undefined</b>: Make no changes to the KMS key of the
    #                  ledger.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>A valid symmetric customer managed KMS key</b>: Use
    #                  the specified symmetric encryption KMS key in your account that you create, own, and
    #                  manage.</p>
    #                  <p>Amazon QLDB does not support asymmetric keys. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using symmetric and asymmetric keys</a> in the <i>Key Management Service Developer
    #                     Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <p>To specify a customer managed KMS key, you can use its key ID, Amazon Resource Name
    #            (ARN), alias name, or alias ARN. When using an alias name, prefix it with
    #               <code>"alias/"</code>. To specify a key in a different Amazon Web Services account, you must use the key
    #            ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN:
    #                     <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN:
    #                  <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id">Key identifiers (KeyId)</a> in
    #            the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [String]
    class UpdateLedgerRequest < Struct.new(
      :name,
      :deletion_protection,
      :kms_key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the ledger.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the ledger.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current status of the ledger.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time, in epoch time format, when the ledger was created. (Epoch time format
    #            is the number of seconds elapsed since 12:00:00 AM January 1, 1970 UTC.)</p>
    #   @return [Time]
    # @!attribute deletion_protection
    #   <p>Specifies whether the ledger is protected from being deleted by any user. If not defined during
    #         ledger creation, this feature is enabled (<code>true</code>) by default.</p>
    #            <p>If deletion protection is enabled, you must first disable it before you can delete the
    #         ledger. You can disable it by calling the <code>UpdateLedger</code> operation to set this parameter to <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute encryption_description
    #   <p>Information about the encryption of data at rest in the ledger. This includes the
    #            current status, the KMS key, and when the key became inaccessible (in the case of an
    #            error).</p>
    #   @return [Types::LedgerEncryptionDescription]
    class UpdateLedgerResponse < Struct.new(
      :name,
      :arn,
      :state,
      :creation_date_time,
      :deletion_protection,
      :encryption_description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that can contain a value in multiple encoding formats.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute ion_text
    #   <p>An Amazon Ion plaintext value contained in a <code>ValueHolder</code> structure.</p>
    #   @return [String]
    class ValueHolder < Struct.new(
      :ion_text,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
