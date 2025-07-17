# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MPA
  module Types

    # You do not have sufficient access to perform this action. Check your
    # permissions, and try again.
    #
    # @!attribute [rw] message
    #   Message for the `AccessDeniedException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Strategy for how an approval team grants approval.
    #
    # @note ApprovalStrategy is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] mof_n
    #   Minimum number of approvals (M) required for a total number of
    #   approvers (N).
    #   @return [Types::MofNApprovalStrategy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ApprovalStrategy AWS API Documentation
    #
    class ApprovalStrategy < Struct.new(
      :mof_n,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class MofN < ApprovalStrategy; end
      class Unknown < ApprovalStrategy; end
    end

    # Contains details for how an approval team grants approval.
    #
    # @note ApprovalStrategyResponse is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ApprovalStrategyResponse corresponding to the set member.
    #
    # @!attribute [rw] mof_n
    #   Minimum number of approvals (M) required for a total number of
    #   approvers (N).
    #   @return [Types::MofNApprovalStrategy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ApprovalStrategyResponse AWS API Documentation
    #
    class ApprovalStrategyResponse < Struct.new(
      :mof_n,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class MofN < ApprovalStrategyResponse; end
      class Unknown < ApprovalStrategyResponse; end
    end

    # Contains details for an approver.
    #
    # @!attribute [rw] primary_identity_id
    #   ID for the user.
    #   @return [String]
    #
    # @!attribute [rw] primary_identity_source_arn
    #   Amazon Resource Name (ARN) for the identity source. The identity
    #   source manages the user authentication for approvers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ApprovalTeamRequestApprover AWS API Documentation
    #
    class ApprovalTeamRequestApprover < Struct.new(
      :primary_identity_id,
      :primary_identity_source_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_arn
    #   Amazon Resource Name (ARN) for the session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/CancelSessionRequest AWS API Documentation
    #
    class CancelSessionRequest < Struct.new(
      :session_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/CancelSessionResponse AWS API Documentation
    #
    class CancelSessionResponse < Aws::EmptyStructure; end

    # The request cannot be completed because it conflicts with the current
    # state of a resource.
    #
    # @!attribute [rw] message
    #   Message for the `ConflictException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   populates this field.
    #
    #   <note markdown="1"> **What is idempotency?**
    #
    #    When you make a mutating API request, the request typically returns
    #   a result before the operation's asynchronous workflows have
    #   completed. Operations might also time out or encounter other server
    #   issues before they complete, even though the request has already
    #   returned a result. This could make it difficult to determine whether
    #   the request succeeded or not, and could lead to multiple retries to
    #   ensure that the operation completes successfully. However, if the
    #   original request and the subsequent retries are successful, the
    #   operation is completed multiple times. This means that you might
    #   create more resources than you intended.
    #
    #    *Idempotency* ensures that an API request completes no more than one
    #   time. With an idempotent request, if the original request completes
    #   successfully, any subsequent retries complete successfully without
    #   performing any further actions.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] approval_strategy
    #   An `ApprovalStrategy` object. Contains details for how the team
    #   grants approval.
    #   @return [Types::ApprovalStrategy]
    #
    # @!attribute [rw] approvers
    #   An array of `ApprovalTeamRequesterApprovers` objects. Contains
    #   details for the approvers in the team.
    #   @return [Array<Types::ApprovalTeamRequestApprover>]
    #
    # @!attribute [rw] description
    #   Description for the team.
    #   @return [String]
    #
    # @!attribute [rw] policies
    #   An array of `PolicyReference` objects. Contains a list of policies
    #   that define the permissions for team resources.
    #
    #   The protected operation for a service integration might require
    #   specific permissions. For more information, see [How other services
    #   work with Multi-party approval][1] in the *Multi-party approval User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html
    #   @return [Array<Types::PolicyReference>]
    #
    # @!attribute [rw] name
    #   Name of the team.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags you want to attach to the team.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/CreateApprovalTeamRequest AWS API Documentation
    #
    class CreateApprovalTeamRequest < Struct.new(
      :client_token,
      :approval_strategy,
      :approvers,
      :description,
      :policies,
      :name,
      :tags)
      SENSITIVE = [:description, :tags]
      include Aws::Structure
    end

    # @!attribute [rw] creation_time
    #   Timestamp when the team was created.
    #   @return [Time]
    #
    # @!attribute [rw] arn
    #   Amazon Resource Name (ARN) for the team that was created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the team that was created.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   Version ID for the team that was created. When a team is updated,
    #   the version ID changes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/CreateApprovalTeamResponse AWS API Documentation
    #
    class CreateApprovalTeamResponse < Struct.new(
      :creation_time,
      :arn,
      :name,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_source_parameters
    #   A ` IdentitySourceParameters` object. Contains details for the
    #   resource that provides identities to the identity source. For
    #   example, an IAM Identity Center instance.
    #   @return [Types::IdentitySourceParameters]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   populates this field.
    #
    #   <note markdown="1"> **What is idempotency?**
    #
    #    When you make a mutating API request, the request typically returns
    #   a result before the operation's asynchronous workflows have
    #   completed. Operations might also time out or encounter other server
    #   issues before they complete, even though the request has already
    #   returned a result. This could make it difficult to determine whether
    #   the request succeeded or not, and could lead to multiple retries to
    #   ensure that the operation completes successfully. However, if the
    #   original request and the subsequent retries are successful, the
    #   operation is completed multiple times. This means that you might
    #   create more resources than you intended.
    #
    #    *Idempotency* ensures that an API request completes no more than one
    #   time. With an idempotent request, if the original request completes
    #   successfully, any subsequent retries complete successfully without
    #   performing any further actions.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tag you want to attach to the identity source.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/CreateIdentitySourceRequest AWS API Documentation
    #
    class CreateIdentitySourceRequest < Struct.new(
      :identity_source_parameters,
      :client_token,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] identity_source_type
    #   The type of resource that provided identities to the identity
    #   source. For example, an IAM Identity Center instance.
    #   @return [String]
    #
    # @!attribute [rw] identity_source_arn
    #   Amazon Resource Name (ARN) for the identity source that was created.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Timestamp when the identity source was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/CreateIdentitySourceResponse AWS API Documentation
    #
    class CreateIdentitySourceResponse < Struct.new(
      :identity_source_type,
      :identity_source_arn,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_source_arn
    #   Amazon Resource Name (ARN) for identity source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/DeleteIdentitySourceRequest AWS API Documentation
    #
    class DeleteIdentitySourceRequest < Struct.new(
      :identity_source_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Amaazon Resource Name (ARN) for the team.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   Version ID for the team.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/DeleteInactiveApprovalTeamVersionRequest AWS API Documentation
    #
    class DeleteInactiveApprovalTeamVersionRequest < Struct.new(
      :arn,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/DeleteInactiveApprovalTeamVersionResponse AWS API Documentation
    #
    class DeleteInactiveApprovalTeamVersionResponse < Aws::EmptyStructure; end

    # Contains the filter to apply to requests. You can specify up to 10
    # filters for a request.
    #
    # @!attribute [rw] field_name
    #   Name of the filter to use.
    #
    #   <note markdown="1"> **Supported filters**
    #
    #    The supported filters for ListSessions are: `ActionName`,
    #   `SessionStatus`, and `InitationTime`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   Operator to use for filtering.
    #
    #   * `EQ`: Equal to the specified value
    #
    #   * `NE`: Not equal to the specified value
    #
    #   * `GT`: Greater than the specified value
    #
    #   * `LT`: Less than the specified value
    #
    #   * `GTE`: Greater than or equal to the specified value
    #
    #   * `LTE`: Less than or equal to the specified value
    #
    #   * `CONTAINS`: Contains the specified value
    #
    #   * `NOT_CONTAINS`: Does not contain the specified value
    #
    #   * `BETWEEN`: Between two values, inclusive of the specified values.
    #
    #   <note markdown="1"> **Supported operators for each filter**:
    #
    #    * `ActionName`: `EQ` \| `NE` \| `CONTAINS` \| `NOT_CONTAINS`
    #
    #   * `SessionStatus`: `EQ` \| `NE`
    #
    #   * `InitiationTime`: `GT` \| `LT` \| `GTE` \| `LTE` \| `BETWEEN`
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Value to use for filtering. For the `BETWEEN` operator, specify
    #   values in the format `a AND b` (`AND` is case-insensitive).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :field_name,
      :operator,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Amazon Resource Name (ARN) for the team.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/GetApprovalTeamRequest AWS API Documentation
    #
    class GetApprovalTeamRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creation_time
    #   Timestamp when the team was created.
    #   @return [Time]
    #
    # @!attribute [rw] approval_strategy
    #   An `ApprovalStrategyResponse` object. Contains details for how the
    #   team grants approval.
    #   @return [Types::ApprovalStrategyResponse]
    #
    # @!attribute [rw] number_of_approvers
    #   Total number of approvers in the team.
    #   @return [Integer]
    #
    # @!attribute [rw] approvers
    #   An array of `GetApprovalTeamResponseApprover ` objects. Contains
    #   details for the approvers in the team.
    #   @return [Array<Types::GetApprovalTeamResponseApprover>]
    #
    # @!attribute [rw] arn
    #   Amazon Resource Name (ARN) for the team.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description for the team.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the approval team.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status for the team. For more information, see [Team health][1] in
    #   the *Multi-party approval User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-health.html
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   Status code for the approval team. For more information, see [Team
    #   health][1] in the *Multi-party approval User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-health.html
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Message describing the status for the team.
    #   @return [String]
    #
    # @!attribute [rw] update_session_arn
    #   Amazon Resource Name (ARN) for the session.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   Version ID for the team.
    #   @return [String]
    #
    # @!attribute [rw] policies
    #   An array of `PolicyReference` objects. Contains a list of policies
    #   that define the permissions for team resources.
    #
    #   The protected operation for a service integration might require
    #   specific permissions. For more information, see [How other services
    #   work with Multi-party approval][1] in the *Multi-party approval User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html
    #   @return [Array<Types::PolicyReference>]
    #
    # @!attribute [rw] last_update_time
    #   Timestamp when the team was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] pending_update
    #   A `PendingUpdate` object. Contains details for the pending updates
    #   for the team, if applicable.
    #   @return [Types::PendingUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/GetApprovalTeamResponse AWS API Documentation
    #
    class GetApprovalTeamResponse < Struct.new(
      :creation_time,
      :approval_strategy,
      :number_of_approvers,
      :approvers,
      :arn,
      :description,
      :name,
      :status,
      :status_code,
      :status_message,
      :update_session_arn,
      :version_id,
      :policies,
      :last_update_time,
      :pending_update)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Contains details for an approver.
    #
    # @!attribute [rw] approver_id
    #   ID for the approver.
    #   @return [String]
    #
    # @!attribute [rw] response_time
    #   Timestamp when the approver responded to an approval team
    #   invitation.
    #   @return [Time]
    #
    # @!attribute [rw] primary_identity_id
    #   ID for the user.
    #   @return [String]
    #
    # @!attribute [rw] primary_identity_source_arn
    #   Amazon Resource Name (ARN) for the identity source. The identity
    #   source manages the user authentication for approvers.
    #   @return [String]
    #
    # @!attribute [rw] primary_identity_status
    #   Status for the identity source. For example, if an approver has
    #   accepted a team invitation with a user authentication method managed
    #   by the identity source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/GetApprovalTeamResponseApprover AWS API Documentation
    #
    class GetApprovalTeamResponseApprover < Struct.new(
      :approver_id,
      :response_time,
      :primary_identity_id,
      :primary_identity_source_arn,
      :primary_identity_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_source_arn
    #   Amazon Resource Name (ARN) for the identity source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/GetIdentitySourceRequest AWS API Documentation
    #
    class GetIdentitySourceRequest < Struct.new(
      :identity_source_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_source_type
    #   The type of resource that provided identities to the identity
    #   source. For example, an IAM Identity Center instance.
    #   @return [String]
    #
    # @!attribute [rw] identity_source_parameters
    #   A ` IdentitySourceParameters` object. Contains details for the
    #   resource that provides identities to the identity source. For
    #   example, an IAM Identity Center instance.
    #   @return [Types::IdentitySourceParametersForGet]
    #
    # @!attribute [rw] identity_source_arn
    #   Amazon Resource Name (ARN) for the identity source.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Timestamp when the identity source was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Status for the identity source. For example, if the identity source
    #   is `ACTIVE`.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   Status code of the identity source.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Message describing the status for the identity source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/GetIdentitySourceResponse AWS API Documentation
    #
    class GetIdentitySourceResponse < Struct.new(
      :identity_source_type,
      :identity_source_parameters,
      :identity_source_arn,
      :creation_time,
      :status,
      :status_code,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_version_arn
    #   Amazon Resource Name (ARN) for the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/GetPolicyVersionRequest AWS API Documentation
    #
    class GetPolicyVersionRequest < Struct.new(
      :policy_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_version
    #   A `PolicyVersion` object. Contains details for the version of the
    #   policy. Policies define the permissions for team resources.
    #
    #   The protected operation for a service integration might require
    #   specific permissions. For more information, see [How other services
    #   work with Multi-party approval][1] in the *Multi-party approval User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html
    #   @return [Types::PolicyVersion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/GetPolicyVersionResponse AWS API Documentation
    #
    class GetPolicyVersionResponse < Struct.new(
      :policy_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) for the resource.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   Name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The type of policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/GetResourcePolicyRequest AWS API Documentation
    #
    class GetResourcePolicyRequest < Struct.new(
      :resource_arn,
      :policy_name,
      :policy_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) for the resource.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The type of policy
    #   @return [String]
    #
    # @!attribute [rw] policy_version_arn
    #   Amazon Resource Name (ARN) for the policy version.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   Name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   Document that contains the contents for the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/GetResourcePolicyResponse AWS API Documentation
    #
    class GetResourcePolicyResponse < Struct.new(
      :resource_arn,
      :policy_type,
      :policy_version_arn,
      :policy_name,
      :policy_document)
      SENSITIVE = [:policy_document]
      include Aws::Structure
    end

    # @!attribute [rw] session_arn
    #   Amazon Resource Name (ARN) for the session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/GetSessionRequest AWS API Documentation
    #
    class GetSessionRequest < Struct.new(
      :session_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_arn
    #   Amazon Resource Name (ARN) for the session.
    #   @return [String]
    #
    # @!attribute [rw] approval_team_arn
    #   Amazon Resource Name (ARN) for the approval team.
    #   @return [String]
    #
    # @!attribute [rw] approval_team_name
    #   Name of the approval team.
    #   @return [String]
    #
    # @!attribute [rw] protected_resource_arn
    #   Amazon Resource Name (ARN) for the protected operation.
    #   @return [String]
    #
    # @!attribute [rw] approval_strategy
    #   An `ApprovalStrategyResponse` object. Contains details for how the
    #   team grants approval
    #   @return [Types::ApprovalStrategyResponse]
    #
    # @!attribute [rw] number_of_approvers
    #   Total number of approvers in the session.
    #   @return [Integer]
    #
    # @!attribute [rw] initiation_time
    #   Timestamp when the session was initiated.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_time
    #   Timestamp when the session will expire.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   Timestamp when the session completed.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   Description for the session.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Metadata for the session.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status
    #   Status for the session. For example, if the team has approved the
    #   requested operation.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   Status code of the session.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Message describing the status for session.
    #   @return [String]
    #
    # @!attribute [rw] execution_status
    #   Status for the protected operation. For example, if the operation is
    #   `PENDING`.
    #   @return [String]
    #
    # @!attribute [rw] action_name
    #   Name of the protected operation.
    #   @return [String]
    #
    # @!attribute [rw] requester_service_principal
    #   [Service principal][1] for the service associated with the protected
    #   operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#principal-services
    #   @return [String]
    #
    # @!attribute [rw] requester_principal_arn
    #   [IAM principal][1] that made the operation request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/intro-structure.html#intro-structure-request
    #   @return [String]
    #
    # @!attribute [rw] requester_account_id
    #   ID for the account that made the operation request.
    #   @return [String]
    #
    # @!attribute [rw] requester_region
    #   Amazon Web Services Region where the operation request originated.
    #   @return [String]
    #
    # @!attribute [rw] requester_comment
    #   Message from the account that made the operation request
    #   @return [String]
    #
    # @!attribute [rw] action_completion_strategy
    #   Strategy for executing the protected operation.
    #   `AUTO_COMPLETION_UPON_APPROVAL` means the operation is automatically
    #   executed using the requester's permissions, if approved.
    #   @return [String]
    #
    # @!attribute [rw] approver_responses
    #   An array of `GetSessionResponseApproverResponse` objects. Contains
    #   details for approver responses in the session.
    #   @return [Array<Types::GetSessionResponseApproverResponse>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/GetSessionResponse AWS API Documentation
    #
    class GetSessionResponse < Struct.new(
      :session_arn,
      :approval_team_arn,
      :approval_team_name,
      :protected_resource_arn,
      :approval_strategy,
      :number_of_approvers,
      :initiation_time,
      :expiration_time,
      :completion_time,
      :description,
      :metadata,
      :status,
      :status_code,
      :status_message,
      :execution_status,
      :action_name,
      :requester_service_principal,
      :requester_principal_arn,
      :requester_account_id,
      :requester_region,
      :requester_comment,
      :action_completion_strategy,
      :approver_responses)
      SENSITIVE = [:description, :metadata, :requester_comment]
      include Aws::Structure
    end

    # Contains details for an approver response in an approval session.
    #
    # @!attribute [rw] approver_id
    #   ID for the approver.
    #   @return [String]
    #
    # @!attribute [rw] identity_source_arn
    #   Amazon Resource Name (ARN) for the identity source. The identity
    #   source manages the user authentication for approvers.
    #   @return [String]
    #
    # @!attribute [rw] identity_id
    #   ID for the identity source. The identity source manages the user
    #   authentication for approvers.
    #   @return [String]
    #
    # @!attribute [rw] response
    #   Response to the operation request.
    #   @return [String]
    #
    # @!attribute [rw] response_time
    #   Timestamp when a approver responded to the operation request.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/GetSessionResponseApproverResponse AWS API Documentation
    #
    class GetSessionResponseApproverResponse < Struct.new(
      :approver_id,
      :identity_source_arn,
      :identity_id,
      :response,
      :response_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # IAM Identity Center credentials. For more information see, [IAM
    # Identity Center][1] .
    #
    #
    #
    # [1]: http://aws.amazon.com/identity-center/
    #
    # @!attribute [rw] instance_arn
    #   Amazon Resource Name (ARN) for the IAM Identity Center instance.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   Amazon Web Services Region where the IAM Identity Center instance is
    #   located.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/IamIdentityCenter AWS API Documentation
    #
    class IamIdentityCenter < Struct.new(
      :instance_arn,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # IAM Identity Center credentials. For more information see, [IAM
    # Identity Center][1] .
    #
    #
    #
    # [1]: http://aws.amazon.com/identity-center/
    #
    # @!attribute [rw] instance_arn
    #   Amazon Resource Name (ARN) for the IAM Identity Center instance.
    #   @return [String]
    #
    # @!attribute [rw] approval_portal_url
    #   URL for the approval portal associated with the IAM Identity Center
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   Amazon Web Services Region where the IAM Identity Center instance is
    #   located.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/IamIdentityCenterForGet AWS API Documentation
    #
    class IamIdentityCenterForGet < Struct.new(
      :instance_arn,
      :approval_portal_url,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # IAM Identity Center credentials. For more information see, [IAM
    # Identity Center][1] .
    #
    #
    #
    # [1]: http://aws.amazon.com/identity-center/
    #
    # @!attribute [rw] instance_arn
    #   Amazon Resource Name (ARN) for the IAM Identity Center instance.
    #   @return [String]
    #
    # @!attribute [rw] approval_portal_url
    #   URL for the approval portal associated with the IAM Identity Center
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   Amazon Web Services Region where the IAM Identity Center instance is
    #   located.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/IamIdentityCenterForList AWS API Documentation
    #
    class IamIdentityCenterForList < Struct.new(
      :instance_arn,
      :approval_portal_url,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details for an identity source. For more information, see
    # [Identity source][1] in the *Multi-party approval User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html
    #
    # @!attribute [rw] identity_source_type
    #   The type of resource that provided identities to the identity
    #   source. For example, an IAM Identity Center instance.
    #   @return [String]
    #
    # @!attribute [rw] identity_source_parameters
    #   A `IdentitySourceParametersForList` object. Contains details for the
    #   resource that provides identities to the identity source. For
    #   example, an IAM Identity Center instance.
    #   @return [Types::IdentitySourceParametersForList]
    #
    # @!attribute [rw] identity_source_arn
    #   Amazon Resource Name (ARN) for the identity source.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Timestamp when the identity source was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Status for the identity source. For example, if the identity source
    #   is `ACTIVE`.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   Status code of the identity source.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Message describing the status for the identity source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/IdentitySourceForList AWS API Documentation
    #
    class IdentitySourceForList < Struct.new(
      :identity_source_type,
      :identity_source_parameters,
      :identity_source_arn,
      :creation_time,
      :status,
      :status_code,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details for the resource that provides identities to the
    # identity source. For example, an IAM Identity Center instance.
    #
    # @!attribute [rw] iam_identity_center
    #   IAM Identity Center credentials.
    #   @return [Types::IamIdentityCenter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/IdentitySourceParameters AWS API Documentation
    #
    class IdentitySourceParameters < Struct.new(
      :iam_identity_center)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details for the resource that provides identities to the
    # identity source. For example, an IAM Identity Center instance. For
    # more information, see [Identity source][1] in the *Multi-party
    # approval User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html
    #
    # @note IdentitySourceParametersForGet is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of IdentitySourceParametersForGet corresponding to the set member.
    #
    # @!attribute [rw] iam_identity_center
    #   IAM Identity Center credentials.
    #   @return [Types::IamIdentityCenterForGet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/IdentitySourceParametersForGet AWS API Documentation
    #
    class IdentitySourceParametersForGet < Struct.new(
      :iam_identity_center,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class IamIdentityCenter < IdentitySourceParametersForGet; end
      class Unknown < IdentitySourceParametersForGet; end
    end

    # Contains details for the resource that provides identities to the
    # identity source. For example, an IAM Identity Center instance. For
    # more information, see [Identity source][1] in the *Multi-party
    # approval User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html
    #
    # @note IdentitySourceParametersForList is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of IdentitySourceParametersForList corresponding to the set member.
    #
    # @!attribute [rw] iam_identity_center
    #   IAM Identity Center credentials.
    #   @return [Types::IamIdentityCenterForList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/IdentitySourceParametersForList AWS API Documentation
    #
    class IdentitySourceParametersForList < Struct.new(
      :iam_identity_center,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class IamIdentityCenter < IdentitySourceParametersForList; end
      class Unknown < IdentitySourceParametersForList; end
    end

    # The service encountered an internal error. Try your request again. If
    # the problem persists, contact Amazon Web Services Support.
    #
    # @!attribute [rw] message
    #   Message for the `InternalServerException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request contains an invalid parameter value.
    #
    # @!attribute [rw] message
    #   Message for the `InvalidParameterException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of items to return in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that you can retrieve the remaining
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a next call to the operation to get more output. You
    #   can repeat this until the `NextToken` response element returns
    #   `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ListApprovalTeamsRequest AWS API Documentation
    #
    class ListApprovalTeamsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a next call to the operation to get more output. You
    #   can repeat this until the `NextToken` response element returns
    #   `null`.
    #   @return [String]
    #
    # @!attribute [rw] approval_teams
    #   An array of `ListApprovalTeamsResponseApprovalTeam` objects.
    #   Contains details for approval teams.
    #   @return [Array<Types::ListApprovalTeamsResponseApprovalTeam>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ListApprovalTeamsResponse AWS API Documentation
    #
    class ListApprovalTeamsResponse < Struct.new(
      :next_token,
      :approval_teams)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details for an approval team
    #
    # @!attribute [rw] creation_time
    #   Timestamp when the team was created.
    #   @return [Time]
    #
    # @!attribute [rw] approval_strategy
    #   An `ApprovalStrategyResponse` object. Contains details for how an
    #   approval team grants approval.
    #   @return [Types::ApprovalStrategyResponse]
    #
    # @!attribute [rw] number_of_approvers
    #   Total number of approvers in the team.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   Amazon Resource Name (ARN) for the team.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the team.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description for the team.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status for the team. For more information, see [Team health][1] in
    #   the *Multi-party approval User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-health.html
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   Status code for the team. For more information, see [Team health][1]
    #   in the *Multi-party approval User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-health.html
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Message describing the status for the team.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ListApprovalTeamsResponseApprovalTeam AWS API Documentation
    #
    class ListApprovalTeamsResponseApprovalTeam < Struct.new(
      :creation_time,
      :approval_strategy,
      :number_of_approvers,
      :arn,
      :name,
      :description,
      :status,
      :status_code,
      :status_message)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of items to return in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that you can retrieve the remaining
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a next call to the operation to get more output. You
    #   can repeat this until the `NextToken` response element returns
    #   `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ListIdentitySourcesRequest AWS API Documentation
    #
    class ListIdentitySourcesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a next call to the operation to get more output. You
    #   can repeat this until the `NextToken` response element returns
    #   `null`.
    #   @return [String]
    #
    # @!attribute [rw] identity_sources
    #   A `IdentitySources`. Contains details for identity sources.
    #   @return [Array<Types::IdentitySourceForList>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ListIdentitySourcesResponse AWS API Documentation
    #
    class ListIdentitySourcesResponse < Struct.new(
      :next_token,
      :identity_sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of items to return in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that you can retrieve the remaining
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a next call to the operation to get more output. You
    #   can repeat this until the `NextToken` response element returns
    #   `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ListPoliciesRequest AWS API Documentation
    #
    class ListPoliciesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a next call to the operation to get more output. You
    #   can repeat this until the `NextToken` response element returns
    #   `null`.
    #   @return [String]
    #
    # @!attribute [rw] policies
    #   An array of `Policy` objects. Contains a list of policies that
    #   define the permissions for team resources.
    #
    #   The protected operation for a service integration might require
    #   specific permissions. For more information, see [How other services
    #   work with Multi-party approval][1] in the *Multi-party approval User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html
    #   @return [Array<Types::Policy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ListPoliciesResponse AWS API Documentation
    #
    class ListPoliciesResponse < Struct.new(
      :next_token,
      :policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of items to return in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that you can retrieve the remaining
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a next call to the operation to get more output. You
    #   can repeat this until the `NextToken` response element returns
    #   `null`.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   Amazon Resource Name (ARN) for the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ListPolicyVersionsRequest AWS API Documentation
    #
    class ListPolicyVersionsRequest < Struct.new(
      :max_results,
      :next_token,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a next call to the operation to get more output. You
    #   can repeat this until the `NextToken` response element returns
    #   `null`.
    #   @return [String]
    #
    # @!attribute [rw] policy_versions
    #   An array of `PolicyVersionSummary` objects. Contains details for the
    #   version of the policies that define the permissions for team
    #   resources.
    #
    #   The protected operation for a service integration might require
    #   specific permissions. For more information, see [How other services
    #   work with Multi-party approval][1] in the *Multi-party approval User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html
    #   @return [Array<Types::PolicyVersionSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ListPolicyVersionsResponse AWS API Documentation
    #
    class ListPolicyVersionsResponse < Struct.new(
      :next_token,
      :policy_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) for the resource.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that you can retrieve the remaining
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a next call to the operation to get more output. You
    #   can repeat this until the `NextToken` response element returns
    #   `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ListResourcePoliciesRequest AWS API Documentation
    #
    class ListResourcePoliciesRequest < Struct.new(
      :resource_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a next call to the operation to get more output. You
    #   can repeat this until the `NextToken` response element returns
    #   `null`.
    #   @return [String]
    #
    # @!attribute [rw] resource_policies
    #   An array of `ListResourcePoliciesResponseResourcePolicy` objects.
    #   Contains details about the policy for the resource.
    #   @return [Array<Types::ListResourcePoliciesResponseResourcePolicy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ListResourcePoliciesResponse AWS API Documentation
    #
    class ListResourcePoliciesResponse < Struct.new(
      :next_token,
      :resource_policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a policy for a resource.
    #
    # @!attribute [rw] policy_arn
    #   Amazon Resource Name (ARN) for policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The type of policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   Name of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ListResourcePoliciesResponseResourcePolicy AWS API Documentation
    #
    class ListResourcePoliciesResponseResourcePolicy < Struct.new(
      :policy_arn,
      :policy_type,
      :policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] approval_team_arn
    #   Amazon Resource Name (ARN) for the approval team.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that you can retrieve the remaining
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a next call to the operation to get more output. You
    #   can repeat this until the `NextToken` response element returns
    #   `null`.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   An array of `Filter` objects. Contains the filter to apply when
    #   listing sessions.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ListSessionsRequest AWS API Documentation
    #
    class ListSessionsRequest < Struct.new(
      :approval_team_arn,
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a next call to the operation to get more output. You
    #   can repeat this until the `NextToken` response element returns
    #   `null`.
    #   @return [String]
    #
    # @!attribute [rw] sessions
    #   An array of `ListSessionsResponseSession` objects. Contains details
    #   for the sessions.
    #   @return [Array<Types::ListSessionsResponseSession>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ListSessionsResponse AWS API Documentation
    #
    class ListSessionsResponse < Struct.new(
      :next_token,
      :sessions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details for an approval session. For more information, see
    # [Session][1] in the *Multi-party approval User Guide*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-health.html
    #
    # @!attribute [rw] session_arn
    #   Amazon Resource Name (ARN) for the session.
    #   @return [String]
    #
    # @!attribute [rw] approval_team_name
    #   Name of the approval team.
    #   @return [String]
    #
    # @!attribute [rw] approval_team_arn
    #   Amazon Resource Name (ARN) for the approval team.
    #   @return [String]
    #
    # @!attribute [rw] initiation_time
    #   Timestamp when the session was initiated.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_time
    #   Timestamp when the session was expire.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   Timestamp when the session was completed.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   Description for the team.
    #   @return [String]
    #
    # @!attribute [rw] action_name
    #   Name of the protected operation.
    #   @return [String]
    #
    # @!attribute [rw] protected_resource_arn
    #   Amazon Resource Name (ARN) for the protected operation.
    #   @return [String]
    #
    # @!attribute [rw] requester_service_principal
    #   [Service principal][1] for the service associated with the protected
    #   operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#principal-services
    #   @return [String]
    #
    # @!attribute [rw] requester_principal_arn
    #   [IAM principal][1] that made the operation request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/intro-structure.html#intro-structure-request
    #   @return [String]
    #
    # @!attribute [rw] requester_region
    #   Amazon Web Services Region where the operation request originated.
    #   @return [String]
    #
    # @!attribute [rw] requester_account_id
    #   ID for the account that made the operation request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status for the protected operation. For example, if the operation is
    #   `PENDING`.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   Status code of the session.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Message describing the status for session.
    #   @return [String]
    #
    # @!attribute [rw] action_completion_strategy
    #   Strategy for executing the protected operation.
    #   `AUTO_COMPLETION_UPON_APPROVAL` means the operation is executed
    #   automatically using the requester's permissions, if approved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ListSessionsResponseSession AWS API Documentation
    #
    class ListSessionsResponseSession < Struct.new(
      :session_arn,
      :approval_team_name,
      :approval_team_arn,
      :initiation_time,
      :expiration_time,
      :completion_time,
      :description,
      :action_name,
      :protected_resource_arn,
      :requester_service_principal,
      :requester_principal_arn,
      :requester_region,
      :requester_account_id,
      :status,
      :status_code,
      :status_message,
      :action_completion_strategy)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) for the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Tags attached to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Strategy for how an approval team grants approval.
    #
    # @!attribute [rw] min_approvals_required
    #   Minimum number of approvals (M) required for a total number of
    #   approvers (N).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/MofNApprovalStrategy AWS API Documentation
    #
    class MofNApprovalStrategy < Struct.new(
      :min_approvals_required)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details for the pending updates for an approval team, if
    # applicable.
    #
    # @!attribute [rw] version_id
    #   Version ID for the team.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description for the team.
    #   @return [String]
    #
    # @!attribute [rw] approval_strategy
    #   An `ApprovalStrategyResponse` object. Contains details for how the
    #   team grants approval.
    #   @return [Types::ApprovalStrategyResponse]
    #
    # @!attribute [rw] number_of_approvers
    #   Total number of approvers in the team.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   Status for the team. For more information, see [Team health][1] in
    #   the *Multi-party approval User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-health.html
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   Status code for the update. For more information, see [Team
    #   health][1] in the *Multi-party approval User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-health.html
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Message describing the status for the team.
    #   @return [String]
    #
    # @!attribute [rw] approvers
    #   An array of `GetApprovalTeamResponseApprover ` objects. Contains
    #   details for the approvers in the team.
    #   @return [Array<Types::GetApprovalTeamResponseApprover>]
    #
    # @!attribute [rw] update_initiation_time
    #   Timestamp when the update request was initiated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/PendingUpdate AWS API Documentation
    #
    class PendingUpdate < Struct.new(
      :version_id,
      :description,
      :approval_strategy,
      :number_of_approvers,
      :status,
      :status_code,
      :status_message,
      :approvers,
      :update_initiation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details for a policy. Policies define what operations a team
    # that define the permissions for team resources.
    #
    # The protected operation for a service integration might require
    # specific permissions. For more information, see [How other services
    # work with Multi-party approval][1] in the *Multi-party approval User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html
    #
    # @!attribute [rw] arn
    #   Amazon Resource Name (ARN) for the policy.
    #   @return [String]
    #
    # @!attribute [rw] default_version
    #   Determines if the specified policy is the default for the team.
    #   @return [Integer]
    #
    # @!attribute [rw] policy_type
    #   The type of policy.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/Policy AWS API Documentation
    #
    class Policy < Struct.new(
      :arn,
      :default_version,
      :policy_type,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the Amazon Resource Name (ARN) for a policy. Policies define
    # what operations a team that define the permissions for team resources.
    #
    # The protected operation for a service integration might require
    # specific permissions. For more information, see [How other services
    # work with Multi-party approval][1] in the *Multi-party approval User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html
    #
    # @!attribute [rw] policy_arn
    #   Amazon Resource Name (ARN) for the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/PolicyReference AWS API Documentation
    #
    class PolicyReference < Struct.new(
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details for the version of a policy. Policies define what
    # operations a team that define the permissions for team resources.
    #
    # The protected operation for a service integration might require
    # specific permissions. For more information, see [How other services
    # work with Multi-party approval][1] in the *Multi-party approval User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html
    #
    # @!attribute [rw] arn
    #   Amazon Resource Name (ARN) for the team.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   Amazon Resource Name (ARN) for the policy.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   Verison ID
    #   @return [Integer]
    #
    # @!attribute [rw] policy_type
    #   The type of policy.
    #   @return [String]
    #
    # @!attribute [rw] is_default
    #   Determines if the specified policy is the default for the team.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   Name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status for the policy. For example, if the policy is [attachable][1]
    #   or [deprecated][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_attach-policy.html
    #   [2]: https://docs.aws.amazon.com/access_policies_managed-deprecated.html
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Timestamp when the policy was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   Timestamp when the policy was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] document
    #   Document that contains the policy contents.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/PolicyVersion AWS API Documentation
    #
    class PolicyVersion < Struct.new(
      :arn,
      :policy_arn,
      :version_id,
      :policy_type,
      :is_default,
      :name,
      :status,
      :creation_time,
      :last_updated_time,
      :document)
      SENSITIVE = [:document]
      include Aws::Structure
    end

    # Contains details for the version of a policy. Policies define what
    # operations a team that define the permissions for team resources.
    #
    # The protected operation for a service integration might require
    # specific permissions. For more information, see [How other services
    # work with Multi-party approval][1] in the *Multi-party approval User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html
    #
    # @!attribute [rw] arn
    #   Amazon Resource Name (ARN) for the team.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   Amazon Resource Name (ARN) for the policy.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   Version ID for the policy.
    #   @return [Integer]
    #
    # @!attribute [rw] policy_type
    #   The type of policy.
    #   @return [String]
    #
    # @!attribute [rw] is_default
    #   Determines if the specified policy is the default for the team.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   Name of the policy
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status for the policy. For example, if the policy is [attachable][1]
    #   or [deprecated][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_attach-policy.html
    #   [2]: https://docs.aws.amazon.com/access_policies_managed-deprecated.html
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Timestamp when the policy was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   Timestamp when the policy was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/PolicyVersionSummary AWS API Documentation
    #
    class PolicyVersionSummary < Struct.new(
      :arn,
      :policy_arn,
      :version_id,
      :policy_type,
      :is_default,
      :name,
      :status,
      :creation_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource doesn't exist. Check the resource ID, and try
    # again.
    #
    # @!attribute [rw] message
    #   Message for the `ResourceNotFoundException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeds the service quota for your account. Request a
    # quota increase or reduce your request size.
    #
    # @!attribute [rw] message
    #   Message for the `ServiceQuotaExceededException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pending_window_days
    #   Number of days between when the team approves the delete request and
    #   when the team is deleted.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   Amazon Resource Name (ARN) for the team.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/StartActiveApprovalTeamDeletionRequest AWS API Documentation
    #
    class StartActiveApprovalTeamDeletionRequest < Struct.new(
      :pending_window_days,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deletion_completion_time
    #   Timestamp when the deletion process is scheduled to complete.
    #   @return [Time]
    #
    # @!attribute [rw] deletion_start_time
    #   Timestamp when the deletion process was initiated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/StartActiveApprovalTeamDeletionResponse AWS API Documentation
    #
    class StartActiveApprovalTeamDeletionResponse < Struct.new(
      :deletion_completion_time,
      :deletion_start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) for the resource you want to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags that you have added to the specified resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   Message for the `ThrottlingException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeds the maximum number of tags allowed for this
    # resource. Remove some tags, and try again.
    #
    # @!attribute [rw] message
    #   Message for the `TooManyTagsException` error.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   Name of the resource for the `TooManyTagsException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) for the resource you want to untag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Array of tag key-value pairs that you want to untag.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = [:tag_keys]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] approval_strategy
    #   An `ApprovalStrategy` object. Contains details for how the team
    #   grants approval.
    #   @return [Types::ApprovalStrategy]
    #
    # @!attribute [rw] approvers
    #   An array of `ApprovalTeamRequestApprover` objects. Contains details
    #   for the approvers in the team.
    #   @return [Array<Types::ApprovalTeamRequestApprover>]
    #
    # @!attribute [rw] description
    #   Description for the team.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   Amazon Resource Name (ARN) for the team.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/UpdateApprovalTeamRequest AWS API Documentation
    #
    class UpdateApprovalTeamRequest < Struct.new(
      :approval_strategy,
      :approvers,
      :description,
      :arn)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] version_id
    #   Version ID for the team that was created. When an approval team is
    #   updated, the version ID changes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/UpdateApprovalTeamResponse AWS API Documentation
    #
    class UpdateApprovalTeamResponse < Struct.new(
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] message
    #   Message for the `ValidationException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

