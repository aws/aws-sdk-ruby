# frozen_string_literal: true

# This is generated code!

module Aws::MPA
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action. Check your permissions, and try again.</p>
    # @!attribute message
    #   <p>Message for the <code>AccessDeniedException</code> error.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Strategy for how an approval team grants approval.</p>
    # @!attribute mof_n
    #   <p>Minimum number of approvals (M) required for a total number of approvers (N).</p>
    #   @return [Types::MofNApprovalStrategy]
    class ApprovalStrategy < Struct.new(
      :mof_n,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class MofN < ApprovalStrategy; end
      class Unknown < ApprovalStrategy; end
    end

    # <p>Contains details for how an approval team grants approval.</p>
    # @!attribute mof_n
    #   <p>Minimum number of approvals (M) required for a total number of approvers (N).</p>
    #   @return [Types::MofNApprovalStrategy]
    class ApprovalStrategyResponse < Struct.new(
      :mof_n,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class MofN < ApprovalStrategyResponse; end
      class Unknown < ApprovalStrategyResponse; end
    end

    # <p>Contains details for an approver.</p>
    # @!attribute primary_identity_id
    #   <p>ID for the user.</p>
    #   @return [String]
    # @!attribute primary_identity_source_arn
    #   <p>Amazon Resource Name (ARN) for the identity source. The identity source manages the user authentication for approvers.</p>
    #   @return [String]
    class ApprovalTeamRequestApprover < Struct.new(
      :primary_identity_id,
      :primary_identity_source_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_arn
    #   <p>Amazon Resource Name (ARN) for the session.</p>
    #   @return [String]
    class CancelSessionRequest < Struct.new(
      :session_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class CancelSessionResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request cannot be completed because it conflicts with the current state of a resource.</p>
    # @!attribute message
    #   <p>Message for the <code>ConflictException</code> error.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services populates this field.</p> <note> <p> <b>What is idempotency?</b> </p> <p>When you make a mutating API request, the request typically returns a result before the operation's asynchronous workflows have completed. Operations might also time out or encounter other server issues before they complete, even though the request has already returned a result. This could make it difficult to determine whether the request succeeded or not, and could lead to multiple retries to ensure that the operation completes successfully. However, if the original request and the subsequent retries are successful, the operation is completed multiple times. This means that you might create more resources than you intended.</p> <p> <i>Idempotency</i> ensures that an API request completes no more than one time. With an idempotent request, if the original request completes successfully, any subsequent retries complete successfully without performing any further actions.</p> </note>
    #   @return [String]
    # @!attribute approval_strategy
    #   <p>An <code>ApprovalStrategy</code> object. Contains details for how the team grants approval.</p>
    #   @return [Types::ApprovalStrategy]
    # @!attribute approvers
    #   <p>An array of <code>ApprovalTeamRequesterApprovers</code> objects. Contains details for the approvers in the team.</p>
    #   @return [Array<Types::ApprovalTeamRequestApprover>]
    # @!attribute description
    #   <p>Description for the team.</p>
    #   @return [String]
    # @!attribute policies
    #   <p>An array of <code>PolicyReference</code> objects. Contains a list of policies that define the permissions for team resources.</p> <p>The protected operation for a service integration might require specific permissions. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html">How other services work with Multi-party approval</a> in the <i>Multi-party approval User Guide</i>.</p>
    #   @return [Array<Types::PolicyReference>]
    # @!attribute name
    #   <p>Name of the team.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags you want to attach to the team.</p>
    #   @return [Hash<String, String>]
    class CreateApprovalTeamRequest < Struct.new(
      :client_token,
      :approval_strategy,
      :approvers,
      :description,
      :policies,
      :name,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute creation_time
    #   <p>Timestamp when the team was created.</p>
    #   @return [Time]
    # @!attribute arn
    #   <p>Amazon Resource Name (ARN) for the team that was created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the team that was created.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID for the team that was created. When a team is updated, the version ID changes.</p>
    #   @return [String]
    class CreateApprovalTeamResponse < Struct.new(
      :creation_time,
      :arn,
      :name,
      :version_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_source_parameters
    #   <p>A <code> IdentitySourceParameters</code> object. Contains details for the resource that provides identities to the identity source. For example, an IAM Identity Center instance.</p>
    #   @return [Types::IdentitySourceParameters]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services populates this field.</p> <note> <p> <b>What is idempotency?</b> </p> <p>When you make a mutating API request, the request typically returns a result before the operation's asynchronous workflows have completed. Operations might also time out or encounter other server issues before they complete, even though the request has already returned a result. This could make it difficult to determine whether the request succeeded or not, and could lead to multiple retries to ensure that the operation completes successfully. However, if the original request and the subsequent retries are successful, the operation is completed multiple times. This means that you might create more resources than you intended.</p> <p> <i>Idempotency</i> ensures that an API request completes no more than one time. With an idempotent request, if the original request completes successfully, any subsequent retries complete successfully without performing any further actions.</p> </note>
    #   @return [String]
    # @!attribute tags
    #   <p>Tag you want to attach to the identity source.</p>
    #   @return [Hash<String, String>]
    class CreateIdentitySourceRequest < Struct.new(
      :identity_source_parameters,
      :client_token,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_source_type
    #   <p>The type of resource that provided identities to the identity source. For example, an IAM Identity Center instance.</p>
    #   @return [String]
    # @!attribute identity_source_arn
    #   <p>Amazon Resource Name (ARN) for the identity source that was created.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Timestamp when the identity source was created.</p>
    #   @return [Time]
    class CreateIdentitySourceResponse < Struct.new(
      :identity_source_type,
      :identity_source_arn,
      :creation_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_source_arn
    #   <p>Amazon Resource Name (ARN) for identity source.</p>
    #   @return [String]
    class DeleteIdentitySourceRequest < Struct.new(
      :identity_source_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>Amaazon Resource Name (ARN) for the team.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID for the team.</p>
    #   @return [String]
    class DeleteInactiveApprovalTeamVersionRequest < Struct.new(
      :arn,
      :version_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteInactiveApprovalTeamVersionResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the filter to apply to requests. You can specify up to 10 filters for a request.</p>
    # @!attribute field_name
    #   <p>Name of the filter to use.</p> <note> <p> <b>Supported filters</b> </p> <p>The supported filters for <a>ListSessions</a> are: <code>ActionName</code>, <code>SessionStatus</code>, and <code>InitationTime</code>.</p> </note>
    #   @return [String]
    # @!attribute operator
    #   <p>Operator to use for filtering.</p> <ul> <li> <p> <code>EQ</code>: Equal to the specified value</p> </li> <li> <p> <code>NE</code>: Not equal to the specified value</p> </li> <li> <p> <code>GT</code>: Greater than the specified value</p> </li> <li> <p> <code>LT</code>: Less than the specified value</p> </li> <li> <p> <code>GTE</code>: Greater than or equal to the specified value</p> </li> <li> <p> <code>LTE</code>: Less than or equal to the specified value</p> </li> <li> <p> <code>CONTAINS</code>: Contains the specified value</p> </li> <li> <p> <code>NOT_CONTAINS</code>: Does not contain the specified value</p> </li> <li> <p> <code>BETWEEN</code>: Between two values, inclusive of the specified values.</p> </li> </ul> <note> <p> <b>Supported operators for each filter</b>:</p> <ul> <li> <p> <code>ActionName</code>: <code>EQ</code> | <code>NE</code> | <code>CONTAINS</code> | <code>NOT_CONTAINS</code> </p> </li> <li> <p> <code>SessionStatus</code>: <code>EQ</code> | <code>NE</code> </p> </li> <li> <p> <code>InitiationTime</code>: <code>GT</code> | <code>LT</code> | <code>GTE</code> | <code>LTE</code> | <code>BETWEEN</code> </p> </li> </ul> </note>
    #   @return [String]
    # @!attribute value
    #   <p>Value to use for filtering. For the <code>BETWEEN</code> operator, specify values in the format <code>a AND b</code> (<code>AND</code> is case-insensitive).</p>
    #   @return [String]
    class Filter < Struct.new(
      :field_name,
      :operator,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>Amazon Resource Name (ARN) for the team.</p>
    #   @return [String]
    class GetApprovalTeamRequest < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute creation_time
    #   <p>Timestamp when the team was created.</p>
    #   @return [Time]
    # @!attribute approval_strategy
    #   <p>An <code>ApprovalStrategyResponse</code> object. Contains details for how the team grants approval.</p>
    #   @return [Types::ApprovalStrategyResponse]
    # @!attribute number_of_approvers
    #   <p>Total number of approvers in the team.</p>
    #   @return [Integer]
    # @!attribute approvers
    #   <p>An array of <code>GetApprovalTeamResponseApprover </code> objects. Contains details for the approvers in the team.</p>
    #   @return [Array<Types::GetApprovalTeamResponseApprover>]
    # @!attribute arn
    #   <p>Amazon Resource Name (ARN) for the team.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description for the team.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the approval team.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status for the team. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-health.html">Team health</a> in the <i>Multi-party approval User Guide</i>.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>Status code for the approval team. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-health.html">Team health</a> in the <i>Multi-party approval User Guide</i>.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Message describing the status for the team.</p>
    #   @return [String]
    # @!attribute update_session_arn
    #   <p>Amazon Resource Name (ARN) for the session.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID for the team.</p>
    #   @return [String]
    # @!attribute policies
    #   <p>An array of <code>PolicyReference</code> objects. Contains a list of policies that define the permissions for team resources.</p> <p>The protected operation for a service integration might require specific permissions. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html">How other services work with Multi-party approval</a> in the <i>Multi-party approval User Guide</i>.</p>
    #   @return [Array<Types::PolicyReference>]
    # @!attribute last_update_time
    #   <p>Timestamp when the team was last updated.</p>
    #   @return [Time]
    # @!attribute pending_update
    #   <p>A <code>PendingUpdate</code> object. Contains details for the pending updates for the team, if applicable.</p>
    #   @return [Types::PendingUpdate]
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
      :pending_update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details for an approver.</p>
    # @!attribute approver_id
    #   <p>ID for the approver.</p>
    #   @return [String]
    # @!attribute response_time
    #   <p>Timestamp when the approver responded to an approval team invitation.</p>
    #   @return [Time]
    # @!attribute primary_identity_id
    #   <p>ID for the user.</p>
    #   @return [String]
    # @!attribute primary_identity_source_arn
    #   <p>Amazon Resource Name (ARN) for the identity source. The identity source manages the user authentication for approvers.</p>
    #   @return [String]
    # @!attribute primary_identity_status
    #   <p>Status for the identity source. For example, if an approver has accepted a team invitation with a user authentication method managed by the identity source.</p>
    #   @return [String]
    class GetApprovalTeamResponseApprover < Struct.new(
      :approver_id,
      :response_time,
      :primary_identity_id,
      :primary_identity_source_arn,
      :primary_identity_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_source_arn
    #   <p>Amazon Resource Name (ARN) for the identity source.</p>
    #   @return [String]
    class GetIdentitySourceRequest < Struct.new(
      :identity_source_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_source_type
    #   <p>The type of resource that provided identities to the identity source. For example, an IAM Identity Center instance.</p>
    #   @return [String]
    # @!attribute identity_source_parameters
    #   <p>A <code> IdentitySourceParameters</code> object. Contains details for the resource that provides identities to the identity source. For example, an IAM Identity Center instance.</p>
    #   @return [Types::IdentitySourceParametersForGet]
    # @!attribute identity_source_arn
    #   <p>Amazon Resource Name (ARN) for the identity source.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Timestamp when the identity source was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>Status for the identity source. For example, if the identity source is <code>ACTIVE</code>.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>Status code of the identity source.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Message describing the status for the identity source.</p>
    #   @return [String]
    class GetIdentitySourceResponse < Struct.new(
      :identity_source_type,
      :identity_source_parameters,
      :identity_source_arn,
      :creation_time,
      :status,
      :status_code,
      :status_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_version_arn
    #   <p>Amazon Resource Name (ARN) for the policy.</p>
    #   @return [String]
    class GetPolicyVersionRequest < Struct.new(
      :policy_version_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_version
    #   <p>A <code>PolicyVersion</code> object. Contains details for the version of the policy. Policies define the permissions for team resources.</p> <p>The protected operation for a service integration might require specific permissions. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html">How other services work with Multi-party approval</a> in the <i>Multi-party approval User Guide</i>.</p>
    #   @return [Types::PolicyVersion]
    class GetPolicyVersionResponse < Struct.new(
      :policy_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) for the resource.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>Name of the policy.</p>
    #   @return [String]
    # @!attribute policy_type
    #   <p>The type of policy.</p>
    #   @return [String]
    class GetResourcePolicyRequest < Struct.new(
      :resource_arn,
      :policy_name,
      :policy_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) for the resource.</p>
    #   @return [String]
    # @!attribute policy_type
    #   <p>The type of policy</p>
    #   @return [String]
    # @!attribute policy_version_arn
    #   <p>Amazon Resource Name (ARN) for the policy version.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>Name of the policy.</p>
    #   @return [String]
    # @!attribute policy_document
    #   <p>Document that contains the contents for the policy.</p>
    #   @return [String]
    class GetResourcePolicyResponse < Struct.new(
      :resource_arn,
      :policy_type,
      :policy_version_arn,
      :policy_name,
      :policy_document,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_arn
    #   <p>Amazon Resource Name (ARN) for the session.</p>
    #   @return [String]
    class GetSessionRequest < Struct.new(
      :session_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_arn
    #   <p>Amazon Resource Name (ARN) for the session.</p>
    #   @return [String]
    # @!attribute approval_team_arn
    #   <p>Amazon Resource Name (ARN) for the approval team.</p>
    #   @return [String]
    # @!attribute approval_team_name
    #   <p>Name of the approval team.</p>
    #   @return [String]
    # @!attribute protected_resource_arn
    #   <p>Amazon Resource Name (ARN) for the protected operation.</p>
    #   @return [String]
    # @!attribute approval_strategy
    #   <p>An <code>ApprovalStrategyResponse</code> object. Contains details for how the team grants approval</p>
    #   @return [Types::ApprovalStrategyResponse]
    # @!attribute number_of_approvers
    #   <p>Total number of approvers in the session.</p>
    #   @return [Integer]
    # @!attribute initiation_time
    #   <p>Timestamp when the session was initiated.</p>
    #   @return [Time]
    # @!attribute expiration_time
    #   <p>Timestamp when the session will expire.</p>
    #   @return [Time]
    # @!attribute completion_time
    #   <p>Timestamp when the session completed.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>Description for the session.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>Metadata for the session.</p>
    #   @return [Hash<String, String>]
    # @!attribute status
    #   <p>Status for the session. For example, if the team has approved the requested operation.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>Status code of the session.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Message describing the status for session.</p>
    #   @return [String]
    # @!attribute execution_status
    #   <p>Status for the protected operation. For example, if the operation is <code>PENDING</code>.</p>
    #   @return [String]
    # @!attribute action_name
    #   <p>Name of the protected operation.</p>
    #   @return [String]
    # @!attribute requester_service_principal
    #   <p> <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#principal-services">Service principal</a> for the service associated with the protected operation.</p>
    #   @return [String]
    # @!attribute requester_principal_arn
    #   <p> <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/intro-structure.html#intro-structure-request">IAM principal</a> that made the operation request.</p>
    #   @return [String]
    # @!attribute requester_account_id
    #   <p>ID for the account that made the operation request.</p>
    #   @return [String]
    # @!attribute requester_region
    #   <p>Amazon Web Services Region where the operation request originated.</p>
    #   @return [String]
    # @!attribute requester_comment
    #   <p>Message from the account that made the operation request</p>
    #   @return [String]
    # @!attribute action_completion_strategy
    #   <p>Strategy for executing the protected operation. <code>AUTO_COMPLETION_UPON_APPROVAL</code> means the operation is automatically executed using the requester's permissions, if approved.</p>
    #   @return [String]
    # @!attribute approver_responses
    #   <p>An array of <code>GetSessionResponseApproverResponse</code> objects. Contains details for approver responses in the session.</p>
    #   @return [Array<Types::GetSessionResponseApproverResponse>]
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
      :approver_responses,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details for an approver response in an approval session.</p>
    # @!attribute approver_id
    #   <p>ID for the approver.</p>
    #   @return [String]
    # @!attribute identity_source_arn
    #   <p>Amazon Resource Name (ARN) for the identity source. The identity source manages the user authentication for approvers.</p>
    #   @return [String]
    # @!attribute identity_id
    #   <p>ID for the identity source. The identity source manages the user authentication for approvers.</p>
    #   @return [String]
    # @!attribute response
    #   <p>Response to the operation request.</p>
    #   @return [String]
    # @!attribute response_time
    #   <p>Timestamp when a approver responded to the operation request.</p>
    #   @return [Time]
    class GetSessionResponseApproverResponse < Struct.new(
      :approver_id,
      :identity_source_arn,
      :identity_id,
      :response,
      :response_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>IAM Identity Center credentials. For more information see, <a href="http://aws.amazon.com/identity-center/">IAM Identity Center</a> .</p>
    # @!attribute instance_arn
    #   <p>Amazon Resource Name (ARN) for the IAM Identity Center instance.</p>
    #   @return [String]
    # @!attribute region
    #   <p>Amazon Web Services Region where the IAM Identity Center instance is located.</p>
    #   @return [String]
    class IamIdentityCenter < Struct.new(
      :instance_arn,
      :region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>IAM Identity Center credentials. For more information see, <a href="http://aws.amazon.com/identity-center/">IAM Identity Center</a> .</p>
    # @!attribute instance_arn
    #   <p>Amazon Resource Name (ARN) for the IAM Identity Center instance.</p>
    #   @return [String]
    # @!attribute approval_portal_url
    #   <p>URL for the approval portal associated with the IAM Identity Center instance.</p>
    #   @return [String]
    # @!attribute region
    #   <p>Amazon Web Services Region where the IAM Identity Center instance is located.</p>
    #   @return [String]
    class IamIdentityCenterForGet < Struct.new(
      :instance_arn,
      :approval_portal_url,
      :region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>IAM Identity Center credentials. For more information see, <a href="http://aws.amazon.com/identity-center/">IAM Identity Center</a> .</p>
    # @!attribute instance_arn
    #   <p>Amazon Resource Name (ARN) for the IAM Identity Center instance.</p>
    #   @return [String]
    # @!attribute approval_portal_url
    #   <p>URL for the approval portal associated with the IAM Identity Center instance.</p>
    #   @return [String]
    # @!attribute region
    #   <p>Amazon Web Services Region where the IAM Identity Center instance is located.</p>
    #   @return [String]
    class IamIdentityCenterForList < Struct.new(
      :instance_arn,
      :approval_portal_url,
      :region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details for an identity source. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html">Identity source</a> in the <i>Multi-party approval User Guide</i>.</p>
    # @!attribute identity_source_type
    #   <p>The type of resource that provided identities to the identity source. For example, an IAM Identity Center instance.</p>
    #   @return [String]
    # @!attribute identity_source_parameters
    #   <p>A <code>IdentitySourceParametersForList</code> object. Contains details for the resource that provides identities to the identity source. For example, an IAM Identity Center instance.</p>
    #   @return [Types::IdentitySourceParametersForList]
    # @!attribute identity_source_arn
    #   <p>Amazon Resource Name (ARN) for the identity source.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Timestamp when the identity source was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>Status for the identity source. For example, if the identity source is <code>ACTIVE</code>.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>Status code of the identity source.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Message describing the status for the identity source.</p>
    #   @return [String]
    class IdentitySourceForList < Struct.new(
      :identity_source_type,
      :identity_source_parameters,
      :identity_source_arn,
      :creation_time,
      :status,
      :status_code,
      :status_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details for the resource that provides identities to the identity source. For example, an IAM Identity Center instance.</p>
    # @!attribute iam_identity_center
    #   <p>IAM Identity Center credentials.</p>
    #   @return [Types::IamIdentityCenter]
    class IdentitySourceParameters < Struct.new(
      :iam_identity_center,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details for the resource that provides identities to the identity source. For example, an IAM Identity Center instance. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html">Identity source</a> in the <i>Multi-party approval User Guide</i>.</p>
    # @!attribute iam_identity_center
    #   <p>IAM Identity Center credentials.</p>
    #   @return [Types::IamIdentityCenterForGet]
    class IdentitySourceParametersForGet < Struct.new(
      :iam_identity_center,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class IamIdentityCenter < IdentitySourceParametersForGet; end
      class Unknown < IdentitySourceParametersForGet; end
    end

    # <p>Contains details for the resource that provides identities to the identity source. For example, an IAM Identity Center instance. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html">Identity source</a> in the <i>Multi-party approval User Guide</i>.</p>
    # @!attribute iam_identity_center
    #   <p>IAM Identity Center credentials.</p>
    #   @return [Types::IamIdentityCenterForList]
    class IdentitySourceParametersForList < Struct.new(
      :iam_identity_center,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class IamIdentityCenter < IdentitySourceParametersForList; end
      class Unknown < IdentitySourceParametersForList; end
    end

    # <p>The service encountered an internal error. Try your request again. If the problem persists, contact Amazon Web Services Support.</p>
    # @!attribute message
    #   <p>Message for the <code>InternalServerException</code> error.</p>
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request contains an invalid parameter value.</p>
    # @!attribute message
    #   <p>Message for the <code>InvalidParameterException</code> error.</p>
    #   @return [String]
    class InvalidParameterException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that you can retrieve the remaining results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>
    #   @return [String]
    class ListApprovalTeamsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>
    #   @return [String]
    # @!attribute approval_teams
    #   <p>An array of <code>ListApprovalTeamsResponseApprovalTeam</code> objects. Contains details for approval teams.</p>
    #   @return [Array<Types::ListApprovalTeamsResponseApprovalTeam>]
    class ListApprovalTeamsResponse < Struct.new(
      :next_token,
      :approval_teams,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details for an approval team</p>
    # @!attribute creation_time
    #   <p>Timestamp when the team was created.</p>
    #   @return [Time]
    # @!attribute approval_strategy
    #   <p>An <code>ApprovalStrategyResponse</code> object. Contains details for how an approval team grants approval.</p>
    #   @return [Types::ApprovalStrategyResponse]
    # @!attribute number_of_approvers
    #   <p>Total number of approvers in the team.</p>
    #   @return [Integer]
    # @!attribute arn
    #   <p>Amazon Resource Name (ARN) for the team.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the team.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description for the team.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status for the team. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-health.html">Team health</a> in the <i>Multi-party approval User Guide</i>.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>Status code for the team. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-health.html">Team health</a> in the <i>Multi-party approval User Guide</i>.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Message describing the status for the team.</p>
    #   @return [String]
    class ListApprovalTeamsResponseApprovalTeam < Struct.new(
      :creation_time,
      :approval_strategy,
      :number_of_approvers,
      :arn,
      :name,
      :description,
      :status,
      :status_code,
      :status_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that you can retrieve the remaining results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>
    #   @return [String]
    class ListIdentitySourcesRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>
    #   @return [String]
    # @!attribute identity_sources
    #   <p>A <code>IdentitySources</code>. Contains details for identity sources.</p>
    #   @return [Array<Types::IdentitySourceForList>]
    class ListIdentitySourcesResponse < Struct.new(
      :next_token,
      :identity_sources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that you can retrieve the remaining results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>
    #   @return [String]
    class ListPoliciesRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>
    #   @return [String]
    # @!attribute policies
    #   <p>An array of <code>Policy</code> objects. Contains a list of policies that define the permissions for team resources.</p> <p>The protected operation for a service integration might require specific permissions. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html">How other services work with Multi-party approval</a> in the <i>Multi-party approval User Guide</i>.</p>
    #   @return [Array<Types::Policy>]
    class ListPoliciesResponse < Struct.new(
      :next_token,
      :policies,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that you can retrieve the remaining results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>Amazon Resource Name (ARN) for the policy.</p>
    #   @return [String]
    class ListPolicyVersionsRequest < Struct.new(
      :max_results,
      :next_token,
      :policy_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>
    #   @return [String]
    # @!attribute policy_versions
    #   <p>An array of <code>PolicyVersionSummary</code> objects. Contains details for the version of the policies that define the permissions for team resources.</p> <p>The protected operation for a service integration might require specific permissions. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html">How other services work with Multi-party approval</a> in the <i>Multi-party approval User Guide</i>.</p>
    #   @return [Array<Types::PolicyVersionSummary>]
    class ListPolicyVersionsResponse < Struct.new(
      :next_token,
      :policy_versions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) for the resource.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that you can retrieve the remaining results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>
    #   @return [String]
    class ListResourcePoliciesRequest < Struct.new(
      :resource_arn,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>
    #   @return [String]
    # @!attribute resource_policies
    #   <p>An array of <code>ListResourcePoliciesResponseResourcePolicy</code> objects. Contains details about the policy for the resource.</p>
    #   @return [Array<Types::ListResourcePoliciesResponseResourcePolicy>]
    class ListResourcePoliciesResponse < Struct.new(
      :next_token,
      :resource_policies,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a policy for a resource.</p>
    # @!attribute policy_arn
    #   <p>Amazon Resource Name (ARN) for policy.</p>
    #   @return [String]
    # @!attribute policy_type
    #   <p>The type of policy.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>Name of the policy.</p>
    #   @return [String]
    class ListResourcePoliciesResponseResourcePolicy < Struct.new(
      :policy_arn,
      :policy_type,
      :policy_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute approval_team_arn
    #   <p>Amazon Resource Name (ARN) for the approval team.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that you can retrieve the remaining results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>An array of <code>Filter</code> objects. Contains the filter to apply when listing sessions.</p>
    #   @return [Array<Types::Filter>]
    class ListSessionsRequest < Struct.new(
      :approval_team_arn,
      :max_results,
      :next_token,
      :filters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>
    #   @return [String]
    # @!attribute sessions
    #   <p>An array of <code>ListSessionsResponseSession</code> objects. Contains details for the sessions.</p>
    #   @return [Array<Types::ListSessionsResponseSession>]
    class ListSessionsResponse < Struct.new(
      :next_token,
      :sessions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details for an approval session. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-health.html">Session</a> in the <i>Multi-party approval User Guide</i> </p>
    # @!attribute session_arn
    #   <p>Amazon Resource Name (ARN) for the session.</p>
    #   @return [String]
    # @!attribute approval_team_name
    #   <p>Name of the approval team.</p>
    #   @return [String]
    # @!attribute approval_team_arn
    #   <p>Amazon Resource Name (ARN) for the approval team.</p>
    #   @return [String]
    # @!attribute initiation_time
    #   <p>Timestamp when the session was initiated.</p>
    #   @return [Time]
    # @!attribute expiration_time
    #   <p>Timestamp when the session was expire.</p>
    #   @return [Time]
    # @!attribute completion_time
    #   <p>Timestamp when the session was completed.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>Description for the team.</p>
    #   @return [String]
    # @!attribute action_name
    #   <p>Name of the protected operation.</p>
    #   @return [String]
    # @!attribute protected_resource_arn
    #   <p>Amazon Resource Name (ARN) for the protected operation.</p>
    #   @return [String]
    # @!attribute requester_service_principal
    #   <p> <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#principal-services">Service principal</a> for the service associated with the protected operation.</p>
    #   @return [String]
    # @!attribute requester_principal_arn
    #   <p> <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/intro-structure.html#intro-structure-request">IAM principal</a> that made the operation request.</p>
    #   @return [String]
    # @!attribute requester_region
    #   <p>Amazon Web Services Region where the operation request originated.</p>
    #   @return [String]
    # @!attribute requester_account_id
    #   <p>ID for the account that made the operation request.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status for the protected operation. For example, if the operation is <code>PENDING</code>.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>Status code of the session.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Message describing the status for session.</p>
    #   @return [String]
    # @!attribute action_completion_strategy
    #   <p>Strategy for executing the protected operation. <code>AUTO_COMPLETION_UPON_APPROVAL</code> means the operation is executed automatically using the requester's permissions, if approved.</p>
    #   @return [String]
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
      :action_completion_strategy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) for the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Tags attached to the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Strategy for how an approval team grants approval.</p>
    # @!attribute min_approvals_required
    #   <p>Minimum number of approvals (M) required for a total number of approvers (N).</p>
    #   @return [Integer]
    class MofNApprovalStrategy < Struct.new(
      :min_approvals_required,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details for the pending updates for an approval team, if applicable.</p>
    # @!attribute version_id
    #   <p>Version ID for the team.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description for the team.</p>
    #   @return [String]
    # @!attribute approval_strategy
    #   <p>An <code>ApprovalStrategyResponse</code> object. Contains details for how the team grants approval.</p>
    #   @return [Types::ApprovalStrategyResponse]
    # @!attribute number_of_approvers
    #   <p>Total number of approvers in the team.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>Status for the team. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-health.html">Team health</a> in the <i>Multi-party approval User Guide</i>.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>Status code for the update. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-health.html">Team health</a> in the <i>Multi-party approval User Guide</i>.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Message describing the status for the team.</p>
    #   @return [String]
    # @!attribute approvers
    #   <p>An array of <code>GetApprovalTeamResponseApprover </code> objects. Contains details for the approvers in the team.</p>
    #   @return [Array<Types::GetApprovalTeamResponseApprover>]
    # @!attribute update_initiation_time
    #   <p>Timestamp when the update request was initiated.</p>
    #   @return [Time]
    class PendingUpdate < Struct.new(
      :version_id,
      :description,
      :approval_strategy,
      :number_of_approvers,
      :status,
      :status_code,
      :status_message,
      :approvers,
      :update_initiation_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details for a policy. Policies define what operations a team that define the permissions for team resources.</p> <p>The protected operation for a service integration might require specific permissions. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html">How other services work with Multi-party approval</a> in the <i>Multi-party approval User Guide</i>.</p>
    # @!attribute arn
    #   <p>Amazon Resource Name (ARN) for the policy.</p>
    #   @return [String]
    # @!attribute default_version
    #   <p>Determines if the specified policy is the default for the team.</p>
    #   @return [Integer]
    # @!attribute policy_type
    #   <p>The type of policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the policy.</p>
    #   @return [String]
    class Policy < Struct.new(
      :arn,
      :default_version,
      :policy_type,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the Amazon Resource Name (ARN) for a policy. Policies define what operations a team that define the permissions for team resources.</p> <p>The protected operation for a service integration might require specific permissions. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html">How other services work with Multi-party approval</a> in the <i>Multi-party approval User Guide</i>.</p>
    # @!attribute policy_arn
    #   <p>Amazon Resource Name (ARN) for the policy.</p>
    #   @return [String]
    class PolicyReference < Struct.new(
      :policy_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details for the version of a policy. Policies define what operations a team that define the permissions for team resources.</p> <p>The protected operation for a service integration might require specific permissions. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html">How other services work with Multi-party approval</a> in the <i>Multi-party approval User Guide</i>.</p>
    # @!attribute arn
    #   <p>Amazon Resource Name (ARN) for the team.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>Amazon Resource Name (ARN) for the policy.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>Verison ID</p>
    #   @return [Integer]
    # @!attribute policy_type
    #   <p>The type of policy.</p>
    #   @return [String]
    # @!attribute is_default
    #   <p>Determines if the specified policy is the default for the team.</p>
    #   @return [Boolean]
    # @!attribute name
    #   <p>Name of the policy.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status for the policy. For example, if the policy is <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_attach-policy.html">attachable</a> or <a href="https://docs.aws.amazon.com/access_policies_managed-deprecated.html">deprecated</a>.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Timestamp when the policy was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>Timestamp when the policy was last updated.</p>
    #   @return [Time]
    # @!attribute document
    #   <p>Document that contains the policy contents.</p>
    #   @return [String]
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
      :document,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details for the version of a policy. Policies define what operations a team that define the permissions for team resources.</p> <p>The protected operation for a service integration might require specific permissions. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html">How other services work with Multi-party approval</a> in the <i>Multi-party approval User Guide</i>.</p>
    # @!attribute arn
    #   <p>Amazon Resource Name (ARN) for the team.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>Amazon Resource Name (ARN) for the policy.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID for the policy.</p>
    #   @return [Integer]
    # @!attribute policy_type
    #   <p>The type of policy.</p>
    #   @return [String]
    # @!attribute is_default
    #   <p>Determines if the specified policy is the default for the team.</p>
    #   @return [Boolean]
    # @!attribute name
    #   <p>Name of the policy</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status for the policy. For example, if the policy is <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_attach-policy.html">attachable</a> or <a href="https://docs.aws.amazon.com/access_policies_managed-deprecated.html">deprecated</a>.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Timestamp when the policy was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>Timestamp when the policy was last updated.</p>
    #   @return [Time]
    class PolicyVersionSummary < Struct.new(
      :arn,
      :policy_arn,
      :version_id,
      :policy_type,
      :is_default,
      :name,
      :status,
      :creation_time,
      :last_updated_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource doesn't exist. Check the resource ID, and try again.</p>
    # @!attribute message
    #   <p>Message for the <code>ResourceNotFoundException</code> error.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeds the service quota for your account. Request a quota increase or reduce your request size.</p>
    # @!attribute message
    #   <p>Message for the <code>ServiceQuotaExceededException</code> error.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pending_window_days
    #   <p>Number of days between when the team approves the delete request and when the team is deleted.</p>
    #   @return [Integer]
    # @!attribute arn
    #   <p>Amazon Resource Name (ARN) for the team.</p>
    #   @return [String]
    class StartActiveApprovalTeamDeletionRequest < Struct.new(
      :pending_window_days,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute deletion_completion_time
    #   <p>Timestamp when the deletion process is scheduled to complete.</p>
    #   @return [Time]
    # @!attribute deletion_start_time
    #   <p>Timestamp when the deletion process was initiated.</p>
    #   @return [Time]
    class StartActiveApprovalTeamDeletionResponse < Struct.new(
      :deletion_completion_time,
      :deletion_start_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) for the resource you want to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags that you have added to the specified resource.</p>
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

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   <p>Message for the <code>ThrottlingException</code> error.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeds the maximum number of tags allowed for this resource. Remove some tags, and try again.</p>
    # @!attribute message
    #   <p>Message for the <code>TooManyTagsException</code> error.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>Name of the resource for the <code>TooManyTagsException</code> error.</p>
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) for the resource you want to untag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Array of tag key-value pairs that you want to untag.</p>
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

    # @!attribute approval_strategy
    #   <p>An <code>ApprovalStrategy</code> object. Contains details for how the team grants approval.</p>
    #   @return [Types::ApprovalStrategy]
    # @!attribute approvers
    #   <p>An array of <code>ApprovalTeamRequestApprover</code> objects. Contains details for the approvers in the team.</p>
    #   @return [Array<Types::ApprovalTeamRequestApprover>]
    # @!attribute description
    #   <p>Description for the team.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Amazon Resource Name (ARN) for the team.</p>
    #   @return [String]
    class UpdateApprovalTeamRequest < Struct.new(
      :approval_strategy,
      :approvers,
      :description,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute version_id
    #   <p>Version ID for the team that was created. When an approval team is updated, the version ID changes.</p>
    #   @return [String]
    class UpdateApprovalTeamResponse < Struct.new(
      :version_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    # @!attribute message
    #   <p>Message for the <code>ValidationException</code> error.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
