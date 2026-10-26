# frozen_string_literal: true

# This is generated code!

module Aws::IAMToolbox
  # This module contains the types returned by client operations.
  module Types

    # <p>The caller does not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An entity that a policy is attached to, identified by its ARN.</p>
    # @!attribute arn
    #   <p>The ARN of the entity that the policy is attached to. The ARN format depends on the policy type:</p> <ul> <li> <p>For identity, session, and permissions boundary policies, this is the principal ARN (for example, an IAM role or user ARN).</p> </li> <li> <p>For resource-based policies, this is the resource ARN.</p> </li> <li> <p>For organization control policies (SCPs and RCPs), this is the AWS Organizations ARN of the account, organizational unit, or root.</p> </li> </ul>
    #   @return [String]
    class AttachedTo < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an individual evaluation for a single action and resource pair. This includes the context, the resulting effect, and any policies that matched.</p>
    # @!attribute action
    #   <p>The action evaluated for this request (for example, <code>iam:PassRole</code>).</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The resource that the action targeted. This is typically a resource ARN, but can be a wildcard ARN that matches multiple resources, or empty for actions that are not resource-specific.</p>
    #   @return [String]
    # @!attribute context
    #   <p>The context keys and values specific to this evaluation. These are applied on top of the request context.</p>
    #   @return [Hash<String, JSON>]
    # @!attribute evaluated_effect
    #   <p>The result of the evaluation. Valid values:</p> <ul> <li> <p> <code>ALLOW</code> - The action was allowed.</p> </li> <li> <p> <code>EXPLICIT_DENY</code> - The action was explicitly denied by a policy.</p> </li> <li> <p> <code>IMPLICIT_DENY</code> - The action was denied because no policy allowed it.</p> </li> </ul>
    #   @return [String]
    # @!attribute matched_policies
    #   <p>The policies that matched during evaluation of this action and resource. An implicit denial produces no matched policies.</p>
    #   @return [Array<Types::MatchedPolicy>]
    class Evaluation < Struct.new(
      nil,
      :action,
      :resource,
      :context,
      :evaluated_effect,
      :matched_policies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authorization_id
    #   <p>The authorization ID received in the access denied error message. This ID identifies the specific request to retrieve details for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token from a previous call, used to retrieve the next page of evaluations. Omit this value on the first call.</p>
    #   @return [String]
    class GetRequestAuthorizationDetailsInput < Struct.new(
      nil,
      :authorization_id,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_context
    #   <p>The request context is the set of context keys and values that apply to the entire request and are shared by all evaluations.</p>
    #   @return [Hash<String, JSON>]
    # @!attribute evaluations
    #   <p>The list of evaluations for this request. Each evaluation shows how a single action and resource pair was evaluated. This includes the context, the effect, and any policies that matched.</p>
    #   @return [Array<Types::Evaluation>]
    # @!attribute policies
    #   <p>The list of policies that were evaluated.</p>
    #   @return [Array<Types::PolicyInfo>]
    # @!attribute next_token
    #   <p>The pagination token for retrieving the next page of evaluations. This value is absent when there are no more results.</p>
    #   @return [String]
    class GetRequestAuthorizationDetailsOutput < Struct.new(
      nil,
      :request_context,
      :evaluations,
      :policies,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An unexpected error occurred while processing the request. Try again.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A policy that matched during evaluation, referenced by URI. The URI corresponds to a policy in the top-level policies list.</p>
    # @!attribute uri
    #   <p>The URI of the policy. This cross-references an entry in the top-level policies list. The value depends on the policy type:</p> <ul> <li> <p>For managed policies, this is the policy ARN.</p> </li> <li> <p>For inline policies, this is an opaque identifier.</p> </li> </ul>
    #   @return [String]
    # @!attribute matched_statements
    #   <p>The statements within the policy that matched during the evaluation.</p>
    #   @return [Array<Types::MatchedStatement>]
    class MatchedPolicy < Struct.new(
      nil,
      :uri,
      :matched_statements,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A statement that matched during evaluation.</p>
    # @!attribute sid
    #   <p>The statement ID (Sid). If the statement has no Sid, one is generated for reference.</p>
    #   @return [String]
    # @!attribute evaluated_effect
    #   <p>The evaluated effect of this statement. Valid values:</p> <ul> <li> <p> <code>ALLOW</code> - The statement allows the action.</p> </li> <li> <p> <code>DENY</code> - The statement denies the action.</p> </li> </ul>
    #   @return [String]
    class MatchedStatement < Struct.new(
      nil,
      :sid,
      :evaluated_effect,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a policy evaluated during authorization. Details include the policy type, whether it is inline or managed, a URI that identifies it, and the entities it is attached to.</p>
    # @!attribute type
    #   <p>The type of policy. Valid values:</p> <ul> <li> <p> <code>IDENTITY_BASED_POLICY</code> - An identity-based policy attached to an IAM user, group, or role.</p> </li> <li> <p> <code>PERMISSIONS_BOUNDARY</code> - A permissions boundary for an IAM entity.</p> </li> <li> <p> <code>RESOURCE_BASED_POLICY</code> - A resource-based policy attached to a resource.</p> </li> <li> <p> <code>RESOURCE_CONTROL_POLICY</code> - A resource control policy (RCP) in AWS Organizations.</p> </li> <li> <p> <code>SERVICE_CONTROL_POLICY</code> - A service control policy (SCP) in AWS Organizations.</p> </li> <li> <p> <code>SESSION_POLICY</code> - A session policy passed during role assumption or federation.</p> </li> <li> <p> <code>VPC_ENDPOINT_POLICY</code> - A VPC endpoint policy.</p> </li> </ul>
    #   @return [String]
    # @!attribute inline
    #   <p>Specifies whether this is an inline policy (<code>true</code>) or a managed policy (<code>false</code>).</p>
    #   @return [Boolean]
    # @!attribute uri
    #   <p>A URI that identifies the policy. Use this URI to cross-reference the policy with the matching policies in each evaluation. The value depends on the policy type:</p> <ul> <li> <p>For managed policies, this is the policy ARN.</p> </li> <li> <p>For inline policies, which have no ARN, this is an opaque identifier.</p> </li> </ul>
    #   @return [String]
    # @!attribute attached_to
    #   <p>The entities that the policy is attached to. For identity, session, and resource-based policies, this is typically a single entity. For organization control policies (SCPs and RCPs), it can be multiple entities at different levels of the organization hierarchy.</p>
    #   @return [Array<Types::AttachedTo>]
    class PolicyInfo < Struct.new(
      nil,
      :type,
      :inline,
      :uri,
      :attached_to,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested authorization details do not exist in this region or have expired. Verify that the authorization ID from the access denied error message is correct and the call is made in the region where the denial occurred. Ensure that the calling principal belongs to the same account or organization as the original denied request.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request is malformed or is missing one or more required parameters. Check the request parameters and try again.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
