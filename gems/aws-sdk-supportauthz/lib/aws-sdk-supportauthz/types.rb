# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SupportAuthZ
  module Types

    # You don't have sufficient permissions to perform this operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The set of actions authorized by a permit. Specify either all actions
    # or a list of specific actions.
    #
    # @note ActionSet is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ActionSet is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ActionSet corresponding to the set member.
    #
    # @!attribute [rw] all_actions
    #   Authorizes all available support actions.
    #   @return [Types::Unit]
    #
    # @!attribute [rw] actions
    #   A list of specific support actions to authorize. Maximum of 10
    #   actions.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/ActionSet AWS API Documentation
    #
    class ActionSet < Struct.new(
      :all_actions,
      :actions,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AllActions < ActionSet; end
      class Actions < ActionSet; end
      class Unknown < ActionSet; end
    end

    # A summary of a support action.
    #
    # @!attribute [rw] action
    #   The name of the support action.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The AWS service associated with the support action.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of what the support action does.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/ActionSummary AWS API Documentation
    #
    class ActionSummary < Struct.new(
      :action,
      :service,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # A time-window condition that constrains when a support permit is
    # valid.
    #
    # @note Condition is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Condition is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Condition corresponding to the set member.
    #
    # @!attribute [rw] allow_after
    #   The earliest time at which the permit becomes valid.
    #   @return [Time]
    #
    # @!attribute [rw] allow_before
    #   The latest time at which the permit remains valid.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/Condition AWS API Documentation
    #
    class Condition < Struct.new(
      :allow_after,
      :allow_before,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AllowAfter < Condition; end
      class AllowBefore < Condition; end
      class Unknown < Condition; end
    end

    # The request conflicts with the current state of the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that caused the conflict.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that caused the conflict.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permit
    #   The permit definition specifying the actions, resources, and
    #   time-window conditions that the support operator is authorized to
    #   use.
    #   @return [Types::Permit]
    #
    # @!attribute [rw] name
    #   A customer-chosen name for the support permit. Must be between 1 and
    #   256 alphanumeric characters.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A human-readable description of why this permit is being created.
    #   Maximum length of 1024 characters.
    #   @return [String]
    #
    # @!attribute [rw] signing_key_info
    #   The signing key information used to sign the permit. Must reference
    #   an AWS KMS key with key usage SIGN\_VERIFY and key spec
    #   ECC\_NIST\_P384.
    #   @return [Types::SigningKeyInfo]
    #
    # @!attribute [rw] support_case_display_id
    #   The display identifier of the AWS Support case associated with this
    #   permit.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, the service returns the existing permit without creating a
    #   duplicate.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the support permit on creation.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/CreateSupportPermitInput AWS API Documentation
    #
    class CreateSupportPermitInput < Struct.new(
      :permit,
      :name,
      :description,
      :signing_key_info,
      :support_case_display_id,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the support permit.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the support permit.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the support permit.
    #   @return [String]
    #
    # @!attribute [rw] permit
    #   The permit definition.
    #   @return [Types::Permit]
    #
    # @!attribute [rw] status
    #   The current status of the support permit.
    #   @return [String]
    #
    # @!attribute [rw] signing_key_info
    #   The signing key information for the permit.
    #   @return [Types::SigningKeyInfo]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the permit was created.
    #   @return [Time]
    #
    # @!attribute [rw] support_case_display_id
    #   The display identifier of the support case associated with the
    #   permit.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the support permit.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/CreateSupportPermitOutput AWS API Documentation
    #
    class CreateSupportPermitOutput < Struct.new(
      :name,
      :arn,
      :description,
      :permit,
      :status,
      :signing_key_info,
      :created_at,
      :support_case_display_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] support_permit_identifier
    #   The Amazon Resource Name (ARN) or name of the support permit to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/DeleteSupportPermitInput AWS API Documentation
    #
    class DeleteSupportPermitInput < Struct.new(
      :support_permit_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the deleted support permit.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the deleted support permit.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the deleted support permit.
    #   @return [String]
    #
    # @!attribute [rw] permit
    #   The permit definition of the deleted permit.
    #   @return [Types::Permit]
    #
    # @!attribute [rw] status
    #   The status of the support permit. Returns DELETING.
    #   @return [String]
    #
    # @!attribute [rw] signing_key_info
    #   The signing key information for the deleted permit.
    #   @return [Types::SigningKeyInfo]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the permit was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] support_case_display_id
    #   The display identifier of the support case associated with the
    #   deleted permit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/DeleteSupportPermitOutput AWS API Documentation
    #
    class DeleteSupportPermitOutput < Struct.new(
      :name,
      :arn,
      :description,
      :permit,
      :status,
      :signing_key_info,
      :created_at,
      :support_case_display_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action
    #   The name of the support action to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/GetActionInput AWS API Documentation
    #
    class GetActionInput < Struct.new(
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action
    #   The name of the support action.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The AWS service associated with the support action.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of what the support action does.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/GetActionOutput AWS API Documentation
    #
    class GetActionOutput < Struct.new(
      :action,
      :service,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] support_permit_identifier
    #   The ARN or name of the support permit to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/GetSupportPermitInput AWS API Documentation
    #
    class GetSupportPermitInput < Struct.new(
      :support_permit_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the support permit.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the support permit.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the support permit.
    #   @return [String]
    #
    # @!attribute [rw] permit
    #   The permit definition.
    #   @return [Types::Permit]
    #
    # @!attribute [rw] status
    #   The current status of the support permit.
    #   @return [String]
    #
    # @!attribute [rw] signing_key_info
    #   The signing key information for the permit.
    #   @return [Types::SigningKeyInfo]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the permit was created.
    #   @return [Time]
    #
    # @!attribute [rw] support_case_display_id
    #   The display identifier of the support case associated with the
    #   permit.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the support permit.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/GetSupportPermitOutput AWS API Documentation
    #
    class GetSupportPermitOutput < Struct.new(
      :name,
      :arn,
      :description,
      :permit,
      :status,
      :signing_key_info,
      :created_at,
      :support_case_display_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal service error occurred. Try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Valid
    #   range is 1 to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] service
    #   The name of the AWS service for which to list available support
    #   actions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/ListActionsInput AWS API Documentation
    #
    class ListActionsInput < Struct.new(
      :next_token,
      :max_results,
      :service)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_summaries
    #   The list of support actions.
    #   @return [Array<Types::ActionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/ListActionsOutput AWS API Documentation
    #
    class ListActionsOutput < Struct.new(
      :action_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Valid
    #   range is 1 to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] support_case_display_id
    #   Filters the results by support case display identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/ListSupportPermitRequestsInput AWS API Documentation
    #
    class ListSupportPermitRequestsInput < Struct.new(
      :next_token,
      :max_results,
      :support_case_display_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] support_permit_requests
    #   The list of permit requests.
    #   @return [Array<Types::SupportPermitRequest>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/ListSupportPermitRequestsOutput AWS API Documentation
    #
    class ListSupportPermitRequestsOutput < Struct.new(
      :support_permit_requests,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Valid
    #   range is 1 to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] support_permit_statuses
    #   Filters the results by support permit status. Valid values: ACTIVE,
    #   INACTIVE, DELETING.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/ListSupportPermitsInput AWS API Documentation
    #
    class ListSupportPermitsInput < Struct.new(
      :next_token,
      :max_results,
      :support_permit_statuses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] support_permits
    #   The list of support permits.
    #   @return [Array<Types::SupportPermitSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/ListSupportPermitsOutput AWS API Documentation
    #
    class ListSupportPermitsOutput < Struct.new(
      :support_permits,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to list tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The permit definition specifying the authorized actions, resources,
    # and time-window conditions for a support operator.
    #
    # @!attribute [rw] actions
    #   The set of actions that the support operator is authorized to
    #   perform.
    #   @return [Types::ActionSet]
    #
    # @!attribute [rw] resources
    #   The set of resources that the support operator is authorized to act
    #   upon.
    #   @return [Types::ResourceSet]
    #
    # @!attribute [rw] conditions
    #   The time-window conditions that constrain when the permit is valid.
    #   Maximum of 2 conditions.
    #   @return [Array<Types::Condition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/Permit AWS API Documentation
    #
    class Permit < Struct.new(
      :actions,
      :resources,
      :conditions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_arn
    #   The ARN of the permit request to reject.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/RejectSupportPermitRequestInput AWS API Documentation
    #
    class RejectSupportPermitRequestInput < Struct.new(
      :request_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_arn
    #   The ARN of the rejected permit request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/RejectSupportPermitRequestOutput AWS API Documentation
    #
    class RejectSupportPermitRequestOutput < Struct.new(
      :request_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that was not found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that was not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The set of resources authorized by a permit. Specify either all
    # resources in the Region or a list of specific resources.
    #
    # @note ResourceSet is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ResourceSet is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ResourceSet corresponding to the set member.
    #
    # @!attribute [rw] all_resources_in_region
    #   Authorizes the support operator to act on all resources in the
    #   Region.
    #   @return [Types::Unit]
    #
    # @!attribute [rw] resources
    #   A list of specific resource identifiers that the support operator is
    #   authorized to act upon. Maximum of 5 resources.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/ResourceSet AWS API Documentation
    #
    class ResourceSet < Struct.new(
      :all_resources_in_region,
      :resources,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AllResourcesInRegion < ResourceSet; end
      class Resources < ResourceSet; end
      class Unknown < ResourceSet; end
    end

    # The request exceeds a service quota for your account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that exceeded the quota.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that exceeded the quota.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code of the originating service.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota code of the exceeded quota.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The signing key used to cryptographically sign a support permit.
    #
    # @note SigningKeyInfo is a union - when making an API calls you must set exactly one of the members.
    #
    # @note SigningKeyInfo is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SigningKeyInfo corresponding to the set member.
    #
    # @!attribute [rw] kms_key
    #   The ARN of the AWS KMS key used to sign the permit. The key must
    #   have key spec ECC\_NIST\_P384 and key usage SIGN\_VERIFY.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/SigningKeyInfo AWS API Documentation
    #
    class SigningKeyInfo < Struct.new(
      :kms_key,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class KmsKey < SigningKeyInfo; end
      class Unknown < SigningKeyInfo; end
    end

    # A permit request from an AWS support operator.
    #
    # @!attribute [rw] request_arn
    #   The ARN of the permit request.
    #   @return [String]
    #
    # @!attribute [rw] permit
    #   The permit definition requested by the operator.
    #   @return [Types::Permit]
    #
    # @!attribute [rw] support_case_display_id
    #   The display identifier of the support case associated with the
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the permit request.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the request was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the request was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/SupportPermitRequest AWS API Documentation
    #
    class SupportPermitRequest < Struct.new(
      :request_arn,
      :permit,
      :support_case_display_id,
      :status,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a support permit.
    #
    # @!attribute [rw] name
    #   The name of the support permit.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the support permit.
    #   @return [String]
    #
    # @!attribute [rw] permit
    #   The permit definition.
    #   @return [Types::Permit]
    #
    # @!attribute [rw] status
    #   The current status of the support permit.
    #   @return [String]
    #
    # @!attribute [rw] signing_key_info
    #   The signing key information for the permit.
    #   @return [Types::SigningKeyInfo]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the permit was created.
    #   @return [Time]
    #
    # @!attribute [rw] support_case_display_id
    #   The display identifier of the support case associated with the
    #   permit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/SupportPermitSummary AWS API Documentation
    #
    class SupportPermitSummary < Struct.new(
      :name,
      :arn,
      :permit,
      :status,
      :signing_key_info,
      :created_at,
      :support_case_display_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource. Maximum of 50 tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # The request rate exceeded the allowed limit. Try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/Unit AWS API Documentation
    #
    class Unit < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to untag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # The input fails to satisfy the constraints specified by the service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   A list of fields that fail validation. Each entry identifies the
    #   field and the reason for the constraint violation.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes one specific validation failure for an input member.
    #
    # @!attribute [rw] path
    #   A JSONPointer expression to the structure member whose value failed
    #   to satisfy the modeled constraints.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A detailed description of the validation failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supportauthz-2026-06-30/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :path,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

