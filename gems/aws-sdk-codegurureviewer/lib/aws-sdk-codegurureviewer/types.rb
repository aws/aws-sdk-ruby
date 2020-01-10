# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeGuruReviewer
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateRepositoryRequest
    #   data as a hash:
    #
    #       {
    #         repository: { # required
    #           code_commit: {
    #             name: "Name", # required
    #           },
    #         },
    #         client_request_token: "ClientRequestToken",
    #       }
    #
    # @!attribute [rw] repository
    #   The repository to associate.
    #   @return [Types::Repository]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   If you want to add a new repository association, this parameter
    #   specifies a unique identifier for the new repository association
    #   that helps ensure idempotency.
    #
    #   If you use the AWS CLI or one of the AWS SDK to call this operation,
    #   then you can leave this parameter empty. The CLI or SDK generates a
    #   random UUID for you and includes that in the request. If you don't
    #   use the SDK and instead generate a raw HTTP request to the Secrets
    #   Manager service endpoint, then you must generate a
    #   ClientRequestToken yourself for new versions and include that value
    #   in the request.
    #
    #   You typically only need to interact with this value if you implement
    #   your own retry logic and want to ensure that a given repository
    #   association is not created twice. We recommend that you generate a
    #   UUID-type value to ensure uniqueness within the specified repository
    #   association.
    #
    #   Amazon CodeGuru Reviewer uses this value to prevent the accidental
    #   creation of duplicate repository associations if there are failures
    #   and retries.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/AssociateRepositoryRequest AWS API Documentation
    #
    class AssociateRepositoryRequest < Struct.new(
      :repository,
      :client_request_token)
      include Aws::Structure
    end

    # @!attribute [rw] repository_association
    #   Information about the repository association.
    #   @return [Types::RepositoryAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/AssociateRepositoryResponse AWS API Documentation
    #
    class AssociateRepositoryResponse < Struct.new(
      :repository_association)
      include Aws::Structure
    end

    # Information about an AWS CodeCommit repository.
    #
    # @note When making an API call, you may pass CodeCommitRepository
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the AWS CodeCommit repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/CodeCommitRepository AWS API Documentation
    #
    class CodeCommitRepository < Struct.new(
      :name)
      include Aws::Structure
    end

    # The requested operation would cause a conflict with the current state
    # of a service resource associated with the request. Resolve the
    # conflict before retrying this request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRepositoryAssociationRequest
    #   data as a hash:
    #
    #       {
    #         association_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] association_arn
    #   The Amazon Resource Name (ARN) identifying the association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/DescribeRepositoryAssociationRequest AWS API Documentation
    #
    class DescribeRepositoryAssociationRequest < Struct.new(
      :association_arn)
      include Aws::Structure
    end

    # @!attribute [rw] repository_association
    #   Information about the repository association.
    #   @return [Types::RepositoryAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/DescribeRepositoryAssociationResponse AWS API Documentation
    #
    class DescribeRepositoryAssociationResponse < Struct.new(
      :repository_association)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateRepositoryRequest
    #   data as a hash:
    #
    #       {
    #         association_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] association_arn
    #   The Amazon Resource Name (ARN) identifying the association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/DisassociateRepositoryRequest AWS API Documentation
    #
    class DisassociateRepositoryRequest < Struct.new(
      :association_arn)
      include Aws::Structure
    end

    # @!attribute [rw] repository_association
    #   Information about the disassociated repository.
    #   @return [Types::RepositoryAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/DisassociateRepositoryResponse AWS API Documentation
    #
    class DisassociateRepositoryResponse < Struct.new(
      :repository_association)
      include Aws::Structure
    end

    # The server encountered an internal error and is unable to complete the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRepositoryAssociationsRequest
    #   data as a hash:
    #
    #       {
    #         provider_types: ["CodeCommit"], # accepts CodeCommit, GitHub
    #         states: ["Associated"], # accepts Associated, Associating, Failed, Disassociating
    #         names: ["Name"],
    #         owners: ["Owner"],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] provider_types
    #   List of provider types to use as a filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] states
    #   List of states to use as a filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] names
    #   List of names to use as a filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] owners
    #   List of owners to use as a filter. For AWS CodeCommit, the owner is
    #   the AWS account id. For GitHub, it is the GitHub account name.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of repository association results returned by
    #   `ListRepositoryAssociations` in paginated output. When this
    #   parameter is used, `ListRepositoryAssociations` only returns
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can
    #   be seen by sending another `ListRepositoryAssociations` request with
    #   the returned `nextToken` value. This value can be between 1 and 100.
    #   If this parameter is not used, then `ListRepositoryAssociations`
    #   returns up to 100 results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListRepositoryAssociations` request where `maxResults` was used and
    #   the results exceeded the value of that parameter. Pagination
    #   continues from the end of the previous results that returned the
    #   `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ListRepositoryAssociationsRequest AWS API Documentation
    #
    class ListRepositoryAssociationsRequest < Struct.new(
      :provider_types,
      :states,
      :names,
      :owners,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] repository_association_summaries
    #   A list of repository associations that meet the criteria of the
    #   request.
    #   @return [Array<Types::RepositoryAssociationSummary>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListRecommendations`
    #   request. When the results of a `ListRecommendations` request exceed
    #   `maxResults`, this value can be used to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ListRepositoryAssociationsResponse AWS API Documentation
    #
    class ListRepositoryAssociationsResponse < Struct.new(
      :repository_association_summaries,
      :next_token)
      include Aws::Structure
    end

    # The resource specified in the request was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Information about a repository.
    #
    # @note When making an API call, you may pass Repository
    #   data as a hash:
    #
    #       {
    #         code_commit: {
    #           name: "Name", # required
    #         },
    #       }
    #
    # @!attribute [rw] code_commit
    #   Information about an AWS CodeCommit repository.
    #   @return [Types::CodeCommitRepository]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/Repository AWS API Documentation
    #
    class Repository < Struct.new(
      :code_commit)
      include Aws::Structure
    end

    # Information about a repository association.
    #
    # @!attribute [rw] association_id
    #   The id of the repository association.
    #   @return [String]
    #
    # @!attribute [rw] association_arn
    #   The Amazon Resource Name (ARN) identifying the repository
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the repository.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the repository.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The provider type of the repository association.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the repository association.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   A description of why the repository association is in the current
    #   state.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time_stamp
    #   The time, in milliseconds since the epoch, when the repository
    #   association was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] created_time_stamp
    #   The time, in milliseconds since the epoch, when the repository
    #   association was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/RepositoryAssociation AWS API Documentation
    #
    class RepositoryAssociation < Struct.new(
      :association_id,
      :association_arn,
      :name,
      :owner,
      :provider_type,
      :state,
      :state_reason,
      :last_updated_time_stamp,
      :created_time_stamp)
      include Aws::Structure
    end

    # Information about a repository association.
    #
    # @!attribute [rw] association_arn
    #   The Amazon Resource Name (ARN) identifying the repository
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time_stamp
    #   The time, in milliseconds since the epoch, since the repository
    #   association was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] association_id
    #   The repository association ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the repository association.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the repository association.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The provider type of the repository association.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the repository association.
    #
    #   Associated
    #
    #   : Amazon CodeGuru Reviewer is associated with the repository.
    #
    #   Associating
    #
    #   : The association is in progress.
    #
    #   Failed
    #
    #   : The association failed. For more information about troubleshooting
    #     (or why it failed), see \[troubleshooting topic\].
    #
    #   Disassociating
    #
    #   : Amazon CodeGuru Reviewer is in the process of disassociating with
    #     the repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/RepositoryAssociationSummary AWS API Documentation
    #
    class RepositoryAssociationSummary < Struct.new(
      :association_arn,
      :last_updated_time_stamp,
      :association_id,
      :name,
      :owner,
      :provider_type,
      :state)
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The input fails to satisfy the specified constraints.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      include Aws::Structure
    end

  end
end
