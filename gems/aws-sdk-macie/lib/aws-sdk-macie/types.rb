# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Macie
  module Types

    # @note When making an API call, you may pass AssociateMemberAccountRequest
    #   data as a hash:
    #
    #       {
    #         member_account_id: "AWSAccountId", # required
    #       }
    #
    # @!attribute [rw] member_account_id
    #   The ID of the AWS account that you want to associate with Amazon
    #   Macie as a member account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/AssociateMemberAccountRequest AWS API Documentation
    #
    class AssociateMemberAccountRequest < Struct.new(
      :member_account_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateS3ResourcesRequest
    #   data as a hash:
    #
    #       {
    #         member_account_id: "AWSAccountId",
    #         s3_resources: [ # required
    #           {
    #             bucket_name: "BucketName", # required
    #             prefix: "Prefix",
    #             classification_type: { # required
    #               one_time: "FULL", # required, accepts FULL, NONE
    #               continuous: "FULL", # required, accepts FULL
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] member_account_id
    #   The ID of the Amazon Macie member account whose resources you want
    #   to associate with Macie.
    #   @return [String]
    #
    # @!attribute [rw] s3_resources
    #   The S3 resources that you want to associate with Amazon Macie for
    #   monitoring and data classification.
    #   @return [Array<Types::S3ResourceClassification>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/AssociateS3ResourcesRequest AWS API Documentation
    #
    class AssociateS3ResourcesRequest < Struct.new(
      :member_account_id,
      :s3_resources)
      include Aws::Structure
    end

    # @!attribute [rw] failed_s3_resources
    #   S3 resources that couldn't be associated with Amazon Macie. An
    #   error code and an error message are provided for each failed item.
    #   @return [Array<Types::FailedS3Resource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/AssociateS3ResourcesResult AWS API Documentation
    #
    class AssociateS3ResourcesResult < Struct.new(
      :failed_s3_resources)
      include Aws::Structure
    end

    # The classification type that Amazon Macie applies to the associated S3
    # resources.
    #
    # @note When making an API call, you may pass ClassificationType
    #   data as a hash:
    #
    #       {
    #         one_time: "FULL", # required, accepts FULL, NONE
    #         continuous: "FULL", # required, accepts FULL
    #       }
    #
    # @!attribute [rw] one_time
    #   A one-time classification of all of the existing objects in a
    #   specified S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] continuous
    #   A continuous classification of the objects that are added to a
    #   specified S3 bucket. Amazon Macie begins performing continuous
    #   classification after a bucket is successfully associated with Amazon
    #   Macie.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/ClassificationType AWS API Documentation
    #
    class ClassificationType < Struct.new(
      :one_time,
      :continuous)
      include Aws::Structure
    end

    # The classification type that Amazon Macie applies to the associated S3
    # resources. At least one of the classification types (oneTime or
    # continuous) must be specified.
    #
    # @note When making an API call, you may pass ClassificationTypeUpdate
    #   data as a hash:
    #
    #       {
    #         one_time: "FULL", # accepts FULL, NONE
    #         continuous: "FULL", # accepts FULL
    #       }
    #
    # @!attribute [rw] one_time
    #   A one-time classification of all of the existing objects in a
    #   specified S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] continuous
    #   A continuous classification of the objects that are added to a
    #   specified S3 bucket. Amazon Macie begins performing continuous
    #   classification after a bucket is successfully associated with Amazon
    #   Macie.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/ClassificationTypeUpdate AWS API Documentation
    #
    class ClassificationTypeUpdate < Struct.new(
      :one_time,
      :continuous)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateMemberAccountRequest
    #   data as a hash:
    #
    #       {
    #         member_account_id: "AWSAccountId", # required
    #       }
    #
    # @!attribute [rw] member_account_id
    #   The ID of the member account that you want to remove from Amazon
    #   Macie.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/DisassociateMemberAccountRequest AWS API Documentation
    #
    class DisassociateMemberAccountRequest < Struct.new(
      :member_account_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateS3ResourcesRequest
    #   data as a hash:
    #
    #       {
    #         member_account_id: "AWSAccountId",
    #         associated_s3_resources: [ # required
    #           {
    #             bucket_name: "BucketName", # required
    #             prefix: "Prefix",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] member_account_id
    #   The ID of the Amazon Macie member account whose resources you want
    #   to remove from being monitored by Amazon Macie.
    #   @return [String]
    #
    # @!attribute [rw] associated_s3_resources
    #   The S3 resources (buckets or prefixes) that you want to remove from
    #   being monitored and classified by Amazon Macie.
    #   @return [Array<Types::S3Resource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/DisassociateS3ResourcesRequest AWS API Documentation
    #
    class DisassociateS3ResourcesRequest < Struct.new(
      :member_account_id,
      :associated_s3_resources)
      include Aws::Structure
    end

    # @!attribute [rw] failed_s3_resources
    #   S3 resources that couldn't be removed from being monitored and
    #   classified by Amazon Macie. An error code and an error message are
    #   provided for each failed item.
    #   @return [Array<Types::FailedS3Resource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/DisassociateS3ResourcesResult AWS API Documentation
    #
    class DisassociateS3ResourcesResult < Struct.new(
      :failed_s3_resources)
      include Aws::Structure
    end

    # Includes details about the failed S3 resources.
    #
    # @!attribute [rw] failed_item
    #   The failed S3 resources.
    #   @return [Types::S3Resource]
    #
    # @!attribute [rw] error_code
    #   The status code of a failed item.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message of a failed item.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/FailedS3Resource AWS API Documentation
    #
    class FailedS3Resource < Struct.new(
      :failed_item,
      :error_code,
      :error_message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMemberAccountsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   Use this parameter when paginating results. Set the value of this
    #   parameter to null on your first call to the ListMemberAccounts
    #   action. Subsequent calls to the action fill nextToken in the request
    #   with the value of nextToken from the previous response to continue
    #   listing data.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Use this parameter to indicate the maximum number of items that you
    #   want in the response. The default value is 250.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/ListMemberAccountsRequest AWS API Documentation
    #
    class ListMemberAccountsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] member_accounts
    #   A list of the Amazon Macie member accounts returned by the action.
    #   The current master account is also included in this list.
    #   @return [Array<Types::MemberAccount>]
    #
    # @!attribute [rw] next_token
    #   When a response is generated, if there is more data to be listed,
    #   this parameter is present in the response and contains the value to
    #   use for the nextToken parameter in a subsequent pagination request.
    #   If there is no more data to be listed, this parameter is set to
    #   null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/ListMemberAccountsResult AWS API Documentation
    #
    class ListMemberAccountsResult < Struct.new(
      :member_accounts,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListS3ResourcesRequest
    #   data as a hash:
    #
    #       {
    #         member_account_id: "AWSAccountId",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] member_account_id
    #   The Amazon Macie member account ID whose associated S3 resources you
    #   want to list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Use this parameter when paginating results. Set its value to null on
    #   your first call to the ListS3Resources action. Subsequent calls to
    #   the action fill nextToken in the request with the value of nextToken
    #   from the previous response to continue listing data.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Use this parameter to indicate the maximum number of items that you
    #   want in the response. The default value is 250.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/ListS3ResourcesRequest AWS API Documentation
    #
    class ListS3ResourcesRequest < Struct.new(
      :member_account_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] s3_resources
    #   A list of the associated S3 resources returned by the action.
    #   @return [Array<Types::S3ResourceClassification>]
    #
    # @!attribute [rw] next_token
    #   When a response is generated, if there is more data to be listed,
    #   this parameter is present in the response and contains the value to
    #   use for the nextToken parameter in a subsequent pagination request.
    #   If there is no more data to be listed, this parameter is set to
    #   null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/ListS3ResourcesResult AWS API Documentation
    #
    class ListS3ResourcesResult < Struct.new(
      :s3_resources,
      :next_token)
      include Aws::Structure
    end

    # Contains information about the Amazon Macie member account.
    #
    # @!attribute [rw] account_id
    #   The AWS account ID of the Amazon Macie member account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/MemberAccount AWS API Documentation
    #
    class MemberAccount < Struct.new(
      :account_id)
      include Aws::Structure
    end

    # Contains information about the S3 resource. This data type is used as
    # a request parameter in the DisassociateS3Resources action and can be
    # used as a response parameter in the AssociateS3Resources and
    # UpdateS3Resources actions.
    #
    # @note When making an API call, you may pass S3Resource
    #   data as a hash:
    #
    #       {
    #         bucket_name: "BucketName", # required
    #         prefix: "Prefix",
    #       }
    #
    # @!attribute [rw] bucket_name
    #   The name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The prefix of the S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/S3Resource AWS API Documentation
    #
    class S3Resource < Struct.new(
      :bucket_name,
      :prefix)
      include Aws::Structure
    end

    # The S3 resources that you want to associate with Amazon Macie for
    # monitoring and data classification. This data type is used as a
    # request parameter in the AssociateS3Resources action and a response
    # parameter in the ListS3Resources action.
    #
    # @note When making an API call, you may pass S3ResourceClassification
    #   data as a hash:
    #
    #       {
    #         bucket_name: "BucketName", # required
    #         prefix: "Prefix",
    #         classification_type: { # required
    #           one_time: "FULL", # required, accepts FULL, NONE
    #           continuous: "FULL", # required, accepts FULL
    #         },
    #       }
    #
    # @!attribute [rw] bucket_name
    #   The name of the S3 bucket that you want to associate with Amazon
    #   Macie.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The prefix of the S3 bucket that you want to associate with Amazon
    #   Macie.
    #   @return [String]
    #
    # @!attribute [rw] classification_type
    #   The classification type that you want to specify for the resource
    #   associated with Amazon Macie.
    #   @return [Types::ClassificationType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/S3ResourceClassification AWS API Documentation
    #
    class S3ResourceClassification < Struct.new(
      :bucket_name,
      :prefix,
      :classification_type)
      include Aws::Structure
    end

    # The S3 resources whose classification types you want to update. This
    # data type is used as a request parameter in the UpdateS3Resources
    # action.
    #
    # @note When making an API call, you may pass S3ResourceClassificationUpdate
    #   data as a hash:
    #
    #       {
    #         bucket_name: "BucketName", # required
    #         prefix: "Prefix",
    #         classification_type_update: { # required
    #           one_time: "FULL", # accepts FULL, NONE
    #           continuous: "FULL", # accepts FULL
    #         },
    #       }
    #
    # @!attribute [rw] bucket_name
    #   The name of the S3 bucket whose classification types you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The prefix of the S3 bucket whose classification types you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] classification_type_update
    #   The classification type that you want to update for the resource
    #   associated with Amazon Macie.
    #   @return [Types::ClassificationTypeUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/S3ResourceClassificationUpdate AWS API Documentation
    #
    class S3ResourceClassificationUpdate < Struct.new(
      :bucket_name,
      :prefix,
      :classification_type_update)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateS3ResourcesRequest
    #   data as a hash:
    #
    #       {
    #         member_account_id: "AWSAccountId",
    #         s3_resources_update: [ # required
    #           {
    #             bucket_name: "BucketName", # required
    #             prefix: "Prefix",
    #             classification_type_update: { # required
    #               one_time: "FULL", # accepts FULL, NONE
    #               continuous: "FULL", # accepts FULL
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] member_account_id
    #   The AWS ID of the Amazon Macie member account whose S3 resources'
    #   classification types you want to update.
    #   @return [String]
    #
    # @!attribute [rw] s3_resources_update
    #   The S3 resources whose classification types you want to update.
    #   @return [Array<Types::S3ResourceClassificationUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/UpdateS3ResourcesRequest AWS API Documentation
    #
    class UpdateS3ResourcesRequest < Struct.new(
      :member_account_id,
      :s3_resources_update)
      include Aws::Structure
    end

    # @!attribute [rw] failed_s3_resources
    #   The S3 resources whose classification types can't be updated. An
    #   error code and an error message are provided for each failed item.
    #   @return [Array<Types::FailedS3Resource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/UpdateS3ResourcesResult AWS API Documentation
    #
    class UpdateS3ResourcesResult < Struct.new(
      :failed_s3_resources)
      include Aws::Structure
    end

  end
end
