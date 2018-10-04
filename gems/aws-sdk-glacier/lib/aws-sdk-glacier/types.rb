# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Glacier
  module Types

    # Provides options to abort a multipart upload identified by the upload
    # ID.
    #
    # For information about the underlying REST API, see [Abort Multipart
    # Upload][1]. For conceptual information, see [Working with Archives in
    # Amazon Glacier][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-abort-upload.html
    # [2]: http://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html
    #
    # @note When making an API call, you may pass AbortMultipartUploadInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #         upload_id: "string", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   The upload ID of the multipart upload to delete.
    #   @return [String]
    #
    class AbortMultipartUploadInput < Struct.new(
      :account_id,
      :vault_name,
      :upload_id)
      include Aws::Structure
    end

    # The input values for `AbortVaultLock`.
    #
    # @note When making an API call, you may pass AbortVaultLockInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID. This value must match
    #   the AWS account ID associated with the credentials used to sign the
    #   request. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you specify your account ID, do not include any hyphens ('-')
    #   in the ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    class AbortVaultLockInput < Struct.new(
      :account_id,
      :vault_name)
      include Aws::Structure
    end

    # The input values for `AddTagsToVault`.
    #
    # @note When making an API call, you may pass AddTagsToVaultInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the vault. Each tag is composed of a key and a
    #   value. The value can be an empty string.
    #   @return [Hash<String,String>]
    #
    class AddTagsToVaultInput < Struct.new(
      :account_id,
      :vault_name,
      :tags)
      include Aws::Structure
    end

    # Contains the Amazon Glacier response to your request.
    #
    # For information about the underlying REST API, see [Upload
    # Archive][1]. For conceptual information, see [Working with Archives in
    # Amazon Glacier][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-post.html
    # [2]: http://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html
    #
    # @!attribute [rw] location
    #   The relative URI path of the newly added archive resource.
    #   @return [String]
    #
    # @!attribute [rw] checksum
    #   The checksum of the archive computed by Amazon Glacier.
    #   @return [String]
    #
    # @!attribute [rw] archive_id
    #   The ID of the archive. This value is also included as part of the
    #   location.
    #   @return [String]
    #
    class ArchiveCreationOutput < Struct.new(
      :location,
      :checksum,
      :archive_id)
      include Aws::Structure
    end

    # Contains information about the comma-separated value (CSV) file to
    # select from.
    #
    # @note When making an API call, you may pass CSVInput
    #   data as a hash:
    #
    #       {
    #         file_header_info: "USE", # accepts USE, IGNORE, NONE
    #         comments: "string",
    #         quote_escape_character: "string",
    #         record_delimiter: "string",
    #         field_delimiter: "string",
    #         quote_character: "string",
    #       }
    #
    # @!attribute [rw] file_header_info
    #   Describes the first line of input. Valid values are `None`,
    #   `Ignore`, and `Use`.
    #   @return [String]
    #
    # @!attribute [rw] comments
    #   A single character used to indicate that a row should be ignored
    #   when the character is present at the start of that row.
    #   @return [String]
    #
    # @!attribute [rw] quote_escape_character
    #   A single character used for escaping the quotation-mark character
    #   inside an already escaped value.
    #   @return [String]
    #
    # @!attribute [rw] record_delimiter
    #   A value used to separate individual records from each other.
    #   @return [String]
    #
    # @!attribute [rw] field_delimiter
    #   A value used to separate individual fields from each other within a
    #   record.
    #   @return [String]
    #
    # @!attribute [rw] quote_character
    #   A value used as an escape character where the field delimiter is
    #   part of the value.
    #   @return [String]
    #
    class CSVInput < Struct.new(
      :file_header_info,
      :comments,
      :quote_escape_character,
      :record_delimiter,
      :field_delimiter,
      :quote_character)
      include Aws::Structure
    end

    # Contains information about the comma-separated value (CSV) file that
    # the job results are stored in.
    #
    # @note When making an API call, you may pass CSVOutput
    #   data as a hash:
    #
    #       {
    #         quote_fields: "ALWAYS", # accepts ALWAYS, ASNEEDED
    #         quote_escape_character: "string",
    #         record_delimiter: "string",
    #         field_delimiter: "string",
    #         quote_character: "string",
    #       }
    #
    # @!attribute [rw] quote_fields
    #   A value that indicates whether all output fields should be contained
    #   within quotation marks.
    #   @return [String]
    #
    # @!attribute [rw] quote_escape_character
    #   A single character used for escaping the quotation-mark character
    #   inside an already escaped value.
    #   @return [String]
    #
    # @!attribute [rw] record_delimiter
    #   A value used to separate individual records from each other.
    #   @return [String]
    #
    # @!attribute [rw] field_delimiter
    #   A value used to separate individual fields from each other within a
    #   record.
    #   @return [String]
    #
    # @!attribute [rw] quote_character
    #   A value used as an escape character where the field delimiter is
    #   part of the value.
    #   @return [String]
    #
    class CSVOutput < Struct.new(
      :quote_fields,
      :quote_escape_character,
      :record_delimiter,
      :field_delimiter,
      :quote_character)
      include Aws::Structure
    end

    # Provides options to complete a multipart upload operation. This
    # informs Amazon Glacier that all the archive parts have been uploaded
    # and Amazon Glacier can now assemble the archive from the uploaded
    # parts. After assembling and saving the archive to the vault, Amazon
    # Glacier returns the URI path of the newly created archive resource.
    #
    # @note When making an API call, you may pass CompleteMultipartUploadInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #         upload_id: "string", # required
    #         archive_size: 1,
    #         checksum: "string",
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   The upload ID of the multipart upload.
    #   @return [String]
    #
    # @!attribute [rw] archive_size
    #   The total size, in bytes, of the entire archive. This value should
    #   be the sum of all the sizes of the individual parts that you
    #   uploaded.
    #   @return [Integer]
    #
    # @!attribute [rw] checksum
    #   The SHA256 tree hash of the entire archive. It is the tree hash of
    #   SHA256 tree hash of the individual parts. If the value you specify
    #   in the request does not match the SHA256 tree hash of the final
    #   assembled archive as computed by Amazon Glacier, Amazon Glacier
    #   returns an error and the request fails.
    #   @return [String]
    #
    class CompleteMultipartUploadInput < Struct.new(
      :account_id,
      :vault_name,
      :upload_id,
      :archive_size,
      :checksum)
      include Aws::Structure
    end

    # The input values for `CompleteVaultLock`.
    #
    # @note When making an API call, you may pass CompleteVaultLockInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #         lock_id: "string", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID. This value must match
    #   the AWS account ID associated with the credentials used to sign the
    #   request. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you specify your account ID, do not include any hyphens ('-')
    #   in the ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    # @!attribute [rw] lock_id
    #   The `lockId` value is the lock ID obtained from a InitiateVaultLock
    #   request.
    #   @return [String]
    #
    class CompleteVaultLockInput < Struct.new(
      :account_id,
      :vault_name,
      :lock_id)
      include Aws::Structure
    end

    # Provides options to create a vault.
    #
    # @note When making an API call, you may pass CreateVaultInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID. This value must match
    #   the AWS account ID associated with the credentials used to sign the
    #   request. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you specify your account ID, do not include any hyphens ('-')
    #   in the ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    class CreateVaultInput < Struct.new(
      :account_id,
      :vault_name)
      include Aws::Structure
    end

    # Contains the Amazon Glacier response to your request.
    #
    # @!attribute [rw] location
    #   The URI of the vault that was created.
    #   @return [String]
    #
    class CreateVaultOutput < Struct.new(
      :location)
      include Aws::Structure
    end

    # Data retrieval policy.
    #
    # @note When making an API call, you may pass DataRetrievalPolicy
    #   data as a hash:
    #
    #       {
    #         rules: [
    #           {
    #             strategy: "string",
    #             bytes_per_hour: 1,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rules
    #   The policy rule. Although this is a list type, currently there must
    #   be only one rule, which contains a Strategy field and optionally a
    #   BytesPerHour field.
    #   @return [Array<Types::DataRetrievalRule>]
    #
    class DataRetrievalPolicy < Struct.new(
      :rules)
      include Aws::Structure
    end

    # Data retrieval policy rule.
    #
    # @note When making an API call, you may pass DataRetrievalRule
    #   data as a hash:
    #
    #       {
    #         strategy: "string",
    #         bytes_per_hour: 1,
    #       }
    #
    # @!attribute [rw] strategy
    #   The type of data retrieval policy to set.
    #
    #   Valid values: BytesPerHour\|FreeTier\|None
    #   @return [String]
    #
    # @!attribute [rw] bytes_per_hour
    #   The maximum number of bytes that can be retrieved in an hour.
    #
    #   This field is required only if the value of the Strategy field is
    #   `BytesPerHour`. Your PUT operation will be rejected if the Strategy
    #   field is not set to `BytesPerHour` and you set this field.
    #   @return [Integer]
    #
    class DataRetrievalRule < Struct.new(
      :strategy,
      :bytes_per_hour)
      include Aws::Structure
    end

    # Provides options for deleting an archive from an Amazon Glacier vault.
    #
    # @note When making an API call, you may pass DeleteArchiveInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #         archive_id: "string", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    # @!attribute [rw] archive_id
    #   The ID of the archive to delete.
    #   @return [String]
    #
    class DeleteArchiveInput < Struct.new(
      :account_id,
      :vault_name,
      :archive_id)
      include Aws::Structure
    end

    # DeleteVaultAccessPolicy input.
    #
    # @note When making an API call, you may pass DeleteVaultAccessPolicyInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    class DeleteVaultAccessPolicyInput < Struct.new(
      :account_id,
      :vault_name)
      include Aws::Structure
    end

    # Provides options for deleting a vault from Amazon Glacier.
    #
    # @note When making an API call, you may pass DeleteVaultInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    class DeleteVaultInput < Struct.new(
      :account_id,
      :vault_name)
      include Aws::Structure
    end

    # Provides options for deleting a vault notification configuration from
    # an Amazon Glacier vault.
    #
    # @note When making an API call, you may pass DeleteVaultNotificationsInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    class DeleteVaultNotificationsInput < Struct.new(
      :account_id,
      :vault_name)
      include Aws::Structure
    end

    # Provides options for retrieving a job description.
    #
    # @note When making an API call, you may pass DescribeJobInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #         job_id: "string", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID of the job to describe.
    #   @return [String]
    #
    class DescribeJobInput < Struct.new(
      :account_id,
      :vault_name,
      :job_id)
      include Aws::Structure
    end

    # Provides options for retrieving metadata for a specific vault in
    # Amazon Glacier.
    #
    # @note When making an API call, you may pass DescribeVaultInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    class DescribeVaultInput < Struct.new(
      :account_id,
      :vault_name)
      include Aws::Structure
    end

    # Contains the Amazon Glacier response to your request.
    #
    # @!attribute [rw] vault_arn
    #   The Amazon Resource Name (ARN) of the vault.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The Universal Coordinated Time (UTC) date when the vault was
    #   created. This value should be a string in the ISO 8601 date format,
    #   for example `2012-03-20T17:03:43.221Z`.
    #   @return [Time]
    #
    # @!attribute [rw] last_inventory_date
    #   The Universal Coordinated Time (UTC) date when Amazon Glacier
    #   completed the last vault inventory. This value should be a string in
    #   the ISO 8601 date format, for example `2012-03-20T17:03:43.221Z`.
    #   @return [Time]
    #
    # @!attribute [rw] number_of_archives
    #   The number of archives in the vault as of the last inventory date.
    #   This field will return `null` if an inventory has not yet run on the
    #   vault, for example if you just created the vault.
    #   @return [Integer]
    #
    # @!attribute [rw] size_in_bytes
    #   Total size, in bytes, of the archives in the vault as of the last
    #   inventory date. This field will return null if an inventory has not
    #   yet run on the vault, for example if you just created the vault.
    #   @return [Integer]
    #
    class DescribeVaultOutput < Struct.new(
      :vault_arn,
      :vault_name,
      :creation_date,
      :last_inventory_date,
      :number_of_archives,
      :size_in_bytes)
      include Aws::Structure
    end

    # Contains information about the encryption used to store the job
    # results in Amazon S3.
    #
    # @note When making an API call, you may pass Encryption
    #   data as a hash:
    #
    #       {
    #         encryption_type: "aws:kms", # accepts aws:kms, AES256
    #         kms_key_id: "string",
    #         kms_context: "string",
    #       }
    #
    # @!attribute [rw] encryption_type
    #   The server-side encryption algorithm used when storing job results
    #   in Amazon S3, for example `AES256` or `aws:kms`.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS KMS key ID to use for object encryption. All GET and PUT
    #   requests for an object protected by AWS KMS fail if not made by
    #   using Secure Sockets Layer (SSL) or Signature Version 4.
    #   @return [String]
    #
    # @!attribute [rw] kms_context
    #   Optional. If the encryption type is `aws:kms`, you can use this
    #   value to specify the encryption context for the job results.
    #   @return [String]
    #
    class Encryption < Struct.new(
      :encryption_type,
      :kms_key_id,
      :kms_context)
      include Aws::Structure
    end

    # Input for GetDataRetrievalPolicy.
    #
    # @note When making an API call, you may pass GetDataRetrievalPolicyInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID. This value must match
    #   the AWS account ID associated with the credentials used to sign the
    #   request. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you specify your account ID, do not include any hyphens ('-')
    #   in the ID.
    #   @return [String]
    #
    class GetDataRetrievalPolicyInput < Struct.new(
      :account_id)
      include Aws::Structure
    end

    # Contains the Amazon Glacier response to the `GetDataRetrievalPolicy`
    # request.
    #
    # @!attribute [rw] policy
    #   Contains the returned data retrieval policy in JSON format.
    #   @return [Types::DataRetrievalPolicy]
    #
    class GetDataRetrievalPolicyOutput < Struct.new(
      :policy)
      include Aws::Structure
    end

    # Provides options for downloading output of an Amazon Glacier job.
    #
    # @note When making an API call, you may pass GetJobOutputInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #         job_id: "string", # required
    #         range: "string",
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID whose data is downloaded.
    #   @return [String]
    #
    # @!attribute [rw] range
    #   The range of bytes to retrieve from the output. For example, if you
    #   want to download the first 1,048,576 bytes, specify the range as
    #   `bytes=0-1048575`. By default, this operation downloads the entire
    #   output.
    #
    #   If the job output is large, then you can use a range to retrieve a
    #   portion of the output. This allows you to download the entire output
    #   in smaller chunks of bytes. For example, suppose you have 1 GB of
    #   job output you want to download and you decide to download 128 MB
    #   chunks of data at a time, which is a total of eight Get Job Output
    #   requests. You use the following process to download the job output:
    #
    #   1.  Download a 128 MB chunk of output by specifying the appropriate
    #       byte range. Verify that all 128 MB of data was received.
    #
    #   2.  Along with the data, the response includes a SHA256 tree hash of
    #       the payload. You compute the checksum of the payload on the
    #       client and compare it with the checksum you received in the
    #       response to ensure you received all the expected data.
    #
    #   3.  Repeat steps 1 and 2 for all the eight 128 MB chunks of output
    #       data, each time specifying the appropriate byte range.
    #
    #   4.  After downloading all the parts of the job output, you have a
    #       list of eight checksum values. Compute the tree hash of these
    #       values to find the checksum of the entire output. Using the
    #       DescribeJob API, obtain job information of the job that provided
    #       you the output. The response includes the checksum of the entire
    #       archive stored in Amazon Glacier. You compare this value with
    #       the checksum you computed to ensure you have downloaded the
    #       entire archive content with no errors.
    #   @return [String]
    #
    class GetJobOutputInput < Struct.new(
      :account_id,
      :vault_name,
      :job_id,
      :range)
      include Aws::Structure
    end

    # Contains the Amazon Glacier response to your request.
    #
    # @!attribute [rw] body
    #   The job data, either archive data or inventory data.
    #   @return [IO]
    #
    # @!attribute [rw] checksum
    #   The checksum of the data in the response. This header is returned
    #   only when retrieving the output for an archive retrieval job.
    #   Furthermore, this header appears only under the following
    #   conditions:
    #
    #   * You get the entire range of the archive.
    #
    #   * You request a range to return of the archive that starts and ends
    #     on a multiple of 1 MB. For example, if you have an 3.1 MB archive
    #     and you specify a range to return that starts at 1 MB and ends at
    #     2 MB, then the x-amz-sha256-tree-hash is returned as a response
    #     header.
    #
    #   * You request a range of the archive to return that starts on a
    #     multiple of 1 MB and goes to the end of the archive. For example,
    #     if you have a 3.1 MB archive and you specify a range that starts
    #     at 2 MB and ends at 3.1 MB (the end of the archive), then the
    #     x-amz-sha256-tree-hash is returned as a response header.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP response code for a job output request. The value depends
    #   on whether a range was specified in the request.
    #   @return [Integer]
    #
    # @!attribute [rw] content_range
    #   The range of bytes returned by Amazon Glacier. If only partial
    #   output is downloaded, the response provides the range of bytes
    #   Amazon Glacier returned. For example, bytes 0-1048575/8388608
    #   returns the first 1 MB from 8 MB.
    #   @return [String]
    #
    # @!attribute [rw] accept_ranges
    #   Indicates the range units accepted. For more information, see
    #   [RFC2616][1].
    #
    #
    #
    #   [1]: http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The Content-Type depends on whether the job output is an archive or
    #   a vault inventory. For archive data, the Content-Type is
    #   application/octet-stream. For vault inventory, if you requested CSV
    #   format when you initiated the job, the Content-Type is text/csv.
    #   Otherwise, by default, vault inventory is returned as JSON, and the
    #   Content-Type is application/json.
    #   @return [String]
    #
    # @!attribute [rw] archive_description
    #   The description of an archive.
    #   @return [String]
    #
    class GetJobOutputOutput < Struct.new(
      :body,
      :checksum,
      :status,
      :content_range,
      :accept_ranges,
      :content_type,
      :archive_description)
      include Aws::Structure
    end

    # Input for GetVaultAccessPolicy.
    #
    # @note When making an API call, you may pass GetVaultAccessPolicyInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    class GetVaultAccessPolicyInput < Struct.new(
      :account_id,
      :vault_name)
      include Aws::Structure
    end

    # Output for GetVaultAccessPolicy.
    #
    # @!attribute [rw] policy
    #   Contains the returned vault access policy as a JSON string.
    #   @return [Types::VaultAccessPolicy]
    #
    class GetVaultAccessPolicyOutput < Struct.new(
      :policy)
      include Aws::Structure
    end

    # The input values for `GetVaultLock`.
    #
    # @note When making an API call, you may pass GetVaultLockInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    class GetVaultLockInput < Struct.new(
      :account_id,
      :vault_name)
      include Aws::Structure
    end

    # Contains the Amazon Glacier response to your request.
    #
    # @!attribute [rw] policy
    #   The vault lock policy as a JSON string, which uses "\\" as an
    #   escape character.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the vault lock. `InProgress` or `Locked`.
    #   @return [String]
    #
    # @!attribute [rw] expiration_date
    #   The UTC date and time at which the lock ID expires. This value can
    #   be `null` if the vault lock is in a `Locked` state.
    #   @return [Time]
    #
    # @!attribute [rw] creation_date
    #   The UTC date and time at which the vault lock was put into the
    #   `InProgress` state.
    #   @return [Time]
    #
    class GetVaultLockOutput < Struct.new(
      :policy,
      :state,
      :expiration_date,
      :creation_date)
      include Aws::Structure
    end

    # Provides options for retrieving the notification configuration set on
    # an Amazon Glacier vault.
    #
    # @note When making an API call, you may pass GetVaultNotificationsInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    class GetVaultNotificationsInput < Struct.new(
      :account_id,
      :vault_name)
      include Aws::Structure
    end

    # Contains the Amazon Glacier response to your request.
    #
    # @!attribute [rw] vault_notification_config
    #   Returns the notification configuration set on the vault.
    #   @return [Types::VaultNotificationConfig]
    #
    class GetVaultNotificationsOutput < Struct.new(
      :vault_notification_config)
      include Aws::Structure
    end

    # Contains the description of an Amazon Glacier job.
    #
    # @!attribute [rw] job_id
    #   An opaque string that identifies an Amazon Glacier job.
    #   @return [String]
    #
    # @!attribute [rw] job_description
    #   The job description provided when initiating the job.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The job type. This value is either `ArchiveRetrieval`,
    #   `InventoryRetrieval`, or `Select`.
    #   @return [String]
    #
    # @!attribute [rw] archive_id
    #   The archive ID requested for a select job or archive retrieval.
    #   Otherwise, this field is null.
    #   @return [String]
    #
    # @!attribute [rw] vault_arn
    #   The Amazon Resource Name (ARN) of the vault from which an archive
    #   retrieval was requested.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The UTC date when the job was created. This value is a string
    #   representation of ISO 8601 date format, for example
    #   `"2012-03-20T17:03:43.221Z"`.
    #   @return [Time]
    #
    # @!attribute [rw] completed
    #   The job status. When a job is completed, you get the job's output
    #   using Get Job Output (GET output).
    #   @return [Boolean]
    #
    # @!attribute [rw] status_code
    #   The status code can be `InProgress`, `Succeeded`, or `Failed`, and
    #   indicates the status of the job.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A friendly message that describes the job status.
    #   @return [String]
    #
    # @!attribute [rw] archive_size_in_bytes
    #   For an archive retrieval job, this value is the size in bytes of the
    #   archive being requested for download. For an inventory retrieval or
    #   select job, this value is null.
    #   @return [Integer]
    #
    # @!attribute [rw] inventory_size_in_bytes
    #   For an inventory retrieval job, this value is the size in bytes of
    #   the inventory requested for download. For an archive retrieval or
    #   select job, this value is null.
    #   @return [Integer]
    #
    # @!attribute [rw] sns_topic
    #   An Amazon SNS topic that receives notification.
    #   @return [String]
    #
    # @!attribute [rw] completion_date
    #   The UTC time that the job request completed. While the job is in
    #   progress, the value is null.
    #   @return [Time]
    #
    # @!attribute [rw] sha256_tree_hash
    #   For an archive retrieval job, this value is the checksum of the
    #   archive. Otherwise, this value is null.
    #
    #   The SHA256 tree hash value for the requested range of an archive. If
    #   the **InitiateJob** request for an archive specified a tree-hash
    #   aligned range, then this field returns a value.
    #
    #   If the whole archive is retrieved, this value is the same as the
    #   ArchiveSHA256TreeHash value.
    #
    #   This field is null for the following:
    #
    #   * Archive retrieval jobs that specify a range that is not tree-hash
    #     aligned
    #
    #   ^
    #   ^
    #
    #   * Archival jobs that specify a range that is equal to the whole
    #     archive, when the job status is `InProgress`
    #
    #   ^
    #   ^
    #
    #   * Inventory jobs
    #
    #   * Select jobs
    #   @return [String]
    #
    # @!attribute [rw] archive_sha256_tree_hash
    #   The SHA256 tree hash of the entire archive for an archive retrieval.
    #   For inventory retrieval or select jobs, this field is null.
    #   @return [String]
    #
    # @!attribute [rw] retrieval_byte_range
    #   The retrieved byte range for archive retrieval jobs in the form
    #   *StartByteValue*-*EndByteValue*. If no range was specified in the
    #   archive retrieval, then the whole archive is retrieved. In this
    #   case, *StartByteValue* equals 0 and *EndByteValue* equals the size
    #   of the archive minus 1. For inventory retrieval or select jobs, this
    #   field is null.
    #   @return [String]
    #
    # @!attribute [rw] tier
    #   The tier to use for a select or an archive retrieval. Valid values
    #   are `Expedited`, `Standard`, or `Bulk`. `Standard` is the default.
    #   @return [String]
    #
    # @!attribute [rw] inventory_retrieval_parameters
    #   Parameters used for range inventory retrieval.
    #   @return [Types::InventoryRetrievalJobDescription]
    #
    # @!attribute [rw] job_output_path
    #   Contains the job output location.
    #   @return [String]
    #
    # @!attribute [rw] select_parameters
    #   Contains the parameters used for a select.
    #   @return [Types::SelectParameters]
    #
    # @!attribute [rw] output_location
    #   Contains the location where the data from the select job is stored.
    #   @return [Types::OutputLocation]
    #
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
      :output_location)
      include Aws::Structure
    end

    # Contains information about a grant.
    #
    # @note When making an API call, you may pass Grant
    #   data as a hash:
    #
    #       {
    #         grantee: {
    #           type: "AmazonCustomerByEmail", # required, accepts AmazonCustomerByEmail, CanonicalUser, Group
    #           display_name: "string",
    #           uri: "string",
    #           id: "string",
    #           email_address: "string",
    #         },
    #         permission: "FULL_CONTROL", # accepts FULL_CONTROL, WRITE, WRITE_ACP, READ, READ_ACP
    #       }
    #
    # @!attribute [rw] grantee
    #   The grantee.
    #   @return [Types::Grantee]
    #
    # @!attribute [rw] permission
    #   Specifies the permission given to the grantee.
    #   @return [String]
    #
    class Grant < Struct.new(
      :grantee,
      :permission)
      include Aws::Structure
    end

    # Contains information about the grantee.
    #
    # @note When making an API call, you may pass Grantee
    #   data as a hash:
    #
    #       {
    #         type: "AmazonCustomerByEmail", # required, accepts AmazonCustomerByEmail, CanonicalUser, Group
    #         display_name: "string",
    #         uri: "string",
    #         id: "string",
    #         email_address: "string",
    #       }
    #
    # @!attribute [rw] type
    #   Type of grantee
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   Screen name of the grantee.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   URI of the grantee group.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The canonical user ID of the grantee.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   Email address of the grantee.
    #   @return [String]
    #
    class Grantee < Struct.new(
      :type,
      :display_name,
      :uri,
      :id,
      :email_address)
      include Aws::Structure
    end

    # Provides options for initiating an Amazon Glacier job.
    #
    # @note When making an API call, you may pass InitiateJobInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #         job_parameters: {
    #           format: "string",
    #           type: "string",
    #           archive_id: "string",
    #           description: "string",
    #           sns_topic: "string",
    #           retrieval_byte_range: "string",
    #           tier: "string",
    #           inventory_retrieval_parameters: {
    #             start_date: Time.now,
    #             end_date: Time.now,
    #             limit: "string",
    #             marker: "string",
    #           },
    #           select_parameters: {
    #             input_serialization: {
    #               csv: {
    #                 file_header_info: "USE", # accepts USE, IGNORE, NONE
    #                 comments: "string",
    #                 quote_escape_character: "string",
    #                 record_delimiter: "string",
    #                 field_delimiter: "string",
    #                 quote_character: "string",
    #               },
    #             },
    #             expression_type: "SQL", # accepts SQL
    #             expression: "string",
    #             output_serialization: {
    #               csv: {
    #                 quote_fields: "ALWAYS", # accepts ALWAYS, ASNEEDED
    #                 quote_escape_character: "string",
    #                 record_delimiter: "string",
    #                 field_delimiter: "string",
    #                 quote_character: "string",
    #               },
    #             },
    #           },
    #           output_location: {
    #             s3: {
    #               bucket_name: "string",
    #               prefix: "string",
    #               encryption: {
    #                 encryption_type: "aws:kms", # accepts aws:kms, AES256
    #                 kms_key_id: "string",
    #                 kms_context: "string",
    #               },
    #               canned_acl: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control
    #               access_control_list: [
    #                 {
    #                   grantee: {
    #                     type: "AmazonCustomerByEmail", # required, accepts AmazonCustomerByEmail, CanonicalUser, Group
    #                     display_name: "string",
    #                     uri: "string",
    #                     id: "string",
    #                     email_address: "string",
    #                   },
    #                   permission: "FULL_CONTROL", # accepts FULL_CONTROL, WRITE, WRITE_ACP, READ, READ_ACP
    #                 },
    #               ],
    #               tagging: {
    #                 "string" => "string",
    #               },
    #               user_metadata: {
    #                 "string" => "string",
    #               },
    #               storage_class: "STANDARD", # accepts STANDARD, REDUCED_REDUNDANCY, STANDARD_IA
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    # @!attribute [rw] job_parameters
    #   Provides options for specifying job information.
    #   @return [Types::JobParameters]
    #
    class InitiateJobInput < Struct.new(
      :account_id,
      :vault_name,
      :job_parameters)
      include Aws::Structure
    end

    # Contains the Amazon Glacier response to your request.
    #
    # @!attribute [rw] location
    #   The relative URI path of the job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID of the job.
    #   @return [String]
    #
    # @!attribute [rw] job_output_path
    #   The path to the location of where the select results are stored.
    #   @return [String]
    #
    class InitiateJobOutput < Struct.new(
      :location,
      :job_id,
      :job_output_path)
      include Aws::Structure
    end

    # Provides options for initiating a multipart upload to an Amazon
    # Glacier vault.
    #
    # @note When making an API call, you may pass InitiateMultipartUploadInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #         archive_description: "string",
    #         part_size: 1,
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    # @!attribute [rw] archive_description
    #   The archive description that you are uploading in parts.
    #
    #   The part size must be a megabyte (1024 KB) multiplied by a power of
    #   2, for example 1048576 (1 MB), 2097152 (2 MB), 4194304 (4 MB),
    #   8388608 (8 MB), and so on. The minimum allowable part size is 1 MB,
    #   and the maximum is 4 GB (4096 MB).
    #   @return [String]
    #
    # @!attribute [rw] part_size
    #   The size of each part except the last, in bytes. The last part can
    #   be smaller than this part size.
    #   @return [Integer]
    #
    class InitiateMultipartUploadInput < Struct.new(
      :account_id,
      :vault_name,
      :archive_description,
      :part_size)
      include Aws::Structure
    end

    # The Amazon Glacier response to your request.
    #
    # @!attribute [rw] location
    #   The relative URI path of the multipart upload ID Amazon Glacier
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   The ID of the multipart upload. This value is also included as part
    #   of the location.
    #   @return [String]
    #
    class InitiateMultipartUploadOutput < Struct.new(
      :location,
      :upload_id)
      include Aws::Structure
    end

    # The input values for `InitiateVaultLock`.
    #
    # @note When making an API call, you may pass InitiateVaultLockInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #         policy: {
    #           policy: "string",
    #         },
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID. This value must match
    #   the AWS account ID associated with the credentials used to sign the
    #   request. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you specify your account ID, do not include any hyphens ('-')
    #   in the ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The vault lock policy as a JSON string, which uses "\\" as an
    #   escape character.
    #   @return [Types::VaultLockPolicy]
    #
    class InitiateVaultLockInput < Struct.new(
      :account_id,
      :vault_name,
      :policy)
      include Aws::Structure
    end

    # Contains the Amazon Glacier response to your request.
    #
    # @!attribute [rw] lock_id
    #   The lock ID, which is used to complete the vault locking process.
    #   @return [String]
    #
    class InitiateVaultLockOutput < Struct.new(
      :lock_id)
      include Aws::Structure
    end

    # Describes how the archive is serialized.
    #
    # @note When making an API call, you may pass InputSerialization
    #   data as a hash:
    #
    #       {
    #         csv: {
    #           file_header_info: "USE", # accepts USE, IGNORE, NONE
    #           comments: "string",
    #           quote_escape_character: "string",
    #           record_delimiter: "string",
    #           field_delimiter: "string",
    #           quote_character: "string",
    #         },
    #       }
    #
    # @!attribute [rw] csv
    #   Describes the serialization of a CSV-encoded object.
    #   @return [Types::CSVInput]
    #
    class InputSerialization < Struct.new(
      :csv)
      include Aws::Structure
    end

    # Describes the options for a range inventory retrieval job.
    #
    # @!attribute [rw] format
    #   The output format for the vault inventory list, which is set by the
    #   **InitiateJob** request when initiating a job to retrieve a vault
    #   inventory. Valid values are `CSV` and `JSON`.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The start of the date range in Universal Coordinated Time (UTC) for
    #   vault inventory retrieval that includes archives created on or after
    #   this date. This value should be a string in the ISO 8601 date
    #   format, for example `2013-03-20T17:03:43Z`.
    #   @return [Time]
    #
    # @!attribute [rw] end_date
    #   The end of the date range in UTC for vault inventory retrieval that
    #   includes archives created before this date. This value should be a
    #   string in the ISO 8601 date format, for example
    #   `2013-03-20T17:03:43Z`.
    #   @return [Time]
    #
    # @!attribute [rw] limit
    #   The maximum number of inventory items returned per vault inventory
    #   retrieval request. This limit is set when initiating the job with
    #   the a **InitiateJob** request.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   An opaque string that represents where to continue pagination of the
    #   vault inventory retrieval results. You use the marker in a new
    #   **InitiateJob** request to obtain additional inventory items. If
    #   there are no more inventory items, this value is `null`. For more
    #   information, see [ Range Inventory Retrieval][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html#api-initiate-job-post-vault-inventory-list-filtering
    #   @return [String]
    #
    class InventoryRetrievalJobDescription < Struct.new(
      :format,
      :start_date,
      :end_date,
      :limit,
      :marker)
      include Aws::Structure
    end

    # Provides options for specifying a range inventory retrieval job.
    #
    # @note When making an API call, you may pass InventoryRetrievalJobInput
    #   data as a hash:
    #
    #       {
    #         start_date: Time.now,
    #         end_date: Time.now,
    #         limit: "string",
    #         marker: "string",
    #       }
    #
    # @!attribute [rw] start_date
    #   The start of the date range in UTC for vault inventory retrieval
    #   that includes archives created on or after this date. This value
    #   should be a string in the ISO 8601 date format, for example
    #   `2013-03-20T17:03:43Z`.
    #   @return [Time]
    #
    # @!attribute [rw] end_date
    #   The end of the date range in UTC for vault inventory retrieval that
    #   includes archives created before this date. This value should be a
    #   string in the ISO 8601 date format, for example
    #   `2013-03-20T17:03:43Z`.
    #   @return [Time]
    #
    # @!attribute [rw] limit
    #   Specifies the maximum number of inventory items returned per vault
    #   inventory retrieval request. Valid values are greater than or equal
    #   to 1.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   An opaque string that represents where to continue pagination of the
    #   vault inventory retrieval results. You use the marker in a new
    #   **InitiateJob** request to obtain additional inventory items. If
    #   there are no more inventory items, this value is `null`.
    #   @return [String]
    #
    class InventoryRetrievalJobInput < Struct.new(
      :start_date,
      :end_date,
      :limit,
      :marker)
      include Aws::Structure
    end

    # Provides options for defining a job.
    #
    # @note When making an API call, you may pass JobParameters
    #   data as a hash:
    #
    #       {
    #         format: "string",
    #         type: "string",
    #         archive_id: "string",
    #         description: "string",
    #         sns_topic: "string",
    #         retrieval_byte_range: "string",
    #         tier: "string",
    #         inventory_retrieval_parameters: {
    #           start_date: Time.now,
    #           end_date: Time.now,
    #           limit: "string",
    #           marker: "string",
    #         },
    #         select_parameters: {
    #           input_serialization: {
    #             csv: {
    #               file_header_info: "USE", # accepts USE, IGNORE, NONE
    #               comments: "string",
    #               quote_escape_character: "string",
    #               record_delimiter: "string",
    #               field_delimiter: "string",
    #               quote_character: "string",
    #             },
    #           },
    #           expression_type: "SQL", # accepts SQL
    #           expression: "string",
    #           output_serialization: {
    #             csv: {
    #               quote_fields: "ALWAYS", # accepts ALWAYS, ASNEEDED
    #               quote_escape_character: "string",
    #               record_delimiter: "string",
    #               field_delimiter: "string",
    #               quote_character: "string",
    #             },
    #           },
    #         },
    #         output_location: {
    #           s3: {
    #             bucket_name: "string",
    #             prefix: "string",
    #             encryption: {
    #               encryption_type: "aws:kms", # accepts aws:kms, AES256
    #               kms_key_id: "string",
    #               kms_context: "string",
    #             },
    #             canned_acl: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control
    #             access_control_list: [
    #               {
    #                 grantee: {
    #                   type: "AmazonCustomerByEmail", # required, accepts AmazonCustomerByEmail, CanonicalUser, Group
    #                   display_name: "string",
    #                   uri: "string",
    #                   id: "string",
    #                   email_address: "string",
    #                 },
    #                 permission: "FULL_CONTROL", # accepts FULL_CONTROL, WRITE, WRITE_ACP, READ, READ_ACP
    #               },
    #             ],
    #             tagging: {
    #               "string" => "string",
    #             },
    #             user_metadata: {
    #               "string" => "string",
    #             },
    #             storage_class: "STANDARD", # accepts STANDARD, REDUCED_REDUNDANCY, STANDARD_IA
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] format
    #   When initiating a job to retrieve a vault inventory, you can
    #   optionally add this parameter to your request to specify the output
    #   format. If you are initiating an inventory job and do not specify a
    #   Format field, JSON is the default format. Valid values are "CSV"
    #   and "JSON".
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The job type. You can initiate a job to perform a select query on an
    #   archive, retrieve an archive, or get an inventory of a vault. Valid
    #   values are "select", "archive-retrieval" and
    #   "inventory-retrieval".
    #   @return [String]
    #
    # @!attribute [rw] archive_id
    #   The ID of the archive that you want to retrieve. This field is
    #   required only if `Type` is set to `select` or
    #   `archive-retrieval`code&gt;. An error occurs if you specify this
    #   request parameter for an inventory retrieval job request.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The optional description for the job. The description must be less
    #   than or equal to 1,024 bytes. The allowable characters are 7-bit
    #   ASCII without control codes-specifically, ASCII values 32-126
    #   decimal or 0x20-0x7E hexadecimal.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic
    #   The Amazon SNS topic ARN to which Amazon Glacier sends a
    #   notification when the job is completed and the output is ready for
    #   you to download. The specified topic publishes the notification to
    #   its subscribers. The SNS topic must exist.
    #   @return [String]
    #
    # @!attribute [rw] retrieval_byte_range
    #   The byte range to retrieve for an archive retrieval. in the form
    #   "*StartByteValue*-*EndByteValue*" If not specified, the whole
    #   archive is retrieved. If specified, the byte range must be megabyte
    #   (1024*1024) aligned which means that *StartByteValue* must be
    #   divisible by 1 MB and *EndByteValue* plus 1 must be divisible by 1
    #   MB or be the end of the archive specified as the archive byte size
    #   value minus 1. If RetrievalByteRange is not megabyte aligned, this
    #   operation returns a 400 response.
    #
    #   An error occurs if you specify this field for an inventory retrieval
    #   job request.
    #   @return [String]
    #
    # @!attribute [rw] tier
    #   The tier to use for a select or an archive retrieval job. Valid
    #   values are `Expedited`, `Standard`, or `Bulk`. `Standard` is the
    #   default.
    #   @return [String]
    #
    # @!attribute [rw] inventory_retrieval_parameters
    #   Input parameters used for range inventory retrieval.
    #   @return [Types::InventoryRetrievalJobInput]
    #
    # @!attribute [rw] select_parameters
    #   Contains the parameters that define a job.
    #   @return [Types::SelectParameters]
    #
    # @!attribute [rw] output_location
    #   Contains information about the location where the select job results
    #   are stored.
    #   @return [Types::OutputLocation]
    #
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
      :output_location)
      include Aws::Structure
    end

    # Provides options for retrieving a job list for an Amazon Glacier
    # vault.
    #
    # @note When making an API call, you may pass ListJobsInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #         limit: 1,
    #         marker: "string",
    #         statuscode: "string",
    #         completed: "string",
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of jobs to be returned. The default limit is 50.
    #   The number of jobs returned might be fewer than the specified limit,
    #   but the number of returned jobs never exceeds the limit.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An opaque string used for pagination. This value specifies the job
    #   at which the listing of jobs should begin. Get the marker value from
    #   a previous List Jobs response. You only need to include the marker
    #   if you are continuing the pagination of results started in a
    #   previous List Jobs request.
    #   @return [String]
    #
    # @!attribute [rw] statuscode
    #   The type of job status to return. You can specify the following
    #   values: `InProgress`, `Succeeded`, or `Failed`.
    #   @return [String]
    #
    # @!attribute [rw] completed
    #   The state of the jobs to return. You can specify `true` or `false`.
    #   @return [String]
    #
    class ListJobsInput < Struct.new(
      :account_id,
      :vault_name,
      :limit,
      :marker,
      :statuscode,
      :completed)
      include Aws::Structure
    end

    # Contains the Amazon Glacier response to your request.
    #
    # @!attribute [rw] job_list
    #   A list of job objects. Each job object contains metadata describing
    #   the job.
    #   @return [Array<Types::GlacierJobDescription>]
    #
    # @!attribute [rw] marker
    #   An opaque string used for pagination that specifies the job at which
    #   the listing of jobs should begin. You get the `marker` value from a
    #   previous List Jobs response. You only need to include the marker if
    #   you are continuing the pagination of the results started in a
    #   previous List Jobs request.
    #   @return [String]
    #
    class ListJobsOutput < Struct.new(
      :job_list,
      :marker)
      include Aws::Structure
    end

    # Provides options for retrieving list of in-progress multipart uploads
    # for an Amazon Glacier vault.
    #
    # @note When making an API call, you may pass ListMultipartUploadsInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #         marker: "string",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   An opaque string used for pagination. This value specifies the
    #   upload at which the listing of uploads should begin. Get the marker
    #   value from a previous List Uploads response. You need only include
    #   the marker if you are continuing the pagination of results started
    #   in a previous List Uploads request.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies the maximum number of uploads returned in the response
    #   body. If this value is not specified, the List Uploads operation
    #   returns up to 50 uploads.
    #   @return [Integer]
    #
    class ListMultipartUploadsInput < Struct.new(
      :account_id,
      :vault_name,
      :marker,
      :limit)
      include Aws::Structure
    end

    # Contains the Amazon Glacier response to your request.
    #
    # @!attribute [rw] uploads_list
    #   A list of in-progress multipart uploads.
    #   @return [Array<Types::UploadListElement>]
    #
    # @!attribute [rw] marker
    #   An opaque string that represents where to continue pagination of the
    #   results. You use the marker in a new List Multipart Uploads request
    #   to obtain more uploads in the list. If there are no more uploads,
    #   this value is `null`.
    #   @return [String]
    #
    class ListMultipartUploadsOutput < Struct.new(
      :uploads_list,
      :marker)
      include Aws::Structure
    end

    # Provides options for retrieving a list of parts of an archive that
    # have been uploaded in a specific multipart upload.
    #
    # @note When making an API call, you may pass ListPartsInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #         upload_id: "string", # required
    #         marker: "string",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   The upload ID of the multipart upload.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   An opaque string used for pagination. This value specifies the part
    #   at which the listing of parts should begin. Get the marker value
    #   from the response of a previous List Parts response. You need only
    #   include the marker if you are continuing the pagination of results
    #   started in a previous List Parts request.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of parts to be returned. The default limit is 50.
    #   The number of parts returned might be fewer than the specified
    #   limit, but the number of returned parts never exceeds the limit.
    #   @return [Integer]
    #
    class ListPartsInput < Struct.new(
      :account_id,
      :vault_name,
      :upload_id,
      :marker,
      :limit)
      include Aws::Structure
    end

    # Contains the Amazon Glacier response to your request.
    #
    # @!attribute [rw] multipart_upload_id
    #   The ID of the upload to which the parts are associated.
    #   @return [String]
    #
    # @!attribute [rw] vault_arn
    #   The Amazon Resource Name (ARN) of the vault to which the multipart
    #   upload was initiated.
    #   @return [String]
    #
    # @!attribute [rw] archive_description
    #   The description of the archive that was specified in the Initiate
    #   Multipart Upload request.
    #   @return [String]
    #
    # @!attribute [rw] part_size_in_bytes
    #   The part size in bytes. This is the same value that you specified in
    #   the Initiate Multipart Upload request.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_date
    #   The UTC time at which the multipart upload was initiated.
    #   @return [Time]
    #
    # @!attribute [rw] parts
    #   A list of the part sizes of the multipart upload. Each object in the
    #   array contains a `RangeBytes` and `sha256-tree-hash` name/value
    #   pair.
    #   @return [Array<Types::PartListElement>]
    #
    # @!attribute [rw] marker
    #   An opaque string that represents where to continue pagination of the
    #   results. You use the marker in a new List Parts request to obtain
    #   more jobs in the list. If there are no more parts, this value is
    #   `null`.
    #   @return [String]
    #
    class ListPartsOutput < Struct.new(
      :multipart_upload_id,
      :vault_arn,
      :archive_description,
      :part_size_in_bytes,
      :creation_date,
      :parts,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProvisionedCapacityInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The AWS account ID of the account that owns the vault. You can
    #   either specify an AWS account ID or optionally a single '-'
    #   (hyphen), in which case Amazon Glacier uses the AWS account ID
    #   associated with the credentials used to sign the request. If you use
    #   an account ID, don't include any hyphens ('-') in the ID.
    #   @return [String]
    #
    class ListProvisionedCapacityInput < Struct.new(
      :account_id)
      include Aws::Structure
    end

    # @!attribute [rw] provisioned_capacity_list
    #   The response body contains the following JSON fields.
    #   @return [Array<Types::ProvisionedCapacityDescription>]
    #
    class ListProvisionedCapacityOutput < Struct.new(
      :provisioned_capacity_list)
      include Aws::Structure
    end

    # The input value for `ListTagsForVaultInput`.
    #
    # @note When making an API call, you may pass ListTagsForVaultInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    class ListTagsForVaultInput < Struct.new(
      :account_id,
      :vault_name)
      include Aws::Structure
    end

    # Contains the Amazon Glacier response to your request.
    #
    # @!attribute [rw] tags
    #   The tags attached to the vault. Each tag is composed of a key and a
    #   value.
    #   @return [Hash<String,String>]
    #
    class ListTagsForVaultOutput < Struct.new(
      :tags)
      include Aws::Structure
    end

    # Provides options to retrieve the vault list owned by the calling
    # user's account. The list provides metadata information for each
    # vault.
    #
    # @note When making an API call, you may pass ListVaultsInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         marker: "string",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID. This value must match
    #   the AWS account ID associated with the credentials used to sign the
    #   request. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you specify your account ID, do not include any hyphens ('-')
    #   in the ID.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   A string used for pagination. The marker specifies the vault ARN
    #   after which the listing of vaults should begin.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of vaults to be returned. The default limit is
    #   10. The number of vaults returned might be fewer than the specified
    #   limit, but the number of returned vaults never exceeds the limit.
    #   @return [Integer]
    #
    class ListVaultsInput < Struct.new(
      :account_id,
      :marker,
      :limit)
      include Aws::Structure
    end

    # Contains the Amazon Glacier response to your request.
    #
    # @!attribute [rw] vault_list
    #   List of vaults.
    #   @return [Array<Types::DescribeVaultOutput>]
    #
    # @!attribute [rw] marker
    #   The vault ARN at which to continue pagination of the results. You
    #   use the marker in another List Vaults request to obtain more vaults
    #   in the list.
    #   @return [String]
    #
    class ListVaultsOutput < Struct.new(
      :vault_list,
      :marker)
      include Aws::Structure
    end

    # Contains information about the location where the select job results
    # are stored.
    #
    # @note When making an API call, you may pass OutputLocation
    #   data as a hash:
    #
    #       {
    #         s3: {
    #           bucket_name: "string",
    #           prefix: "string",
    #           encryption: {
    #             encryption_type: "aws:kms", # accepts aws:kms, AES256
    #             kms_key_id: "string",
    #             kms_context: "string",
    #           },
    #           canned_acl: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control
    #           access_control_list: [
    #             {
    #               grantee: {
    #                 type: "AmazonCustomerByEmail", # required, accepts AmazonCustomerByEmail, CanonicalUser, Group
    #                 display_name: "string",
    #                 uri: "string",
    #                 id: "string",
    #                 email_address: "string",
    #               },
    #               permission: "FULL_CONTROL", # accepts FULL_CONTROL, WRITE, WRITE_ACP, READ, READ_ACP
    #             },
    #           ],
    #           tagging: {
    #             "string" => "string",
    #           },
    #           user_metadata: {
    #             "string" => "string",
    #           },
    #           storage_class: "STANDARD", # accepts STANDARD, REDUCED_REDUNDANCY, STANDARD_IA
    #         },
    #       }
    #
    # @!attribute [rw] s3
    #   Describes an S3 location that will receive the results of the job
    #   request.
    #   @return [Types::S3Location]
    #
    class OutputLocation < Struct.new(
      :s3)
      include Aws::Structure
    end

    # Describes how the select output is serialized.
    #
    # @note When making an API call, you may pass OutputSerialization
    #   data as a hash:
    #
    #       {
    #         csv: {
    #           quote_fields: "ALWAYS", # accepts ALWAYS, ASNEEDED
    #           quote_escape_character: "string",
    #           record_delimiter: "string",
    #           field_delimiter: "string",
    #           quote_character: "string",
    #         },
    #       }
    #
    # @!attribute [rw] csv
    #   Describes the serialization of CSV-encoded query results.
    #   @return [Types::CSVOutput]
    #
    class OutputSerialization < Struct.new(
      :csv)
      include Aws::Structure
    end

    # A list of the part sizes of the multipart upload.
    #
    # @!attribute [rw] range_in_bytes
    #   The byte range of a part, inclusive of the upper value of the range.
    #   @return [String]
    #
    # @!attribute [rw] sha256_tree_hash
    #   The SHA256 tree hash value that Amazon Glacier calculated for the
    #   part. This field is never `null`.
    #   @return [String]
    #
    class PartListElement < Struct.new(
      :range_in_bytes,
      :sha256_tree_hash)
      include Aws::Structure
    end

    # The definition for a provisioned capacity unit.
    #
    # @!attribute [rw] capacity_id
    #   The ID that identifies the provisioned capacity unit.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The date that the provisioned capacity unit was purchased, in
    #   Universal Coordinated Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] expiration_date
    #   The date that the provisioned capacity unit expires, in Universal
    #   Coordinated Time (UTC).
    #   @return [Time]
    #
    class ProvisionedCapacityDescription < Struct.new(
      :capacity_id,
      :start_date,
      :expiration_date)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PurchaseProvisionedCapacityInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The AWS account ID of the account that owns the vault. You can
    #   either specify an AWS account ID or optionally a single '-'
    #   (hyphen), in which case Amazon Glacier uses the AWS account ID
    #   associated with the credentials used to sign the request. If you use
    #   an account ID, don't include any hyphens ('-') in the ID.
    #   @return [String]
    #
    class PurchaseProvisionedCapacityInput < Struct.new(
      :account_id)
      include Aws::Structure
    end

    # @!attribute [rw] capacity_id
    #   The ID that identifies the provisioned capacity unit.
    #   @return [String]
    #
    class PurchaseProvisionedCapacityOutput < Struct.new(
      :capacity_id)
      include Aws::Structure
    end

    # The input value for `RemoveTagsFromVaultInput`.
    #
    # @note When making an API call, you may pass RemoveTagsFromVaultInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #         tag_keys: ["string"],
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys. Each corresponding tag is removed from the
    #   vault.
    #   @return [Array<String>]
    #
    class RemoveTagsFromVaultInput < Struct.new(
      :account_id,
      :vault_name,
      :tag_keys)
      include Aws::Structure
    end

    # Contains information about the location in Amazon S3 where the select
    # job results are stored.
    #
    # @note When making an API call, you may pass S3Location
    #   data as a hash:
    #
    #       {
    #         bucket_name: "string",
    #         prefix: "string",
    #         encryption: {
    #           encryption_type: "aws:kms", # accepts aws:kms, AES256
    #           kms_key_id: "string",
    #           kms_context: "string",
    #         },
    #         canned_acl: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control
    #         access_control_list: [
    #           {
    #             grantee: {
    #               type: "AmazonCustomerByEmail", # required, accepts AmazonCustomerByEmail, CanonicalUser, Group
    #               display_name: "string",
    #               uri: "string",
    #               id: "string",
    #               email_address: "string",
    #             },
    #             permission: "FULL_CONTROL", # accepts FULL_CONTROL, WRITE, WRITE_ACP, READ, READ_ACP
    #           },
    #         ],
    #         tagging: {
    #           "string" => "string",
    #         },
    #         user_metadata: {
    #           "string" => "string",
    #         },
    #         storage_class: "STANDARD", # accepts STANDARD, REDUCED_REDUNDANCY, STANDARD_IA
    #       }
    #
    # @!attribute [rw] bucket_name
    #   The name of the Amazon S3 bucket where the job results are stored.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The prefix that is prepended to the results for this request.
    #   @return [String]
    #
    # @!attribute [rw] encryption
    #   Contains information about the encryption used to store the job
    #   results in Amazon S3.
    #   @return [Types::Encryption]
    #
    # @!attribute [rw] canned_acl
    #   The canned access control list (ACL) to apply to the job results.
    #   @return [String]
    #
    # @!attribute [rw] access_control_list
    #   A list of grants that control access to the staged results.
    #   @return [Array<Types::Grant>]
    #
    # @!attribute [rw] tagging
    #   The tag-set that is applied to the job results.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] user_metadata
    #   A map of metadata to store with the job results in Amazon S3.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] storage_class
    #   The storage class used to store the job results.
    #   @return [String]
    #
    class S3Location < Struct.new(
      :bucket_name,
      :prefix,
      :encryption,
      :canned_acl,
      :access_control_list,
      :tagging,
      :user_metadata,
      :storage_class)
      include Aws::Structure
    end

    # Contains information about the parameters used for a select.
    #
    # @note When making an API call, you may pass SelectParameters
    #   data as a hash:
    #
    #       {
    #         input_serialization: {
    #           csv: {
    #             file_header_info: "USE", # accepts USE, IGNORE, NONE
    #             comments: "string",
    #             quote_escape_character: "string",
    #             record_delimiter: "string",
    #             field_delimiter: "string",
    #             quote_character: "string",
    #           },
    #         },
    #         expression_type: "SQL", # accepts SQL
    #         expression: "string",
    #         output_serialization: {
    #           csv: {
    #             quote_fields: "ALWAYS", # accepts ALWAYS, ASNEEDED
    #             quote_escape_character: "string",
    #             record_delimiter: "string",
    #             field_delimiter: "string",
    #             quote_character: "string",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] input_serialization
    #   Describes the serialization format of the object.
    #   @return [Types::InputSerialization]
    #
    # @!attribute [rw] expression_type
    #   The type of the provided expression, for example `SQL`.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The expression that is used to select the object.
    #   @return [String]
    #
    # @!attribute [rw] output_serialization
    #   Describes how the results of the select job are serialized.
    #   @return [Types::OutputSerialization]
    #
    class SelectParameters < Struct.new(
      :input_serialization,
      :expression_type,
      :expression,
      :output_serialization)
      include Aws::Structure
    end

    # SetDataRetrievalPolicy input.
    #
    # @note When making an API call, you may pass SetDataRetrievalPolicyInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         policy: {
    #           rules: [
    #             {
    #               strategy: "string",
    #               bytes_per_hour: 1,
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID. This value must match
    #   the AWS account ID associated with the credentials used to sign the
    #   request. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you specify your account ID, do not include any hyphens ('-')
    #   in the ID.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The data retrieval policy in JSON format.
    #   @return [Types::DataRetrievalPolicy]
    #
    class SetDataRetrievalPolicyInput < Struct.new(
      :account_id,
      :policy)
      include Aws::Structure
    end

    # SetVaultAccessPolicy input.
    #
    # @note When making an API call, you may pass SetVaultAccessPolicyInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #         policy: {
    #           policy: "string",
    #         },
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The vault access policy as a JSON string.
    #   @return [Types::VaultAccessPolicy]
    #
    class SetVaultAccessPolicyInput < Struct.new(
      :account_id,
      :vault_name,
      :policy)
      include Aws::Structure
    end

    # Provides options to configure notifications that will be sent when
    # specific events happen to a vault.
    #
    # @note When making an API call, you may pass SetVaultNotificationsInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #         vault_notification_config: {
    #           sns_topic: "string",
    #           events: ["string"],
    #         },
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    # @!attribute [rw] vault_notification_config
    #   Provides options for specifying notification configuration.
    #   @return [Types::VaultNotificationConfig]
    #
    class SetVaultNotificationsInput < Struct.new(
      :account_id,
      :vault_name,
      :vault_notification_config)
      include Aws::Structure
    end

    # Provides options to add an archive to a vault.
    #
    # @note When making an API call, you may pass UploadArchiveInput
    #   data as a hash:
    #
    #       {
    #         vault_name: "string", # required
    #         account_id: "string", # required
    #         archive_description: "string",
    #         checksum: "string",
    #         body: "data",
    #       }
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] archive_description
    #   The optional description of the archive you are uploading.
    #   @return [String]
    #
    # @!attribute [rw] checksum
    #   The SHA256 tree hash of the data being uploaded.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The data to upload.
    #   @return [IO]
    #
    class UploadArchiveInput < Struct.new(
      :vault_name,
      :account_id,
      :archive_description,
      :checksum,
      :body)
      include Aws::Structure
    end

    # A list of in-progress multipart uploads for a vault.
    #
    # @!attribute [rw] multipart_upload_id
    #   The ID of a multipart upload.
    #   @return [String]
    #
    # @!attribute [rw] vault_arn
    #   The Amazon Resource Name (ARN) of the vault that contains the
    #   archive.
    #   @return [String]
    #
    # @!attribute [rw] archive_description
    #   The description of the archive that was specified in the Initiate
    #   Multipart Upload request.
    #   @return [String]
    #
    # @!attribute [rw] part_size_in_bytes
    #   The part size, in bytes, specified in the Initiate Multipart Upload
    #   request. This is the size of all the parts in the upload except the
    #   last part, which may be smaller than this size.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_date
    #   The UTC time at which the multipart upload was initiated.
    #   @return [Time]
    #
    class UploadListElement < Struct.new(
      :multipart_upload_id,
      :vault_arn,
      :archive_description,
      :part_size_in_bytes,
      :creation_date)
      include Aws::Structure
    end

    # Provides options to upload a part of an archive in a multipart upload
    # operation.
    #
    # @note When making an API call, you may pass UploadMultipartPartInput
    #   data as a hash:
    #
    #       {
    #         account_id: "string", # required
    #         vault_name: "string", # required
    #         upload_id: "string", # required
    #         checksum: "string",
    #         range: "string",
    #         body: "data",
    #       }
    #
    # @!attribute [rw] account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] vault_name
    #   The name of the vault.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   The upload ID of the multipart upload.
    #   @return [String]
    #
    # @!attribute [rw] checksum
    #   The SHA256 tree hash of the data being uploaded.
    #   @return [String]
    #
    # @!attribute [rw] range
    #   Identifies the range of bytes in the assembled archive that will be
    #   uploaded in this part. Amazon Glacier uses this information to
    #   assemble the archive in the proper sequence. The format of this
    #   header follows RFC 2616. An example header is Content-Range:bytes
    #   0-4194303/*.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The data to upload.
    #   @return [IO]
    #
    class UploadMultipartPartInput < Struct.new(
      :account_id,
      :vault_name,
      :upload_id,
      :checksum,
      :range,
      :body)
      include Aws::Structure
    end

    # Contains the Amazon Glacier response to your request.
    #
    # @!attribute [rw] checksum
    #   The SHA256 tree hash that Amazon Glacier computed for the uploaded
    #   part.
    #   @return [String]
    #
    class UploadMultipartPartOutput < Struct.new(
      :checksum)
      include Aws::Structure
    end

    # Contains the vault access policy.
    #
    # @note When making an API call, you may pass VaultAccessPolicy
    #   data as a hash:
    #
    #       {
    #         policy: "string",
    #       }
    #
    # @!attribute [rw] policy
    #   The vault access policy.
    #   @return [String]
    #
    class VaultAccessPolicy < Struct.new(
      :policy)
      include Aws::Structure
    end

    # Contains the vault lock policy.
    #
    # @note When making an API call, you may pass VaultLockPolicy
    #   data as a hash:
    #
    #       {
    #         policy: "string",
    #       }
    #
    # @!attribute [rw] policy
    #   The vault lock policy.
    #   @return [String]
    #
    class VaultLockPolicy < Struct.new(
      :policy)
      include Aws::Structure
    end

    # Represents a vault's notification configuration.
    #
    # @note When making an API call, you may pass VaultNotificationConfig
    #   data as a hash:
    #
    #       {
    #         sns_topic: "string",
    #         events: ["string"],
    #       }
    #
    # @!attribute [rw] sns_topic
    #   The Amazon Simple Notification Service (Amazon SNS) topic Amazon
    #   Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] events
    #   A list of one or more events for which Amazon Glacier will send a
    #   notification to the specified Amazon SNS topic.
    #   @return [Array<String>]
    #
    class VaultNotificationConfig < Struct.new(
      :sns_topic,
      :events)
      include Aws::Structure
    end

  end
end
