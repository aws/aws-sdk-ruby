# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IAMToolbox
  module Types

    # The caller does not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-toolbox-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An entity that a policy is attached to, identified by its ARN.
    #
    # @!attribute [rw] arn
    #   The ARN of the entity that the policy is attached to. The ARN format
    #   depends on the policy type:
    #
    #   * For identity, session, and permissions boundary policies, this is
    #     the principal ARN (for example, an IAM role or user ARN).
    #
    #   * For resource-based policies, this is the resource ARN.
    #
    #   * For organization control policies (SCPs and RCPs), this is the AWS
    #     Organizations ARN of the account, organizational unit, or root.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-toolbox-2018-05-10/AttachedTo AWS API Documentation
    #
    class AttachedTo < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents one authorization requirement considered during an
    # evaluation and its result.
    #
    # @!attribute [rw] check_type
    #   The type of requirement that the check evaluates. Valid values:
    #
    #   * `SERVICE_CONTROL_POLICY` - The service control policies (SCPs)
    #     attached to one organization target, such as a root,
    #     organizational unit, or account, that apply to the principal.
    #
    #   * `RESOURCE_CONTROL_POLICY` - The resource control policies (RCPs)
    #     attached to one organization target that apply to the resource.
    #
    #   * `VPC_ENDPOINT` - The VPC endpoint policy for the endpoint through
    #     which the request passes.
    #
    #   * `RESOURCE` - The resource owner's resource-based policies, when
    #     the owner must allow the request separately, such as a
    #     cross-account request or a request to an AWS KMS key.
    #
    #   * `PRINCIPAL` - The principal's identity-based policies attached to
    #     the IAM user or role.
    #
    #   * `PERMISSIONS_BOUNDARY` - The permissions boundary on the IAM user
    #     or role.
    #
    #   * `SESSION` - The role session that made the request, decided by its
    #     session policies.
    #   @return [String]
    #
    # @!attribute [rw] evaluated_effect
    #   The result of evaluating this requirement. Valid values:
    #
    #   * `ALLOW` - A statement that applies to this check allows the
    #     request.
    #
    #   * `EXPLICIT_DENY` - A deny statement that applies to this check
    #     matches.
    #
    #   * `IMPLICIT_DENY` - The check required an allow and nothing that
    #     applies to it allows the request.
    #
    #   * `NO_IMPACT` - No statement in this check matched, and no allow was
    #     needed because another path allowed the request.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The ARN that distinguishes this check from other checks of the same
    #   type. This value is absent when the check type alone identifies the
    #   check. For SCP and RCP checks, this is the AWS Organizations ARN of
    #   the root, organizational unit, or account that the evaluated
    #   policies are attached to.
    #   @return [String]
    #
    # @!attribute [rw] relevant_policy_types
    #   The policy types used to satisfy this check, plus the type of every
    #   policy with a statement that matched in it. `matchedPolicies` lists
    #   matching policies in the top-level `policies` list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] matched_policies
    #   Policies in this list have statements that matched for this check.
    #   Each URI corresponds to an entry in the top-level `policies` list.
    #   Only policies in the top-level list are included. The check effect
    #   can reflect a matched policy omitted from this list, so this list
    #   can be empty even when the effect is `ALLOW`.
    #   @return [Array<Types::MatchedPolicy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-toolbox-2018-05-10/Check AWS API Documentation
    #
    class Check < Struct.new(
      :check_type,
      :evaluated_effect,
      :target_arn,
      :relevant_policy_types,
      :matched_policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an individual evaluation for a single action and resource
    # pair. This includes the context, the resulting effect, and any
    # policies that matched.
    #
    # @!attribute [rw] action
    #   The action evaluated for this request (for example, `iam:PassRole`).
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The resource that the action targeted. This is typically a resource
    #   ARN, but can be a wildcard ARN that matches multiple resources, or
    #   empty for actions that are not resource-specific.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   The context keys and values specific to this evaluation. These are
    #   applied on top of the request context.
    #   @return [Hash<String,Hash,Array,String,Numeric,Boolean>]
    #
    # @!attribute [rw] evaluated_effect
    #   The result of the evaluation. Valid values:
    #
    #   * `ALLOW` - The action was allowed.
    #
    #   * `EXPLICIT_DENY` - The action was explicitly denied by a policy.
    #
    #   * `IMPLICIT_DENY` - The action was denied because at least one
    #     required authorization check had no matching allow statement.
    #   @return [String]
    #
    # @!attribute [rw] matched_policies
    #   `matchedPolicies` is deprecated. Use `checks` instead. This value
    #   contains the policies that matched during evaluation of this action
    #   and resource.
    #   @return [Array<Types::MatchedPolicy>]
    #
    # @!attribute [rw] checks
    #   `checks` contains the authorization checks that explain an
    #   evaluation result. Each check is one authorization requirement and
    #   reports its result and policies from the top-level `policies` list
    #   with matching statements. The output lists RCP checks from the
    #   organization root to the account, then SCP checks from the
    #   organization root to the account. It then lists VPC endpoint,
    #   resource, principal, permissions boundary, and session checks. When
    #   `checks` is present, an `EXPLICIT_DENY` evaluation includes an
    #   `EXPLICIT_DENY` check. When `checks` is present for an
    #   `IMPLICIT_DENY` evaluation, it includes an `IMPLICIT_DENY` check and
    #   no `EXPLICIT_DENY` check. For more information about how IAM
    #   evaluates policies, see [Policy evaluation logic][1].
    #
    #   `PRINCIPAL`, `PERMISSIONS_BOUNDARY`, and `SESSION` checks appear
    #   when they apply to the principal that made the request, even if none
    #   of their policies matched. A missing allow produces `IMPLICIT_DENY`,
    #   or `NO_IMPACT` when another path already allowed the request.
    #
    #   Returned when the caller is in the request principal's account or
    #   organization. The absence of `checks` does not mean no authorization
    #   checks applied.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic_policy-eval-denyallow.html
    #   @return [Array<Types::Check>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-toolbox-2018-05-10/Evaluation AWS API Documentation
    #
    class Evaluation < Struct.new(
      :action,
      :resource,
      :context,
      :evaluated_effect,
      :matched_policies,
      :checks)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authorization_id
    #   The authorization ID received in the access denied error message.
    #   This ID identifies the specific request to retrieve details for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous call, used to retrieve the next
    #   page of evaluations. Omit this value on the first call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-toolbox-2018-05-10/GetRequestAuthorizationDetailsInput AWS API Documentation
    #
    class GetRequestAuthorizationDetailsInput < Struct.new(
      :authorization_id,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_context
    #   The request context is the set of context keys and values that apply
    #   to the entire request and are shared by all evaluations.
    #   @return [Hash<String,Hash,Array,String,Numeric,Boolean>]
    #
    # @!attribute [rw] evaluations
    #   The list of evaluations for this request. Each evaluation shows how
    #   a single action and resource pair was evaluated. This includes the
    #   context, the effect, and any policies that matched.
    #   @return [Array<Types::Evaluation>]
    #
    # @!attribute [rw] policies
    #   The list of policies that were evaluated.
    #   @return [Array<Types::PolicyInfo>]
    #
    # @!attribute [rw] next_token
    #   The pagination token for retrieving the next page of evaluations.
    #   This value is absent when there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-toolbox-2018-05-10/GetRequestAuthorizationDetailsOutput AWS API Documentation
    #
    class GetRequestAuthorizationDetailsOutput < Struct.new(
      :request_context,
      :evaluations,
      :policies,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authorization_id
    #   The authorization ID received in the access denied error message.
    #   This ID identifies the request whose evaluated policy you want to
    #   retrieve.
    #   @return [String]
    #
    # @!attribute [rw] policy_uri
    #   The URI of the policy to retrieve. Use the `uri` value from the
    #   `policies` list returned by `GetRequestAuthorizationDetails` for the
    #   same authorization ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-toolbox-2018-05-10/GetRequestAuthorizationPolicyInput AWS API Documentation
    #
    class GetRequestAuthorizationPolicyInput < Struct.new(
      :authorization_id,
      :policy_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_document
    #   The policy document evaluated for the denied request, returned as a
    #   JSON object.
    #
    #   For some AWS services and policy types, this document includes all
    #   actions relevant to the service that processed the denied request,
    #   but might omit actions for other services.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-toolbox-2018-05-10/GetRequestAuthorizationPolicyOutput AWS API Documentation
    #
    class GetRequestAuthorizationPolicyOutput < Struct.new(
      :policy_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error occurred while processing the request. Try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-toolbox-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A policy that matched during evaluation, referenced by URI. The URI
    # corresponds to a policy in the top-level policies list.
    #
    # @!attribute [rw] uri
    #   The URI of the policy. This cross-references an entry in the
    #   top-level policies list. The value depends on the policy type:
    #
    #   * For managed policies, this is the policy ARN.
    #
    #   * For inline policies, this is an opaque identifier.
    #   @return [String]
    #
    # @!attribute [rw] matched_statements
    #   The statements within the policy that matched during the evaluation.
    #   @return [Array<Types::MatchedStatement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-toolbox-2018-05-10/MatchedPolicy AWS API Documentation
    #
    class MatchedPolicy < Struct.new(
      :uri,
      :matched_statements)
      SENSITIVE = []
      include Aws::Structure
    end

    # A statement that matched during evaluation.
    #
    # @!attribute [rw] sid
    #   The statement ID (Sid). If the statement has no Sid, one is
    #   generated for reference.
    #   @return [String]
    #
    # @!attribute [rw] evaluated_effect
    #   The evaluated effect of this statement. Valid values:
    #
    #   * `ALLOW` - The statement allows the action.
    #
    #   * `DENY` - The statement denies the action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-toolbox-2018-05-10/MatchedStatement AWS API Documentation
    #
    class MatchedStatement < Struct.new(
      :sid,
      :evaluated_effect)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a policy evaluated during authorization.
    # Details include the policy type, whether it is inline or managed, a
    # URI that identifies it, the entities it is attached to, and its
    # source, if present.
    #
    # @!attribute [rw] type
    #   The type of policy. Valid values:
    #
    #   * `IDENTITY_BASED_POLICY` - An identity-based policy attached to an
    #     IAM user, group, or role.
    #
    #   * `PERMISSIONS_BOUNDARY` - A permissions boundary for an IAM entity.
    #
    #   * `RESOURCE_BASED_POLICY` - A resource-based policy attached to a
    #     resource. An AWS service can evaluate and report a policy kind it
    #     defines, such as a KMS grant, as `RESOURCE_BASED_POLICY`.
    #     `policySource` identifies the kind.
    #
    #   * `RESOURCE_CONTROL_POLICY` - A resource control policy (RCP) in AWS
    #     Organizations.
    #
    #   * `SERVICE_CONTROL_POLICY` - A service control policy (SCP) in AWS
    #     Organizations.
    #
    #   * `SESSION_POLICY` - A session policy passed during role assumption
    #     or federation.
    #
    #   * `VPC_ENDPOINT_POLICY` - A VPC endpoint policy.
    #   @return [String]
    #
    # @!attribute [rw] inline
    #   Specifies whether this is an inline policy (`true`) or a managed
    #   policy (`false`).
    #   @return [Boolean]
    #
    # @!attribute [rw] uri
    #   A URI that identifies the policy. Use this URI to cross-reference
    #   the policy with the matching policies in each evaluation. To
    #   retrieve the policy document, pass this URI as the `policyUri`
    #   parameter of `GetRequestAuthorizationPolicy`, together with the same
    #   authorization ID. The value depends on the policy type:
    #
    #   * For managed policies, this is the policy ARN.
    #
    #   * For inline policies, which have no ARN, this is an opaque
    #     identifier.
    #   @return [String]
    #
    # @!attribute [rw] attached_to
    #   The entities that the policy is attached to. For identity, session,
    #   and resource-based policies, this is typically a single entity. For
    #   organization control policies (SCPs and RCPs), it can be multiple
    #   entities at different levels of the organization hierarchy.
    #   @return [Array<Types::AttachedTo>]
    #
    # @!attribute [rw] policy_source
    #   What the policy was built from, such as a KMS key policy or grant.
    #   Absent for other policies.
    #
    #   The `type` and `typeName` keys are always present. `type` identifies
    #   the policy-source kind. `typeName` is its readable name. Compare
    #   `type`, not `typeName`.
    #
    #   A policy source can include additional keys that depend on its type.
    #   For example, a KMS grant includes a `grantId` key that identifies
    #   the grant. A grant has no ARN. Use the grant ID with the KMS key ARN
    #   in `attachedTo` to find the grant with the AWS KMS `ListGrants`
    #   operation.
    #
    #   New types and keys can be added, so clients should ignore types and
    #   keys they don't recognize.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-toolbox-2018-05-10/PolicyInfo AWS API Documentation
    #
    class PolicyInfo < Struct.new(
      :type,
      :inline,
      :uri,
      :attached_to,
      :policy_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested policy or authorization details do not exist in this
    # region or have expired. Verify that the authorization ID from the
    # access denied error message is correct and the call is made in the
    # region where the denial occurred. Ensure that the calling principal
    # belongs to the same account or organization as the original denied
    # request. If you specified a policy URI, verify that it is from the
    # `policies` list that `GetRequestAuthorizationDetails` returns for the
    # same authorization ID.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-toolbox-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is malformed or is missing one or more required
    # parameters. Check the request parameters and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-toolbox-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

