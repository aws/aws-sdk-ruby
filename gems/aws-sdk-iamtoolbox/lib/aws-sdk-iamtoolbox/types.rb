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
    #   * `IMPLICIT_DENY` - The action was denied because no policy allowed
    #     it.
    #   @return [String]
    #
    # @!attribute [rw] matched_policies
    #   The policies that matched during evaluation of this action and
    #   resource. An implicit denial produces no matched policies.
    #   @return [Array<Types::MatchedPolicy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-toolbox-2018-05-10/Evaluation AWS API Documentation
    #
    class Evaluation < Struct.new(
      :action,
      :resource,
      :context,
      :evaluated_effect,
      :matched_policies)
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
    # URI that identifies it, and the entities it is attached to.
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
    #     resource.
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
    #   the policy with the matching policies in each evaluation. The value
    #   depends on the policy type:
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-toolbox-2018-05-10/PolicyInfo AWS API Documentation
    #
    class PolicyInfo < Struct.new(
      :type,
      :inline,
      :uri,
      :attached_to)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested authorization details do not exist in this region or
    # have expired. Verify that the authorization ID from the access denied
    # error message is correct and the call is made in the region where the
    # denial occurred. Ensure that the calling principal belongs to the same
    # account or organization as the original denied request.
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

