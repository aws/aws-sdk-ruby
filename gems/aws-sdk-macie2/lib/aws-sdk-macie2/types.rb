# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Macie2
  module Types

    # Specifies an Amazon Macie membership invitation to accept. In the
    # request, you have to specify the ID for the Amazon Web Services
    # account that sent the invitation. Otherwise, a validation error
    # occurs. To specify this ID, we recommend that you use the
    # administratorAccountId property instead of the masterAccount property.
    # The masterAccount property has been deprecated and is retained only
    # for backward compatibility.
    #
    # @!attribute [rw] administrator_account_id
    #   @return [String]
    #
    # @!attribute [rw] invitation_id
    #   @return [String]
    #
    # @!attribute [rw] master_account
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/AcceptInvitationRequest AWS API Documentation
    #
    class AcceptInvitationRequest < Struct.new(
      :administrator_account_id,
      :invitation_id,
      :master_account)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/AcceptInvitationResponse AWS API Documentation
    #
    class AcceptInvitationResponse < Aws::EmptyStructure; end

    # Provides information about the permissions settings of the
    # bucket-level access control list (ACL) for an S3 bucket.
    #
    # @!attribute [rw] allows_public_read_access
    #   @return [Boolean]
    #
    # @!attribute [rw] allows_public_write_access
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/AccessControlList AWS API Documentation
    #
    class AccessControlList < Struct.new(
      :allows_public_read_access,
      :allows_public_write_access)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an error that occurred due to insufficient
    # access to a specified resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the details of an account to associate with an Amazon Macie
    # administrator account.
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] email
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/AccountDetail AWS API Documentation
    #
    class AccountDetail < Struct.new(
      :account_id,
      :email)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the account-level permissions settings that
    # apply to an S3 bucket.
    #
    # @!attribute [rw] block_public_access
    #   Provides information about the block public access settings for an
    #   S3 bucket. These settings can apply to a bucket at the account or
    #   bucket level. For detailed information about each setting, see
    #   [Blocking public access to your Amazon S3 storage][1] in the *Amazon
    #   Simple Storage Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html
    #   @return [Types::BlockPublicAccess]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/AccountLevelPermissions AWS API Documentation
    #
    class AccountLevelPermissions < Struct.new(
      :block_public_access)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the delegated Amazon Macie administrator
    # account for an organization in Organizations.
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of an account as the delegated Amazon Macie
    #   administrator account for an organization in Organizations. Possible
    #   values are:
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/AdminAccount AWS API Documentation
    #
    class AdminAccount < Struct.new(
      :account_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the criteria for an allow list. The criteria must specify a
    # regular expression (regex) or an S3 object (s3WordsList). It can't
    # specify both.
    #
    # @!attribute [rw] regex
    #   @return [String]
    #
    # @!attribute [rw] s3_words_list
    #   Provides information about an S3 object that lists specific text to
    #   ignore.
    #   @return [Types::S3WordsList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/AllowListCriteria AWS API Documentation
    #
    class AllowListCriteria < Struct.new(
      :regex,
      :s3_words_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the current status of an allow list, which
    # indicates whether Amazon Macie can access and use the list's
    # criteria.
    #
    # @!attribute [rw] code
    #   Indicates the current status of an allow list. Depending on the type
    #   of criteria that the list specifies, possible values are:
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/AllowListStatus AWS API Documentation
    #
    class AllowListStatus < Struct.new(
      :code,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a subset of information about an allow list.
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/AllowListSummary AWS API Documentation
    #
    class AllowListSummary < Struct.new(
      :arn,
      :created_at,
      :description,
      :id,
      :name,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an API operation that an entity invoked for
    # an affected resource.
    #
    # @!attribute [rw] api
    #   @return [String]
    #
    # @!attribute [rw] api_service_name
    #   @return [String]
    #
    # @!attribute [rw] first_seen
    #   @return [Time]
    #
    # @!attribute [rw] last_seen
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ApiCallDetails AWS API Documentation
    #
    class ApiCallDetails < Struct.new(
      :api,
      :api_service_name,
      :first_seen,
      :last_seen)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an identity that performed an action on an
    # affected resource by using temporary security credentials. The
    # credentials were obtained using the AssumeRole operation of the
    # Security Token Service (STS) API.
    #
    # @!attribute [rw] access_key_id
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   @return [String]
    #
    # @!attribute [rw] session_context
    #   Provides information about a session that was created for an entity
    #   that performed an action by using temporary security credentials.
    #   @return [Types::SessionContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/AssumedRole AWS API Documentation
    #
    class AssumedRole < Struct.new(
      :access_key_id,
      :account_id,
      :arn,
      :principal_id,
      :session_context)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an Amazon Web Services account and entity
    # that performed an action on an affected resource. The action was
    # performed using the credentials for an Amazon Web Services account
    # other than your own account.
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/AwsAccount AWS API Documentation
    #
    class AwsAccount < Struct.new(
      :account_id,
      :principal_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an Amazon Web Service that performed an
    # action on an affected resource.
    #
    # @!attribute [rw] invoked_by
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/AwsService AWS API Documentation
    #
    class AwsService < Struct.new(
      :invoked_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a custom data identifier.
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   @return [Time]
    #
    # @!attribute [rw] deleted
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/BatchGetCustomDataIdentifierSummary AWS API Documentation
    #
    class BatchGetCustomDataIdentifierSummary < Struct.new(
      :arn,
      :created_at,
      :deleted,
      :description,
      :id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies one or more custom data identifiers to retrieve information
    # about.
    #
    # @!attribute [rw] ids
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/BatchGetCustomDataIdentifiersRequest AWS API Documentation
    #
    class BatchGetCustomDataIdentifiersRequest < Struct.new(
      :ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about one or more custom data identifiers.
    #
    # @!attribute [rw] custom_data_identifiers
    #   @return [Array<Types::BatchGetCustomDataIdentifierSummary>]
    #
    # @!attribute [rw] not_found_identifier_ids
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/BatchGetCustomDataIdentifiersResponse AWS API Documentation
    #
    class BatchGetCustomDataIdentifiersResponse < Struct.new(
      :custom_data_identifiers,
      :not_found_identifier_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the block public access settings for an S3
    # bucket. These settings can apply to a bucket at the account or bucket
    # level. For detailed information about each setting, see [Blocking
    # public access to your Amazon S3 storage][1] in the *Amazon Simple
    # Storage Service User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html
    #
    # @!attribute [rw] block_public_acls
    #   @return [Boolean]
    #
    # @!attribute [rw] block_public_policy
    #   @return [Boolean]
    #
    # @!attribute [rw] ignore_public_acls
    #   @return [Boolean]
    #
    # @!attribute [rw] restrict_public_buckets
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/BlockPublicAccess AWS API Documentation
    #
    class BlockPublicAccess < Struct.new(
      :block_public_acls,
      :block_public_policy,
      :ignore_public_acls,
      :restrict_public_buckets)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the number of S3 buckets that are publicly
    # accessible due to a combination of permissions settings for each
    # bucket.
    #
    # @!attribute [rw] publicly_accessible
    #   @return [Integer]
    #
    # @!attribute [rw] publicly_readable
    #   @return [Integer]
    #
    # @!attribute [rw] publicly_writable
    #   @return [Integer]
    #
    # @!attribute [rw] unknown
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/BucketCountByEffectivePermission AWS API Documentation
    #
    class BucketCountByEffectivePermission < Struct.new(
      :publicly_accessible,
      :publicly_readable,
      :publicly_writable,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the number of S3 buckets whose settings do
    # or don't specify default server-side encryption behavior for objects
    # that are added to the buckets. For detailed information about these
    # settings, see [Setting default server-side encryption behavior for
    # Amazon S3 buckets][1] in the *Amazon Simple Storage Service User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucket-encryption.html
    #
    # @!attribute [rw] kms_managed
    #   @return [Integer]
    #
    # @!attribute [rw] s3_managed
    #   @return [Integer]
    #
    # @!attribute [rw] unencrypted
    #   @return [Integer]
    #
    # @!attribute [rw] unknown
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/BucketCountByEncryptionType AWS API Documentation
    #
    class BucketCountByEncryptionType < Struct.new(
      :kms_managed,
      :s3_managed,
      :unencrypted,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the number of S3 buckets that are or
    # aren't shared with other Amazon Web Services accounts, Amazon
    # CloudFront origin access identities (OAIs), or CloudFront origin
    # access controls (OACs). In this data, an *Amazon Macie organization*
    # is defined as a set of Macie accounts that are centrally managed as a
    # group of related accounts through Organizations or by Macie
    # invitation.
    #
    # @!attribute [rw] external
    #   @return [Integer]
    #
    # @!attribute [rw] internal
    #   @return [Integer]
    #
    # @!attribute [rw] not_shared
    #   @return [Integer]
    #
    # @!attribute [rw] unknown
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/BucketCountBySharedAccessType AWS API Documentation
    #
    class BucketCountBySharedAccessType < Struct.new(
      :external,
      :internal,
      :not_shared,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the number of S3 buckets whose bucket
    # policies do or don't require server-side encryption of objects when
    # objects are added to the buckets.
    #
    # @!attribute [rw] allows_unencrypted_object_uploads
    #   @return [Integer]
    #
    # @!attribute [rw] denies_unencrypted_object_uploads
    #   @return [Integer]
    #
    # @!attribute [rw] unknown
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/BucketCountPolicyAllowsUnencryptedObjectUploads AWS API Documentation
    #
    class BucketCountPolicyAllowsUnencryptedObjectUploads < Struct.new(
      :allows_unencrypted_object_uploads,
      :denies_unencrypted_object_uploads,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the operator to use in a property-based condition that
    # filters the results of a query for information about S3 buckets.
    #
    # @!attribute [rw] eq
    #   @return [Array<String>]
    #
    # @!attribute [rw] gt
    #   @return [Integer]
    #
    # @!attribute [rw] gte
    #   @return [Integer]
    #
    # @!attribute [rw] lt
    #   @return [Integer]
    #
    # @!attribute [rw] lte
    #   @return [Integer]
    #
    # @!attribute [rw] neq
    #   @return [Array<String>]
    #
    # @!attribute [rw] prefix
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/BucketCriteriaAdditionalProperties AWS API Documentation
    #
    class BucketCriteriaAdditionalProperties < Struct.new(
      :eq,
      :gt,
      :gte,
      :lt,
      :lte,
      :neq,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the bucket-level permissions settings for
    # an S3 bucket.
    #
    # @!attribute [rw] access_control_list
    #   Provides information about the permissions settings of the
    #   bucket-level access control list (ACL) for an S3 bucket.
    #   @return [Types::AccessControlList]
    #
    # @!attribute [rw] block_public_access
    #   Provides information about the block public access settings for an
    #   S3 bucket. These settings can apply to a bucket at the account or
    #   bucket level. For detailed information about each setting, see
    #   [Blocking public access to your Amazon S3 storage][1] in the *Amazon
    #   Simple Storage Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html
    #   @return [Types::BlockPublicAccess]
    #
    # @!attribute [rw] bucket_policy
    #   Provides information about the permissions settings of the bucket
    #   policy for an S3 bucket.
    #   @return [Types::BucketPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/BucketLevelPermissions AWS API Documentation
    #
    class BucketLevelPermissions < Struct.new(
      :access_control_list,
      :block_public_access,
      :bucket_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides statistical data and other information about an S3 bucket
    # that Amazon Macie monitors and analyzes for your account. By default,
    # object count and storage size values include data for object parts
    # that are the result of incomplete multipart uploads. For more
    # information, see [How Macie monitors Amazon S3 data security][1] in
    # the *Amazon Macie User Guide*.
    #
    # If an error occurs when Macie attempts to retrieve and process
    # metadata from Amazon S3 for the bucket or the bucket's objects, the
    # value for the versioning property is false and the value for most
    # other properties is null. Key exceptions are accountId, bucketArn,
    # bucketCreatedAt, bucketName, lastUpdated, and region. To identify the
    # cause of the error, refer to the errorCode and errorMessage values.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/macie/latest/user/monitoring-s3-how-it-works.html
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] allows_unencrypted_object_uploads
    #   @return [String]
    #
    # @!attribute [rw] bucket_arn
    #   @return [String]
    #
    # @!attribute [rw] bucket_created_at
    #   @return [Time]
    #
    # @!attribute [rw] bucket_name
    #   @return [String]
    #
    # @!attribute [rw] classifiable_object_count
    #   @return [Integer]
    #
    # @!attribute [rw] classifiable_size_in_bytes
    #   @return [Integer]
    #
    # @!attribute [rw] error_code
    #   The error code for an error that prevented Amazon Macie from
    #   retrieving and processing metadata from Amazon S3 for an S3 bucket
    #   and the bucket's objects.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   @return [String]
    #
    # @!attribute [rw] job_details
    #   Specifies whether any one-time or recurring classification jobs are
    #   configured to analyze data in an S3 bucket, and, if so, the details
    #   of the job that ran most recently.
    #   @return [Types::JobDetails]
    #
    # @!attribute [rw] last_automated_discovery_time
    #   @return [Time]
    #
    # @!attribute [rw] last_updated
    #   @return [Time]
    #
    # @!attribute [rw] object_count
    #   @return [Integer]
    #
    # @!attribute [rw] object_count_by_encryption_type
    #   Provides information about the number of objects that are in an S3
    #   bucket and use certain types of server-side encryption, use
    #   client-side encryption, or aren't encrypted.
    #   @return [Types::ObjectCountByEncryptionType]
    #
    # @!attribute [rw] public_access
    #   Provides information about the permissions settings that determine
    #   whether an S3 bucket is publicly accessible.
    #   @return [Types::BucketPublicAccess]
    #
    # @!attribute [rw] region
    #   @return [String]
    #
    # @!attribute [rw] replication_details
    #   Provides information about settings that define whether one or more
    #   objects in an S3 bucket are replicated to S3 buckets for other
    #   Amazon Web Services accounts and, if so, which accounts.
    #   @return [Types::ReplicationDetails]
    #
    # @!attribute [rw] sensitivity_score
    #   @return [Integer]
    #
    # @!attribute [rw] server_side_encryption
    #   Provides information about the default server-side encryption
    #   settings for an S3 bucket. For detailed information about these
    #   settings, see [Setting default server-side encryption behavior for
    #   Amazon S3 buckets][1] in the *Amazon Simple Storage Service User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucket-encryption.html
    #   @return [Types::BucketServerSideEncryption]
    #
    # @!attribute [rw] shared_access
    #   @return [String]
    #
    # @!attribute [rw] size_in_bytes
    #   @return [Integer]
    #
    # @!attribute [rw] size_in_bytes_compressed
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   @return [Array<Types::KeyValuePair>]
    #
    # @!attribute [rw] unclassifiable_object_count
    #   Provides information about the total storage size (in bytes) or
    #   number of objects that Amazon Macie can't analyze in one or more S3
    #   buckets. In a BucketMetadata or MatchingBucket object, this data is
    #   for a specific bucket. In a GetBucketStatisticsResponse object, this
    #   data is aggregated for all the buckets in the query results. If
    #   versioning is enabled for a bucket, storage size values are based on
    #   the size of the latest version of each applicable object in the
    #   bucket.
    #   @return [Types::ObjectLevelStatistics]
    #
    # @!attribute [rw] unclassifiable_object_size_in_bytes
    #   Provides information about the total storage size (in bytes) or
    #   number of objects that Amazon Macie can't analyze in one or more S3
    #   buckets. In a BucketMetadata or MatchingBucket object, this data is
    #   for a specific bucket. In a GetBucketStatisticsResponse object, this
    #   data is aggregated for all the buckets in the query results. If
    #   versioning is enabled for a bucket, storage size values are based on
    #   the size of the latest version of each applicable object in the
    #   bucket.
    #   @return [Types::ObjectLevelStatistics]
    #
    # @!attribute [rw] versioning
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/BucketMetadata AWS API Documentation
    #
    class BucketMetadata < Struct.new(
      :account_id,
      :allows_unencrypted_object_uploads,
      :bucket_arn,
      :bucket_created_at,
      :bucket_name,
      :classifiable_object_count,
      :classifiable_size_in_bytes,
      :error_code,
      :error_message,
      :job_details,
      :last_automated_discovery_time,
      :last_updated,
      :object_count,
      :object_count_by_encryption_type,
      :public_access,
      :region,
      :replication_details,
      :sensitivity_score,
      :server_side_encryption,
      :shared_access,
      :size_in_bytes,
      :size_in_bytes_compressed,
      :tags,
      :unclassifiable_object_count,
      :unclassifiable_object_size_in_bytes,
      :versioning)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the account-level and bucket-level
    # permissions settings for an S3 bucket.
    #
    # @!attribute [rw] account_level_permissions
    #   Provides information about the account-level permissions settings
    #   that apply to an S3 bucket.
    #   @return [Types::AccountLevelPermissions]
    #
    # @!attribute [rw] bucket_level_permissions
    #   Provides information about the bucket-level permissions settings for
    #   an S3 bucket.
    #   @return [Types::BucketLevelPermissions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/BucketPermissionConfiguration AWS API Documentation
    #
    class BucketPermissionConfiguration < Struct.new(
      :account_level_permissions,
      :bucket_level_permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the permissions settings of the bucket
    # policy for an S3 bucket.
    #
    # @!attribute [rw] allows_public_read_access
    #   @return [Boolean]
    #
    # @!attribute [rw] allows_public_write_access
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/BucketPolicy AWS API Documentation
    #
    class BucketPolicy < Struct.new(
      :allows_public_read_access,
      :allows_public_write_access)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the permissions settings that determine
    # whether an S3 bucket is publicly accessible.
    #
    # @!attribute [rw] effective_permission
    #   @return [String]
    #
    # @!attribute [rw] permission_configuration
    #   Provides information about the account-level and bucket-level
    #   permissions settings for an S3 bucket.
    #   @return [Types::BucketPermissionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/BucketPublicAccess AWS API Documentation
    #
    class BucketPublicAccess < Struct.new(
      :effective_permission,
      :permission_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the default server-side encryption settings
    # for an S3 bucket. For detailed information about these settings, see
    # [Setting default server-side encryption behavior for Amazon S3
    # buckets][1] in the *Amazon Simple Storage Service User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucket-encryption.html
    #
    # @!attribute [rw] kms_master_key_id
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/BucketServerSideEncryption AWS API Documentation
    #
    class BucketServerSideEncryption < Struct.new(
      :kms_master_key_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies criteria for sorting the results of a query for information
    # about S3 buckets.
    #
    # @!attribute [rw] attribute_name
    #   @return [String]
    #
    # @!attribute [rw] order_by
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/BucketSortCriteria AWS API Documentation
    #
    class BucketSortCriteria < Struct.new(
      :attribute_name,
      :order_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides aggregated statistical data for sensitive data discovery
    # metrics that apply to S3 buckets, grouped by bucket sensitivity score
    # (sensitivityScore). If automated sensitive data discovery is currently
    # disabled for your account, the value for each metric is 0.
    #
    # @!attribute [rw] classification_error
    #   Provides aggregated statistical data for sensitive data discovery
    #   metrics that apply to S3 buckets. Each field contains aggregated
    #   data for all the buckets that have a sensitivity score
    #   (sensitivityScore) of a specified value or within a specified range
    #   (BucketStatisticsBySensitivity). If automated sensitive data
    #   discovery is currently disabled for your account, the value for each
    #   field is 0.
    #   @return [Types::SensitivityAggregations]
    #
    # @!attribute [rw] not_classified
    #   Provides aggregated statistical data for sensitive data discovery
    #   metrics that apply to S3 buckets. Each field contains aggregated
    #   data for all the buckets that have a sensitivity score
    #   (sensitivityScore) of a specified value or within a specified range
    #   (BucketStatisticsBySensitivity). If automated sensitive data
    #   discovery is currently disabled for your account, the value for each
    #   field is 0.
    #   @return [Types::SensitivityAggregations]
    #
    # @!attribute [rw] not_sensitive
    #   Provides aggregated statistical data for sensitive data discovery
    #   metrics that apply to S3 buckets. Each field contains aggregated
    #   data for all the buckets that have a sensitivity score
    #   (sensitivityScore) of a specified value or within a specified range
    #   (BucketStatisticsBySensitivity). If automated sensitive data
    #   discovery is currently disabled for your account, the value for each
    #   field is 0.
    #   @return [Types::SensitivityAggregations]
    #
    # @!attribute [rw] sensitive
    #   Provides aggregated statistical data for sensitive data discovery
    #   metrics that apply to S3 buckets. Each field contains aggregated
    #   data for all the buckets that have a sensitivity score
    #   (sensitivityScore) of a specified value or within a specified range
    #   (BucketStatisticsBySensitivity). If automated sensitive data
    #   discovery is currently disabled for your account, the value for each
    #   field is 0.
    #   @return [Types::SensitivityAggregations]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/BucketStatisticsBySensitivity AWS API Documentation
    #
    class BucketStatisticsBySensitivity < Struct.new(
      :classification_error,
      :not_classified,
      :not_sensitive,
      :sensitive)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the location of an occurrence of sensitive data in a
    # Microsoft Excel workbook, CSV file, or TSV file.
    #
    # @!attribute [rw] cell_reference
    #   @return [String]
    #
    # @!attribute [rw] column
    #   @return [Integer]
    #
    # @!attribute [rw] column_name
    #   @return [String]
    #
    # @!attribute [rw] row
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/Cell AWS API Documentation
    #
    class Cell < Struct.new(
      :cell_reference,
      :column,
      :column_name,
      :row)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a sensitive data finding and the details of
    # the finding.
    #
    # @!attribute [rw] detailed_results_location
    #   @return [String]
    #
    # @!attribute [rw] job_arn
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] origin_type
    #   Specifies how Amazon Macie found the sensitive data that produced a
    #   finding. Possible values are:
    #   @return [String]
    #
    # @!attribute [rw] result
    #   Provides the details of a sensitive data finding, including the
    #   types, number of occurrences, and locations of the sensitive data
    #   that was detected.
    #   @return [Types::ClassificationResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ClassificationDetails AWS API Documentation
    #
    class ClassificationDetails < Struct.new(
      :detailed_results_location,
      :job_arn,
      :job_id,
      :origin_type,
      :result)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies where to store data classification results, and the
    # encryption settings to use when storing results in that location. The
    # location must be an S3 bucket.
    #
    # @!attribute [rw] s3_destination
    #   Specifies an S3 bucket to store data classification results in, and
    #   the encryption settings to use when storing results in that bucket.
    #   @return [Types::S3Destination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ClassificationExportConfiguration AWS API Documentation
    #
    class ClassificationExportConfiguration < Struct.new(
      :s3_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the details of a sensitive data finding, including the types,
    # number of occurrences, and locations of the sensitive data that was
    # detected.
    #
    # @!attribute [rw] additional_occurrences
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_data_identifiers
    #   Provides information about custom data identifiers that produced a
    #   sensitive data finding, and the number of occurrences of the data
    #   that they detected for the finding.
    #   @return [Types::CustomDataIdentifiers]
    #
    # @!attribute [rw] mime_type
    #   @return [String]
    #
    # @!attribute [rw] sensitive_data
    #   Provides information about the category and number of occurrences of
    #   sensitive data that produced a finding.
    #   @return [Array<Types::SensitiveDataItem>]
    #
    # @!attribute [rw] size_classified
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   Provides information about the status of a sensitive data finding.
    #   @return [Types::ClassificationResultStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ClassificationResult AWS API Documentation
    #
    class ClassificationResult < Struct.new(
      :additional_occurrences,
      :custom_data_identifiers,
      :mime_type,
      :sensitive_data,
      :size_classified,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the status of a sensitive data finding.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ClassificationResultStatus AWS API Documentation
    #
    class ClassificationResultStatus < Struct.new(
      :code,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the classification scope for an Amazon
    # Macie account. Macie uses the scope's settings when it performs
    # automated sensitive data discovery for the account.
    #
    # @!attribute [rw] id
    #   The unique identifier the classification scope.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the classification scope.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ClassificationScopeSummary AWS API Documentation
    #
    class ClassificationScopeSummary < Struct.new(
      :id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an error that occurred due to a versioning
    # conflict for a specified resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the settings for an allow list. When Amazon Macie processes
    # the request, Macie tests the list's criteria. If the criteria specify
    # a regular expression that Macie can't compile or an S3 object that
    # Macie can't retrieve or parse, an error occurs.
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] criteria
    #   Specifies the criteria for an allow list. The criteria must specify
    #   a regular expression (regex) or an S3 object (s3WordsList). It
    #   can't specify both.
    #   @return [Types::AllowListCriteria]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that specifies the tags
    #   (keys and values) for an Amazon Macie resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CreateAllowListRequest AWS API Documentation
    #
    class CreateAllowListRequest < Struct.new(
      :client_token,
      :criteria,
      :description,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an allow list that was created in response
    # to a request.
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CreateAllowListResponse AWS API Documentation
    #
    class CreateAllowListResponse < Struct.new(
      :arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the scope, schedule, and other settings for a classification
    # job. You can't change any settings for a classification job after you
    # create it. This helps to ensure that you have an immutable history of
    # sensitive data findings and discovery results for data privacy and
    # protection audits or investigations.
    #
    # @!attribute [rw] allow_list_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] custom_data_identifier_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] initial_run
    #   @return [Boolean]
    #
    # @!attribute [rw] job_type
    #   The schedule for running a classification job. Valid values are:
    #   @return [String]
    #
    # @!attribute [rw] managed_data_identifier_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] managed_data_identifier_selector
    #   The selection type that determines which managed data identifiers a
    #   classification job uses to analyze data. Valid values are:
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] s3_job_definition
    #   Specifies which S3 buckets contain the objects that a classification
    #   job analyzes, and the scope of that analysis. The bucket
    #   specification can be static (bucketDefinitions) or dynamic
    #   (bucketCriteria). If it's static, the job analyzes objects in the
    #   same predefined set of buckets each time the job runs. If it's
    #   dynamic, the job analyzes objects in any buckets that match the
    #   specified criteria each time the job starts to run.
    #   @return [Types::S3JobDefinition]
    #
    # @!attribute [rw] sampling_percentage
    #   @return [Integer]
    #
    # @!attribute [rw] schedule_frequency
    #   Specifies the recurrence pattern for running a classification job.
    #   @return [Types::JobScheduleFrequency]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that specifies the tags
    #   (keys and values) for an Amazon Macie resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CreateClassificationJobRequest AWS API Documentation
    #
    class CreateClassificationJobRequest < Struct.new(
      :allow_list_ids,
      :client_token,
      :custom_data_identifier_ids,
      :description,
      :initial_run,
      :job_type,
      :managed_data_identifier_ids,
      :managed_data_identifier_selector,
      :name,
      :s3_job_definition,
      :sampling_percentage,
      :schedule_frequency,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a classification job that was created in
    # response to a request.
    #
    # @!attribute [rw] job_arn
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CreateClassificationJobResponse AWS API Documentation
    #
    class CreateClassificationJobResponse < Struct.new(
      :job_arn,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the detection criteria and other settings for a custom data
    # identifier. You can't change a custom data identifier after you
    # create it. This helps to ensure that you have an immutable history of
    # sensitive data findings and discovery results for data privacy and
    # protection audits or investigations.
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] ignore_words
    #   @return [Array<String>]
    #
    # @!attribute [rw] keywords
    #   @return [Array<String>]
    #
    # @!attribute [rw] maximum_match_distance
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] regex
    #   @return [String]
    #
    # @!attribute [rw] severity_levels
    #   The severity to assign to findings that the custom data identifier
    #   produces, based on the number of occurrences of text that matches
    #   the custom data identifier's detection criteria. You can specify as
    #   many as three SeverityLevel objects in this array, one for each
    #   severity: LOW, MEDIUM, or HIGH. If you specify more than one, the
    #   occurrences thresholds must be in ascending order by severity,
    #   moving from LOW to HIGH. For example, 1 for LOW, 50 for MEDIUM, and
    #   100 for HIGH. If an S3 object contains fewer occurrences than the
    #   lowest specified threshold, Amazon Macie doesn't create a finding.
    #
    #   If you don't specify any values for this array, Macie creates
    #   findings for S3 objects that contain at least one occurrence of text
    #   that matches the detection criteria, and Macie automatically assigns
    #   the MEDIUM severity to those findings.
    #   @return [Array<Types::SeverityLevel>]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that specifies the tags
    #   (keys and values) for an Amazon Macie resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CreateCustomDataIdentifierRequest AWS API Documentation
    #
    class CreateCustomDataIdentifierRequest < Struct.new(
      :client_token,
      :description,
      :ignore_words,
      :keywords,
      :maximum_match_distance,
      :name,
      :regex,
      :severity_levels,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a custom data identifier that was created
    # in response to a request.
    #
    # @!attribute [rw] custom_data_identifier_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CreateCustomDataIdentifierResponse AWS API Documentation
    #
    class CreateCustomDataIdentifierResponse < Struct.new(
      :custom_data_identifier_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the criteria and other settings for a new findings filter.
    #
    # @!attribute [rw] action
    #   The action to perform on findings that match the filter criteria. To
    #   suppress (automatically archive) findings that match the criteria,
    #   set this value to ARCHIVE. Valid values are:
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] finding_criteria
    #   Specifies, as a map, one or more property-based conditions that
    #   filter the results of a query for findings.
    #   @return [Types::FindingCriteria]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] position
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that specifies the tags
    #   (keys and values) for an Amazon Macie resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CreateFindingsFilterRequest AWS API Documentation
    #
    class CreateFindingsFilterRequest < Struct.new(
      :action,
      :client_token,
      :description,
      :finding_criteria,
      :name,
      :position,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a findings filter that was created in
    # response to a request.
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CreateFindingsFilterResponse AWS API Documentation
    #
    class CreateFindingsFilterResponse < Struct.new(
      :arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the settings for an Amazon Macie membership invitation. When
    # you send an invitation, Macie notifies the recipient by creating an
    # Health event for the recipient's account and, if Macie is already
    # enabled for the account, displaying an **Accounts** badge and
    # notification on the recipient's console. You can optionally notify
    # the recipient by also sending the invitation as an email message.
    #
    # @!attribute [rw] account_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] disable_email_notification
    #   @return [Boolean]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CreateInvitationsRequest AWS API Documentation
    #
    class CreateInvitationsRequest < Struct.new(
      :account_ids,
      :disable_email_notification,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an unprocessed request to send an Amazon
    # Macie membership invitation to a specific account.
    #
    # @!attribute [rw] unprocessed_accounts
    #   @return [Array<Types::UnprocessedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CreateInvitationsResponse AWS API Documentation
    #
    class CreateInvitationsResponse < Struct.new(
      :unprocessed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an Amazon Web Services account to associate with an Amazon
    # Macie administrator account.
    #
    # @!attribute [rw] account
    #   Specifies the details of an account to associate with an Amazon
    #   Macie administrator account.
    #   @return [Types::AccountDetail]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that specifies the tags
    #   (keys and values) for an Amazon Macie resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CreateMemberRequest AWS API Documentation
    #
    class CreateMemberRequest < Struct.new(
      :account,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a request to associate an account with an
    # Amazon Macie administrator account.
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CreateMemberResponse AWS API Documentation
    #
    class CreateMemberResponse < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the types of sample findings to create.
    #
    # @!attribute [rw] finding_types
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CreateSampleFindingsRequest AWS API Documentation
    #
    class CreateSampleFindingsRequest < Struct.new(
      :finding_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CreateSampleFindingsResponse AWS API Documentation
    #
    class CreateSampleFindingsResponse < Aws::EmptyStructure; end

    # Specifies one or more property- and tag-based conditions that define
    # criteria for including or excluding S3 buckets from a classification
    # job.
    #
    # @!attribute [rw] and
    #   @return [Array<Types::CriteriaForJob>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CriteriaBlockForJob AWS API Documentation
    #
    class CriteriaBlockForJob < Struct.new(
      :and)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a property- or tag-based condition that defines criteria for
    # including or excluding S3 buckets from a classification job.
    #
    # @!attribute [rw] simple_criterion
    #   Specifies a property-based condition that determines whether an S3
    #   bucket is included or excluded from a classification job.
    #   @return [Types::SimpleCriterionForJob]
    #
    # @!attribute [rw] tag_criterion
    #   Specifies a tag-based condition that determines whether an S3 bucket
    #   is included or excluded from a classification job.
    #   @return [Types::TagCriterionForJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CriteriaForJob AWS API Documentation
    #
    class CriteriaForJob < Struct.new(
      :simple_criterion,
      :tag_criterion)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the operator to use in a property-based condition that
    # filters the results of a query for findings. For detailed information
    # and examples of each operator, see [Fundamentals of filtering
    # findings][1] in the *Amazon Macie User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/macie/latest/user/findings-filter-basics.html
    #
    # @!attribute [rw] eq
    #   @return [Array<String>]
    #
    # @!attribute [rw] eq_exact_match
    #   @return [Array<String>]
    #
    # @!attribute [rw] gt
    #   @return [Integer]
    #
    # @!attribute [rw] gte
    #   @return [Integer]
    #
    # @!attribute [rw] lt
    #   @return [Integer]
    #
    # @!attribute [rw] lte
    #   @return [Integer]
    #
    # @!attribute [rw] neq
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CriterionAdditionalProperties AWS API Documentation
    #
    class CriterionAdditionalProperties < Struct.new(
      :eq,
      :eq_exact_match,
      :gt,
      :gte,
      :lt,
      :lte,
      :neq)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a custom data identifier.
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CustomDataIdentifierSummary AWS API Documentation
    #
    class CustomDataIdentifierSummary < Struct.new(
      :arn,
      :created_at,
      :description,
      :id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about custom data identifiers that produced a
    # sensitive data finding, and the number of occurrences of the data that
    # they detected for the finding.
    #
    # @!attribute [rw] detections
    #   Provides information about custom data identifiers that produced a
    #   sensitive data finding, and the number of occurrences of the data
    #   that each identifier detected.
    #   @return [Array<Types::CustomDetection>]
    #
    # @!attribute [rw] total_count
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CustomDataIdentifiers AWS API Documentation
    #
    class CustomDataIdentifiers < Struct.new(
      :detections,
      :total_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a custom data identifier that produced a
    # sensitive data finding, and the sensitive data that it detected for
    # the finding.
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] count
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] occurrences
    #   Specifies the location of 1-15 occurrences of sensitive data that
    #   was detected by a managed data identifier or a custom data
    #   identifier and produced a sensitive data finding.
    #   @return [Types::Occurrences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/CustomDetection AWS API Documentation
    #
    class CustomDetection < Struct.new(
      :arn,
      :count,
      :name,
      :occurrences)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies that a classification job runs once a day, every day. This
    # is an empty object.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DailySchedule AWS API Documentation
    #
    class DailySchedule < Aws::EmptyStructure; end

    # Specifies one or more accounts that sent Amazon Macie membership
    # invitations to decline.
    #
    # @!attribute [rw] account_ids
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DeclineInvitationsRequest AWS API Documentation
    #
    class DeclineInvitationsRequest < Struct.new(
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about unprocessed requests to decline Amazon
    # Macie membership invitations that were received from specific
    # accounts.
    #
    # @!attribute [rw] unprocessed_accounts
    #   @return [Array<Types::UnprocessedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DeclineInvitationsResponse AWS API Documentation
    #
    class DeclineInvitationsResponse < Struct.new(
      :unprocessed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a type of sensitive data that was detected
    # by a managed data identifier and produced a sensitive data finding.
    #
    # @!attribute [rw] count
    #   @return [Integer]
    #
    # @!attribute [rw] occurrences
    #   Specifies the location of 1-15 occurrences of sensitive data that
    #   was detected by a managed data identifier or a custom data
    #   identifier and produced a sensitive data finding.
    #   @return [Types::Occurrences]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DefaultDetection AWS API Documentation
    #
    class DefaultDetection < Struct.new(
      :count,
      :occurrences,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] ignore_job_checks
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DeleteAllowListRequest AWS API Documentation
    #
    class DeleteAllowListRequest < Struct.new(
      :id,
      :ignore_job_checks)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DeleteAllowListResponse AWS API Documentation
    #
    class DeleteAllowListResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DeleteCustomDataIdentifierRequest AWS API Documentation
    #
    class DeleteCustomDataIdentifierRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DeleteCustomDataIdentifierResponse AWS API Documentation
    #
    class DeleteCustomDataIdentifierResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DeleteFindingsFilterRequest AWS API Documentation
    #
    class DeleteFindingsFilterRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DeleteFindingsFilterResponse AWS API Documentation
    #
    class DeleteFindingsFilterResponse < Aws::EmptyStructure; end

    # Specifies one or more accounts that sent Amazon Macie membership
    # invitations to delete.
    #
    # @!attribute [rw] account_ids
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DeleteInvitationsRequest AWS API Documentation
    #
    class DeleteInvitationsRequest < Struct.new(
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about unprocessed requests to delete Amazon Macie
    # membership invitations that were received from specific accounts.
    #
    # @!attribute [rw] unprocessed_accounts
    #   @return [Array<Types::UnprocessedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DeleteInvitationsResponse AWS API Documentation
    #
    class DeleteInvitationsResponse < Struct.new(
      :unprocessed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DeleteMemberRequest AWS API Documentation
    #
    class DeleteMemberRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DeleteMemberResponse AWS API Documentation
    #
    class DeleteMemberResponse < Aws::EmptyStructure; end

    # Specifies criteria for filtering, sorting, and paginating the results
    # of a query for statistical data and other information about S3
    # buckets.
    #
    # @!attribute [rw] criteria
    #   Specifies, as a map, one or more property-based conditions that
    #   filter the results of a query for information about S3 buckets.
    #   @return [Hash<String,Types::BucketCriteriaAdditionalProperties>]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] sort_criteria
    #   Specifies criteria for sorting the results of a query for
    #   information about S3 buckets.
    #   @return [Types::BucketSortCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DescribeBucketsRequest AWS API Documentation
    #
    class DescribeBucketsRequest < Struct.new(
      :criteria,
      :max_results,
      :next_token,
      :sort_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the results of a query that retrieved statistical data and
    # other information about one or more S3 buckets that Amazon Macie
    # monitors and analyzes for your account.
    #
    # @!attribute [rw] buckets
    #   @return [Array<Types::BucketMetadata>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DescribeBucketsResponse AWS API Documentation
    #
    class DescribeBucketsResponse < Struct.new(
      :buckets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DescribeClassificationJobRequest AWS API Documentation
    #
    class DescribeClassificationJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a classification job, including the current
    # configuration settings and status of the job.
    #
    # @!attribute [rw] allow_list_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   @return [Time]
    #
    # @!attribute [rw] custom_data_identifier_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] initial_run
    #   @return [Boolean]
    #
    # @!attribute [rw] job_arn
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of a classification job. Possible values are:
    #   @return [String]
    #
    # @!attribute [rw] job_type
    #   The schedule for running a classification job. Valid values are:
    #   @return [String]
    #
    # @!attribute [rw] last_run_error_status
    #   Specifies whether any account- or bucket-level access errors
    #   occurred when a classification job ran. For information about using
    #   logging data to investigate these errors, see [Monitoring sensitive
    #   data discovery jobs][1] in the *Amazon Macie User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/macie/latest/user/discovery-jobs-monitor-cw-logs.html
    #   @return [Types::LastRunErrorStatus]
    #
    # @!attribute [rw] last_run_time
    #   @return [Time]
    #
    # @!attribute [rw] managed_data_identifier_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] managed_data_identifier_selector
    #   The selection type that determines which managed data identifiers a
    #   classification job uses to analyze data. Valid values are:
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] s3_job_definition
    #   Specifies which S3 buckets contain the objects that a classification
    #   job analyzes, and the scope of that analysis. The bucket
    #   specification can be static (bucketDefinitions) or dynamic
    #   (bucketCriteria). If it's static, the job analyzes objects in the
    #   same predefined set of buckets each time the job runs. If it's
    #   dynamic, the job analyzes objects in any buckets that match the
    #   specified criteria each time the job starts to run.
    #   @return [Types::S3JobDefinition]
    #
    # @!attribute [rw] sampling_percentage
    #   @return [Integer]
    #
    # @!attribute [rw] schedule_frequency
    #   Specifies the recurrence pattern for running a classification job.
    #   @return [Types::JobScheduleFrequency]
    #
    # @!attribute [rw] statistics
    #   Provides processing statistics for a classification job.
    #   @return [Types::Statistics]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that specifies the tags
    #   (keys and values) for an Amazon Macie resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] user_paused_details
    #   Provides information about when a classification job was paused. For
    #   a one-time job, this object also specifies when the job will expire
    #   and be cancelled if it isn't resumed. For a recurring job, this
    #   object also specifies when the paused job run will expire and be
    #   cancelled if it isn't resumed. This object is present only if a
    #   job's current status (jobStatus) is USER\_PAUSED. The information
    #   in this object applies only to a job that was paused while it had a
    #   status of RUNNING.
    #   @return [Types::UserPausedDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DescribeClassificationJobResponse AWS API Documentation
    #
    class DescribeClassificationJobResponse < Struct.new(
      :allow_list_ids,
      :client_token,
      :created_at,
      :custom_data_identifier_ids,
      :description,
      :initial_run,
      :job_arn,
      :job_id,
      :job_status,
      :job_type,
      :last_run_error_status,
      :last_run_time,
      :managed_data_identifier_ids,
      :managed_data_identifier_selector,
      :name,
      :s3_job_definition,
      :sampling_percentage,
      :schedule_frequency,
      :statistics,
      :tags,
      :user_paused_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DescribeOrganizationConfigurationRequest AWS API Documentation
    #
    class DescribeOrganizationConfigurationRequest < Aws::EmptyStructure; end

    # Provides information about the Amazon Macie configuration settings for
    # an organization in Organizations.
    #
    # @!attribute [rw] auto_enable
    #   @return [Boolean]
    #
    # @!attribute [rw] max_account_limit_reached
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DescribeOrganizationConfigurationResponse AWS API Documentation
    #
    class DescribeOrganizationConfigurationResponse < Struct.new(
      :auto_enable,
      :max_account_limit_reached)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies 1-10 occurrences of a specific type of sensitive data
    # reported by a finding.
    #
    # @!attribute [rw] value
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DetectedDataDetails AWS API Documentation
    #
    class DetectedDataDetails < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a type of sensitive data that Amazon Macie
    # found in an S3 bucket while performing automated sensitive data
    # discovery for the bucket. The information also specifies the custom
    # data identifier or managed data identifier that detected the data.
    # This information is available only if automated sensitive data
    # discovery is currently enabled for your account.
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] count
    #   @return [Integer]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] suppressed
    #   @return [Boolean]
    #
    # @!attribute [rw] type
    #   The type of data identifier that detected a specific type of
    #   sensitive data in an S3 bucket. Possible values are:
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/Detection AWS API Documentation
    #
    class Detection < Struct.new(
      :arn,
      :count,
      :id,
      :name,
      :suppressed,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DisableMacieRequest AWS API Documentation
    #
    class DisableMacieRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DisableMacieResponse AWS API Documentation
    #
    class DisableMacieResponse < Aws::EmptyStructure; end

    # @!attribute [rw] admin_account_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DisableOrganizationAdminAccountRequest AWS API Documentation
    #
    class DisableOrganizationAdminAccountRequest < Struct.new(
      :admin_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DisableOrganizationAdminAccountResponse AWS API Documentation
    #
    class DisableOrganizationAdminAccountResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DisassociateFromAdministratorAccountRequest AWS API Documentation
    #
    class DisassociateFromAdministratorAccountRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DisassociateFromAdministratorAccountResponse AWS API Documentation
    #
    class DisassociateFromAdministratorAccountResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DisassociateFromMasterAccountRequest AWS API Documentation
    #
    class DisassociateFromMasterAccountRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DisassociateFromMasterAccountResponse AWS API Documentation
    #
    class DisassociateFromMasterAccountResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DisassociateMemberRequest AWS API Documentation
    #
    class DisassociateMemberRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DisassociateMemberResponse AWS API Documentation
    #
    class DisassociateMemberResponse < Aws::EmptyStructure; end

    # Provides information about the domain name of the device that an
    # entity used to perform an action on an affected resource.
    #
    # @!attribute [rw] domain_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/DomainDetails AWS API Documentation
    #
    class DomainDetails < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request succeeded and there isn't any content to include in the
    # body of the response (No Content).
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/Empty AWS API Documentation
    #
    class Empty < Aws::EmptyStructure; end

    # Enables Amazon Macie and specifies the configuration settings for a
    # Macie account.
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] finding_publishing_frequency
    #   The frequency with which Amazon Macie publishes updates to policy
    #   findings for an account. This includes publishing updates to
    #   Security Hub and Amazon EventBridge (formerly Amazon CloudWatch
    #   Events). For more information, see [Monitoring and processing
    #   findings][1] in the *Amazon Macie User Guide*. Valid values are:
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/macie/latest/user/findings-monitor.html
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of an Amazon Macie account. Valid values are:
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/EnableMacieRequest AWS API Documentation
    #
    class EnableMacieRequest < Struct.new(
      :client_token,
      :finding_publishing_frequency,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/EnableMacieResponse AWS API Documentation
    #
    class EnableMacieResponse < Aws::EmptyStructure; end

    # Specifies an account to designate as the delegated Amazon Macie
    # administrator account for an organization in Organizations. To submit
    # this request, you must be a user of the Organizations management
    # account.
    #
    # @!attribute [rw] admin_account_id
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/EnableOrganizationAdminAccountRequest AWS API Documentation
    #
    class EnableOrganizationAdminAccountRequest < Struct.new(
      :admin_account_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/EnableOrganizationAdminAccountResponse AWS API Documentation
    #
    class EnableOrganizationAdminAccountResponse < Aws::EmptyStructure; end

    # Provides information about an identity that performed an action on an
    # affected resource by using temporary security credentials. The
    # credentials were obtained using the GetFederationToken operation of
    # the Security Token Service (STS) API.
    #
    # @!attribute [rw] access_key_id
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   @return [String]
    #
    # @!attribute [rw] session_context
    #   Provides information about a session that was created for an entity
    #   that performed an action by using temporary security credentials.
    #   @return [Types::SessionContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/FederatedUser AWS API Documentation
    #
    class FederatedUser < Struct.new(
      :access_key_id,
      :account_id,
      :arn,
      :principal_id,
      :session_context)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the details of a finding.
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] archived
    #   @return [Boolean]
    #
    # @!attribute [rw] category
    #   The category of the finding. Possible values are:
    #   @return [String]
    #
    # @!attribute [rw] classification_details
    #   Provides information about a sensitive data finding and the details
    #   of the finding.
    #   @return [Types::ClassificationDetails]
    #
    # @!attribute [rw] count
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] partition
    #   @return [String]
    #
    # @!attribute [rw] policy_details
    #   Provides the details of a policy finding.
    #   @return [Types::PolicyDetails]
    #
    # @!attribute [rw] region
    #   @return [String]
    #
    # @!attribute [rw] resources_affected
    #   Provides information about the resources that a finding applies to.
    #   @return [Types::ResourcesAffected]
    #
    # @!attribute [rw] sample
    #   @return [Boolean]
    #
    # @!attribute [rw] schema_version
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   Provides the numerical and qualitative representations of a
    #   finding's severity.
    #   @return [Types::Severity]
    #
    # @!attribute [rw] title
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of finding. For details about each type, see [Types of
    #   Amazon Macie findings][1] in the *Amazon Macie User Guide*. Possible
    #   values are:
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/macie/latest/user/findings-types.html
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/Finding AWS API Documentation
    #
    class Finding < Struct.new(
      :account_id,
      :archived,
      :category,
      :classification_details,
      :count,
      :created_at,
      :description,
      :id,
      :partition,
      :policy_details,
      :region,
      :resources_affected,
      :sample,
      :schema_version,
      :severity,
      :title,
      :type,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an action that occurred for a resource and
    # produced a policy finding.
    #
    # @!attribute [rw] action_type
    #   The type of action that occurred for the resource and produced the
    #   policy finding:
    #   @return [String]
    #
    # @!attribute [rw] api_call_details
    #   Provides information about an API operation that an entity invoked
    #   for an affected resource.
    #   @return [Types::ApiCallDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/FindingAction AWS API Documentation
    #
    class FindingAction < Struct.new(
      :action_type,
      :api_call_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an entity that performed an action that
    # produced a policy finding for a resource.
    #
    # @!attribute [rw] domain_details
    #   Provides information about the domain name of the device that an
    #   entity used to perform an action on an affected resource.
    #   @return [Types::DomainDetails]
    #
    # @!attribute [rw] ip_address_details
    #   Provides information about the IP address of the device that an
    #   entity used to perform an action on an affected resource.
    #   @return [Types::IpAddressDetails]
    #
    # @!attribute [rw] user_identity
    #   Provides information about the type and other characteristics of an
    #   entity that performed an action on an affected resource.
    #   @return [Types::UserIdentity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/FindingActor AWS API Documentation
    #
    class FindingActor < Struct.new(
      :domain_details,
      :ip_address_details,
      :user_identity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies, as a map, one or more property-based conditions that filter
    # the results of a query for findings.
    #
    # @!attribute [rw] criterion
    #   Specifies a condition that defines a property, operator, and one or
    #   more values to filter the results of a query for findings. The
    #   number of values depends on the property and operator specified by
    #   the condition. For information about defining filter conditions, see
    #   [Fundamentals of filtering findings][1] in the *Amazon Macie User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/macie/latest/user/findings-filter-basics.html
    #   @return [Hash<String,Types::CriterionAdditionalProperties>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/FindingCriteria AWS API Documentation
    #
    class FindingCriteria < Struct.new(
      :criterion)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies criteria for sorting the results of a query that retrieves
    # aggregated statistical data about findings.
    #
    # @!attribute [rw] attribute_name
    #   The grouping to sort the results by. Valid values are:
    #   @return [String]
    #
    # @!attribute [rw] order_by
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/FindingStatisticsSortCriteria AWS API Documentation
    #
    class FindingStatisticsSortCriteria < Struct.new(
      :attribute_name,
      :order_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a findings filter.
    #
    # @!attribute [rw] action
    #   The action to perform on findings that match the filter criteria. To
    #   suppress (automatically archive) findings that match the criteria,
    #   set this value to ARCHIVE. Valid values are:
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that specifies the tags
    #   (keys and values) for an Amazon Macie resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/FindingsFilterListItem AWS API Documentation
    #
    class FindingsFilterListItem < Struct.new(
      :action,
      :arn,
      :id,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetAdministratorAccountRequest AWS API Documentation
    #
    class GetAdministratorAccountRequest < Aws::EmptyStructure; end

    # Provides information about the Amazon Macie administrator account for
    # an account. If the accounts are associated by a Macie membership
    # invitation, the response also provides information about that
    # invitation.
    #
    # @!attribute [rw] administrator
    #   Provides information about an Amazon Macie membership invitation.
    #   @return [Types::Invitation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetAdministratorAccountResponse AWS API Documentation
    #
    class GetAdministratorAccountResponse < Struct.new(
      :administrator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetAllowListRequest AWS API Documentation
    #
    class GetAllowListRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the settings and status of an allow list.
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   @return [Time]
    #
    # @!attribute [rw] criteria
    #   Specifies the criteria for an allow list. The criteria must specify
    #   a regular expression (regex) or an S3 object (s3WordsList). It
    #   can't specify both.
    #   @return [Types::AllowListCriteria]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Provides information about the current status of an allow list,
    #   which indicates whether Amazon Macie can access and use the list's
    #   criteria.
    #   @return [Types::AllowListStatus]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that specifies the tags
    #   (keys and values) for an Amazon Macie resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] updated_at
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetAllowListResponse AWS API Documentation
    #
    class GetAllowListResponse < Struct.new(
      :arn,
      :created_at,
      :criteria,
      :description,
      :id,
      :name,
      :status,
      :tags,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetAutomatedDiscoveryConfigurationRequest AWS API Documentation
    #
    class GetAutomatedDiscoveryConfigurationRequest < Aws::EmptyStructure; end

    # Provides information about the configuration settings for performing
    # automated sensitive data discovery for an Amazon Macie account, and
    # the status of the configuration for the account.
    #
    # @!attribute [rw] classification_scope_id
    #   The unique identifier the classification scope.
    #   @return [String]
    #
    # @!attribute [rw] disabled_at
    #   Specifies a date and time in UTC and extended ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] first_enabled_at
    #   Specifies a date and time in UTC and extended ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   Specifies a date and time in UTC and extended ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] sensitivity_inspection_template_id
    #   The unique identifier for the sensitivity inspection template.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the automated sensitive data discovery configuration
    #   for an Amazon Macie account. Valid values are:
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetAutomatedDiscoveryConfigurationResponse AWS API Documentation
    #
    class GetAutomatedDiscoveryConfigurationResponse < Struct.new(
      :classification_scope_id,
      :disabled_at,
      :first_enabled_at,
      :last_updated_at,
      :sensitivity_inspection_template_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the account that owns the S3 buckets to retrieve aggregated
    # statistical data for.
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetBucketStatisticsRequest AWS API Documentation
    #
    class GetBucketStatisticsRequest < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the results of a query that retrieved aggregated statistical
    # data for all the S3 buckets that Amazon Macie monitors and analyzes
    # for your account. By default, object count and storage size values
    # include data for object parts that are the result of incomplete
    # multipart uploads. For more information, see [How Macie monitors
    # Amazon S3 data security][1] in the *Amazon Macie User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/macie/latest/user/monitoring-s3-how-it-works.html
    #
    # @!attribute [rw] bucket_count
    #   @return [Integer]
    #
    # @!attribute [rw] bucket_count_by_effective_permission
    #   Provides information about the number of S3 buckets that are
    #   publicly accessible due to a combination of permissions settings for
    #   each bucket.
    #   @return [Types::BucketCountByEffectivePermission]
    #
    # @!attribute [rw] bucket_count_by_encryption_type
    #   Provides information about the number of S3 buckets whose settings
    #   do or don't specify default server-side encryption behavior for
    #   objects that are added to the buckets. For detailed information
    #   about these settings, see [Setting default server-side encryption
    #   behavior for Amazon S3 buckets][1] in the *Amazon Simple Storage
    #   Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucket-encryption.html
    #   @return [Types::BucketCountByEncryptionType]
    #
    # @!attribute [rw] bucket_count_by_object_encryption_requirement
    #   Provides information about the number of S3 buckets whose bucket
    #   policies do or don't require server-side encryption of objects when
    #   objects are added to the buckets.
    #   @return [Types::BucketCountPolicyAllowsUnencryptedObjectUploads]
    #
    # @!attribute [rw] bucket_count_by_shared_access_type
    #   Provides information about the number of S3 buckets that are or
    #   aren't shared with other Amazon Web Services accounts, Amazon
    #   CloudFront origin access identities (OAIs), or CloudFront origin
    #   access controls (OACs). In this data, an *Amazon Macie organization*
    #   is defined as a set of Macie accounts that are centrally managed as
    #   a group of related accounts through Organizations or by Macie
    #   invitation.
    #   @return [Types::BucketCountBySharedAccessType]
    #
    # @!attribute [rw] bucket_statistics_by_sensitivity
    #   Provides aggregated statistical data for sensitive data discovery
    #   metrics that apply to S3 buckets, grouped by bucket sensitivity
    #   score (sensitivityScore). If automated sensitive data discovery is
    #   currently disabled for your account, the value for each metric is 0.
    #   @return [Types::BucketStatisticsBySensitivity]
    #
    # @!attribute [rw] classifiable_object_count
    #   @return [Integer]
    #
    # @!attribute [rw] classifiable_size_in_bytes
    #   @return [Integer]
    #
    # @!attribute [rw] last_updated
    #   @return [Time]
    #
    # @!attribute [rw] object_count
    #   @return [Integer]
    #
    # @!attribute [rw] size_in_bytes
    #   @return [Integer]
    #
    # @!attribute [rw] size_in_bytes_compressed
    #   @return [Integer]
    #
    # @!attribute [rw] unclassifiable_object_count
    #   Provides information about the total storage size (in bytes) or
    #   number of objects that Amazon Macie can't analyze in one or more S3
    #   buckets. In a BucketMetadata or MatchingBucket object, this data is
    #   for a specific bucket. In a GetBucketStatisticsResponse object, this
    #   data is aggregated for all the buckets in the query results. If
    #   versioning is enabled for a bucket, storage size values are based on
    #   the size of the latest version of each applicable object in the
    #   bucket.
    #   @return [Types::ObjectLevelStatistics]
    #
    # @!attribute [rw] unclassifiable_object_size_in_bytes
    #   Provides information about the total storage size (in bytes) or
    #   number of objects that Amazon Macie can't analyze in one or more S3
    #   buckets. In a BucketMetadata or MatchingBucket object, this data is
    #   for a specific bucket. In a GetBucketStatisticsResponse object, this
    #   data is aggregated for all the buckets in the query results. If
    #   versioning is enabled for a bucket, storage size values are based on
    #   the size of the latest version of each applicable object in the
    #   bucket.
    #   @return [Types::ObjectLevelStatistics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetBucketStatisticsResponse AWS API Documentation
    #
    class GetBucketStatisticsResponse < Struct.new(
      :bucket_count,
      :bucket_count_by_effective_permission,
      :bucket_count_by_encryption_type,
      :bucket_count_by_object_encryption_requirement,
      :bucket_count_by_shared_access_type,
      :bucket_statistics_by_sensitivity,
      :classifiable_object_count,
      :classifiable_size_in_bytes,
      :last_updated,
      :object_count,
      :size_in_bytes,
      :size_in_bytes_compressed,
      :unclassifiable_object_count,
      :unclassifiable_object_size_in_bytes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetClassificationExportConfigurationRequest AWS API Documentation
    #
    class GetClassificationExportConfigurationRequest < Aws::EmptyStructure; end

    # Provides information about the current configuration settings for
    # storing data classification results.
    #
    # @!attribute [rw] configuration
    #   Specifies where to store data classification results, and the
    #   encryption settings to use when storing results in that location.
    #   The location must be an S3 bucket.
    #   @return [Types::ClassificationExportConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetClassificationExportConfigurationResponse AWS API Documentation
    #
    class GetClassificationExportConfigurationResponse < Struct.new(
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetClassificationScopeRequest AWS API Documentation
    #
    class GetClassificationScopeRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the classification scope settings for an
    # Amazon Macie account. Macie uses these settings when it performs
    # automated sensitive data discovery for the account.
    #
    # @!attribute [rw] id
    #   The unique identifier the classification scope.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the classification scope.
    #   @return [String]
    #
    # @!attribute [rw] s3
    #   Specifies the S3 buckets that are excluded from automated sensitive
    #   data discovery for an Amazon Macie account.
    #   @return [Types::S3ClassificationScope]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetClassificationScopeResponse AWS API Documentation
    #
    class GetClassificationScopeResponse < Struct.new(
      :id,
      :name,
      :s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetCustomDataIdentifierRequest AWS API Documentation
    #
    class GetCustomDataIdentifierRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the detection criteria and other settings
    # for a custom data identifier.
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   @return [Time]
    #
    # @!attribute [rw] deleted
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] ignore_words
    #   @return [Array<String>]
    #
    # @!attribute [rw] keywords
    #   @return [Array<String>]
    #
    # @!attribute [rw] maximum_match_distance
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] regex
    #   @return [String]
    #
    # @!attribute [rw] severity_levels
    #   The severity to assign to findings that the custom data identifier
    #   produces, based on the number of occurrences of text that matches
    #   the custom data identifier's detection criteria. You can specify as
    #   many as three SeverityLevel objects in this array, one for each
    #   severity: LOW, MEDIUM, or HIGH. If you specify more than one, the
    #   occurrences thresholds must be in ascending order by severity,
    #   moving from LOW to HIGH. For example, 1 for LOW, 50 for MEDIUM, and
    #   100 for HIGH. If an S3 object contains fewer occurrences than the
    #   lowest specified threshold, Amazon Macie doesn't create a finding.
    #
    #   If you don't specify any values for this array, Macie creates
    #   findings for S3 objects that contain at least one occurrence of text
    #   that matches the detection criteria, and Macie automatically assigns
    #   the MEDIUM severity to those findings.
    #   @return [Array<Types::SeverityLevel>]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that specifies the tags
    #   (keys and values) for an Amazon Macie resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetCustomDataIdentifierResponse AWS API Documentation
    #
    class GetCustomDataIdentifierResponse < Struct.new(
      :arn,
      :created_at,
      :deleted,
      :description,
      :id,
      :ignore_words,
      :keywords,
      :maximum_match_distance,
      :name,
      :regex,
      :severity_levels,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies criteria for filtering, grouping, sorting, and paginating
    # the results of a query that retrieves aggregated statistical data
    # about findings.
    #
    # @!attribute [rw] finding_criteria
    #   Specifies, as a map, one or more property-based conditions that
    #   filter the results of a query for findings.
    #   @return [Types::FindingCriteria]
    #
    # @!attribute [rw] group_by
    #   @return [String]
    #
    # @!attribute [rw] size
    #   @return [Integer]
    #
    # @!attribute [rw] sort_criteria
    #   Specifies criteria for sorting the results of a query that retrieves
    #   aggregated statistical data about findings.
    #   @return [Types::FindingStatisticsSortCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetFindingStatisticsRequest AWS API Documentation
    #
    class GetFindingStatisticsRequest < Struct.new(
      :finding_criteria,
      :group_by,
      :size,
      :sort_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the results of a query that retrieved aggregated statistical
    # data about findings.
    #
    # @!attribute [rw] counts_by_group
    #   @return [Array<Types::GroupCount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetFindingStatisticsResponse AWS API Documentation
    #
    class GetFindingStatisticsResponse < Struct.new(
      :counts_by_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetFindingsFilterRequest AWS API Documentation
    #
    class GetFindingsFilterRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the criteria and other settings for a
    # findings filter.
    #
    # @!attribute [rw] action
    #   The action to perform on findings that match the filter criteria. To
    #   suppress (automatically archive) findings that match the criteria,
    #   set this value to ARCHIVE. Valid values are:
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] finding_criteria
    #   Specifies, as a map, one or more property-based conditions that
    #   filter the results of a query for findings.
    #   @return [Types::FindingCriteria]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] position
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that specifies the tags
    #   (keys and values) for an Amazon Macie resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetFindingsFilterResponse AWS API Documentation
    #
    class GetFindingsFilterResponse < Struct.new(
      :action,
      :arn,
      :description,
      :finding_criteria,
      :id,
      :name,
      :position,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetFindingsPublicationConfigurationRequest AWS API Documentation
    #
    class GetFindingsPublicationConfigurationRequest < Aws::EmptyStructure; end

    # Provides information about the current configuration settings for
    # publishing findings to Security Hub automatically.
    #
    # @!attribute [rw] security_hub_configuration
    #   Specifies configuration settings that determine which findings are
    #   published to Security Hub automatically. For information about how
    #   Macie publishes findings to Security Hub, see [Amazon Macie
    #   integration with Security Hub][1] in the *Amazon Macie User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/macie/latest/user/securityhub-integration.html
    #   @return [Types::SecurityHubConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetFindingsPublicationConfigurationResponse AWS API Documentation
    #
    class GetFindingsPublicationConfigurationResponse < Struct.new(
      :security_hub_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies one or more findings to retrieve.
    #
    # @!attribute [rw] finding_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] sort_criteria
    #   Specifies criteria for sorting the results of a request for
    #   findings.
    #   @return [Types::SortCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetFindingsRequest AWS API Documentation
    #
    class GetFindingsRequest < Struct.new(
      :finding_ids,
      :sort_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the results of a request for one or more findings.
    #
    # @!attribute [rw] findings
    #   @return [Array<Types::Finding>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetFindingsResponse AWS API Documentation
    #
    class GetFindingsResponse < Struct.new(
      :findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetInvitationsCountRequest AWS API Documentation
    #
    class GetInvitationsCountRequest < Aws::EmptyStructure; end

    # Provides the count of all the Amazon Macie membership invitations that
    # were received by an account, not including the currently accepted
    # invitation.
    #
    # @!attribute [rw] invitations_count
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetInvitationsCountResponse AWS API Documentation
    #
    class GetInvitationsCountResponse < Struct.new(
      :invitations_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetMacieSessionRequest AWS API Documentation
    #
    class GetMacieSessionRequest < Aws::EmptyStructure; end

    # Provides information about the status and configuration settings for
    # an Amazon Macie account.
    #
    # @!attribute [rw] created_at
    #   @return [Time]
    #
    # @!attribute [rw] finding_publishing_frequency
    #   The frequency with which Amazon Macie publishes updates to policy
    #   findings for an account. This includes publishing updates to
    #   Security Hub and Amazon EventBridge (formerly Amazon CloudWatch
    #   Events). For more information, see [Monitoring and processing
    #   findings][1] in the *Amazon Macie User Guide*. Valid values are:
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/macie/latest/user/findings-monitor.html
    #   @return [String]
    #
    # @!attribute [rw] service_role
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of an Amazon Macie account. Valid values are:
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetMacieSessionResponse AWS API Documentation
    #
    class GetMacieSessionResponse < Struct.new(
      :created_at,
      :finding_publishing_frequency,
      :service_role,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetMasterAccountRequest AWS API Documentation
    #
    class GetMasterAccountRequest < Aws::EmptyStructure; end

    # (Deprecated) Provides information about the Amazon Macie administrator
    # account for an account. If the accounts are associated by a Macie
    # membership invitation, the response also provides information about
    # that invitation.
    #
    # @!attribute [rw] master
    #   Provides information about an Amazon Macie membership invitation.
    #   @return [Types::Invitation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetMasterAccountResponse AWS API Documentation
    #
    class GetMasterAccountResponse < Struct.new(
      :master)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetMemberRequest AWS API Documentation
    #
    class GetMemberRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an account that's associated with an
    # Amazon Macie administrator account.
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] administrator_account_id
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] email
    #   @return [String]
    #
    # @!attribute [rw] invited_at
    #   @return [Time]
    #
    # @!attribute [rw] master_account_id
    #   @return [String]
    #
    # @!attribute [rw] relationship_status
    #   The current status of the relationship between an account and an
    #   associated Amazon Macie administrator account. Possible values are:
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that specifies the tags
    #   (keys and values) for an Amazon Macie resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] updated_at
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetMemberResponse AWS API Documentation
    #
    class GetMemberResponse < Struct.new(
      :account_id,
      :administrator_account_id,
      :arn,
      :email,
      :invited_at,
      :master_account_id,
      :relationship_status,
      :tags,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetResourceProfileRequest AWS API Documentation
    #
    class GetResourceProfileRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the results of a query that retrieved sensitive data
    # discovery statistics and the sensitivity score for an S3 bucket that
    # Amazon Macie monitors and analyzes for your account. This data is
    # available only if automated sensitive data discovery is currently
    # enabled for your account.
    #
    # @!attribute [rw] profile_updated_at
    #   @return [Time]
    #
    # @!attribute [rw] sensitivity_score
    #   @return [Integer]
    #
    # @!attribute [rw] sensitivity_score_overridden
    #   @return [Boolean]
    #
    # @!attribute [rw] statistics
    #   Provides statistical data for sensitive data discovery metrics that
    #   apply to an S3 bucket that Amazon Macie monitors and analyzes for
    #   your account. The statistics capture the results of automated
    #   sensitive data discovery activities that Macie has performed for the
    #   bucket. The data is available only if automated sensitive data
    #   discovery is currently enabled for your account.
    #   @return [Types::ResourceStatistics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetResourceProfileResponse AWS API Documentation
    #
    class GetResourceProfileResponse < Struct.new(
      :profile_updated_at,
      :sensitivity_score,
      :sensitivity_score_overridden,
      :statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetRevealConfigurationRequest AWS API Documentation
    #
    class GetRevealConfigurationRequest < Aws::EmptyStructure; end

    # Provides information about the configuration settings for retrieving
    # occurrences of sensitive data reported by findings, and the status of
    # the configuration for an Amazon Macie account.
    #
    # @!attribute [rw] configuration
    #   Specifies the configuration settings for retrieving occurrences of
    #   sensitive data reported by findings, and the status of the
    #   configuration for an Amazon Macie account. When you enable the
    #   configuration for the first time, your request must specify an Key
    #   Management Service (KMS) key. Otherwise, an error occurs. Macie uses
    #   the specified key to encrypt the sensitive data that you retrieve.
    #   @return [Types::RevealConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetRevealConfigurationResponse AWS API Documentation
    #
    class GetRevealConfigurationResponse < Struct.new(
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] finding_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetSensitiveDataOccurrencesAvailabilityRequest AWS API Documentation
    #
    class GetSensitiveDataOccurrencesAvailabilityRequest < Struct.new(
      :finding_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about whether occurrences of sensitive data can
    # be retrieved for a finding and, if not, why the data can't be
    # retrieved.
    #
    # @!attribute [rw] code
    #   Specifies whether occurrences of sensitive data can be retrieved for
    #   a finding. Possible values are:
    #   @return [String]
    #
    # @!attribute [rw] reasons
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetSensitiveDataOccurrencesAvailabilityResponse AWS API Documentation
    #
    class GetSensitiveDataOccurrencesAvailabilityResponse < Struct.new(
      :code,
      :reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] finding_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetSensitiveDataOccurrencesRequest AWS API Documentation
    #
    class GetSensitiveDataOccurrencesRequest < Struct.new(
      :finding_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the results of a request to retrieve occurrences of sensitive
    # data reported by a finding.
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] sensitive_data_occurrences
    #   Specifies a type of sensitive data reported by a finding and
    #   provides occurrences of the specified type of sensitive data.
    #   @return [Hash<String,Array<Types::DetectedDataDetails>>]
    #
    # @!attribute [rw] status
    #   The status of a request to retrieve occurrences of sensitive data
    #   reported by a finding. Possible values are:
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetSensitiveDataOccurrencesResponse AWS API Documentation
    #
    class GetSensitiveDataOccurrencesResponse < Struct.new(
      :error,
      :sensitive_data_occurrences,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetSensitivityInspectionTemplateRequest AWS API Documentation
    #
    class GetSensitivityInspectionTemplateRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the settings for the sensitivity inspection
    # template for an Amazon Macie account. Macie uses the template's
    # settings when it performs automated sensitive data discovery for the
    # account.
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] excludes
    #   Specifies managed data identifiers to exclude (not use) when
    #   performing automated sensitive data discovery for an Amazon Macie
    #   account. For information about the managed data identifiers that
    #   Amazon Macie currently provides, see [Using managed data
    #   identifiers][1] in the *Amazon Macie User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/macie/latest/user/managed-data-identifiers.html
    #   @return [Types::SensitivityInspectionTemplateExcludes]
    #
    # @!attribute [rw] includes
    #   Specifies the allow lists, custom data identifiers, and managed data
    #   identifiers to include (use) when performing automated sensitive
    #   data discovery for an Amazon Macie account. The configuration must
    #   specify at least one custom data identifier or managed data
    #   identifier. For information about the managed data identifiers that
    #   Amazon Macie currently provides, see [Using managed data
    #   identifiers][1] in the *Amazon Macie User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/macie/latest/user/managed-data-identifiers.html
    #   @return [Types::SensitivityInspectionTemplateIncludes]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] sensitivity_inspection_template_id
    #   The unique identifier for the sensitivity inspection template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetSensitivityInspectionTemplateResponse AWS API Documentation
    #
    class GetSensitivityInspectionTemplateResponse < Struct.new(
      :description,
      :excludes,
      :includes,
      :name,
      :sensitivity_inspection_template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies criteria for filtering, sorting, and paginating the results
    # of a query for quotas and aggregated usage data for one or more Amazon
    # Macie accounts.
    #
    # @!attribute [rw] filter_by
    #   @return [Array<Types::UsageStatisticsFilter>]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Specifies criteria for sorting the results of a query for Amazon
    #   Macie account quotas and usage data.
    #   @return [Types::UsageStatisticsSortBy]
    #
    # @!attribute [rw] time_range
    #   An inclusive time period that Amazon Macie usage data applies to.
    #   Possible values are:
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetUsageStatisticsRequest AWS API Documentation
    #
    class GetUsageStatisticsRequest < Struct.new(
      :filter_by,
      :max_results,
      :next_token,
      :sort_by,
      :time_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the results of a query that retrieved quotas and aggregated
    # usage data for one or more Amazon Macie accounts.
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] records
    #   @return [Array<Types::UsageRecord>]
    #
    # @!attribute [rw] time_range
    #   An inclusive time period that Amazon Macie usage data applies to.
    #   Possible values are:
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetUsageStatisticsResponse AWS API Documentation
    #
    class GetUsageStatisticsResponse < Struct.new(
      :next_token,
      :records,
      :time_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] time_range
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetUsageTotalsRequest AWS API Documentation
    #
    class GetUsageTotalsRequest < Struct.new(
      :time_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the results of a query that retrieved aggregated usage data
    # for an Amazon Macie account.
    #
    # @!attribute [rw] time_range
    #   An inclusive time period that Amazon Macie usage data applies to.
    #   Possible values are:
    #   @return [String]
    #
    # @!attribute [rw] usage_totals
    #   @return [Array<Types::UsageTotal>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GetUsageTotalsResponse AWS API Documentation
    #
    class GetUsageTotalsResponse < Struct.new(
      :time_range,
      :usage_totals)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a group of results for a query that retrieved aggregated
    # statistical data about findings.
    #
    # @!attribute [rw] count
    #   @return [Integer]
    #
    # @!attribute [rw] group_key
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/GroupCount AWS API Documentation
    #
    class GroupCount < Struct.new(
      :count,
      :group_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an Identity and Access Management (IAM)
    # user who performed an action on an affected resource.
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/IamUser AWS API Documentation
    #
    class IamUser < Struct.new(
      :account_id,
      :arn,
      :principal_id,
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an error that occurred due to an unknown
    # internal server error, exception, or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an Amazon Macie membership invitation.
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] invitation_id
    #   @return [String]
    #
    # @!attribute [rw] invited_at
    #   @return [Time]
    #
    # @!attribute [rw] relationship_status
    #   The current status of the relationship between an account and an
    #   associated Amazon Macie administrator account. Possible values are:
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/Invitation AWS API Documentation
    #
    class Invitation < Struct.new(
      :account_id,
      :invitation_id,
      :invited_at,
      :relationship_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the IP address of the device that an entity
    # used to perform an action on an affected resource.
    #
    # @!attribute [rw] ip_address_v4
    #   @return [String]
    #
    # @!attribute [rw] ip_city
    #   Provides information about the city that an IP address originated
    #   from.
    #   @return [Types::IpCity]
    #
    # @!attribute [rw] ip_country
    #   Provides information about the country that an IP address originated
    #   from.
    #   @return [Types::IpCountry]
    #
    # @!attribute [rw] ip_geo_location
    #   Provides geographic coordinates that indicate where a specified IP
    #   address originated from.
    #   @return [Types::IpGeoLocation]
    #
    # @!attribute [rw] ip_owner
    #   Provides information about the registered owner of an IP address.
    #   @return [Types::IpOwner]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/IpAddressDetails AWS API Documentation
    #
    class IpAddressDetails < Struct.new(
      :ip_address_v4,
      :ip_city,
      :ip_country,
      :ip_geo_location,
      :ip_owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the city that an IP address originated
    # from.
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/IpCity AWS API Documentation
    #
    class IpCity < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the country that an IP address originated
    # from.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/IpCountry AWS API Documentation
    #
    class IpCountry < Struct.new(
      :code,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides geographic coordinates that indicate where a specified IP
    # address originated from.
    #
    # @!attribute [rw] lat
    #   @return [Float]
    #
    # @!attribute [rw] lon
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/IpGeoLocation AWS API Documentation
    #
    class IpGeoLocation < Struct.new(
      :lat,
      :lon)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the registered owner of an IP address.
    #
    # @!attribute [rw] asn
    #   @return [String]
    #
    # @!attribute [rw] asn_org
    #   @return [String]
    #
    # @!attribute [rw] isp
    #   @return [String]
    #
    # @!attribute [rw] org
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/IpOwner AWS API Documentation
    #
    class IpOwner < Struct.new(
      :asn,
      :asn_org,
      :isp,
      :org)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies whether any one-time or recurring classification jobs are
    # configured to analyze data in an S3 bucket, and, if so, the details of
    # the job that ran most recently.
    #
    # @!attribute [rw] is_defined_in_job
    #   @return [String]
    #
    # @!attribute [rw] is_monitored_by_job
    #   @return [String]
    #
    # @!attribute [rw] last_job_id
    #   @return [String]
    #
    # @!attribute [rw] last_job_run_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/JobDetails AWS API Documentation
    #
    class JobDetails < Struct.new(
      :is_defined_in_job,
      :is_monitored_by_job,
      :last_job_id,
      :last_job_run_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the recurrence pattern for running a classification job.
    #
    # @!attribute [rw] daily_schedule
    #   Specifies that a classification job runs once a day, every day. This
    #   is an empty object.
    #   @return [Types::DailySchedule]
    #
    # @!attribute [rw] monthly_schedule
    #   Specifies a monthly recurrence pattern for running a classification
    #   job.
    #   @return [Types::MonthlySchedule]
    #
    # @!attribute [rw] weekly_schedule
    #   Specifies a weekly recurrence pattern for running a classification
    #   job.
    #   @return [Types::WeeklySchedule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/JobScheduleFrequency AWS API Documentation
    #
    class JobScheduleFrequency < Struct.new(
      :daily_schedule,
      :monthly_schedule,
      :weekly_schedule)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a property- or tag-based condition that defines criteria for
    # including or excluding S3 objects from a classification job. A
    # JobScopeTerm object can contain only one simpleScopeTerm object or one
    # tagScopeTerm object.
    #
    # @!attribute [rw] simple_scope_term
    #   Specifies a property-based condition that determines whether an S3
    #   object is included or excluded from a classification job.
    #   @return [Types::SimpleScopeTerm]
    #
    # @!attribute [rw] tag_scope_term
    #   Specifies a tag-based condition that determines whether an S3 object
    #   is included or excluded from a classification job.
    #   @return [Types::TagScopeTerm]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/JobScopeTerm AWS API Documentation
    #
    class JobScopeTerm < Struct.new(
      :simple_scope_term,
      :tag_scope_term)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies one or more property- and tag-based conditions that define
    # criteria for including or excluding S3 objects from a classification
    # job.
    #
    # @!attribute [rw] and
    #   @return [Array<Types::JobScopeTerm>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/JobScopingBlock AWS API Documentation
    #
    class JobScopingBlock < Struct.new(
      :and)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a classification job, including the current
    # status of the job.
    #
    # @!attribute [rw] bucket_criteria
    #   Specifies property- and tag-based conditions that define criteria
    #   for including or excluding S3 buckets from a classification job.
    #   Exclude conditions take precedence over include conditions.
    #   @return [Types::S3BucketCriteriaForJob]
    #
    # @!attribute [rw] bucket_definitions
    #   @return [Array<Types::S3BucketDefinitionForJob>]
    #
    # @!attribute [rw] created_at
    #   @return [Time]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of a classification job. Possible values are:
    #   @return [String]
    #
    # @!attribute [rw] job_type
    #   The schedule for running a classification job. Valid values are:
    #   @return [String]
    #
    # @!attribute [rw] last_run_error_status
    #   Specifies whether any account- or bucket-level access errors
    #   occurred when a classification job ran. For information about using
    #   logging data to investigate these errors, see [Monitoring sensitive
    #   data discovery jobs][1] in the *Amazon Macie User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/macie/latest/user/discovery-jobs-monitor-cw-logs.html
    #   @return [Types::LastRunErrorStatus]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] user_paused_details
    #   Provides information about when a classification job was paused. For
    #   a one-time job, this object also specifies when the job will expire
    #   and be cancelled if it isn't resumed. For a recurring job, this
    #   object also specifies when the paused job run will expire and be
    #   cancelled if it isn't resumed. This object is present only if a
    #   job's current status (jobStatus) is USER\_PAUSED. The information
    #   in this object applies only to a job that was paused while it had a
    #   status of RUNNING.
    #   @return [Types::UserPausedDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/JobSummary AWS API Documentation
    #
    class JobSummary < Struct.new(
      :bucket_criteria,
      :bucket_definitions,
      :created_at,
      :job_id,
      :job_status,
      :job_type,
      :last_run_error_status,
      :name,
      :user_paused_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the tags that are associated with an S3
    # bucket or object. Each tag consists of a required tag key and an
    # associated tag value.
    #
    # @!attribute [rw] key
    #   @return [String]
    #
    # @!attribute [rw] value
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/KeyValuePair AWS API Documentation
    #
    class KeyValuePair < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies whether any account- or bucket-level access errors occurred
    # when a classification job ran. For information about using logging
    # data to investigate these errors, see [Monitoring sensitive data
    # discovery jobs][1] in the *Amazon Macie User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/macie/latest/user/discovery-jobs-monitor-cw-logs.html
    #
    # @!attribute [rw] code
    #   Specifies whether any account- or bucket-level access errors
    #   occurred during the run of a one-time classification job or the most
    #   recent run of a recurring classification job. Possible values are:
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/LastRunErrorStatus AWS API Documentation
    #
    class LastRunErrorStatus < Struct.new(
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListAllowListsRequest AWS API Documentation
    #
    class ListAllowListsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the results of a request for information about allow lists.
    #
    # @!attribute [rw] allow_lists
    #   @return [Array<Types::AllowListSummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListAllowListsResponse AWS API Documentation
    #
    class ListAllowListsResponse < Struct.new(
      :allow_lists,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies criteria for filtering, sorting, and paginating the results
    # of a request for information about classification jobs.
    #
    # @!attribute [rw] filter_criteria
    #   Specifies criteria for filtering the results of a request for
    #   information about classification jobs.
    #   @return [Types::ListJobsFilterCriteria]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] sort_criteria
    #   Specifies criteria for sorting the results of a request for
    #   information about classification jobs.
    #   @return [Types::ListJobsSortCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListClassificationJobsRequest AWS API Documentation
    #
    class ListClassificationJobsRequest < Struct.new(
      :filter_criteria,
      :max_results,
      :next_token,
      :sort_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the results of a request for information about one or more
    # classification jobs.
    #
    # @!attribute [rw] items
    #   @return [Array<Types::JobSummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListClassificationJobsResponse AWS API Documentation
    #
    class ListClassificationJobsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListClassificationScopesRequest AWS API Documentation
    #
    class ListClassificationScopesRequest < Struct.new(
      :name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the results of a request for information about the
    # classification scope for an Amazon Macie account. Macie uses the
    # scope's settings when it performs automated sensitive data discovery
    # for the account.
    #
    # @!attribute [rw] classification_scopes
    #   @return [Array<Types::ClassificationScopeSummary>]
    #
    # @!attribute [rw] next_token
    #   Specifies which page of results to return in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListClassificationScopesResponse AWS API Documentation
    #
    class ListClassificationScopesResponse < Struct.new(
      :classification_scopes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies criteria for paginating the results of a request for
    # information about custom data identifiers.
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListCustomDataIdentifiersRequest AWS API Documentation
    #
    class ListCustomDataIdentifiersRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the results of a request for information about custom data
    # identifiers.
    #
    # @!attribute [rw] items
    #   @return [Array<Types::CustomDataIdentifierSummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListCustomDataIdentifiersResponse AWS API Documentation
    #
    class ListCustomDataIdentifiersResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListFindingsFiltersRequest AWS API Documentation
    #
    class ListFindingsFiltersRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about all the findings filters for an account.
    #
    # @!attribute [rw] findings_filter_list_items
    #   @return [Array<Types::FindingsFilterListItem>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListFindingsFiltersResponse AWS API Documentation
    #
    class ListFindingsFiltersResponse < Struct.new(
      :findings_filter_list_items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies criteria for filtering, sorting, and paginating the results
    # of a request for information about findings.
    #
    # @!attribute [rw] finding_criteria
    #   Specifies, as a map, one or more property-based conditions that
    #   filter the results of a query for findings.
    #   @return [Types::FindingCriteria]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] sort_criteria
    #   Specifies criteria for sorting the results of a request for
    #   findings.
    #   @return [Types::SortCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListFindingsRequest AWS API Documentation
    #
    class ListFindingsRequest < Struct.new(
      :finding_criteria,
      :max_results,
      :next_token,
      :sort_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the results of a request for information about one or more
    # findings.
    #
    # @!attribute [rw] finding_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListFindingsResponse AWS API Documentation
    #
    class ListFindingsResponse < Struct.new(
      :finding_ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListInvitationsRequest AWS API Documentation
    #
    class ListInvitationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the Amazon Macie membership invitations
    # that were received by an account.
    #
    # @!attribute [rw] invitations
    #   @return [Array<Types::Invitation>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListInvitationsResponse AWS API Documentation
    #
    class ListInvitationsResponse < Struct.new(
      :invitations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies criteria for filtering the results of a request for
    # information about classification jobs.
    #
    # @!attribute [rw] excludes
    #   @return [Array<Types::ListJobsFilterTerm>]
    #
    # @!attribute [rw] includes
    #   @return [Array<Types::ListJobsFilterTerm>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListJobsFilterCriteria AWS API Documentation
    #
    class ListJobsFilterCriteria < Struct.new(
      :excludes,
      :includes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a condition that filters the results of a request for
    # information about classification jobs. Each condition consists of a
    # property, an operator, and one or more values.
    #
    # @!attribute [rw] comparator
    #   The operator to use in a condition. Depending on the type of
    #   condition, possible values are:
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The property to use to filter the results. Valid values are:
    #   @return [String]
    #
    # @!attribute [rw] values
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListJobsFilterTerm AWS API Documentation
    #
    class ListJobsFilterTerm < Struct.new(
      :comparator,
      :key,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies criteria for sorting the results of a request for
    # information about classification jobs.
    #
    # @!attribute [rw] attribute_name
    #   The property to sort the results by. Valid values are:
    #   @return [String]
    #
    # @!attribute [rw] order_by
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListJobsSortCriteria AWS API Documentation
    #
    class ListJobsSortCriteria < Struct.new(
      :attribute_name,
      :order_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies criteria for paginating the results of a request for
    # information about managed data identifiers.
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListManagedDataIdentifiersRequest AWS API Documentation
    #
    class ListManagedDataIdentifiersRequest < Struct.new(
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the managed data identifiers that Amazon
    # Macie currently provides.
    #
    # @!attribute [rw] items
    #   @return [Array<Types::ManagedDataIdentifierSummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListManagedDataIdentifiersResponse AWS API Documentation
    #
    class ListManagedDataIdentifiersResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] only_associated
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListMembersRequest AWS API Documentation
    #
    class ListMembersRequest < Struct.new(
      :max_results,
      :next_token,
      :only_associated)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the accounts that are associated with an
    # Amazon Macie administrator account.
    #
    # @!attribute [rw] members
    #   @return [Array<Types::Member>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListMembersResponse AWS API Documentation
    #
    class ListMembersResponse < Struct.new(
      :members,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListOrganizationAdminAccountsRequest AWS API Documentation
    #
    class ListOrganizationAdminAccountsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the delegated Amazon Macie administrator
    # accounts for an organization in Organizations.
    #
    # @!attribute [rw] admin_accounts
    #   @return [Array<Types::AdminAccount>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListOrganizationAdminAccountsResponse AWS API Documentation
    #
    class ListOrganizationAdminAccountsResponse < Struct.new(
      :admin_accounts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListResourceProfileArtifactsRequest AWS API Documentation
    #
    class ListResourceProfileArtifactsRequest < Struct.new(
      :next_token,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the results of a request for information about the S3 objects
    # that Amazon Macie selected for analysis while performing automated
    # sensitive data discovery for an S3 bucket. This information is
    # available only if automated sensitive data discovery is currently
    # enabled for your account.
    #
    # @!attribute [rw] artifacts
    #   @return [Array<Types::ResourceProfileArtifact>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListResourceProfileArtifactsResponse AWS API Documentation
    #
    class ListResourceProfileArtifactsResponse < Struct.new(
      :artifacts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListResourceProfileDetectionsRequest AWS API Documentation
    #
    class ListResourceProfileDetectionsRequest < Struct.new(
      :max_results,
      :next_token,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the results of a request for information about the types and
    # amount of sensitive data that Amazon Macie found in an S3 bucket while
    # performing automated sensitive data discovery for the bucket. This
    # information is available only if automated sensitive data discovery is
    # currently enabled for your account.
    #
    # @!attribute [rw] detections
    #   @return [Array<Types::Detection>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListResourceProfileDetectionsResponse AWS API Documentation
    #
    class ListResourceProfileDetectionsResponse < Struct.new(
      :detections,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListSensitivityInspectionTemplatesRequest AWS API Documentation
    #
    class ListSensitivityInspectionTemplatesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the results of a request for information about the
    # sensitivity inspection template for an Amazon Macie account. Macie
    # uses the template's settings when it performs automated sensitive
    # data discovery for the account.
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] sensitivity_inspection_templates
    #   @return [Array<Types::SensitivityInspectionTemplatesEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListSensitivityInspectionTemplatesResponse AWS API Documentation
    #
    class ListSensitivityInspectionTemplatesResponse < Struct.new(
      :next_token,
      :sensitivity_inspection_templates)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the tags (keys and values) that are
    # associated with an Amazon Macie resource.
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that specifies the tags
    #   (keys and values) for an Amazon Macie resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a managed data identifier. For additional
    # information, see [Using managed data identifiers][1] in the *Amazon
    # Macie User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/macie/latest/user/managed-data-identifiers.html
    #
    # @!attribute [rw] category
    #   For a finding, the category of sensitive data that was detected and
    #   produced the finding. For a managed data identifier, the category of
    #   sensitive data that the managed data identifier detects. Possible
    #   values are:
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ManagedDataIdentifierSummary AWS API Documentation
    #
    class ManagedDataIdentifierSummary < Struct.new(
      :category,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides statistical data and other information about an S3 bucket
    # that Amazon Macie monitors and analyzes for your account. By default,
    # object count and storage size values include data for object parts
    # that are the result of incomplete multipart uploads. For more
    # information, see [How Macie monitors Amazon S3 data security][1] in
    # the *Amazon Macie User Guide*.
    #
    # If an error occurs when Macie attempts to retrieve and process
    # information about the bucket or the bucket's objects, the value for
    # most of these properties is null. Key exceptions are accountId and
    # bucketName. To identify the cause of the error, refer to the errorCode
    # and errorMessage values.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/macie/latest/user/monitoring-s3-how-it-works.html
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] bucket_name
    #   @return [String]
    #
    # @!attribute [rw] classifiable_object_count
    #   @return [Integer]
    #
    # @!attribute [rw] classifiable_size_in_bytes
    #   @return [Integer]
    #
    # @!attribute [rw] error_code
    #   The error code for an error that prevented Amazon Macie from
    #   retrieving and processing metadata from Amazon S3 for an S3 bucket
    #   and the bucket's objects.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   @return [String]
    #
    # @!attribute [rw] job_details
    #   Specifies whether any one-time or recurring classification jobs are
    #   configured to analyze data in an S3 bucket, and, if so, the details
    #   of the job that ran most recently.
    #   @return [Types::JobDetails]
    #
    # @!attribute [rw] last_automated_discovery_time
    #   @return [Time]
    #
    # @!attribute [rw] object_count
    #   @return [Integer]
    #
    # @!attribute [rw] object_count_by_encryption_type
    #   Provides information about the number of objects that are in an S3
    #   bucket and use certain types of server-side encryption, use
    #   client-side encryption, or aren't encrypted.
    #   @return [Types::ObjectCountByEncryptionType]
    #
    # @!attribute [rw] sensitivity_score
    #   @return [Integer]
    #
    # @!attribute [rw] size_in_bytes
    #   @return [Integer]
    #
    # @!attribute [rw] size_in_bytes_compressed
    #   @return [Integer]
    #
    # @!attribute [rw] unclassifiable_object_count
    #   Provides information about the total storage size (in bytes) or
    #   number of objects that Amazon Macie can't analyze in one or more S3
    #   buckets. In a BucketMetadata or MatchingBucket object, this data is
    #   for a specific bucket. In a GetBucketStatisticsResponse object, this
    #   data is aggregated for all the buckets in the query results. If
    #   versioning is enabled for a bucket, storage size values are based on
    #   the size of the latest version of each applicable object in the
    #   bucket.
    #   @return [Types::ObjectLevelStatistics]
    #
    # @!attribute [rw] unclassifiable_object_size_in_bytes
    #   Provides information about the total storage size (in bytes) or
    #   number of objects that Amazon Macie can't analyze in one or more S3
    #   buckets. In a BucketMetadata or MatchingBucket object, this data is
    #   for a specific bucket. In a GetBucketStatisticsResponse object, this
    #   data is aggregated for all the buckets in the query results. If
    #   versioning is enabled for a bucket, storage size values are based on
    #   the size of the latest version of each applicable object in the
    #   bucket.
    #   @return [Types::ObjectLevelStatistics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/MatchingBucket AWS API Documentation
    #
    class MatchingBucket < Struct.new(
      :account_id,
      :bucket_name,
      :classifiable_object_count,
      :classifiable_size_in_bytes,
      :error_code,
      :error_message,
      :job_details,
      :last_automated_discovery_time,
      :object_count,
      :object_count_by_encryption_type,
      :sensitivity_score,
      :size_in_bytes,
      :size_in_bytes_compressed,
      :unclassifiable_object_count,
      :unclassifiable_object_size_in_bytes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides statistical data and other information about an Amazon Web
    # Services resource that Amazon Macie monitors and analyzes for your
    # account.
    #
    # @!attribute [rw] matching_bucket
    #   Provides statistical data and other information about an S3 bucket
    #   that Amazon Macie monitors and analyzes for your account. By
    #   default, object count and storage size values include data for
    #   object parts that are the result of incomplete multipart uploads.
    #   For more information, see [How Macie monitors Amazon S3 data
    #   security][1] in the *Amazon Macie User Guide*.
    #
    #   If an error occurs when Macie attempts to retrieve and process
    #   information about the bucket or the bucket's objects, the value for
    #   most of these properties is null. Key exceptions are accountId and
    #   bucketName. To identify the cause of the error, refer to the
    #   errorCode and errorMessage values.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/macie/latest/user/monitoring-s3-how-it-works.html
    #   @return [Types::MatchingBucket]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/MatchingResource AWS API Documentation
    #
    class MatchingResource < Struct.new(
      :matching_bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an account that's associated with an
    # Amazon Macie administrator account.
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] administrator_account_id
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] email
    #   @return [String]
    #
    # @!attribute [rw] invited_at
    #   @return [Time]
    #
    # @!attribute [rw] master_account_id
    #   @return [String]
    #
    # @!attribute [rw] relationship_status
    #   The current status of the relationship between an account and an
    #   associated Amazon Macie administrator account. Possible values are:
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that specifies the tags
    #   (keys and values) for an Amazon Macie resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] updated_at
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/Member AWS API Documentation
    #
    class Member < Struct.new(
      :account_id,
      :administrator_account_id,
      :arn,
      :email,
      :invited_at,
      :master_account_id,
      :relationship_status,
      :tags,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a monthly recurrence pattern for running a classification
    # job.
    #
    # @!attribute [rw] day_of_month
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/MonthlySchedule AWS API Documentation
    #
    class MonthlySchedule < Struct.new(
      :day_of_month)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the number of objects that are in an S3
    # bucket and use certain types of server-side encryption, use
    # client-side encryption, or aren't encrypted.
    #
    # @!attribute [rw] customer_managed
    #   @return [Integer]
    #
    # @!attribute [rw] kms_managed
    #   @return [Integer]
    #
    # @!attribute [rw] s3_managed
    #   @return [Integer]
    #
    # @!attribute [rw] unencrypted
    #   @return [Integer]
    #
    # @!attribute [rw] unknown
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ObjectCountByEncryptionType AWS API Documentation
    #
    class ObjectCountByEncryptionType < Struct.new(
      :customer_managed,
      :kms_managed,
      :s3_managed,
      :unencrypted,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the total storage size (in bytes) or number
    # of objects that Amazon Macie can't analyze in one or more S3 buckets.
    # In a BucketMetadata or MatchingBucket object, this data is for a
    # specific bucket. In a GetBucketStatisticsResponse object, this data is
    # aggregated for all the buckets in the query results. If versioning is
    # enabled for a bucket, storage size values are based on the size of the
    # latest version of each applicable object in the bucket.
    #
    # @!attribute [rw] file_type
    #   @return [Integer]
    #
    # @!attribute [rw] storage_class
    #   @return [Integer]
    #
    # @!attribute [rw] total
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ObjectLevelStatistics AWS API Documentation
    #
    class ObjectLevelStatistics < Struct.new(
      :file_type,
      :storage_class,
      :total)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the location of 1-15 occurrences of sensitive data that was
    # detected by a managed data identifier or a custom data identifier and
    # produced a sensitive data finding.
    #
    # @!attribute [rw] cells
    #   Specifies the location of occurrences of sensitive data in a
    #   Microsoft Excel workbook, CSV file, or TSV file.
    #   @return [Array<Types::Cell>]
    #
    # @!attribute [rw] line_ranges
    #   Specifies the locations of occurrences of sensitive data in a
    #   non-binary text file.
    #   @return [Array<Types::Range>]
    #
    # @!attribute [rw] offset_ranges
    #   Specifies the locations of occurrences of sensitive data in a
    #   non-binary text file.
    #   @return [Array<Types::Range>]
    #
    # @!attribute [rw] pages
    #   Specifies the location of occurrences of sensitive data in an Adobe
    #   Portable Document Format file.
    #   @return [Array<Types::Page>]
    #
    # @!attribute [rw] records
    #   Specifies the locations of occurrences of sensitive data in an
    #   Apache Avro object container or a structured data file.
    #   @return [Array<Types::Record>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/Occurrences AWS API Documentation
    #
    class Occurrences < Struct.new(
      :cells,
      :line_ranges,
      :offset_ranges,
      :pages,
      :records)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the location of an occurrence of sensitive data in an Adobe
    # Portable Document Format file.
    #
    # @!attribute [rw] line_range
    #   Specifies the location of an occurrence of sensitive data in an
    #   email message or a non-binary text file such as an HTML, TXT, or XML
    #   file.
    #   @return [Types::Range]
    #
    # @!attribute [rw] offset_range
    #   Specifies the location of an occurrence of sensitive data in an
    #   email message or a non-binary text file such as an HTML, TXT, or XML
    #   file.
    #   @return [Types::Range]
    #
    # @!attribute [rw] page_number
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/Page AWS API Documentation
    #
    class Page < Struct.new(
      :line_range,
      :offset_range,
      :page_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the details of a policy finding.
    #
    # @!attribute [rw] action
    #   Provides information about an action that occurred for a resource
    #   and produced a policy finding.
    #   @return [Types::FindingAction]
    #
    # @!attribute [rw] actor
    #   Provides information about an entity that performed an action that
    #   produced a policy finding for a resource.
    #   @return [Types::FindingActor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/PolicyDetails AWS API Documentation
    #
    class PolicyDetails < Struct.new(
      :action,
      :actor)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies where to store data classification results, and the
    # encryption settings to use when storing results in that location.
    #
    # @!attribute [rw] configuration
    #   Specifies where to store data classification results, and the
    #   encryption settings to use when storing results in that location.
    #   The location must be an S3 bucket.
    #   @return [Types::ClassificationExportConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/PutClassificationExportConfigurationRequest AWS API Documentation
    #
    class PutClassificationExportConfigurationRequest < Struct.new(
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about updated settings for storing data
    # classification results.
    #
    # @!attribute [rw] configuration
    #   Specifies where to store data classification results, and the
    #   encryption settings to use when storing results in that location.
    #   The location must be an S3 bucket.
    #   @return [Types::ClassificationExportConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/PutClassificationExportConfigurationResponse AWS API Documentation
    #
    class PutClassificationExportConfigurationResponse < Struct.new(
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies configuration settings for publishing findings to Security
    # Hub automatically.
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] security_hub_configuration
    #   Specifies configuration settings that determine which findings are
    #   published to Security Hub automatically. For information about how
    #   Macie publishes findings to Security Hub, see [Amazon Macie
    #   integration with Security Hub][1] in the *Amazon Macie User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/macie/latest/user/securityhub-integration.html
    #   @return [Types::SecurityHubConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/PutFindingsPublicationConfigurationRequest AWS API Documentation
    #
    class PutFindingsPublicationConfigurationRequest < Struct.new(
      :client_token,
      :security_hub_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/PutFindingsPublicationConfigurationResponse AWS API Documentation
    #
    class PutFindingsPublicationConfigurationResponse < Aws::EmptyStructure; end

    # Specifies the location of an occurrence of sensitive data in an email
    # message or a non-binary text file such as an HTML, TXT, or XML file.
    #
    # @!attribute [rw] end
    #   @return [Integer]
    #
    # @!attribute [rw] start
    #   @return [Integer]
    #
    # @!attribute [rw] start_column
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/Range AWS API Documentation
    #
    class Range < Struct.new(
      :end,
      :start,
      :start_column)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the location of an occurrence of sensitive data in an Apache
    # Avro object container, Apache Parquet file, JSON file, or JSON Lines
    # file.
    #
    # @!attribute [rw] json_path
    #   @return [String]
    #
    # @!attribute [rw] record_index
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/Record AWS API Documentation
    #
    class Record < Struct.new(
      :json_path,
      :record_index)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about settings that define whether one or more
    # objects in an S3 bucket are replicated to S3 buckets for other Amazon
    # Web Services accounts and, if so, which accounts.
    #
    # @!attribute [rw] replicated
    #   @return [Boolean]
    #
    # @!attribute [rw] replicated_externally
    #   @return [Boolean]
    #
    # @!attribute [rw] replication_accounts
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ReplicationDetails AWS API Documentation
    #
    class ReplicationDetails < Struct.new(
      :replicated,
      :replicated_externally,
      :replication_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an error that occurred because a specified
    # resource wasn't found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an S3 object that Amazon Macie selected for
    # analysis while performing automated sensitive data discovery for an S3
    # bucket, and the status and results of the analysis. This information
    # is available only if automated sensitive data discovery is currently
    # enabled for your account.
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] classification_result_status
    #   @return [String]
    #
    # @!attribute [rw] sensitive
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ResourceProfileArtifact AWS API Documentation
    #
    class ResourceProfileArtifact < Struct.new(
      :arn,
      :classification_result_status,
      :sensitive)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides statistical data for sensitive data discovery metrics that
    # apply to an S3 bucket that Amazon Macie monitors and analyzes for your
    # account. The statistics capture the results of automated sensitive
    # data discovery activities that Macie has performed for the bucket. The
    # data is available only if automated sensitive data discovery is
    # currently enabled for your account.
    #
    # @!attribute [rw] total_bytes_classified
    #   @return [Integer]
    #
    # @!attribute [rw] total_detections
    #   @return [Integer]
    #
    # @!attribute [rw] total_detections_suppressed
    #   @return [Integer]
    #
    # @!attribute [rw] total_items_classified
    #   @return [Integer]
    #
    # @!attribute [rw] total_items_sensitive
    #   @return [Integer]
    #
    # @!attribute [rw] total_items_skipped
    #   @return [Integer]
    #
    # @!attribute [rw] total_items_skipped_invalid_encryption
    #   @return [Integer]
    #
    # @!attribute [rw] total_items_skipped_invalid_kms
    #   @return [Integer]
    #
    # @!attribute [rw] total_items_skipped_permission_denied
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ResourceStatistics AWS API Documentation
    #
    class ResourceStatistics < Struct.new(
      :total_bytes_classified,
      :total_detections,
      :total_detections_suppressed,
      :total_items_classified,
      :total_items_sensitive,
      :total_items_skipped,
      :total_items_skipped_invalid_encryption,
      :total_items_skipped_invalid_kms,
      :total_items_skipped_permission_denied)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the resources that a finding applies to.
    #
    # @!attribute [rw] s3_bucket
    #   Provides information about the S3 bucket that a finding applies to.
    #   @return [Types::S3Bucket]
    #
    # @!attribute [rw] s3_object
    #   Provides information about the S3 object that a finding applies to.
    #   @return [Types::S3Object]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ResourcesAffected AWS API Documentation
    #
    class ResourcesAffected < Struct.new(
      :s3_bucket,
      :s3_object)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration settings for retrieving occurrences of
    # sensitive data reported by findings, and the status of the
    # configuration for an Amazon Macie account. When you enable the
    # configuration for the first time, your request must specify an Key
    # Management Service (KMS) key. Otherwise, an error occurs. Macie uses
    # the specified key to encrypt the sensitive data that you retrieve.
    #
    # @!attribute [rw] kms_key_id
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the configuration for retrieving occurrences of
    #   sensitive data reported by findings. Valid values are:
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/RevealConfiguration AWS API Documentation
    #
    class RevealConfiguration < Struct.new(
      :kms_key_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the S3 bucket that a finding applies to.
    #
    # @!attribute [rw] allows_unencrypted_object_uploads
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   @return [Time]
    #
    # @!attribute [rw] default_server_side_encryption
    #   Provides information about the default server-side encryption
    #   settings for an S3 bucket or the encryption settings for an S3
    #   object.
    #   @return [Types::ServerSideEncryption]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   Provides information about the Amazon Web Services account that owns
    #   an S3 bucket.
    #   @return [Types::S3BucketOwner]
    #
    # @!attribute [rw] public_access
    #   Provides information about the permissions settings that determine
    #   whether an S3 bucket is publicly accessible.
    #   @return [Types::BucketPublicAccess]
    #
    # @!attribute [rw] tags
    #   Provides information about the tags that are associated with an S3
    #   bucket or object. Each tag consists of a required tag key and an
    #   associated tag value.
    #   @return [Array<Types::KeyValuePair>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/S3Bucket AWS API Documentation
    #
    class S3Bucket < Struct.new(
      :allows_unencrypted_object_uploads,
      :arn,
      :created_at,
      :default_server_side_encryption,
      :name,
      :owner,
      :public_access,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies property- and tag-based conditions that define criteria for
    # including or excluding S3 buckets from a classification job. Exclude
    # conditions take precedence over include conditions.
    #
    # @!attribute [rw] excludes
    #   Specifies one or more property- and tag-based conditions that define
    #   criteria for including or excluding S3 buckets from a classification
    #   job.
    #   @return [Types::CriteriaBlockForJob]
    #
    # @!attribute [rw] includes
    #   Specifies one or more property- and tag-based conditions that define
    #   criteria for including or excluding S3 buckets from a classification
    #   job.
    #   @return [Types::CriteriaBlockForJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/S3BucketCriteriaForJob AWS API Documentation
    #
    class S3BucketCriteriaForJob < Struct.new(
      :excludes,
      :includes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an Amazon Web Services account that owns S3 buckets for a
    # classification job to analyze, and one or more specific buckets to
    # analyze for that account.
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] buckets
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/S3BucketDefinitionForJob AWS API Documentation
    #
    class S3BucketDefinitionForJob < Struct.new(
      :account_id,
      :buckets)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the Amazon Web Services account that owns
    # an S3 bucket.
    #
    # @!attribute [rw] display_name
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/S3BucketOwner AWS API Documentation
    #
    class S3BucketOwner < Struct.new(
      :display_name,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the S3 buckets that are excluded from automated sensitive
    # data discovery for an Amazon Macie account.
    #
    # @!attribute [rw] excludes
    #   Specifies the names of the S3 buckets that are excluded from
    #   automated sensitive data discovery.
    #   @return [Types::S3ClassificationScopeExclusion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/S3ClassificationScope AWS API Documentation
    #
    class S3ClassificationScope < Struct.new(
      :excludes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the names of the S3 buckets that are excluded from automated
    # sensitive data discovery.
    #
    # @!attribute [rw] bucket_names
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/S3ClassificationScopeExclusion AWS API Documentation
    #
    class S3ClassificationScopeExclusion < Struct.new(
      :bucket_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies S3 buckets to add or remove from the exclusion list defined
    # by the classification scope for an Amazon Macie account.
    #
    # @!attribute [rw] bucket_names
    #   @return [Array<String>]
    #
    # @!attribute [rw] operation
    #   Specifies how to apply changes to the S3 bucket exclusion list
    #   defined by the classification scope for an Amazon Macie account.
    #   Valid values are:
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/S3ClassificationScopeExclusionUpdate AWS API Documentation
    #
    class S3ClassificationScopeExclusionUpdate < Struct.new(
      :bucket_names,
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies changes to the list of S3 buckets that are excluded from
    # automated sensitive data discovery for an Amazon Macie account.
    #
    # @!attribute [rw] excludes
    #   Specifies S3 buckets to add or remove from the exclusion list
    #   defined by the classification scope for an Amazon Macie account.
    #   @return [Types::S3ClassificationScopeExclusionUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/S3ClassificationScopeUpdate AWS API Documentation
    #
    class S3ClassificationScopeUpdate < Struct.new(
      :excludes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an S3 bucket to store data classification results in, and
    # the encryption settings to use when storing results in that bucket.
    #
    # @!attribute [rw] bucket_name
    #   @return [String]
    #
    # @!attribute [rw] key_prefix
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/S3Destination AWS API Documentation
    #
    class S3Destination < Struct.new(
      :bucket_name,
      :key_prefix,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies which S3 buckets contain the objects that a classification
    # job analyzes, and the scope of that analysis. The bucket specification
    # can be static (bucketDefinitions) or dynamic (bucketCriteria). If
    # it's static, the job analyzes objects in the same predefined set of
    # buckets each time the job runs. If it's dynamic, the job analyzes
    # objects in any buckets that match the specified criteria each time the
    # job starts to run.
    #
    # @!attribute [rw] bucket_criteria
    #   Specifies property- and tag-based conditions that define criteria
    #   for including or excluding S3 buckets from a classification job.
    #   Exclude conditions take precedence over include conditions.
    #   @return [Types::S3BucketCriteriaForJob]
    #
    # @!attribute [rw] bucket_definitions
    #   @return [Array<Types::S3BucketDefinitionForJob>]
    #
    # @!attribute [rw] scoping
    #   Specifies one or more property- and tag-based conditions that define
    #   criteria for including or excluding S3 objects from a classification
    #   job. Exclude conditions take precedence over include conditions.
    #   @return [Types::Scoping]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/S3JobDefinition AWS API Documentation
    #
    class S3JobDefinition < Struct.new(
      :bucket_criteria,
      :bucket_definitions,
      :scoping)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the S3 object that a finding applies to.
    #
    # @!attribute [rw] bucket_arn
    #   @return [String]
    #
    # @!attribute [rw] e_tag
    #   @return [String]
    #
    # @!attribute [rw] extension
    #   @return [String]
    #
    # @!attribute [rw] key
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   @return [Time]
    #
    # @!attribute [rw] path
    #   @return [String]
    #
    # @!attribute [rw] public_access
    #   @return [Boolean]
    #
    # @!attribute [rw] server_side_encryption
    #   Provides information about the default server-side encryption
    #   settings for an S3 bucket or the encryption settings for an S3
    #   object.
    #   @return [Types::ServerSideEncryption]
    #
    # @!attribute [rw] size
    #   @return [Integer]
    #
    # @!attribute [rw] storage_class
    #   The storage class of the S3 object. Possible values are:
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Provides information about the tags that are associated with an S3
    #   bucket or object. Each tag consists of a required tag key and an
    #   associated tag value.
    #   @return [Array<Types::KeyValuePair>]
    #
    # @!attribute [rw] version_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/S3Object AWS API Documentation
    #
    class S3Object < Struct.new(
      :bucket_arn,
      :e_tag,
      :extension,
      :key,
      :last_modified,
      :path,
      :public_access,
      :server_side_encryption,
      :size,
      :storage_class,
      :tags,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an S3 object that lists specific text to
    # ignore.
    #
    # @!attribute [rw] bucket_name
    #   @return [String]
    #
    # @!attribute [rw] object_key
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/S3WordsList AWS API Documentation
    #
    class S3WordsList < Struct.new(
      :bucket_name,
      :object_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies one or more property- and tag-based conditions that define
    # criteria for including or excluding S3 objects from a classification
    # job. Exclude conditions take precedence over include conditions.
    #
    # @!attribute [rw] excludes
    #   Specifies one or more property- and tag-based conditions that define
    #   criteria for including or excluding S3 objects from a classification
    #   job.
    #   @return [Types::JobScopingBlock]
    #
    # @!attribute [rw] includes
    #   Specifies one or more property- and tag-based conditions that define
    #   criteria for including or excluding S3 objects from a classification
    #   job.
    #   @return [Types::JobScopingBlock]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/Scoping AWS API Documentation
    #
    class Scoping < Struct.new(
      :excludes,
      :includes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies property- and tag-based conditions that define filter
    # criteria for including or excluding S3 buckets from the query results.
    # Exclude conditions take precedence over include conditions.
    #
    # @!attribute [rw] excludes
    #   Specifies property- and tag-based conditions that define filter
    #   criteria for including or excluding Amazon Web Services resources
    #   from the query results.
    #   @return [Types::SearchResourcesCriteriaBlock]
    #
    # @!attribute [rw] includes
    #   Specifies property- and tag-based conditions that define filter
    #   criteria for including or excluding Amazon Web Services resources
    #   from the query results.
    #   @return [Types::SearchResourcesCriteriaBlock]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/SearchResourcesBucketCriteria AWS API Documentation
    #
    class SearchResourcesBucketCriteria < Struct.new(
      :excludes,
      :includes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a property- or tag-based filter condition for including or
    # excluding Amazon Web Services resources from the query results.
    #
    # @!attribute [rw] simple_criterion
    #   Specifies a property-based filter condition that determines which
    #   Amazon Web Services resources are included or excluded from the
    #   query results.
    #   @return [Types::SearchResourcesSimpleCriterion]
    #
    # @!attribute [rw] tag_criterion
    #   Specifies a tag-based filter condition that determines which Amazon
    #   Web Services resources are included or excluded from the query
    #   results.
    #   @return [Types::SearchResourcesTagCriterion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/SearchResourcesCriteria AWS API Documentation
    #
    class SearchResourcesCriteria < Struct.new(
      :simple_criterion,
      :tag_criterion)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies property- and tag-based conditions that define filter
    # criteria for including or excluding Amazon Web Services resources from
    # the query results.
    #
    # @!attribute [rw] and
    #   @return [Array<Types::SearchResourcesCriteria>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/SearchResourcesCriteriaBlock AWS API Documentation
    #
    class SearchResourcesCriteriaBlock < Struct.new(
      :and)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies criteria for filtering, sorting, and paginating the results
    # of a query for statistical data and other information about Amazon Web
    # Services resources that Amazon Macie monitors and analyzes.
    #
    # @!attribute [rw] bucket_criteria
    #   Specifies property- and tag-based conditions that define filter
    #   criteria for including or excluding S3 buckets from the query
    #   results. Exclude conditions take precedence over include conditions.
    #   @return [Types::SearchResourcesBucketCriteria]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] sort_criteria
    #   Specifies criteria for sorting the results of a query for
    #   information about Amazon Web Services resources that Amazon Macie
    #   monitors and analyzes.
    #   @return [Types::SearchResourcesSortCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/SearchResourcesRequest AWS API Documentation
    #
    class SearchResourcesRequest < Struct.new(
      :bucket_criteria,
      :max_results,
      :next_token,
      :sort_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the results of a query that retrieved statistical data and
    # other information about Amazon Web Services resources that Amazon
    # Macie monitors and analyzes for your account.
    #
    # @!attribute [rw] matching_resources
    #   @return [Array<Types::MatchingResource>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/SearchResourcesResponse AWS API Documentation
    #
    class SearchResourcesResponse < Struct.new(
      :matching_resources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a property-based filter condition that determines which
    # Amazon Web Services resources are included or excluded from the query
    # results.
    #
    # @!attribute [rw] comparator
    #   The operator to use in a condition that filters the results of a
    #   query. Valid values are:
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The property to use in a condition that filters the query results.
    #   Valid values are:
    #   @return [String]
    #
    # @!attribute [rw] values
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/SearchResourcesSimpleCriterion AWS API Documentation
    #
    class SearchResourcesSimpleCriterion < Struct.new(
      :comparator,
      :key,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies criteria for sorting the results of a query for information
    # about Amazon Web Services resources that Amazon Macie monitors and
    # analyzes.
    #
    # @!attribute [rw] attribute_name
    #   The property to sort the query results by. Valid values are:
    #   @return [String]
    #
    # @!attribute [rw] order_by
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/SearchResourcesSortCriteria AWS API Documentation
    #
    class SearchResourcesSortCriteria < Struct.new(
      :attribute_name,
      :order_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a tag-based filter condition that determines which Amazon
    # Web Services resources are included or excluded from the query
    # results.
    #
    # @!attribute [rw] comparator
    #   The operator to use in a condition that filters the results of a
    #   query. Valid values are:
    #   @return [String]
    #
    # @!attribute [rw] tag_values
    #   @return [Array<Types::SearchResourcesTagCriterionPair>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/SearchResourcesTagCriterion AWS API Documentation
    #
    class SearchResourcesTagCriterion < Struct.new(
      :comparator,
      :tag_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a tag key, a tag value, or a tag key and value (as a pair)
    # to use in a tag-based filter condition for a query. Tag keys and
    # values are case sensitive. Also, Amazon Macie doesn't support use of
    # partial values or wildcard characters in tag-based filter conditions.
    #
    # @!attribute [rw] key
    #   @return [String]
    #
    # @!attribute [rw] value
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/SearchResourcesTagCriterionPair AWS API Documentation
    #
    class SearchResourcesTagCriterionPair < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies configuration settings that determine which findings are
    # published to Security Hub automatically. For information about how
    # Macie publishes findings to Security Hub, see [Amazon Macie
    # integration with Security Hub][1] in the *Amazon Macie User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/macie/latest/user/securityhub-integration.html
    #
    # @!attribute [rw] publish_classification_findings
    #   @return [Boolean]
    #
    # @!attribute [rw] publish_policy_findings
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/SecurityHubConfiguration AWS API Documentation
    #
    class SecurityHubConfiguration < Struct.new(
      :publish_classification_findings,
      :publish_policy_findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the category, types, and occurrences of
    # sensitive data that produced a sensitive data finding.
    #
    # @!attribute [rw] category
    #   For a finding, the category of sensitive data that was detected and
    #   produced the finding. For a managed data identifier, the category of
    #   sensitive data that the managed data identifier detects. Possible
    #   values are:
    #   @return [String]
    #
    # @!attribute [rw] detections
    #   Provides information about sensitive data that was detected by
    #   managed data identifiers and produced a sensitive data finding, and
    #   the number of occurrences of each type of sensitive data that was
    #   detected.
    #   @return [Array<Types::DefaultDetection>]
    #
    # @!attribute [rw] total_count
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/SensitiveDataItem AWS API Documentation
    #
    class SensitiveDataItem < Struct.new(
      :category,
      :detections,
      :total_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides aggregated statistical data for sensitive data discovery
    # metrics that apply to S3 buckets. Each field contains aggregated data
    # for all the buckets that have a sensitivity score (sensitivityScore)
    # of a specified value or within a specified range
    # (BucketStatisticsBySensitivity). If automated sensitive data discovery
    # is currently disabled for your account, the value for each field is 0.
    #
    # @!attribute [rw] classifiable_size_in_bytes
    #   @return [Integer]
    #
    # @!attribute [rw] publicly_accessible_count
    #   @return [Integer]
    #
    # @!attribute [rw] total_count
    #   @return [Integer]
    #
    # @!attribute [rw] total_size_in_bytes
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/SensitivityAggregations AWS API Documentation
    #
    class SensitivityAggregations < Struct.new(
      :classifiable_size_in_bytes,
      :publicly_accessible_count,
      :total_count,
      :total_size_in_bytes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies managed data identifiers to exclude (not use) when
    # performing automated sensitive data discovery for an Amazon Macie
    # account. For information about the managed data identifiers that
    # Amazon Macie currently provides, see [Using managed data
    # identifiers][1] in the *Amazon Macie User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/macie/latest/user/managed-data-identifiers.html
    #
    # @!attribute [rw] managed_data_identifier_ids
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/SensitivityInspectionTemplateExcludes AWS API Documentation
    #
    class SensitivityInspectionTemplateExcludes < Struct.new(
      :managed_data_identifier_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the allow lists, custom data identifiers, and managed data
    # identifiers to include (use) when performing automated sensitive data
    # discovery for an Amazon Macie account. The configuration must specify
    # at least one custom data identifier or managed data identifier. For
    # information about the managed data identifiers that Amazon Macie
    # currently provides, see [Using managed data identifiers][1] in the
    # *Amazon Macie User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/macie/latest/user/managed-data-identifiers.html
    #
    # @!attribute [rw] allow_list_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] custom_data_identifier_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] managed_data_identifier_ids
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/SensitivityInspectionTemplateIncludes AWS API Documentation
    #
    class SensitivityInspectionTemplateIncludes < Struct.new(
      :allow_list_ids,
      :custom_data_identifier_ids,
      :managed_data_identifier_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the sensitivity inspection template for an
    # Amazon Macie account. Macie uses the template's settings when it
    # performs automated sensitive data discovery for the account.
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/SensitivityInspectionTemplatesEntry AWS API Documentation
    #
    class SensitivityInspectionTemplatesEntry < Struct.new(
      :id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the default server-side encryption settings
    # for an S3 bucket or the encryption settings for an S3 object.
    #
    # @!attribute [rw] encryption_type
    #   The server-side encryption algorithm that was used to encrypt an S3
    #   object or is used by default to encrypt objects that are added to an
    #   S3 bucket. Possible values are:
    #   @return [String]
    #
    # @!attribute [rw] kms_master_key_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ServerSideEncryption AWS API Documentation
    #
    class ServerSideEncryption < Struct.new(
      :encryption_type,
      :kms_master_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a current quota for an Amazon Macie account.
    #
    # @!attribute [rw] is_service_limited
    #   @return [Boolean]
    #
    # @!attribute [rw] unit
    #   @return [String]
    #
    # @!attribute [rw] value
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ServiceLimit AWS API Documentation
    #
    class ServiceLimit < Struct.new(
      :is_service_limited,
      :unit,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an error that occurred due to one or more
    # service quotas for an account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a session that was created for an entity
    # that performed an action by using temporary security credentials.
    #
    # @!attribute [rw] attributes
    #   Provides information about the context in which temporary security
    #   credentials were issued to an entity.
    #   @return [Types::SessionContextAttributes]
    #
    # @!attribute [rw] session_issuer
    #   Provides information about the source and type of temporary security
    #   credentials that were issued to an entity.
    #   @return [Types::SessionIssuer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/SessionContext AWS API Documentation
    #
    class SessionContext < Struct.new(
      :attributes,
      :session_issuer)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the context in which temporary security
    # credentials were issued to an entity.
    #
    # @!attribute [rw] creation_date
    #   @return [Time]
    #
    # @!attribute [rw] mfa_authenticated
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/SessionContextAttributes AWS API Documentation
    #
    class SessionContextAttributes < Struct.new(
      :creation_date,
      :mfa_authenticated)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the source and type of temporary security
    # credentials that were issued to an entity.
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/SessionIssuer AWS API Documentation
    #
    class SessionIssuer < Struct.new(
      :account_id,
      :arn,
      :principal_id,
      :type,
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the numerical and qualitative representations of a finding's
    # severity.
    #
    # @!attribute [rw] description
    #   The qualitative representation of the finding's severity. Possible
    #   values are:
    #   @return [String]
    #
    # @!attribute [rw] score
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/Severity AWS API Documentation
    #
    class Severity < Struct.new(
      :description,
      :score)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a severity level for findings that a custom data identifier
    # produces. A severity level determines which severity is assigned to
    # the findings, based on the number of occurrences of text that match
    # the custom data identifier's detection criteria.
    #
    # @!attribute [rw] occurrences_threshold
    #   @return [Integer]
    #
    # @!attribute [rw] severity
    #   The severity of a finding, ranging from LOW, for least severe, to
    #   HIGH, for most severe. Valid values are:
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/SeverityLevel AWS API Documentation
    #
    class SeverityLevel < Struct.new(
      :occurrences_threshold,
      :severity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a property-based condition that determines whether an S3
    # bucket is included or excluded from a classification job.
    #
    # @!attribute [rw] comparator
    #   The operator to use in a condition. Depending on the type of
    #   condition, possible values are:
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The property to use in a condition that determines whether an S3
    #   bucket is included or excluded from a classification job. Valid
    #   values are:
    #   @return [String]
    #
    # @!attribute [rw] values
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/SimpleCriterionForJob AWS API Documentation
    #
    class SimpleCriterionForJob < Struct.new(
      :comparator,
      :key,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a property-based condition that determines whether an S3
    # object is included or excluded from a classification job.
    #
    # @!attribute [rw] comparator
    #   The operator to use in a condition. Depending on the type of
    #   condition, possible values are:
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The property to use in a condition that determines whether an S3
    #   object is included or excluded from a classification job. Valid
    #   values are:
    #   @return [String]
    #
    # @!attribute [rw] values
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/SimpleScopeTerm AWS API Documentation
    #
    class SimpleScopeTerm < Struct.new(
      :comparator,
      :key,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies criteria for sorting the results of a request for findings.
    #
    # @!attribute [rw] attribute_name
    #   @return [String]
    #
    # @!attribute [rw] order_by
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/SortCriteria AWS API Documentation
    #
    class SortCriteria < Struct.new(
      :attribute_name,
      :order_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides processing statistics for a classification job.
    #
    # @!attribute [rw] approximate_number_of_objects_to_process
    #   @return [Float]
    #
    # @!attribute [rw] number_of_runs
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/Statistics AWS API Documentation
    #
    class Statistics < Struct.new(
      :approximate_number_of_objects_to_process,
      :number_of_runs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a custom data identifier or managed data identifier that
    # detected a type of sensitive data to start excluding or including in
    # an S3 bucket's sensitivity score.
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of data identifier that detected a specific type of
    #   sensitive data in an S3 bucket. Possible values are:
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/SuppressDataIdentifier AWS API Documentation
    #
    class SuppressDataIdentifier < Struct.new(
      :id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a tag-based condition that determines whether an S3 bucket
    # is included or excluded from a classification job.
    #
    # @!attribute [rw] comparator
    #   The operator to use in a condition. Depending on the type of
    #   condition, possible values are:
    #   @return [String]
    #
    # @!attribute [rw] tag_values
    #   @return [Array<Types::TagCriterionPairForJob>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/TagCriterionForJob AWS API Documentation
    #
    class TagCriterionForJob < Struct.new(
      :comparator,
      :tag_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a tag key, a tag value, or a tag key and value (as a pair)
    # to use in a tag-based condition that determines whether an S3 bucket
    # is included or excluded from a classification job. Tag keys and values
    # are case sensitive. Also, Amazon Macie doesn't support use of partial
    # values or wildcard characters in tag-based conditions.
    #
    # @!attribute [rw] key
    #   @return [String]
    #
    # @!attribute [rw] value
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/TagCriterionPairForJob AWS API Documentation
    #
    class TagCriterionPairForJob < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the tags (keys and values) to associate with an Amazon Macie
    # resource.
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that specifies the tags
    #   (keys and values) for an Amazon Macie resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request succeeded. The specified tags were added or updated for
    # the resource.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Specifies a tag-based condition that determines whether an S3 object
    # is included or excluded from a classification job.
    #
    # @!attribute [rw] comparator
    #   The operator to use in a condition. Depending on the type of
    #   condition, possible values are:
    #   @return [String]
    #
    # @!attribute [rw] key
    #   @return [String]
    #
    # @!attribute [rw] tag_values
    #   @return [Array<Types::TagValuePair>]
    #
    # @!attribute [rw] target
    #   The type of object to apply a tag-based condition to. Valid values
    #   are:
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/TagScopeTerm AWS API Documentation
    #
    class TagScopeTerm < Struct.new(
      :comparator,
      :key,
      :tag_values,
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a tag key or tag key and value pair to use in a tag-based
    # condition that determines whether an S3 object is included or excluded
    # from a classification job. Tag keys and values are case sensitive.
    # Also, Amazon Macie doesn't support use of partial values or wildcard
    # characters in tag-based conditions.
    #
    # @!attribute [rw] key
    #   @return [String]
    #
    # @!attribute [rw] value
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/TagValuePair AWS API Documentation
    #
    class TagValuePair < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the detection criteria of a custom data identifier to test.
    #
    # @!attribute [rw] ignore_words
    #   @return [Array<String>]
    #
    # @!attribute [rw] keywords
    #   @return [Array<String>]
    #
    # @!attribute [rw] maximum_match_distance
    #   @return [Integer]
    #
    # @!attribute [rw] regex
    #   @return [String]
    #
    # @!attribute [rw] sample_text
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/TestCustomDataIdentifierRequest AWS API Documentation
    #
    class TestCustomDataIdentifierRequest < Struct.new(
      :ignore_words,
      :keywords,
      :maximum_match_distance,
      :regex,
      :sample_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides test results for a custom data identifier.
    #
    # @!attribute [rw] match_count
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/TestCustomDataIdentifierResponse AWS API Documentation
    #
    class TestCustomDataIdentifierResponse < Struct.new(
      :match_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an error that occurred because too many
    # requests were sent during a certain amount of time.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an error that occurred due to an
    # unprocessable entity.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UnprocessableEntityException AWS API Documentation
    #
    class UnprocessableEntityException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an account-related request that hasn't
    # been processed.
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The source of an issue or delay. Possible values are:
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UnprocessedAccount AWS API Documentation
    #
    class UnprocessedAccount < Struct.new(
      :account_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request succeeded. The specified tags were removed from the
    # resource.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # Changes the settings for an allow list. If you change the list's
    # criteria, Amazon Macie tests the new criteria when it processes your
    # request. If the criteria specify a regular expression that Macie
    # can't compile or an S3 object that Macie can't retrieve or parse, an
    # error occurs.
    #
    # @!attribute [rw] criteria
    #   Specifies the criteria for an allow list. The criteria must specify
    #   a regular expression (regex) or an S3 object (s3WordsList). It
    #   can't specify both.
    #   @return [Types::AllowListCriteria]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateAllowListRequest AWS API Documentation
    #
    class UpdateAllowListRequest < Struct.new(
      :criteria,
      :description,
      :id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an allow list whose settings were changed
    # in response to a request.
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateAllowListResponse AWS API Documentation
    #
    class UpdateAllowListResponse < Struct.new(
      :arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Enables or disables automated sensitive data discovery for an Amazon
    # Macie account.
    #
    # @!attribute [rw] status
    #   The status of the automated sensitive data discovery configuration
    #   for an Amazon Macie account. Valid values are:
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateAutomatedDiscoveryConfigurationRequest AWS API Documentation
    #
    class UpdateAutomatedDiscoveryConfigurationRequest < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateAutomatedDiscoveryConfigurationResponse AWS API Documentation
    #
    class UpdateAutomatedDiscoveryConfigurationResponse < Aws::EmptyStructure; end

    # Changes the status of a classification job. For more information about
    # pausing, resuming, or cancelling jobs, see [Managing sensitive data
    # discovery jobs][1] in the *Amazon Macie User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/macie/latest/user/discovery-jobs-manage.html
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of a classification job. Possible values are:
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateClassificationJobRequest AWS API Documentation
    #
    class UpdateClassificationJobRequest < Struct.new(
      :job_id,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateClassificationJobResponse AWS API Documentation
    #
    class UpdateClassificationJobResponse < Aws::EmptyStructure; end

    # Specifies new classification scope settings for an Amazon Macie
    # account. Macie uses these settings when it performs automated
    # sensitive data discovery for the account. To update the settings,
    # automated sensitive data discovery must currently be enabled for the
    # account.
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] s3
    #   Specifies changes to the list of S3 buckets that are excluded from
    #   automated sensitive data discovery for an Amazon Macie account.
    #   @return [Types::S3ClassificationScopeUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateClassificationScopeRequest AWS API Documentation
    #
    class UpdateClassificationScopeRequest < Struct.new(
      :id,
      :s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateClassificationScopeResponse AWS API Documentation
    #
    class UpdateClassificationScopeResponse < Aws::EmptyStructure; end

    # Specifies the criteria and other settings for a findings filter.
    #
    # @!attribute [rw] action
    #   The action to perform on findings that match the filter criteria. To
    #   suppress (automatically archive) findings that match the criteria,
    #   set this value to ARCHIVE. Valid values are:
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] finding_criteria
    #   Specifies, as a map, one or more property-based conditions that
    #   filter the results of a query for findings.
    #   @return [Types::FindingCriteria]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] position
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateFindingsFilterRequest AWS API Documentation
    #
    class UpdateFindingsFilterRequest < Struct.new(
      :action,
      :client_token,
      :description,
      :finding_criteria,
      :id,
      :name,
      :position)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a findings filter that was updated in
    # response to a request.
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateFindingsFilterResponse AWS API Documentation
    #
    class UpdateFindingsFilterResponse < Struct.new(
      :arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Changes the status or configuration settings for an Amazon Macie
    # account.
    #
    # @!attribute [rw] finding_publishing_frequency
    #   The frequency with which Amazon Macie publishes updates to policy
    #   findings for an account. This includes publishing updates to
    #   Security Hub and Amazon EventBridge (formerly Amazon CloudWatch
    #   Events). For more information, see [Monitoring and processing
    #   findings][1] in the *Amazon Macie User Guide*. Valid values are:
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/macie/latest/user/findings-monitor.html
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of an Amazon Macie account. Valid values are:
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateMacieSessionRequest AWS API Documentation
    #
    class UpdateMacieSessionRequest < Struct.new(
      :finding_publishing_frequency,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateMacieSessionResponse AWS API Documentation
    #
    class UpdateMacieSessionResponse < Aws::EmptyStructure; end

    # Suspends (pauses) or re-enables Amazon Macie for a member account.
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of an Amazon Macie account. Valid values are:
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateMemberSessionRequest AWS API Documentation
    #
    class UpdateMemberSessionRequest < Struct.new(
      :id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateMemberSessionResponse AWS API Documentation
    #
    class UpdateMemberSessionResponse < Aws::EmptyStructure; end

    # Specifies whether to enable Amazon Macie automatically for accounts
    # that are added to an organization in Organizations.
    #
    # @!attribute [rw] auto_enable
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateOrganizationConfigurationRequest AWS API Documentation
    #
    class UpdateOrganizationConfigurationRequest < Struct.new(
      :auto_enable)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateOrganizationConfigurationResponse AWS API Documentation
    #
    class UpdateOrganizationConfigurationResponse < Aws::EmptyStructure; end

    # Updates the sensitivity scoring settings for an S3 bucket that Amazon
    # Macie monitors and analyzes for your account. The settings specify
    # whether to exclude or include occurrences of specific types of
    # sensitive data in calculations of the bucket's sensitivity score. You
    # can update the settings only if automated sensitive data discovery is
    # currently enabled for your account.
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] suppress_data_identifiers
    #   @return [Array<Types::SuppressDataIdentifier>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateResourceProfileDetectionsRequest AWS API Documentation
    #
    class UpdateResourceProfileDetectionsRequest < Struct.new(
      :resource_arn,
      :suppress_data_identifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateResourceProfileDetectionsResponse AWS API Documentation
    #
    class UpdateResourceProfileDetectionsResponse < Aws::EmptyStructure; end

    # Specifies a new sensitivity score for an S3 bucket that Amazon Macie
    # monitors and analyzes for your account. To update the score, automated
    # sensitive data discovery must currently be enabled for your account.
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] sensitivity_score_override
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateResourceProfileRequest AWS API Documentation
    #
    class UpdateResourceProfileRequest < Struct.new(
      :resource_arn,
      :sensitivity_score_override)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateResourceProfileResponse AWS API Documentation
    #
    class UpdateResourceProfileResponse < Aws::EmptyStructure; end

    # Specifies the configuration settings for retrieving occurrences of
    # sensitive data reported by findings, and the status of the
    # configuration for an Amazon Macie account.
    #
    # @!attribute [rw] configuration
    #   Specifies the configuration settings for retrieving occurrences of
    #   sensitive data reported by findings, and the status of the
    #   configuration for an Amazon Macie account. When you enable the
    #   configuration for the first time, your request must specify an Key
    #   Management Service (KMS) key. Otherwise, an error occurs. Macie uses
    #   the specified key to encrypt the sensitive data that you retrieve.
    #   @return [Types::RevealConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateRevealConfigurationRequest AWS API Documentation
    #
    class UpdateRevealConfigurationRequest < Struct.new(
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about updated configuration settings for
    # retrieving occurrences of sensitive data reported by findings, and the
    # status of the configuration for an Amazon Macie account.
    #
    # @!attribute [rw] configuration
    #   Specifies the configuration settings for retrieving occurrences of
    #   sensitive data reported by findings, and the status of the
    #   configuration for an Amazon Macie account. When you enable the
    #   configuration for the first time, your request must specify an Key
    #   Management Service (KMS) key. Otherwise, an error occurs. Macie uses
    #   the specified key to encrypt the sensitive data that you retrieve.
    #   @return [Types::RevealConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateRevealConfigurationResponse AWS API Documentation
    #
    class UpdateRevealConfigurationResponse < Struct.new(
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies settings for the sensitivity inspection template for an
    # Amazon Macie account. Macie uses the template's settings when it
    # performs automated sensitive data discovery for the account. To update
    # the settings, automated sensitive data discovery must currently be
    # enabled for the account.
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] excludes
    #   Specifies managed data identifiers to exclude (not use) when
    #   performing automated sensitive data discovery for an Amazon Macie
    #   account. For information about the managed data identifiers that
    #   Amazon Macie currently provides, see [Using managed data
    #   identifiers][1] in the *Amazon Macie User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/macie/latest/user/managed-data-identifiers.html
    #   @return [Types::SensitivityInspectionTemplateExcludes]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] includes
    #   Specifies the allow lists, custom data identifiers, and managed data
    #   identifiers to include (use) when performing automated sensitive
    #   data discovery for an Amazon Macie account. The configuration must
    #   specify at least one custom data identifier or managed data
    #   identifier. For information about the managed data identifiers that
    #   Amazon Macie currently provides, see [Using managed data
    #   identifiers][1] in the *Amazon Macie User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/macie/latest/user/managed-data-identifiers.html
    #   @return [Types::SensitivityInspectionTemplateIncludes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateSensitivityInspectionTemplateRequest AWS API Documentation
    #
    class UpdateSensitivityInspectionTemplateRequest < Struct.new(
      :description,
      :excludes,
      :id,
      :includes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UpdateSensitivityInspectionTemplateResponse AWS API Documentation
    #
    class UpdateSensitivityInspectionTemplateResponse < Aws::EmptyStructure; end

    # Provides data for a specific usage metric and the corresponding quota
    # for an Amazon Macie account.
    #
    # @!attribute [rw] currency
    #   The type of currency that the data for an Amazon Macie usage metric
    #   is reported in. Possible values are:
    #   @return [String]
    #
    # @!attribute [rw] estimated_cost
    #   @return [String]
    #
    # @!attribute [rw] service_limit
    #   Specifies a current quota for an Amazon Macie account.
    #   @return [Types::ServiceLimit]
    #
    # @!attribute [rw] type
    #   The name of an Amazon Macie usage metric for an account. Possible
    #   values are:
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UsageByAccount AWS API Documentation
    #
    class UsageByAccount < Struct.new(
      :currency,
      :estimated_cost,
      :service_limit,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides quota and aggregated usage data for an Amazon Macie account.
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] automated_discovery_free_trial_start_date
    #   @return [Time]
    #
    # @!attribute [rw] free_trial_start_date
    #   @return [Time]
    #
    # @!attribute [rw] usage
    #   @return [Array<Types::UsageByAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UsageRecord AWS API Documentation
    #
    class UsageRecord < Struct.new(
      :account_id,
      :automated_discovery_free_trial_start_date,
      :free_trial_start_date,
      :usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a condition for filtering the results of a query for quota
    # and usage data for one or more Amazon Macie accounts.
    #
    # @!attribute [rw] comparator
    #   The operator to use in a condition that filters the results of a
    #   query for Amazon Macie account quotas and usage data. Valid values
    #   are:
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The field to use in a condition that filters the results of a query
    #   for Amazon Macie account quotas and usage data. Valid values are:
    #   @return [String]
    #
    # @!attribute [rw] values
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UsageStatisticsFilter AWS API Documentation
    #
    class UsageStatisticsFilter < Struct.new(
      :comparator,
      :key,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies criteria for sorting the results of a query for Amazon Macie
    # account quotas and usage data.
    #
    # @!attribute [rw] key
    #   The field to use to sort the results of a query for Amazon Macie
    #   account quotas and usage data. Valid values are:
    #   @return [String]
    #
    # @!attribute [rw] order_by
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UsageStatisticsSortBy AWS API Documentation
    #
    class UsageStatisticsSortBy < Struct.new(
      :key,
      :order_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides aggregated data for an Amazon Macie usage metric. The value
    # for the metric reports estimated usage data for an account for the
    # preceding 30 days or the current calendar month to date, depending on
    # the time period (timeRange) specified in the request.
    #
    # @!attribute [rw] currency
    #   The type of currency that the data for an Amazon Macie usage metric
    #   is reported in. Possible values are:
    #   @return [String]
    #
    # @!attribute [rw] estimated_cost
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The name of an Amazon Macie usage metric for an account. Possible
    #   values are:
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UsageTotal AWS API Documentation
    #
    class UsageTotal < Struct.new(
      :currency,
      :estimated_cost,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the type and other characteristics of an
    # entity that performed an action on an affected resource.
    #
    # @!attribute [rw] assumed_role
    #   Provides information about an identity that performed an action on
    #   an affected resource by using temporary security credentials. The
    #   credentials were obtained using the AssumeRole operation of the
    #   Security Token Service (STS) API.
    #   @return [Types::AssumedRole]
    #
    # @!attribute [rw] aws_account
    #   Provides information about an Amazon Web Services account and entity
    #   that performed an action on an affected resource. The action was
    #   performed using the credentials for an Amazon Web Services account
    #   other than your own account.
    #   @return [Types::AwsAccount]
    #
    # @!attribute [rw] aws_service
    #   Provides information about an Amazon Web Service that performed an
    #   action on an affected resource.
    #   @return [Types::AwsService]
    #
    # @!attribute [rw] federated_user
    #   Provides information about an identity that performed an action on
    #   an affected resource by using temporary security credentials. The
    #   credentials were obtained using the GetFederationToken operation of
    #   the Security Token Service (STS) API.
    #   @return [Types::FederatedUser]
    #
    # @!attribute [rw] iam_user
    #   Provides information about an Identity and Access Management (IAM)
    #   user who performed an action on an affected resource.
    #   @return [Types::IamUser]
    #
    # @!attribute [rw] root
    #   Provides information about an Amazon Web Services account and entity
    #   that performed an action on an affected resource. The action was
    #   performed using the credentials for your Amazon Web Services
    #   account.
    #   @return [Types::UserIdentityRoot]
    #
    # @!attribute [rw] type
    #   The type of entity that performed the action on the affected
    #   resource. Possible values are:
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UserIdentity AWS API Documentation
    #
    class UserIdentity < Struct.new(
      :assumed_role,
      :aws_account,
      :aws_service,
      :federated_user,
      :iam_user,
      :root,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an Amazon Web Services account and entity
    # that performed an action on an affected resource. The action was
    # performed using the credentials for your Amazon Web Services account.
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UserIdentityRoot AWS API Documentation
    #
    class UserIdentityRoot < Struct.new(
      :account_id,
      :arn,
      :principal_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about when a classification job was paused. For a
    # one-time job, this object also specifies when the job will expire and
    # be cancelled if it isn't resumed. For a recurring job, this object
    # also specifies when the paused job run will expire and be cancelled if
    # it isn't resumed. This object is present only if a job's current
    # status (jobStatus) is USER\_PAUSED. The information in this object
    # applies only to a job that was paused while it had a status of
    # RUNNING.
    #
    # @!attribute [rw] job_expires_at
    #   @return [Time]
    #
    # @!attribute [rw] job_imminent_expiration_health_event_arn
    #   @return [String]
    #
    # @!attribute [rw] job_paused_at
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/UserPausedDetails AWS API Documentation
    #
    class UserPausedDetails < Struct.new(
      :job_expires_at,
      :job_imminent_expiration_health_event_arn,
      :job_paused_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an error that occurred due to a syntax
    # error in a request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a weekly recurrence pattern for running a classification
    # job.
    #
    # @!attribute [rw] day_of_week
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01/WeeklySchedule AWS API Documentation
    #
    class WeeklySchedule < Struct.new(
      :day_of_week)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
