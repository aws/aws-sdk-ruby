# frozen_string_literal: true

# This is generated code!

module Aws::Glacier
  # This module contains the types returned by client operations.
  module Types

    # <p>Provides options to abort a multipart upload identified by the upload ID.</p>
    # 
    #          <p>For information about the underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-abort-upload.html">Abort Multipart
    #             Upload</a>. For conceptual information, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html">Working with Archives in
    #             Amazon S3 Glacier</a>.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>The upload ID of the multipart upload to delete.</p>
    #   @return [String]
    class AbortMultipartUploadInput < Struct.new(
      :account_id,
      :vault_name,
      :upload_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input values for <code>AbortVaultLock</code>.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
    #            account ID associated with the credentials used to sign the request. You can either specify
    #            an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon
    #            Glacier uses the AWS account ID associated with the credentials used to sign the request.
    #            If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    class AbortVaultLockInput < Struct.new(
      :account_id,
      :vault_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ActionCode
      ArchiveRetrieval = 'ArchiveRetrieval'
      InventoryRetrieval = 'InventoryRetrieval'
      Select = 'Select'
    end

    # <p>The input values for <code>AddTagsToVault</code>.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the vault. Each tag is composed of a key and a value. The value
    #            can be an empty string.</p>
    #   @return [Hash<String, String>]
    class AddTagsToVaultInput < Struct.new(
      :account_id,
      :vault_name,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the comma-separated value (CSV) file to select from.</p>
    # @!attribute file_header_info
    #   <p>Describes the first line of input. Valid values are <code>None</code>,
    #                   <code>Ignore</code>, and <code>Use</code>.</p>
    #   @return [String]
    # @!attribute comments
    #   <p>A single character used to indicate that a row should be ignored when the character is
    #               present at the start of that row.</p>
    #   @return [String]
    # @!attribute quote_escape_character
    #   <p>A single character used for escaping the quotation-mark character inside an already
    #               escaped value.</p>
    #   @return [String]
    # @!attribute record_delimiter
    #   <p>A value used to separate individual records from each other.</p>
    #   @return [String]
    # @!attribute field_delimiter
    #   <p>A value used to separate individual fields from each other within a record.</p>
    #   @return [String]
    # @!attribute quote_character
    #   <p>A value used as an escape character where the field delimiter is part of the
    #               value.</p>
    #   @return [String]
    class CSVInput < Struct.new(
      :file_header_info,
      :comments,
      :quote_escape_character,
      :record_delimiter,
      :field_delimiter,
      :quote_character,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the comma-separated value (CSV) file that the job results
    #             are stored in.</p>
    # @!attribute quote_fields
    #   <p>A value that indicates whether all output fields should be contained within quotation
    #               marks.</p>
    #   @return [String]
    # @!attribute quote_escape_character
    #   <p>A single character used for escaping the quotation-mark character inside an already
    #               escaped value.</p>
    #   @return [String]
    # @!attribute record_delimiter
    #   <p>A value used to separate individual records from each other.</p>
    #   @return [String]
    # @!attribute field_delimiter
    #   <p>A value used to separate individual fields from each other within a record.</p>
    #   @return [String]
    # @!attribute quote_character
    #   <p>A value used as an escape character where the field delimiter is part of the
    #               value.</p>
    #   @return [String]
    class CSVOutput < Struct.new(
      :quote_fields,
      :quote_escape_character,
      :record_delimiter,
      :field_delimiter,
      :quote_character,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CannedACL
      Private = 'private'
      PublicRead = 'public-read'
      PublicReadWrite = 'public-read-write'
      AwsExecRead = 'aws-exec-read'
      AuthenticatedRead = 'authenticated-read'
      BucketOwnerRead = 'bucket-owner-read'
      BucketOwnerFullControl = 'bucket-owner-full-control'
    end

    # <p>Provides options to complete a multipart upload operation. This informs Amazon
    #          Glacier that all the archive parts have been uploaded and Amazon S3 Glacier (Glacier) can now assemble
    #          the archive from the uploaded parts. After assembling and saving the archive to the vault,
    #          Glacier returns the URI path of the newly created archive resource.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>The upload ID of the multipart upload.</p>
    #   @return [String]
    # @!attribute archive_size
    #   <p>The total size, in bytes, of the entire archive. This value should be the sum of all
    #            the sizes of the individual parts that you uploaded.</p>
    #   @return [String]
    # @!attribute checksum
    #   <p>The SHA256 tree hash of the entire archive. It is the tree hash of SHA256 tree hash
    #            of the individual parts. If the value you specify in the request does not match the SHA256
    #            tree hash of the final assembled archive as computed by Amazon S3 Glacier (Glacier), 
    #            Glacier returns an error and the request fails.</p>
    #   @return [String]
    class CompleteMultipartUploadInput < Struct.new(
      :account_id,
      :vault_name,
      :upload_id,
      :archive_size,
      :checksum,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the Amazon S3 Glacier response to your request.</p>
    #          <p>For information about the underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-post.html">Upload Archive</a>. For
    #          conceptual information, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html">Working with Archives in
    #             Amazon S3 Glacier</a>.</p>
    # @!attribute location
    #   <p>The relative URI path of the newly added archive resource.</p>
    #   @return [String]
    # @!attribute checksum
    #   <p>The checksum of the archive computed by Amazon S3 Glacier.</p>
    #   @return [String]
    # @!attribute archive_id
    #   <p>The ID of the archive. This value is also included as part of the location.</p>
    #   @return [String]
    class CompleteMultipartUploadOutput < Struct.new(
      :location,
      :checksum,
      :archive_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input values for <code>CompleteVaultLock</code>.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
    #            account ID associated with the credentials used to sign the request. You can either specify
    #            an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon
    #            Glacier uses the AWS account ID associated with the credentials used to sign the request.
    #            If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    # @!attribute lock_id
    #   <p>The <code>lockId</code> value is the lock ID obtained from a <a>InitiateVaultLock</a> request.</p>
    #   @return [String]
    class CompleteVaultLockInput < Struct.new(
      :account_id,
      :vault_name,
      :lock_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides options to create a vault.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
    #            account ID associated with the credentials used to sign the request. You can either specify
    #            an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3
    #            Glacier uses the AWS account ID associated with the credentials used to sign the request.
    #            If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    class CreateVaultInput < Struct.new(
      :account_id,
      :vault_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the Amazon S3 Glacier response to your request.</p>
    # @!attribute location
    #   <p>The URI of the vault that was created.</p>
    #   @return [String]
    class CreateVaultOutput < Struct.new(
      :location,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Data retrieval policy.</p>
    # @!attribute rules
    #   <p>The policy rule. Although this is a list type, currently there must be only one rule,
    #            which contains a Strategy field and optionally a BytesPerHour field.</p>
    #   @return [Array<Types::DataRetrievalRule>]
    class DataRetrievalPolicy < Struct.new(
      :rules,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Data retrieval policy rule.</p>
    # @!attribute strategy
    #   <p>The type of data retrieval policy to set.</p>
    #            <p>Valid values: BytesPerHour|FreeTier|None</p>
    #   @return [String]
    # @!attribute bytes_per_hour
    #   <p>The maximum number of bytes that can be retrieved in an hour.</p>
    #            <p>This field is required only if the value of the Strategy field is
    #               <code>BytesPerHour</code>. Your PUT operation will be rejected if the Strategy field is
    #            not set to <code>BytesPerHour</code> and you set this field.</p>
    #   @return [Integer]
    class DataRetrievalRule < Struct.new(
      :strategy,
      :bytes_per_hour,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides options for deleting an archive from an Amazon S3 Glacier vault.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    # @!attribute archive_id
    #   <p>The ID of the archive to delete.</p>
    #   @return [String]
    class DeleteArchiveInput < Struct.new(
      :account_id,
      :vault_name,
      :archive_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>DeleteVaultAccessPolicy input.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    class DeleteVaultAccessPolicyInput < Struct.new(
      :account_id,
      :vault_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides options for deleting a vault from Amazon S3 Glacier.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    class DeleteVaultInput < Struct.new(
      :account_id,
      :vault_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides options for deleting a vault notification configuration from an Amazon
    #          Glacier vault.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    class DeleteVaultNotificationsInput < Struct.new(
      :account_id,
      :vault_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides options for retrieving a job description.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID of the job to describe.</p>
    #   @return [String]
    class DescribeJobInput < Struct.new(
      :account_id,
      :vault_name,
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the description of an Amazon S3 Glacier job.</p>
    # @!attribute job_id
    #   <p>An opaque string that identifies an Amazon S3 Glacier job.</p>
    #   @return [String]
    # @!attribute job_description
    #   <p>The job description provided when initiating the job.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The job type. This value is either <code>ArchiveRetrieval</code>,
    #                   <code>InventoryRetrieval</code>, or
    #               <code>Select</code>. </p>
    #   @return [String]
    # @!attribute archive_id
    #   <p>The archive ID requested for a select job or archive retrieval. Otherwise, this
    #               field is null.</p>
    #   @return [String]
    # @!attribute vault_arn
    #   <p>The Amazon Resource Name (ARN) of the vault from which an archive retrieval was
    #               requested.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The UTC date when the job was created. This value is a string representation of ISO
    #               8601 date format, for example <code>"2012-03-20T17:03:43.221Z"</code>.</p>
    #   @return [String]
    # @!attribute completed
    #   <p>The job status. When a job is completed, you get the job's output using Get Job
    #               Output (GET output).</p>
    #   @return [Boolean]
    # @!attribute status_code
    #   <p>The status code can be <code>InProgress</code>, <code>Succeeded</code>, or
    #                   <code>Failed</code>, and indicates the status of the job.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A friendly message that describes the job status.</p>
    #   @return [String]
    # @!attribute archive_size_in_bytes
    #   <p>For an archive retrieval job, this value is the size in bytes of the archive being
    #               requested for download. For an inventory retrieval or select job, this value is
    #               null.</p>
    #   @return [Integer]
    # @!attribute inventory_size_in_bytes
    #   <p>For an inventory retrieval job, this value is the size in bytes of the inventory
    #               requested for download. For an archive retrieval or select job, this value is
    #               null.</p>
    #   @return [Integer]
    # @!attribute sns_topic
    #   <p>An Amazon SNS topic that receives notification.</p>
    #   @return [String]
    # @!attribute completion_date
    #   <p>The UTC time that the job request completed. While the job is in progress, the
    #               value is null.</p>
    #   @return [String]
    # @!attribute sha256_tree_hash
    #   <p>For an archive retrieval job, this value is the checksum of the archive. Otherwise,
    #               this value is null.</p>
    #           <p>The SHA256 tree hash value for the requested range of an archive. If the <b>InitiateJob</b> request for an archive specified a tree-hash
    #               aligned range, then this field returns a value.</p>
    #           <p>If the whole archive is retrieved, this value is the same as the
    #               ArchiveSHA256TreeHash value.</p>
    #           <p>This field is null for the following:</p>
    #           <ul>
    #               <li>
    #                   <p>Archive retrieval jobs that specify a range that is not tree-hash
    #                       aligned</p>
    #               </li>
    #            </ul>
    #           <ul>
    #               <li>
    #                   <p>Archival jobs that specify a range that is equal to the whole archive, when
    #                       the job status is <code>InProgress</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <ul>
    #               <li>
    #                   <p>Inventory jobs</p>
    #               </li>
    #               <li>
    #                   <p>Select jobs</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute archive_sha256_tree_hash
    #   <p>The SHA256 tree hash of the entire archive for an archive retrieval. For inventory
    #               retrieval or select jobs, this field is null.</p>
    #   @return [String]
    # @!attribute retrieval_byte_range
    #   <p>The retrieved byte range for archive retrieval jobs in the form
    #                   <i>StartByteValue</i>-<i>EndByteValue</i>. If no range
    #               was specified in the archive retrieval, then the whole archive is retrieved. In this
    #               case, <i>StartByteValue</i> equals 0 and <i>EndByteValue</i>
    #               equals the size of the archive minus 1. For inventory retrieval or select jobs, this
    #               field is null. </p>
    #   @return [String]
    # @!attribute tier
    #   <p>The tier to use for a select or an archive retrieval. Valid values are
    #                   <code>Expedited</code>, <code>Standard</code>, or <code>Bulk</code>.
    #                   <code>Standard</code> is the default.</p>
    #   @return [String]
    # @!attribute inventory_retrieval_parameters
    #   <p>Parameters used for range inventory retrieval.</p>
    #   @return [Types::InventoryRetrievalJobDescription]
    # @!attribute job_output_path
    #   <p>Contains the job output location.</p>
    #   @return [String]
    # @!attribute select_parameters
    #   <p>Contains the parameters used for a select.</p>
    #   @return [Types::SelectParameters]
    # @!attribute output_location
    #   <p>Contains the location where the data from the select job is stored.</p>
    #   @return [Types::OutputLocation]
    class DescribeJobOutput < Struct.new(
      :job_id,
      :job_description,
      :action,
      :archive_id,
      :vault_arn,
      :creation_date,
      :completed,
      :status_code,
      :status_message,
      :archive_size_in_bytes,
      :inventory_size_in_bytes,
      :sns_topic,
      :completion_date,
      :sha256_tree_hash,
      :archive_sha256_tree_hash,
      :retrieval_byte_range,
      :tier,
      :inventory_retrieval_parameters,
      :job_output_path,
      :select_parameters,
      :output_location,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:completed] = false unless options.key?(:completed)
        super
      end
    end

    # <p>Provides options for retrieving metadata for a specific vault in Amazon
    #          Glacier.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    class DescribeVaultInput < Struct.new(
      :account_id,
      :vault_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the Amazon S3 Glacier response to your request.</p>
    # @!attribute vault_arn
    #   <p>The Amazon Resource Name (ARN) of the vault.</p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The Universal Coordinated Time (UTC) date when the vault was created. This value
    #            should be a string in the ISO 8601 date format, for example
    #               <code>2012-03-20T17:03:43.221Z</code>.</p>
    #   @return [String]
    # @!attribute last_inventory_date
    #   <p>The Universal Coordinated Time (UTC) date when Amazon S3 Glacier completed the last
    #            vault inventory.  This value should be a string in the ISO 8601 date format, for example
    #               <code>2012-03-20T17:03:43.221Z</code>.</p>
    #   @return [String]
    # @!attribute number_of_archives
    #   <p>The number of archives in the vault as of the last inventory date. This field will
    #            return <code>null</code> if an inventory has not yet run on the vault, for example if you
    #            just created the vault.</p>
    #   @return [Integer]
    # @!attribute size_in_bytes
    #   <p>Total size, in bytes, of the archives in the vault as of the last inventory date.
    #            This field will return null if an inventory has not yet run on the vault, for example if
    #            you just created the vault.</p>
    #   @return [Integer]
    class DescribeVaultOperationOutput < Struct.new(
      :vault_arn,
      :vault_name,
      :creation_date,
      :last_inventory_date,
      :number_of_archives,
      :size_in_bytes,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_archives] = 0 unless options.key?(:number_of_archives)
        options[:size_in_bytes] = 0 unless options.key?(:size_in_bytes)
        super
      end
    end

    # <p>Contains the Amazon S3 Glacier response to your request.</p>
    # @!attribute vault_arn
    #   <p>The Amazon Resource Name (ARN) of the vault.</p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The Universal Coordinated Time (UTC) date when the vault was created. This value
    #            should be a string in the ISO 8601 date format, for example
    #               <code>2012-03-20T17:03:43.221Z</code>.</p>
    #   @return [String]
    # @!attribute last_inventory_date
    #   <p>The Universal Coordinated Time (UTC) date when Amazon S3 Glacier completed the last
    #            vault inventory.  This value should be a string in the ISO 8601 date format, for example
    #               <code>2012-03-20T17:03:43.221Z</code>.</p>
    #   @return [String]
    # @!attribute number_of_archives
    #   <p>The number of archives in the vault as of the last inventory date. This field will
    #            return <code>null</code> if an inventory has not yet run on the vault, for example if you
    #            just created the vault.</p>
    #   @return [Integer]
    # @!attribute size_in_bytes
    #   <p>Total size, in bytes, of the archives in the vault as of the last inventory date.
    #            This field will return null if an inventory has not yet run on the vault, for example if
    #            you just created the vault.</p>
    #   @return [Integer]
    class DescribeVaultOutput < Struct.new(
      :vault_arn,
      :vault_name,
      :creation_date,
      :last_inventory_date,
      :number_of_archives,
      :size_in_bytes,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_archives] = 0 unless options.key?(:number_of_archives)
        options[:size_in_bytes] = 0 unless options.key?(:size_in_bytes)
        super
      end
    end

    # <p>Contains information about the encryption used to store the job results in Amazon S3. </p>
    # @!attribute encryption_type
    #   <p>The server-side encryption algorithm used when storing job results in Amazon S3, for
    #               example <code>AES256</code> or <code>aws:kms</code>.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The AWS KMS key ID to use for object encryption. All GET and PUT requests for an
    #               object protected by AWS KMS fail if not made by using Secure Sockets Layer (SSL) or
    #               Signature Version 4. </p>
    #   @return [String]
    # @!attribute kms_context
    #   <p>Optional. If the encryption type is <code>aws:kms</code>, you can use this value to
    #               specify the encryption context for the job results.</p>
    #   @return [String]
    class Encryption < Struct.new(
      :encryption_type,
      :kms_key_id,
      :kms_context,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EncryptionType
      KMS = 'aws:kms'
      S3 = 'AES256'
    end

    module ExpressionType
      SQL = 'SQL'
    end

    module FileHeaderInfo
      Use = 'USE'
      Ignore = 'IGNORE'
      None = 'NONE'
    end

    # <p>Input for GetDataRetrievalPolicy.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
    #            account ID associated with the credentials used to sign the request. You can either specify
    #            an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon
    #            Glacier uses the AWS account ID associated with the credentials used to sign the request.
    #            If you specify your account ID, do not include any hyphens ('-') in the ID. </p>
    #   @return [String]
    class GetDataRetrievalPolicyInput < Struct.new(
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the Amazon S3 Glacier response to the <code>GetDataRetrievalPolicy</code>
    #          request.</p>
    # @!attribute policy
    #   <p>Contains the returned data retrieval policy in JSON format.</p>
    #   @return [Types::DataRetrievalPolicy]
    class GetDataRetrievalPolicyOutput < Struct.new(
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides options for downloading output of an Amazon S3 Glacier job.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID whose data is downloaded.</p>
    #   @return [String]
    # @!attribute range
    #   <p>The range of bytes to retrieve from the output. For example, if you want to download
    #            the first 1,048,576 bytes, specify the range as <code>bytes=0-1048575</code>. By default, this operation
    #            downloads the entire output.</p>
    #         
    #            <p>If the job output is large, then you can use a range to
    #            retrieve a portion of the output. This allows you to download the entire output in smaller
    #            chunks of bytes. For example, suppose you have 1 GB of job output you want to download and
    #            you decide to download 128 MB chunks of data at a time, which is a total of eight Get Job
    #            Output requests. You use the following process to download the job output:</p>
    #        
    #            <ol>
    #               <li>
    #                  <p>Download a 128 MB chunk of output by specifying the appropriate byte range.
    #                     Verify that all 128 MB of data was received.</p>
    #               </li>
    #               <li>
    #                  <p>Along with the data, the response includes a SHA256 tree hash of the payload.
    #                     You compute the checksum of the payload on the client and compare it with the
    #                     checksum you received in the response to ensure you received all the expected
    #                     data.</p>
    #               </li>
    #               <li>
    #                  <p>Repeat steps 1 and 2 for all the eight 128 MB chunks of output data, each time
    #                     specifying the appropriate byte range.</p>
    #               </li>
    #               <li>
    #                  <p>After downloading all the parts of the job output, you have a list of eight
    #                     checksum values. Compute the tree hash of these values to find the checksum of the
    #                     entire output. Using the <a>DescribeJob</a> API, obtain job information of
    #                     the job that provided you the output. The response includes the checksum of the
    #                     entire archive stored in Amazon S3 Glacier. You compare this value with the checksum you
    #                     computed to ensure you have downloaded the entire archive content with no
    #                     errors.</p>
    #                  <p></p>
    #               </li>
    #            </ol>
    #   @return [String]
    class GetJobOutputInput < Struct.new(
      :account_id,
      :vault_name,
      :job_id,
      :range,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the Amazon S3 Glacier response to your request.</p>
    # @!attribute body
    #   <p>The job data, either archive data or inventory data.</p>
    #   @return [String]
    # @!attribute checksum
    #   <p>The checksum of the data in the response. This header is returned only when
    #            retrieving the output for an archive retrieval job. Furthermore, this header appears only
    #            under the following conditions:</p>
    #            <ul>
    #               <li>
    #                   <p>You get the entire range of the archive.</p>
    #               </li>
    #               <li>
    #                  <p>You request a range to return of the archive that starts and ends on a multiple
    #                  of 1 MB. For example, if you have an 3.1 MB archive and you specify a range to return
    #                  that starts at 1 MB and ends at 2 MB, then the x-amz-sha256-tree-hash is returned as
    #                  a response header.</p>
    #               </li>
    #               <li>
    #                  <p>You request a range of the archive to return that starts on a multiple of 1 MB
    #                  and goes to the end of the archive. For example, if you have a 3.1 MB archive and you
    #                  specify a range that starts at 2 MB and ends at 3.1 MB (the end of the archive), then
    #                  the x-amz-sha256-tree-hash is returned as a response header.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status
    #   <p>The HTTP response code for a job output request. The value depends on whether a range
    #            was specified in the request.</p>
    #   @return [Integer]
    # @!attribute content_range
    #   <p>The range of bytes returned by Amazon S3 Glacier. If only partial output is downloaded,
    #            the response provides the range of bytes Amazon S3 Glacier returned. For example, bytes
    #            0-1048575/8388608 returns the first 1 MB from 8 MB.</p>
    #   @return [String]
    # @!attribute accept_ranges
    #   <p>Indicates the range units accepted. For more information, see <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html">RFC2616</a>. </p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The Content-Type depends on whether the job output is an archive or a vault
    #            inventory. For archive data, the Content-Type is application/octet-stream. For vault
    #            inventory, if you requested CSV format when you initiated the job, the Content-Type is
    #            text/csv. Otherwise, by default, vault inventory is returned as JSON, and the Content-Type
    #            is application/json.</p>
    #   @return [String]
    # @!attribute archive_description
    #   <p>The description of an archive.</p>
    #   @return [String]
    class GetJobOutputOutput < Struct.new(
      :body,
      :checksum,
      :status,
      :content_range,
      :accept_ranges,
      :content_type,
      :archive_description,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:body] = Base64.strict_decode64('') unless options.key?(:body)
        options[:status] = 0 unless options.key?(:status)
        super
      end
    end

    # <p>Input for GetVaultAccessPolicy.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    class GetVaultAccessPolicyInput < Struct.new(
      :account_id,
      :vault_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Output for GetVaultAccessPolicy.</p>
    # @!attribute policy
    #   <p>Contains the returned vault access policy as a JSON string.</p>
    #   @return [Types::VaultAccessPolicy]
    class GetVaultAccessPolicyOutput < Struct.new(
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input values for <code>GetVaultLock</code>.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    class GetVaultLockInput < Struct.new(
      :account_id,
      :vault_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the Amazon S3 Glacier response to your request.</p>
    # @!attribute policy
    #   <p>The vault lock policy as a JSON string, which uses "\" as an escape
    #            character.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the vault lock. <code>InProgress</code> or
    #            <code>Locked</code>.</p>
    #   @return [String]
    # @!attribute expiration_date
    #   <p>The UTC date and time at which the lock ID expires. This value can be
    #               <code>null</code> if the vault lock is in a <code>Locked</code> state.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The UTC date and time at which the vault lock was put into the
    #               <code>InProgress</code> state.</p>
    #   @return [String]
    class GetVaultLockOutput < Struct.new(
      :policy,
      :state,
      :expiration_date,
      :creation_date,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides options for retrieving the notification configuration set on an Amazon
    #          Glacier vault.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    class GetVaultNotificationsInput < Struct.new(
      :account_id,
      :vault_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the Amazon S3 Glacier response to your request.</p>
    # @!attribute vault_notification_config
    #   <p>Returns the notification configuration set on the vault.</p>
    #   @return [Types::VaultNotificationConfig]
    class GetVaultNotificationsOutput < Struct.new(
      :vault_notification_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the description of an Amazon S3 Glacier job.</p>
    # @!attribute job_id
    #   <p>An opaque string that identifies an Amazon S3 Glacier job.</p>
    #   @return [String]
    # @!attribute job_description
    #   <p>The job description provided when initiating the job.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The job type. This value is either <code>ArchiveRetrieval</code>,
    #                   <code>InventoryRetrieval</code>, or
    #               <code>Select</code>. </p>
    #   @return [String]
    # @!attribute archive_id
    #   <p>The archive ID requested for a select job or archive retrieval. Otherwise, this
    #               field is null.</p>
    #   @return [String]
    # @!attribute vault_arn
    #   <p>The Amazon Resource Name (ARN) of the vault from which an archive retrieval was
    #               requested.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The UTC date when the job was created. This value is a string representation of ISO
    #               8601 date format, for example <code>"2012-03-20T17:03:43.221Z"</code>.</p>
    #   @return [String]
    # @!attribute completed
    #   <p>The job status. When a job is completed, you get the job's output using Get Job
    #               Output (GET output).</p>
    #   @return [Boolean]
    # @!attribute status_code
    #   <p>The status code can be <code>InProgress</code>, <code>Succeeded</code>, or
    #                   <code>Failed</code>, and indicates the status of the job.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A friendly message that describes the job status.</p>
    #   @return [String]
    # @!attribute archive_size_in_bytes
    #   <p>For an archive retrieval job, this value is the size in bytes of the archive being
    #               requested for download. For an inventory retrieval or select job, this value is
    #               null.</p>
    #   @return [Integer]
    # @!attribute inventory_size_in_bytes
    #   <p>For an inventory retrieval job, this value is the size in bytes of the inventory
    #               requested for download. For an archive retrieval or select job, this value is
    #               null.</p>
    #   @return [Integer]
    # @!attribute sns_topic
    #   <p>An Amazon SNS topic that receives notification.</p>
    #   @return [String]
    # @!attribute completion_date
    #   <p>The UTC time that the job request completed. While the job is in progress, the
    #               value is null.</p>
    #   @return [String]
    # @!attribute sha256_tree_hash
    #   <p>For an archive retrieval job, this value is the checksum of the archive. Otherwise,
    #               this value is null.</p>
    #           <p>The SHA256 tree hash value for the requested range of an archive. If the <b>InitiateJob</b> request for an archive specified a tree-hash
    #               aligned range, then this field returns a value.</p>
    #           <p>If the whole archive is retrieved, this value is the same as the
    #               ArchiveSHA256TreeHash value.</p>
    #           <p>This field is null for the following:</p>
    #           <ul>
    #               <li>
    #                   <p>Archive retrieval jobs that specify a range that is not tree-hash
    #                       aligned</p>
    #               </li>
    #            </ul>
    #           <ul>
    #               <li>
    #                   <p>Archival jobs that specify a range that is equal to the whole archive, when
    #                       the job status is <code>InProgress</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <ul>
    #               <li>
    #                   <p>Inventory jobs</p>
    #               </li>
    #               <li>
    #                   <p>Select jobs</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute archive_sha256_tree_hash
    #   <p>The SHA256 tree hash of the entire archive for an archive retrieval. For inventory
    #               retrieval or select jobs, this field is null.</p>
    #   @return [String]
    # @!attribute retrieval_byte_range
    #   <p>The retrieved byte range for archive retrieval jobs in the form
    #                   <i>StartByteValue</i>-<i>EndByteValue</i>. If no range
    #               was specified in the archive retrieval, then the whole archive is retrieved. In this
    #               case, <i>StartByteValue</i> equals 0 and <i>EndByteValue</i>
    #               equals the size of the archive minus 1. For inventory retrieval or select jobs, this
    #               field is null. </p>
    #   @return [String]
    # @!attribute tier
    #   <p>The tier to use for a select or an archive retrieval. Valid values are
    #                   <code>Expedited</code>, <code>Standard</code>, or <code>Bulk</code>.
    #                   <code>Standard</code> is the default.</p>
    #   @return [String]
    # @!attribute inventory_retrieval_parameters
    #   <p>Parameters used for range inventory retrieval.</p>
    #   @return [Types::InventoryRetrievalJobDescription]
    # @!attribute job_output_path
    #   <p>Contains the job output location.</p>
    #   @return [String]
    # @!attribute select_parameters
    #   <p>Contains the parameters used for a select.</p>
    #   @return [Types::SelectParameters]
    # @!attribute output_location
    #   <p>Contains the location where the data from the select job is stored.</p>
    #   @return [Types::OutputLocation]
    class GlacierJobDescription < Struct.new(
      :job_id,
      :job_description,
      :action,
      :archive_id,
      :vault_arn,
      :creation_date,
      :completed,
      :status_code,
      :status_message,
      :archive_size_in_bytes,
      :inventory_size_in_bytes,
      :sns_topic,
      :completion_date,
      :sha256_tree_hash,
      :archive_sha256_tree_hash,
      :retrieval_byte_range,
      :tier,
      :inventory_retrieval_parameters,
      :job_output_path,
      :select_parameters,
      :output_location,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:completed] = false unless options.key?(:completed)
        super
      end
    end

    # <p>Contains information about a grant.</p>
    # @!attribute grantee
    #   <p>The grantee.</p>
    #   @return [Types::Grantee]
    # @!attribute permission
    #   <p>Specifies the permission given to the grantee. </p>
    #   @return [String]
    class Grant < Struct.new(
      :grantee,
      :permission,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the grantee.</p>
    # @!attribute type
    #   <p>Type of grantee</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>Screen name of the grantee.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>URI of the grantee group.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The canonical user ID of the grantee.</p>
    #   @return [String]
    # @!attribute email_address
    #   <p>Email address of the grantee.</p>
    #   @return [String]
    class Grantee < Struct.new(
      :type,
      :display_name,
      :uri,
      :id,
      :email_address,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides options for initiating an Amazon S3 Glacier job.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    # @!attribute job_parameters
    #   <p>Provides options for specifying job information.</p>
    #   @return [Types::JobParameters]
    class InitiateJobInput < Struct.new(
      :account_id,
      :vault_name,
      :job_parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the Amazon S3 Glacier response to your request.</p>
    # @!attribute location
    #   <p>The relative URI path of the job.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID of the job.</p>
    #   @return [String]
    # @!attribute job_output_path
    #   <p>The path to the location of where the select results are stored.</p>
    #   @return [String]
    class InitiateJobOutput < Struct.new(
      :location,
      :job_id,
      :job_output_path,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides options for initiating a multipart upload to an Amazon S3 Glacier
    #          vault.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    # @!attribute archive_description
    #   <p>The archive description that you are uploading in parts.</p>
    #            <p>The part size must be a megabyte (1024 KB) multiplied by a power of 2, for example
    #            1048576 (1 MB), 2097152 (2 MB), 4194304 (4 MB), 8388608 (8 MB), and so on. The minimum
    #            allowable part size is 1 MB, and the maximum is 4 GB (4096 MB).</p>
    #   @return [String]
    # @!attribute part_size
    #   <p>The size of each part except the last, in bytes. The last part can be smaller than
    #            this part size.</p>
    #   @return [String]
    class InitiateMultipartUploadInput < Struct.new(
      :account_id,
      :vault_name,
      :archive_description,
      :part_size,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon S3 Glacier response to your request.</p>
    # @!attribute location
    #   <p>The relative URI path of the multipart upload ID Amazon S3 Glacier created.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>The ID of the multipart upload. This value is also included as part of the
    #            location.</p>
    #   @return [String]
    class InitiateMultipartUploadOutput < Struct.new(
      :location,
      :upload_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input values for <code>InitiateVaultLock</code>.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
    #            account ID associated with the credentials used to sign the request. You can either specify
    #            an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon
    #            Glacier uses the AWS account ID associated with the credentials used to sign the request.
    #            If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The vault lock policy as a JSON string, which uses "\" as an escape
    #            character.</p>
    #   @return [Types::VaultLockPolicy]
    class InitiateVaultLockInput < Struct.new(
      :account_id,
      :vault_name,
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the Amazon S3 Glacier response to your request.</p>
    # @!attribute lock_id
    #   <p>The lock ID, which is used to complete the vault locking process.</p>
    #   @return [String]
    class InitiateVaultLockOutput < Struct.new(
      :lock_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes how the archive is serialized.</p>
    # @!attribute csv
    #   <p>Describes the serialization of a CSV-encoded object.</p>
    #   @return [Types::CSVInput]
    class InputSerialization < Struct.new(
      :csv,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returned if there is insufficient capacity to process this expedited request. This
    #          error only applies to expedited retrievals and not to standard or bulk
    #          retrievals.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class InsufficientCapacityException < Struct.new(
      :type,
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returned if a parameter of the request is incorrectly specified.</p>
    # @!attribute type
    #   <p>Client</p>
    #   @return [String]
    # @!attribute code
    #   <p>400 Bad Request</p>
    #   @return [String]
    # @!attribute message
    #   <p>Returned if a parameter of the request is incorrectly specified.</p>
    #   @return [String]
    class InvalidParameterValueException < Struct.new(
      :type,
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the options for a range inventory retrieval job.</p>
    # @!attribute format
    #   <p>The output format for the vault inventory list, which is set by the <b>InitiateJob</b> request when initiating a job to retrieve a vault
    #               inventory. Valid values are <code>CSV</code> and <code>JSON</code>.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The start of the date range in Universal Coordinated Time (UTC) for vault inventory
    #               retrieval that includes archives created on or after this date. This value should be a
    #               string in the ISO 8601 date format, for example
    #               <code>2013-03-20T17:03:43Z</code>.</p>
    #   @return [String]
    # @!attribute end_date
    #   <p>The end of the date range in UTC for vault inventory retrieval that includes
    #               archives created before this date. This value should be a string in the ISO 8601 date
    #               format, for example <code>2013-03-20T17:03:43Z</code>.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of inventory items returned per vault inventory retrieval
    #               request. This limit is set when initiating the job with the a <b>InitiateJob</b> request. </p>
    #   @return [String]
    # @!attribute marker
    #   <p>An opaque string that represents where to continue pagination of the vault
    #               inventory retrieval results. You use the marker in a new <b>InitiateJob</b> request to obtain additional inventory items. If there are
    #               no more inventory items, this value is <code>null</code>. For more information, see
    #                   <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html#api-initiate-job-post-vault-inventory-list-filtering"> Range Inventory Retrieval</a>.</p>
    #   @return [String]
    class InventoryRetrievalJobDescription < Struct.new(
      :format,
      :start_date,
      :end_date,
      :limit,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides options for specifying a range inventory retrieval job.</p>
    # @!attribute start_date
    #   <p>The start of the date range in UTC for vault inventory retrieval that includes
    #            archives created on or after this date. This value should be a string in the ISO 8601 date
    #            format, for example <code>2013-03-20T17:03:43Z</code>.</p>
    #   @return [String]
    # @!attribute end_date
    #   <p>The end of the date range in UTC for vault inventory retrieval that includes archives
    #            created before this date. This value should be a string in the ISO 8601 date format, for
    #            example <code>2013-03-20T17:03:43Z</code>.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>Specifies the maximum number of inventory items returned per vault inventory
    #            retrieval request. Valid values are greater than or equal to 1.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>An opaque string that represents where to continue pagination of the vault inventory
    #            retrieval results. You use the marker in a new <b>InitiateJob</b>
    #            request to obtain additional inventory items. If there are no more inventory items, this
    #            value is <code>null</code>.</p>
    #   @return [String]
    class InventoryRetrievalJobInput < Struct.new(
      :start_date,
      :end_date,
      :limit,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides options for defining a job.</p>
    # @!attribute format
    #   <p>When initiating a job to retrieve a vault inventory, you can optionally add this
    #            parameter to your request to specify the output format. If you are initiating an inventory
    #            job and do not specify a Format field, JSON is the default format. Valid values are "CSV"
    #            and "JSON".</p>
    #   @return [String]
    # @!attribute type
    #   <p>The job type. You can initiate a job to perform a select query on an archive, 
    #            retrieve an archive, or get an inventory of a vault. 
    #            Valid values are "select", "archive-retrieval" and "inventory-retrieval".</p>
    #   @return [String]
    # @!attribute archive_id
    #   <p>The ID of the archive that you want to retrieve. This field is required only if
    #               <code>Type</code> is set to <code>select</code> or <code>archive-retrieval</code>code>. 
    #            An error occurs if you specify this
    #            request parameter for an inventory retrieval job request. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The optional description for the job. The description must be less than or equal to
    #            1,024 bytes. The allowable characters are 7-bit ASCII without control codes-specifically,
    #            ASCII values 32-126 decimal or 0x20-0x7E hexadecimal.</p>
    #   @return [String]
    # @!attribute sns_topic
    #   <p>The Amazon SNS topic ARN to which Amazon S3 Glacier sends a notification when the job is
    #            completed and the output is ready for you to download. The specified topic publishes the
    #            notification to its subscribers. The SNS topic must exist.</p>
    #   @return [String]
    # @!attribute retrieval_byte_range
    #   <p>The byte range to retrieve for an archive retrieval. in the form
    #               "<i>StartByteValue</i>-<i>EndByteValue</i>" If not
    #            specified, the whole archive is retrieved. If specified, the byte range must be megabyte
    #            (1024*1024) aligned which means that <i>StartByteValue</i> must be divisible
    #            by 1 MB and <i>EndByteValue</i> plus 1 must be divisible by 1 MB or be the
    #            end of the archive specified as the archive byte size value minus 1. If RetrievalByteRange
    #            is not megabyte aligned, this operation returns a 400 response. </p>
    #            <p>An error occurs if you specify this field for an inventory retrieval job
    #            request.</p>
    #   @return [String]
    # @!attribute tier
    #   <p>The tier to use for a select or an archive retrieval job. Valid values are
    #               <code>Expedited</code>, <code>Standard</code>, or <code>Bulk</code>.
    #               <code>Standard</code> is the default.</p>
    #   @return [String]
    # @!attribute inventory_retrieval_parameters
    #   <p>Input parameters used for range inventory retrieval.</p>
    #   @return [Types::InventoryRetrievalJobInput]
    # @!attribute select_parameters
    #   <p>Contains the parameters that define a job.</p>
    #   @return [Types::SelectParameters]
    # @!attribute output_location
    #   <p>Contains information about the location where the select job results are stored.</p>
    #   @return [Types::OutputLocation]
    class JobParameters < Struct.new(
      :format,
      :type,
      :archive_id,
      :description,
      :sns_topic,
      :retrieval_byte_range,
      :tier,
      :inventory_retrieval_parameters,
      :select_parameters,
      :output_location,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returned if the request results in a vault or account limit being exceeded.</p>
    # @!attribute type
    #   <p>Client</p>
    #   @return [String]
    # @!attribute code
    #   <p>400 Bad Request</p>
    #   @return [String]
    # @!attribute message
    #   <p>Returned if the request results in a vault limit or tags limit being exceeded.</p>
    #   @return [String]
    class LimitExceededException < Struct.new(
      :type,
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides options for retrieving a job list for an Amazon S3 Glacier vault.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of jobs to be returned. The default limit is 50. The number of
    #            jobs returned might be fewer than the specified limit, but the number of returned jobs
    #            never exceeds the limit.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An opaque string used for pagination. This value specifies the job at which the
    #            listing of jobs should begin. Get the marker value from a previous List Jobs response. You
    #            only need to include the marker if you are continuing the pagination of results started in
    #            a previous List Jobs request.</p>
    #   @return [String]
    # @!attribute statuscode
    #   <p>The type of job status to return. You can specify the following values:
    #               <code>InProgress</code>, <code>Succeeded</code>, or <code>Failed</code>.</p>
    #   @return [String]
    # @!attribute completed
    #   <p>The state of the jobs to return. You can specify <code>true</code> or
    #               <code>false</code>.</p>
    #   @return [String]
    class ListJobsInput < Struct.new(
      :account_id,
      :vault_name,
      :limit,
      :marker,
      :statuscode,
      :completed,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the Amazon S3 Glacier response to your request.</p>
    # @!attribute job_list
    #   <p>A list of job objects. Each job object contains metadata describing the
    #            job.</p>
    #   @return [Array<Types::GlacierJobDescription>]
    # @!attribute marker
    #   <p>	
    #            An opaque string used for pagination that specifies the job at which the listing of jobs should begin. 
    #            You get the <code>marker</code> value from a previous List Jobs response.
    #            You only need to include the marker if you are continuing the pagination of the results started in a 
    #            previous List Jobs request. </p>
    #   @return [String]
    class ListJobsOutput < Struct.new(
      :job_list,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides options for retrieving list of in-progress multipart uploads for an Amazon
    #          Glacier vault.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>Specifies the maximum number of uploads returned in the response body. If this value
    #            is not specified, the List Uploads operation returns up to 50 uploads.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An opaque string used for pagination. This value specifies the upload at which the
    #            listing of uploads should begin. Get the marker value from a previous List Uploads
    #            response. You need only include the marker if you are continuing the pagination of results
    #            started in a previous List Uploads request.</p>
    #   @return [String]
    class ListMultipartUploadsInput < Struct.new(
      :account_id,
      :vault_name,
      :limit,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the Amazon S3 Glacier response to your request.</p>
    # @!attribute uploads_list
    #   <p>A list of in-progress multipart uploads.</p>
    #   @return [Array<Types::UploadListElement>]
    # @!attribute marker
    #   <p>An opaque string that represents where to continue pagination of the results. You use
    #            the marker in a new List Multipart Uploads request to obtain more uploads in the list. If
    #            there are no more uploads, this value is <code>null</code>.</p>
    #   @return [String]
    class ListMultipartUploadsOutput < Struct.new(
      :uploads_list,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides options for retrieving a list of parts of an archive that have been uploaded
    #          in a specific multipart upload.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>The upload ID of the multipart upload.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>An opaque string used for pagination. This value specifies the part at which the
    #            listing of parts should begin. Get the marker value from the response of a previous List
    #            Parts response. You need only include the marker if you are continuing the pagination of
    #            results started in a previous List Parts request.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of parts to be returned. The default limit is 50. The number of
    #            parts returned might be fewer than the specified limit, but the number of returned parts
    #            never exceeds the limit.</p>
    #   @return [Integer]
    class ListPartsInput < Struct.new(
      :account_id,
      :vault_name,
      :upload_id,
      :marker,
      :limit,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the Amazon S3 Glacier response to your request.</p>
    # @!attribute multipart_upload_id
    #   <p>The ID of the upload to which the parts are associated.</p>
    #   @return [String]
    # @!attribute vault_arn
    #   <p>The Amazon Resource Name (ARN) of the vault to which the multipart upload was
    #            initiated.</p>
    #   @return [String]
    # @!attribute archive_description
    #   <p>The description of the archive that was specified in the Initiate Multipart Upload
    #            request.</p>
    #   @return [String]
    # @!attribute part_size_in_bytes
    #   <p>The part size in bytes. This is the same value that you specified in the Initiate
    #            Multipart Upload request.</p>
    #   @return [Integer]
    # @!attribute creation_date
    #   <p>The UTC time at which the multipart upload was initiated.</p>
    #   @return [String]
    # @!attribute parts
    #   <p>A list of the part sizes of the multipart upload. Each object in the array contains a
    #            <code>RangeBytes</code> and <code>sha256-tree-hash</code> name/value
    #            pair.</p>
    #   @return [Array<Types::PartListElement>]
    # @!attribute marker
    #   <p>An opaque string that represents where to continue pagination of the results. You use
    #            the marker in a new List Parts request to obtain more jobs in the list. If there are no
    #            more parts, this value is <code>null</code>.</p>
    #   @return [String]
    class ListPartsOutput < Struct.new(
      :multipart_upload_id,
      :vault_arn,
      :archive_description,
      :part_size_in_bytes,
      :creation_date,
      :parts,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:part_size_in_bytes] = 0 unless options.key?(:part_size_in_bytes)
        super
      end
    end

    # @!attribute account_id
    #   <p>The AWS account ID of the account that owns the vault. You can either specify an AWS
    #            account ID or optionally a single '-' (hyphen), in which case Amazon S3 Glacier uses the AWS
    #            account ID associated with the credentials used to sign the request. If you use an account
    #            ID, don't include any hyphens ('-') in the ID. </p>
    #   @return [String]
    class ListProvisionedCapacityInput < Struct.new(
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute provisioned_capacity_list
    #   <p>The response body contains the following JSON fields.</p>
    #   @return [Array<Types::ProvisionedCapacityDescription>]
    class ListProvisionedCapacityOutput < Struct.new(
      :provisioned_capacity_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input value for <code>ListTagsForVaultInput</code>.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    class ListTagsForVaultInput < Struct.new(
      :account_id,
      :vault_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the Amazon S3 Glacier response to your request.</p>
    # @!attribute tags
    #   <p>The tags attached to the vault. Each tag is composed of a key and a value.</p>
    #   @return [Hash<String, String>]
    class ListTagsForVaultOutput < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides options to retrieve the vault list owned by the calling user's account. The
    #          list provides metadata information for each vault.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
    #            account ID associated with the credentials used to sign the request. You can either specify
    #            an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon
    #            Glacier uses the AWS account ID associated with the credentials used to sign the request.
    #            If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>A string used for pagination. The marker specifies the vault ARN after which the
    #            listing of vaults should begin.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of vaults to be returned. The default limit is 10. The number of
    #            vaults returned might be fewer than the specified limit, but the number of returned vaults
    #            never exceeds the limit.</p>
    #   @return [Integer]
    class ListVaultsInput < Struct.new(
      :account_id,
      :marker,
      :limit,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the Amazon S3 Glacier response to your request.</p>
    # @!attribute vault_list
    #   <p>List of vaults.</p>
    #   @return [Array<Types::DescribeVaultOutput>]
    # @!attribute marker
    #   <p>The vault ARN at which to continue pagination of the results. You use the marker in
    #            another List Vaults request to obtain more vaults in the list.</p>
    #   @return [String]
    class ListVaultsOutput < Struct.new(
      :vault_list,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returned if a required header or parameter is missing from the request.</p>
    # @!attribute type
    #   <p>Client.</p>
    #   @return [String]
    # @!attribute code
    #   <p>400 Bad Request</p>
    #   @return [String]
    # @!attribute message
    #   <p>Returned if no authentication data is found for the request.</p>
    #   @return [String]
    class MissingParameterValueException < Struct.new(
      :type,
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the location where the select job results are stored.</p>
    # @!attribute s3
    #   <p>Describes an S3 location that will receive the results of the job request.</p>
    #   @return [Types::S3Location]
    class OutputLocation < Struct.new(
      :s3,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes how the select output is serialized.</p>
    # @!attribute csv
    #   <p>Describes the serialization of CSV-encoded query results.</p>
    #   @return [Types::CSVOutput]
    class OutputSerialization < Struct.new(
      :csv,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A list of the part sizes of the multipart upload.</p>
    # @!attribute range_in_bytes
    #   <p>The byte range of a part, inclusive of the upper value of the range.</p>
    #   @return [String]
    # @!attribute sha256_tree_hash
    #   <p>The SHA256 tree hash value that Amazon S3 Glacier calculated for the part. This field is
    #            never <code>null</code>.</p>
    #   @return [String]
    class PartListElement < Struct.new(
      :range_in_bytes,
      :sha256_tree_hash,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Permission
      FULL_CONTROL = 'FULL_CONTROL'
      WRITE = 'WRITE'
      WRITE_ACP = 'WRITE_ACP'
      READ = 'READ'
      READ_ACP = 'READ_ACP'
    end

    # <p>Returned if a retrieval job would exceed the current data policy's retrieval rate
    #          limit. For more information about data retrieval policies,</p>
    # @!attribute type
    #   <p>Client</p>
    #   @return [String]
    # @!attribute code
    #   <p>PolicyEnforcedException</p>
    #   @return [String]
    # @!attribute message
    #   <p>InitiateJob request denied by current data retrieval policy.</p>
    #   @return [String]
    class PolicyEnforcedException < Struct.new(
      :type,
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The definition for a provisioned capacity unit.</p>
    # @!attribute capacity_id
    #   <p>The ID that identifies the provisioned capacity unit.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The date that the provisioned capacity unit was purchased, in Universal Coordinated Time (UTC).</p>
    #   @return [String]
    # @!attribute expiration_date
    #   <p>The date that the provisioned capacity unit expires, in Universal Coordinated Time (UTC).</p>
    #   @return [String]
    class ProvisionedCapacityDescription < Struct.new(
      :capacity_id,
      :start_date,
      :expiration_date,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The AWS account ID of the account that owns the vault. You can either specify an AWS
    #            account ID or optionally a single '-' (hyphen), in which case Amazon S3 Glacier uses the AWS
    #            account ID associated with the credentials used to sign the request. If you use an account
    #            ID, don't include any hyphens ('-') in the ID. </p>
    #   @return [String]
    class PurchaseProvisionedCapacityInput < Struct.new(
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute capacity_id
    #   <p>The ID that identifies the provisioned capacity unit.</p>
    #   @return [String]
    class PurchaseProvisionedCapacityOutput < Struct.new(
      :capacity_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module QuoteFields
      Always = 'ALWAYS'
      AsNeeded = 'ASNEEDED'
    end

    # <p>The input value for <code>RemoveTagsFromVaultInput</code>.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag keys. Each corresponding tag is removed from the vault.</p>
    #   @return [Array<String>]
    class RemoveTagsFromVaultInput < Struct.new(
      :account_id,
      :vault_name,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returned if, when uploading an archive, Amazon S3 Glacier times out while receiving the
    #          upload.</p>
    # @!attribute type
    #   <p>Client</p>
    #   @return [String]
    # @!attribute code
    #   <p>408 Request Timeout</p>
    #   @return [String]
    # @!attribute message
    #   <p>Returned if, when uploading an archive, Amazon S3 Glacier times out while receiving the
    #            upload.</p>
    #   @return [String]
    class RequestTimeoutException < Struct.new(
      :type,
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returned if the specified resource (such as a vault, upload ID, or job ID) doesn't
    #          exist.</p>
    # @!attribute type
    #   <p>Client</p>
    #   @return [String]
    # @!attribute code
    #   <p>404 Not Found</p>
    #   @return [String]
    # @!attribute message
    #   <p>Returned if the specified resource (such as a vault, upload ID, or job ID) doesn't
    #            exist.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :type,
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the location in Amazon S3 where the select job results are stored.</p>
    # @!attribute bucket_name
    #   <p>The name of the Amazon S3 bucket where the job results are stored.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The prefix that is prepended to the results for this request.</p>
    #   @return [String]
    # @!attribute encryption
    #   <p>Contains information about the encryption used to store the job results in Amazon S3.</p>
    #   @return [Types::Encryption]
    # @!attribute canned_acl
    #   <p>The canned access control list (ACL) to apply to the job results.</p>
    #   @return [String]
    # @!attribute access_control_list
    #   <p>A list of grants that control access to the staged results.</p>
    #   @return [Array<Types::Grant>]
    # @!attribute tagging
    #   <p>The tag-set that is applied to the job results.</p>
    #   @return [Hash<String, String>]
    # @!attribute user_metadata
    #   <p>A map of metadata to store with the job results in Amazon S3.</p>
    #   @return [Hash<String, String>]
    # @!attribute storage_class
    #   <p>The storage class used to store the job results.</p>
    #   @return [String]
    class S3Location < Struct.new(
      :bucket_name,
      :prefix,
      :encryption,
      :canned_acl,
      :access_control_list,
      :tagging,
      :user_metadata,
      :storage_class,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the parameters used for a select.</p>
    # @!attribute input_serialization
    #   <p>Describes the serialization format of the object.</p>
    #   @return [Types::InputSerialization]
    # @!attribute expression_type
    #   <p>The type of the provided expression, for example <code>SQL</code>.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>The expression that is used to select the object.</p>
    #   @return [String]
    # @!attribute output_serialization
    #   <p>Describes how the results of the select job are serialized.</p>
    #   @return [Types::OutputSerialization]
    class SelectParameters < Struct.new(
      :input_serialization,
      :expression_type,
      :expression,
      :output_serialization,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returned if the service cannot complete the request.</p>
    # @!attribute type
    #   <p>Server</p>
    #   @return [String]
    # @!attribute code
    #   <p>500 Internal Server Error</p>
    #   @return [String]
    # @!attribute message
    #   <p>Returned if the service cannot complete the request.</p>
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :type,
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>SetDataRetrievalPolicy input.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
    #            account ID associated with the credentials used to sign the request. You can either specify
    #            an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon
    #            Glacier uses the AWS account ID associated with the credentials used to sign the request.
    #            If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The data retrieval policy in JSON format.</p>
    #   @return [Types::DataRetrievalPolicy]
    class SetDataRetrievalPolicyInput < Struct.new(
      :account_id,
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>SetVaultAccessPolicy input.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The vault access policy as a JSON string.</p>
    #   @return [Types::VaultAccessPolicy]
    class SetVaultAccessPolicyInput < Struct.new(
      :account_id,
      :vault_name,
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides options to configure notifications that will be sent when specific events
    #          happen to a vault.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    # @!attribute vault_notification_config
    #   <p>Provides options for specifying notification configuration.</p>
    #   @return [Types::VaultNotificationConfig]
    class SetVaultNotificationsInput < Struct.new(
      :account_id,
      :vault_name,
      :vault_notification_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module StatusCode
      InProgress = 'InProgress'
      Succeeded = 'Succeeded'
      Failed = 'Failed'
    end

    module StorageClass
      Standard = 'STANDARD'
      ReducedRedundancy = 'REDUCED_REDUNDANCY'
      StandardInfrequentAccess = 'STANDARD_IA'
    end

    module Type
      AmazonCustomerByEmail = 'AmazonCustomerByEmail'
      CanonicalUser = 'CanonicalUser'
      Group = 'Group'
    end

    # <p>Provides options to add an archive to a vault.</p>
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    #   @return [String]
    # @!attribute archive_description
    #   <p>The optional description of the archive you are uploading.</p>
    #   @return [String]
    # @!attribute checksum
    #   <p>The SHA256 tree hash of the data being uploaded.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The data to upload.</p>
    #   @return [String]
    class UploadArchiveInput < Struct.new(
      :vault_name,
      :account_id,
      :archive_description,
      :checksum,
      :body,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the Amazon S3 Glacier response to your request.</p>
    #          <p>For information about the underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-post.html">Upload Archive</a>. For
    #          conceptual information, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html">Working with Archives in
    #             Amazon S3 Glacier</a>.</p>
    # @!attribute location
    #   <p>The relative URI path of the newly added archive resource.</p>
    #   @return [String]
    # @!attribute checksum
    #   <p>The checksum of the archive computed by Amazon S3 Glacier.</p>
    #   @return [String]
    # @!attribute archive_id
    #   <p>The ID of the archive. This value is also included as part of the location.</p>
    #   @return [String]
    class UploadArchiveOutput < Struct.new(
      :location,
      :checksum,
      :archive_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A list of in-progress multipart uploads for a vault.</p>
    # @!attribute multipart_upload_id
    #   <p>The ID of a multipart upload.</p>
    #   @return [String]
    # @!attribute vault_arn
    #   <p>The Amazon Resource Name (ARN) of the vault that contains the archive.</p>
    #   @return [String]
    # @!attribute archive_description
    #   <p>The description of the archive that was specified in the Initiate Multipart Upload
    #            request.</p>
    #   @return [String]
    # @!attribute part_size_in_bytes
    #   <p>The part size, in bytes, specified in the Initiate Multipart Upload request. This is
    #            the size of all the parts in the upload except the last part, which may be smaller than
    #            this size.</p>
    #   @return [Integer]
    # @!attribute creation_date
    #   <p>The UTC time at which the multipart upload was initiated.</p>
    #   @return [String]
    class UploadListElement < Struct.new(
      :multipart_upload_id,
      :vault_arn,
      :archive_description,
      :part_size_in_bytes,
      :creation_date,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:part_size_in_bytes] = 0 unless options.key?(:part_size_in_bytes)
        super
      end
    end

    # <p>Provides options to upload a part of an archive in a multipart upload
    #          operation.</p>
    # @!attribute account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    #   @return [String]
    # @!attribute vault_name
    #   <p>The name of the vault.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>The upload ID of the multipart upload.</p>
    #   @return [String]
    # @!attribute checksum
    #   <p>The SHA256 tree hash of the data being uploaded.</p>
    #   @return [String]
    # @!attribute range
    #   <p>Identifies the range of bytes in the assembled archive that will be uploaded in this
    #            part. Amazon S3 Glacier uses this information to assemble the archive in the proper sequence.
    #            The format of this header follows RFC 2616. An example header is Content-Range:bytes
    #            0-4194303/*.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The data to upload.</p>
    #   @return [String]
    class UploadMultipartPartInput < Struct.new(
      :account_id,
      :vault_name,
      :upload_id,
      :checksum,
      :range,
      :body,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the Amazon S3 Glacier response to your request.</p>
    # @!attribute checksum
    #   <p>The SHA256 tree hash that Amazon S3 Glacier computed for the uploaded part.</p>
    #   @return [String]
    class UploadMultipartPartOutput < Struct.new(
      :checksum,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the vault access policy.</p>
    # @!attribute policy
    #   <p>The vault access policy.</p>
    #   @return [String]
    class VaultAccessPolicy < Struct.new(
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the vault lock policy.</p>
    # @!attribute policy
    #   <p>The vault lock policy.</p>
    #   @return [String]
    class VaultLockPolicy < Struct.new(
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a vault's notification configuration.</p>
    # @!attribute sns_topic
    #   <p>The Amazon Simple Notification Service (Amazon SNS) topic Amazon Resource Name
    #            (ARN).</p>
    #   @return [String]
    # @!attribute events
    #   <p>A list of one or more events for which Amazon S3 Glacier will send a notification to the
    #            specified Amazon SNS topic.</p>
    #   @return [Array<String>]
    class VaultNotificationConfig < Struct.new(
      :sns_topic,
      :events,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
