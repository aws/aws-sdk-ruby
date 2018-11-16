# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::S3Control
  module Types

    # @note When making an API call, you may pass DeletePublicAccessBlockRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Account ID for the Amazon Web Services account whose Public
    #   Access Block configuration you want to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeletePublicAccessBlockRequest AWS API Documentation
    #
    class DeletePublicAccessBlockRequest < Struct.new(
      :account_id)
      include Aws::Structure
    end

    # @!attribute [rw] public_access_block_configuration
    #   The Public Access Block configuration currently in effect for this
    #   Amazon Web Services account.
    #   @return [Types::PublicAccessBlockConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetPublicAccessBlockOutput AWS API Documentation
    #
    class GetPublicAccessBlockOutput < Struct.new(
      :public_access_block_configuration)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPublicAccessBlockRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Account ID for the Amazon Web Services account whose Public
    #   Access Block configuration you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetPublicAccessBlockRequest AWS API Documentation
    #
    class GetPublicAccessBlockRequest < Struct.new(
      :account_id)
      include Aws::Structure
    end

    # The container element for all Public Access Block configuration
    # options. You can enable the configuration options in any combination.
    #
    # Amazon S3 considers a bucket policy public unless at least one of the
    # following conditions is true:
    #
    # 1.  The policy limits access to a set of CIDRs using `aws:SourceIp`.
    #     For more information on CIDR, see
    #     [http://www.rfc-editor.org/rfc/rfc4632.txt][1]
    #
    # 2.  The policy grants permissions, not including any "bad actions,"
    #     to one of the following:
    #
    #     * A fixed AWS principal, user, role, or service principal
    #
    #     * A fixed `aws:SourceArn`
    #
    #     * A fixed `aws:SourceVpc`
    #
    #     * A fixed `aws:SourceVpce`
    #
    #     * A fixed `aws:SourceOwner`
    #
    #     * A fixed `aws:SourceAccount`
    #
    #     * A fixed value of
    #       `s3:x-amz-server-side-encryption-aws-kms-key-id`
    #
    #     * A fixed value of `aws:userid` outside the pattern
    #       "`AROLEID:*`"
    #
    # "Bad actions" are those that could expose the data inside a bucket
    # to reads or writes by the public. These actions are `s3:Get*`,
    # `s3:List*`, `s3:AbortMultipartUpload`, `s3:Delete*`, `s3:Put*`, and
    # `s3:RestoreObject`.
    #
    # The star notation for bad actions indicates that all matching
    # operations are considered bad actions. For example, because `s3:Get*`
    # is a bad action, `s3:GetObject`, `s3:GetObjectVersion`, and
    # `s3:GetObjectAcl` are all bad actions.
    #
    #
    #
    # [1]: http://www.rfc-editor.org/rfc/rfc4632.txt
    #
    # @note When making an API call, you may pass PublicAccessBlockConfiguration
    #   data as a hash:
    #
    #       {
    #         block_public_acls: false,
    #         ignore_public_acls: false,
    #         block_public_policy: false,
    #         restrict_public_buckets: false,
    #       }
    #
    # @!attribute [rw] block_public_acls
    #   Specifies whether Amazon S3 should block public ACLs for buckets in
    #   this account. Setting this element to `TRUE` causes the following
    #   behavior:
    #
    #   * PUT Bucket acl and PUT Object acl calls will fail if the specified
    #     ACL allows public access.
    #
    #   * PUT Object calls will fail if the request includes an object ACL.
    #
    #   Note that enabling this setting doesn't affect existing policies or
    #   ACLs.
    #   @return [Boolean]
    #
    # @!attribute [rw] ignore_public_acls
    #   Specifies whether Amazon S3 should ignore public ACLs for buckets in
    #   this account. Setting this element to `TRUE` causes Amazon S3 to
    #   ignore all public ACLs on buckets in this account and any objects
    #   that they contain.
    #
    #   Note that enabling this setting doesn't affect the persistence of
    #   any existing ACLs and doesn't prevent new public ACLs from being
    #   set.
    #   @return [Boolean]
    #
    # @!attribute [rw] block_public_policy
    #   Specifies whether Amazon S3 should block public bucket policies for
    #   buckets in this account. Setting this element to `TRUE` causes
    #   Amazon S3 to reject calls to PUT Bucket policy if the specified
    #   bucket policy allows public access.
    #
    #   Note that enabling this setting doesn't affect existing bucket
    #   policies.
    #   @return [Boolean]
    #
    # @!attribute [rw] restrict_public_buckets
    #   Specifies whether Amazon S3 should restrict public bucket policies
    #   for buckets in this account. If this element is set to `TRUE`, then
    #   only the bucket owner and AWS Services can access buckets with
    #   public policies.
    #
    #   Note that enabling this setting doesn't affect previously stored
    #   bucket policies, except that public and cross-account access within
    #   any public bucket policy, including non-public delegation to
    #   specific accounts, is blocked.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PublicAccessBlockConfiguration AWS API Documentation
    #
    class PublicAccessBlockConfiguration < Struct.new(
      :block_public_acls,
      :ignore_public_acls,
      :block_public_policy,
      :restrict_public_buckets)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutPublicAccessBlockRequest
    #   data as a hash:
    #
    #       {
    #         public_access_block_configuration: { # required
    #           block_public_acls: false,
    #           ignore_public_acls: false,
    #           block_public_policy: false,
    #           restrict_public_buckets: false,
    #         },
    #         account_id: "AccountId", # required
    #       }
    #
    # @!attribute [rw] public_access_block_configuration
    #   The Public Access Block configuration that you want to apply to this
    #   Amazon Web Services account.
    #   @return [Types::PublicAccessBlockConfiguration]
    #
    # @!attribute [rw] account_id
    #   The Account ID for the Amazon Web Services account whose Public
    #   Access Block configuration you want to set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutPublicAccessBlockRequest AWS API Documentation
    #
    class PutPublicAccessBlockRequest < Struct.new(
      :public_access_block_configuration,
      :account_id)
      include Aws::Structure
    end

  end
end
