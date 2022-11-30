# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Macie
  module Types

    # (Discontinued) You do not have required permissions to access the
    # requested resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Resource type that caused the exception
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member_account_id
    #   (Discontinued) The ID of the Amazon Web Services account that you
    #   want to associate with Amazon Macie Classic as a member account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/AssociateMemberAccountRequest AWS API Documentation
    #
    class AssociateMemberAccountRequest < Struct.new(
      :member_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member_account_id
    #   (Discontinued) The ID of the Amazon Macie Classic member account
    #   whose resources you want to associate with Macie Classic.
    #   @return [String]
    #
    # @!attribute [rw] s3_resources
    #   (Discontinued) The S3 resources that you want to associate with
    #   Amazon Macie Classic for monitoring and data classification.
    #   @return [Array<Types::S3ResourceClassification>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/AssociateS3ResourcesRequest AWS API Documentation
    #
    class AssociateS3ResourcesRequest < Struct.new(
      :member_account_id,
      :s3_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_s3_resources
    #   (Discontinued) S3 resources that couldn't be associated with Amazon
    #   Macie Classic. An error code and an error message are provided for
    #   each failed item.
    #   @return [Array<Types::FailedS3Resource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/AssociateS3ResourcesResult AWS API Documentation
    #
    class AssociateS3ResourcesResult < Struct.new(
      :failed_s3_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # (Discontinued) The classification type that Amazon Macie Classic
    # applies to the associated S3 resources.
    #
    # @!attribute [rw] one_time
    #   (Discontinued) A one-time classification of all of the existing
    #   objects in a specified S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] continuous
    #   (Discontinued) A continuous classification of the objects that are
    #   added to a specified S3 bucket. Amazon Macie Classic begins
    #   performing continuous classification after a bucket is successfully
    #   associated with Macie Classic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/ClassificationType AWS API Documentation
    #
    class ClassificationType < Struct.new(
      :one_time,
      :continuous)
      SENSITIVE = []
      include Aws::Structure
    end

    # (Discontinued) The classification type that Amazon Macie Classic
    # applies to the associated S3 resources. At least one of the
    # classification types (`oneTime` or `continuous`) must be specified.
    #
    # @!attribute [rw] one_time
    #   (Discontinued) A one-time classification of all of the existing
    #   objects in a specified S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] continuous
    #   (Discontinued) A continuous classification of the objects that are
    #   added to a specified S3 bucket. Amazon Macie Classic begins
    #   performing continuous classification after a bucket is successfully
    #   associated with Macie Classic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/ClassificationTypeUpdate AWS API Documentation
    #
    class ClassificationTypeUpdate < Struct.new(
      :one_time,
      :continuous)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member_account_id
    #   (Discontinued) The ID of the member account that you want to remove
    #   from Amazon Macie Classic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/DisassociateMemberAccountRequest AWS API Documentation
    #
    class DisassociateMemberAccountRequest < Struct.new(
      :member_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member_account_id
    #   (Discontinued) The ID of the Amazon Macie Classic member account
    #   whose resources you want to remove from being monitored by Macie
    #   Classic.
    #   @return [String]
    #
    # @!attribute [rw] associated_s3_resources
    #   (Discontinued) The S3 resources (buckets or prefixes) that you want
    #   to remove from being monitored and classified by Amazon Macie
    #   Classic.
    #   @return [Array<Types::S3Resource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/DisassociateS3ResourcesRequest AWS API Documentation
    #
    class DisassociateS3ResourcesRequest < Struct.new(
      :member_account_id,
      :associated_s3_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_s3_resources
    #   (Discontinued) S3 resources that couldn't be removed from being
    #   monitored and classified by Amazon Macie Classic. An error code and
    #   an error message are provided for each failed item.
    #   @return [Array<Types::FailedS3Resource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/DisassociateS3ResourcesResult AWS API Documentation
    #
    class DisassociateS3ResourcesResult < Struct.new(
      :failed_s3_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # (Discontinued) Includes details about the failed S3 resources.
    #
    # @!attribute [rw] failed_item
    #   (Discontinued) The failed S3 resources.
    #   @return [Types::S3Resource]
    #
    # @!attribute [rw] error_code
    #   (Discontinued) The status code of a failed item.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   (Discontinued) The error message of a failed item.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/FailedS3Resource AWS API Documentation
    #
    class FailedS3Resource < Struct.new(
      :failed_item,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # (Discontinued) Internal server error.
    #
    # @!attribute [rw] error_code
    #   Error code for the exception
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/InternalException AWS API Documentation
    #
    class InternalException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # (Discontinued) The request was rejected because an invalid or
    # out-of-range value was supplied for an input parameter.
    #
    # @!attribute [rw] error_code
    #   Error code for the exception
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] field_name
    #   Field that has invalid input
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Struct.new(
      :error_code,
      :message,
      :field_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # (Discontinued) The request was rejected because it attempted to create
    # resources beyond the current Amazon Web Services account quotas. The
    # error code describes the quota exceeded.
    #
    # @!attribute [rw] error_code
    #   Error code for the exception
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Resource type that caused the exception
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :error_code,
      :message,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   (Discontinued) Use this parameter when paginating results. Set the
    #   value of this parameter to null on your first call to the
    #   `ListMemberAccounts` action. Subsequent calls to the action fill
    #   `nextToken` in the request with the value of `nextToken` from the
    #   previous response to continue listing data.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Discontinued) Use this parameter to indicate the maximum number of
    #   items that you want in the response. The default value is 250.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/ListMemberAccountsRequest AWS API Documentation
    #
    class ListMemberAccountsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member_accounts
    #   (Discontinued) A list of the Amazon Macie Classic member accounts
    #   returned by the action. The current Macie Classic administrator
    #   account is also included in this list.
    #   @return [Array<Types::MemberAccount>]
    #
    # @!attribute [rw] next_token
    #   (Discontinued) When a response is generated, if there is more data
    #   to be listed, this parameter is present in the response and contains
    #   the value to use for the `nextToken` parameter in a subsequent
    #   pagination request. If there is no more data to be listed, this
    #   parameter is set to null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/ListMemberAccountsResult AWS API Documentation
    #
    class ListMemberAccountsResult < Struct.new(
      :member_accounts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member_account_id
    #   (Discontinued) The Amazon Macie Classic member account ID whose
    #   associated S3 resources you want to list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   (Discontinued) Use this parameter when paginating results. Set its
    #   value to null on your first call to the `ListS3Resources` action.
    #   Subsequent calls to the action fill `nextToken` in the request with
    #   the value of `nextToken` from the previous response to continue
    #   listing data.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Discontinued) Use this parameter to indicate the maximum number of
    #   items that you want in the response. The default value is 250.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/ListS3ResourcesRequest AWS API Documentation
    #
    class ListS3ResourcesRequest < Struct.new(
      :member_account_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] s3_resources
    #   (Discontinued) A list of the associated S3 resources returned by the
    #   action.
    #   @return [Array<Types::S3ResourceClassification>]
    #
    # @!attribute [rw] next_token
    #   (Discontinued) When a response is generated, if there is more data
    #   to be listed, this parameter is present in the response and contains
    #   the value to use for the `nextToken` parameter in a subsequent
    #   pagination request. If there is no more data to be listed, this
    #   parameter is set to null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/ListS3ResourcesResult AWS API Documentation
    #
    class ListS3ResourcesResult < Struct.new(
      :s3_resources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # (Discontinued) Contains information about the Amazon Macie Classic
    # member account.
    #
    # @!attribute [rw] account_id
    #   (Discontinued) The Amazon Web Services account ID of the Amazon
    #   Macie Classic member account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/MemberAccount AWS API Documentation
    #
    class MemberAccount < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # (Discontinued) Contains information about the S3 resource. This data
    # type is used as a request parameter in the `DisassociateS3Resources`
    # action and can be used as a response parameter in the
    # `AssociateS3Resources` and `UpdateS3Resources` actions.
    #
    # @!attribute [rw] bucket_name
    #   (Discontinued) The name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   (Discontinued) The prefix of the S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/S3Resource AWS API Documentation
    #
    class S3Resource < Struct.new(
      :bucket_name,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # (Discontinued) The S3 resources that you want to associate with Amazon
    # Macie Classic for monitoring and data classification. This data type
    # is used as a request parameter in the `AssociateS3Resources` action
    # and a response parameter in the `ListS3Resources` action.
    #
    # @!attribute [rw] bucket_name
    #   (Discontinued) The name of the S3 bucket that you want to associate
    #   with Amazon Macie Classic.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   (Discontinued) The prefix of the S3 bucket that you want to
    #   associate with Amazon Macie Classic.
    #   @return [String]
    #
    # @!attribute [rw] classification_type
    #   (Discontinued) The classification type that you want to specify for
    #   the resource associated with Amazon Macie Classic.
    #   @return [Types::ClassificationType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/S3ResourceClassification AWS API Documentation
    #
    class S3ResourceClassification < Struct.new(
      :bucket_name,
      :prefix,
      :classification_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # (Discontinued) The S3 resources whose classification types you want to
    # update. This data type is used as a request parameter in the
    # `UpdateS3Resources` action.
    #
    # @!attribute [rw] bucket_name
    #   (Discontinued) The name of the S3 bucket whose classification types
    #   you want to update.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   (Discontinued) The prefix of the S3 bucket whose classification
    #   types you want to update.
    #   @return [String]
    #
    # @!attribute [rw] classification_type_update
    #   (Discontinued) The classification type that you want to update for
    #   the resource associated with Amazon Macie Classic.
    #   @return [Types::ClassificationTypeUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/S3ResourceClassificationUpdate AWS API Documentation
    #
    class S3ResourceClassificationUpdate < Struct.new(
      :bucket_name,
      :prefix,
      :classification_type_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member_account_id
    #   (Discontinued) The Amazon Web Services account ID of the Amazon
    #   Macie Classic member account whose S3 resources' classification
    #   types you want to update.
    #   @return [String]
    #
    # @!attribute [rw] s3_resources_update
    #   (Discontinued) The S3 resources whose classification types you want
    #   to update.
    #   @return [Array<Types::S3ResourceClassificationUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/UpdateS3ResourcesRequest AWS API Documentation
    #
    class UpdateS3ResourcesRequest < Struct.new(
      :member_account_id,
      :s3_resources_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_s3_resources
    #   (Discontinued) The S3 resources whose classification types can't be
    #   updated. An error code and an error message are provided for each
    #   failed item.
    #   @return [Array<Types::FailedS3Resource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/UpdateS3ResourcesResult AWS API Documentation
    #
    class UpdateS3ResourcesResult < Struct.new(
      :failed_s3_resources)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
