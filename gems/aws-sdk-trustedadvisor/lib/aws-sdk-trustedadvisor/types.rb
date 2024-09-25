# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::TrustedAdvisor
  module Types

    # Exception that access has been denied due to insufficient access
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of an AccountRecommendationLifecycle for an Organization
    # Recommendation
    #
    # @!attribute [rw] account_id
    #   The AWS account ID
    #   @return [String]
    #
    # @!attribute [rw] account_recommendation_arn
    #   The Recommendation ARN
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   When the Recommendation was last updated
    #   @return [Time]
    #
    # @!attribute [rw] lifecycle_stage
    #   The lifecycle stage from AWS Trusted Advisor Priority
    #   @return [String]
    #
    # @!attribute [rw] update_reason
    #   Reason for the lifecycle stage change
    #   @return [String]
    #
    # @!attribute [rw] update_reason_code
    #   Reason code for the lifecycle state change
    #   @return [String]
    #
    # @!attribute [rw] updated_on_behalf_of
    #   The person on whose behalf a Technical Account Manager (TAM) updated
    #   the recommendation. This information is only available when a
    #   Technical Account Manager takes an action on a recommendation
    #   managed by AWS Trusted Advisor Priority
    #   @return [String]
    #
    # @!attribute [rw] updated_on_behalf_of_job_title
    #   The job title of the person on whose behalf a Technical Account
    #   Manager (TAM) updated the recommendation. This information is only
    #   available when a Technical Account Manager takes an action on a
    #   recommendation managed by AWS Trusted Advisor Priority
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/AccountRecommendationLifecycleSummary AWS API Documentation
    #
    class AccountRecommendationLifecycleSummary < Struct.new(
      :account_id,
      :account_recommendation_arn,
      :last_updated_at,
      :lifecycle_stage,
      :update_reason,
      :update_reason_code,
      :updated_on_behalf_of,
      :updated_on_behalf_of_job_title)
      SENSITIVE = [:update_reason]
      include Aws::Structure
    end

    # @!attribute [rw] recommendation_resource_exclusions
    #   A list of recommendation resource ARNs and exclusion status to
    #   update
    #   @return [Array<Types::RecommendationResourceExclusion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/BatchUpdateRecommendationResourceExclusionRequest AWS API Documentation
    #
    class BatchUpdateRecommendationResourceExclusionRequest < Struct.new(
      :recommendation_resource_exclusions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_update_recommendation_resource_exclusion_errors
    #   A list of recommendation resource ARNs whose exclusion status failed
    #   to update, if any
    #   @return [Array<Types::UpdateRecommendationResourceExclusionError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/BatchUpdateRecommendationResourceExclusionResponse AWS API Documentation
    #
    class BatchUpdateRecommendationResourceExclusionResponse < Struct.new(
      :batch_update_recommendation_resource_exclusion_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of an AWS Trusted Advisor Check
    #
    # @!attribute [rw] arn
    #   The ARN of the AWS Trusted Advisor Check
    #   @return [String]
    #
    # @!attribute [rw] aws_services
    #   The AWS Services that the Check applies to
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   A description of what the AWS Trusted Advisor Check is monitoring
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the AWS Trusted Advisor Check
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The column headings for the metadata returned in the resource
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] name
    #   The name of the AWS Trusted Advisor Check
    #   @return [String]
    #
    # @!attribute [rw] pillars
    #   The Recommendation pillars that the AWS Trusted Advisor Check falls
    #   under
    #   @return [Array<String>]
    #
    # @!attribute [rw] source
    #   The source of the Recommendation
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/CheckSummary AWS API Documentation
    #
    class CheckSummary < Struct.new(
      :arn,
      :aws_services,
      :description,
      :id,
      :metadata,
      :name,
      :pillars,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception that the request was denied due to conflictions in state
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_recommendation_identifier
    #   The Recommendation identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/GetOrganizationRecommendationRequest AWS API Documentation
    #
    class GetOrganizationRecommendationRequest < Struct.new(
      :organization_recommendation_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_recommendation
    #   The Recommendation
    #   @return [Types::OrganizationRecommendation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/GetOrganizationRecommendationResponse AWS API Documentation
    #
    class GetOrganizationRecommendationResponse < Struct.new(
      :organization_recommendation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommendation_identifier
    #   The Recommendation identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/GetRecommendationRequest AWS API Documentation
    #
    class GetRecommendationRequest < Struct.new(
      :recommendation_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommendation
    #   The Recommendation
    #   @return [Types::Recommendation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/GetRecommendationResponse AWS API Documentation
    #
    class GetRecommendationResponse < Struct.new(
      :recommendation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception to notify that an unexpected internal error occurred during
    # processing of the request
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_service
    #   The aws service associated with the check
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The ISO 639-1 code for the language that you want your checks to
    #   appear in.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] pillar
    #   The pillar of the check
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of the check
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/ListChecksRequest AWS API Documentation
    #
    class ListChecksRequest < Struct.new(
      :aws_service,
      :language,
      :max_results,
      :next_token,
      :pillar,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] check_summaries
    #   The list of Checks
    #   @return [Array<Types::CheckSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/ListChecksResponse AWS API Documentation
    #
    class ListChecksResponse < Struct.new(
      :check_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] affected_account_id
    #   An account affected by this organization recommendation
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] organization_recommendation_identifier
    #   The Recommendation identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/ListOrganizationRecommendationAccountsRequest AWS API Documentation
    #
    class ListOrganizationRecommendationAccountsRequest < Struct.new(
      :affected_account_id,
      :max_results,
      :next_token,
      :organization_recommendation_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_recommendation_lifecycle_summaries
    #   The account recommendations lifecycles that are applicable to the
    #   Recommendation
    #   @return [Array<Types::AccountRecommendationLifecycleSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/ListOrganizationRecommendationAccountsResponse AWS API Documentation
    #
    class ListOrganizationRecommendationAccountsResponse < Struct.new(
      :account_recommendation_lifecycle_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] affected_account_id
    #   An account affected by this organization recommendation
    #   @return [String]
    #
    # @!attribute [rw] exclusion_status
    #   The exclusion status of the resource
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] organization_recommendation_identifier
    #   The AWS Organization organization's Recommendation identifier
    #   @return [String]
    #
    # @!attribute [rw] region_code
    #   The AWS Region code of the resource
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the resource
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/ListOrganizationRecommendationResourcesRequest AWS API Documentation
    #
    class ListOrganizationRecommendationResourcesRequest < Struct.new(
      :affected_account_id,
      :exclusion_status,
      :max_results,
      :next_token,
      :organization_recommendation_identifier,
      :region_code,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] organization_recommendation_resource_summaries
    #   A list of Recommendation Resources
    #   @return [Array<Types::OrganizationRecommendationResourceSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/ListOrganizationRecommendationResourcesResponse AWS API Documentation
    #
    class ListOrganizationRecommendationResourcesResponse < Struct.new(
      :next_token,
      :organization_recommendation_resource_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] after_last_updated_at
    #   After the last update of the Recommendation
    #   @return [Time]
    #
    # @!attribute [rw] aws_service
    #   The aws service associated with the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] before_last_updated_at
    #   Before the last update of the Recommendation
    #   @return [Time]
    #
    # @!attribute [rw] check_identifier
    #   The check identifier of the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] pillar
    #   The pillar of the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the Recommendation
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/ListOrganizationRecommendationsRequest AWS API Documentation
    #
    class ListOrganizationRecommendationsRequest < Struct.new(
      :after_last_updated_at,
      :aws_service,
      :before_last_updated_at,
      :check_identifier,
      :max_results,
      :next_token,
      :pillar,
      :source,
      :status,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] organization_recommendation_summaries
    #   The list of Recommendations
    #   @return [Array<Types::OrganizationRecommendationSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/ListOrganizationRecommendationsResponse AWS API Documentation
    #
    class ListOrganizationRecommendationsResponse < Struct.new(
      :next_token,
      :organization_recommendation_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] exclusion_status
    #   The exclusion status of the resource
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_identifier
    #   The Recommendation identifier
    #   @return [String]
    #
    # @!attribute [rw] region_code
    #   The AWS Region code of the resource
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the resource
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/ListRecommendationResourcesRequest AWS API Documentation
    #
    class ListRecommendationResourcesRequest < Struct.new(
      :exclusion_status,
      :max_results,
      :next_token,
      :recommendation_identifier,
      :region_code,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_resource_summaries
    #   A list of Recommendation Resources
    #   @return [Array<Types::RecommendationResourceSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/ListRecommendationResourcesResponse AWS API Documentation
    #
    class ListRecommendationResourcesResponse < Struct.new(
      :next_token,
      :recommendation_resource_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] after_last_updated_at
    #   After the last update of the Recommendation
    #   @return [Time]
    #
    # @!attribute [rw] aws_service
    #   The aws service associated with the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] before_last_updated_at
    #   Before the last update of the Recommendation
    #   @return [Time]
    #
    # @!attribute [rw] check_identifier
    #   The check identifier of the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] pillar
    #   The pillar of the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the Recommendation
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/ListRecommendationsRequest AWS API Documentation
    #
    class ListRecommendationsRequest < Struct.new(
      :after_last_updated_at,
      :aws_service,
      :before_last_updated_at,
      :check_identifier,
      :max_results,
      :next_token,
      :pillar,
      :source,
      :status,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_summaries
    #   The list of Recommendations
    #   @return [Array<Types::RecommendationSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/ListRecommendationsResponse AWS API Documentation
    #
    class ListRecommendationsResponse < Struct.new(
      :next_token,
      :recommendation_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Recommendation for accounts within an Organization
    #
    # @!attribute [rw] arn
    #   The ARN of the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] aws_services
    #   The AWS Services that the Recommendation applies to
    #   @return [Array<String>]
    #
    # @!attribute [rw] check_arn
    #   The AWS Trusted Advisor Check ARN that relates to the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   When the Recommendation was created, if created by AWS Trusted
    #   Advisor Priority
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The creator, if created by AWS Trusted Advisor Priority
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for AWS Trusted Advisor recommendations
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID which identifies where the Recommendation was produced
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   When the Recommendation was last updated
    #   @return [Time]
    #
    # @!attribute [rw] lifecycle_stage
    #   The lifecycle stage from AWS Trusted Advisor Priority
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the AWS Trusted Advisor Recommendation
    #   @return [String]
    #
    # @!attribute [rw] pillar_specific_aggregates
    #   The pillar aggregations for cost savings
    #   @return [Types::RecommendationPillarSpecificAggregates]
    #
    # @!attribute [rw] pillars
    #   The Pillars that the Recommendation is optimizing
    #   @return [Array<String>]
    #
    # @!attribute [rw] resolved_at
    #   When the Recommendation was resolved
    #   @return [Time]
    #
    # @!attribute [rw] resources_aggregates
    #   An aggregation of all resources
    #   @return [Types::RecommendationResourcesAggregates]
    #
    # @!attribute [rw] source
    #   The source of the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Whether the Recommendation was automated or generated by AWS Trusted
    #   Advisor Priority
    #   @return [String]
    #
    # @!attribute [rw] update_reason
    #   Reason for the lifecycle stage change
    #   @return [String]
    #
    # @!attribute [rw] update_reason_code
    #   Reason code for the lifecycle state change
    #   @return [String]
    #
    # @!attribute [rw] updated_on_behalf_of
    #   The person on whose behalf a Technical Account Manager (TAM) updated
    #   the recommendation. This information is only available when a
    #   Technical Account Manager takes an action on a recommendation
    #   managed by AWS Trusted Advisor Priority
    #   @return [String]
    #
    # @!attribute [rw] updated_on_behalf_of_job_title
    #   The job title of the person on whose behalf a Technical Account
    #   Manager (TAM) updated the recommendation. This information is only
    #   available when a Technical Account Manager takes an action on a
    #   recommendation managed by AWS Trusted Advisor Priority
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/OrganizationRecommendation AWS API Documentation
    #
    class OrganizationRecommendation < Struct.new(
      :arn,
      :aws_services,
      :check_arn,
      :created_at,
      :created_by,
      :description,
      :id,
      :last_updated_at,
      :lifecycle_stage,
      :name,
      :pillar_specific_aggregates,
      :pillars,
      :resolved_at,
      :resources_aggregates,
      :source,
      :status,
      :type,
      :update_reason,
      :update_reason_code,
      :updated_on_behalf_of,
      :updated_on_behalf_of_job_title)
      SENSITIVE = [:update_reason]
      include Aws::Structure
    end

    # Organization Recommendation Resource Summary
    #
    # @!attribute [rw] account_id
    #   The AWS account ID
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the Recommendation Resource
    #   @return [String]
    #
    # @!attribute [rw] aws_resource_id
    #   The AWS resource identifier
    #   @return [String]
    #
    # @!attribute [rw] exclusion_status
    #   The exclusion status of the Recommendation Resource
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the Recommendation Resource
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   When the Recommendation Resource was last updated
    #   @return [Time]
    #
    # @!attribute [rw] metadata
    #   Metadata associated with the Recommendation Resource
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] recommendation_arn
    #   The Recommendation ARN
    #   @return [String]
    #
    # @!attribute [rw] region_code
    #   The AWS Region code that the Recommendation Resource is in
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the Recommendation Resource
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/OrganizationRecommendationResourceSummary AWS API Documentation
    #
    class OrganizationRecommendationResourceSummary < Struct.new(
      :account_id,
      :arn,
      :aws_resource_id,
      :exclusion_status,
      :id,
      :last_updated_at,
      :metadata,
      :recommendation_arn,
      :region_code,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of recommendation for accounts within an Organization
    #
    # @!attribute [rw] arn
    #   The ARN of the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] aws_services
    #   The AWS Services that the Recommendation applies to
    #   @return [Array<String>]
    #
    # @!attribute [rw] check_arn
    #   The AWS Trusted Advisor Check ARN that relates to the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   When the Recommendation was created, if created by AWS Trusted
    #   Advisor Priority
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The ID which identifies where the Recommendation was produced
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   When the Recommendation was last updated
    #   @return [Time]
    #
    # @!attribute [rw] lifecycle_stage
    #   The lifecycle stage from AWS Trusted Advisor Priority
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the AWS Trusted Advisor Recommendation
    #   @return [String]
    #
    # @!attribute [rw] pillar_specific_aggregates
    #   The pillar aggregations for cost savings
    #   @return [Types::RecommendationPillarSpecificAggregates]
    #
    # @!attribute [rw] pillars
    #   The Pillars that the Recommendation is optimizing
    #   @return [Array<String>]
    #
    # @!attribute [rw] resources_aggregates
    #   An aggregation of all resources
    #   @return [Types::RecommendationResourcesAggregates]
    #
    # @!attribute [rw] source
    #   The source of the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Whether the Recommendation was automated or generated by AWS Trusted
    #   Advisor Priority
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/OrganizationRecommendationSummary AWS API Documentation
    #
    class OrganizationRecommendationSummary < Struct.new(
      :arn,
      :aws_services,
      :check_arn,
      :created_at,
      :id,
      :last_updated_at,
      :lifecycle_stage,
      :name,
      :pillar_specific_aggregates,
      :pillars,
      :resources_aggregates,
      :source,
      :status,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Recommendation for an Account
    #
    # @!attribute [rw] arn
    #   The ARN of the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] aws_services
    #   The AWS Services that the Recommendation applies to
    #   @return [Array<String>]
    #
    # @!attribute [rw] check_arn
    #   The AWS Trusted Advisor Check ARN that relates to the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   When the Recommendation was created, if created by AWS Trusted
    #   Advisor Priority
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The creator, if created by AWS Trusted Advisor Priority
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for AWS Trusted Advisor recommendations
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID which identifies where the Recommendation was produced
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   When the Recommendation was last updated
    #   @return [Time]
    #
    # @!attribute [rw] lifecycle_stage
    #   The lifecycle stage from AWS Trusted Advisor Priority
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the AWS Trusted Advisor Recommendation
    #   @return [String]
    #
    # @!attribute [rw] pillar_specific_aggregates
    #   The pillar aggregations for cost savings
    #   @return [Types::RecommendationPillarSpecificAggregates]
    #
    # @!attribute [rw] pillars
    #   The Pillars that the Recommendation is optimizing
    #   @return [Array<String>]
    #
    # @!attribute [rw] resolved_at
    #   When the Recommendation was resolved
    #   @return [Time]
    #
    # @!attribute [rw] resources_aggregates
    #   An aggregation of all resources
    #   @return [Types::RecommendationResourcesAggregates]
    #
    # @!attribute [rw] source
    #   The source of the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Whether the Recommendation was automated or generated by AWS Trusted
    #   Advisor Priority
    #   @return [String]
    #
    # @!attribute [rw] update_reason
    #   Reason for the lifecycle stage change
    #   @return [String]
    #
    # @!attribute [rw] update_reason_code
    #   Reason code for the lifecycle state change
    #   @return [String]
    #
    # @!attribute [rw] updated_on_behalf_of
    #   The person on whose behalf a Technical Account Manager (TAM) updated
    #   the recommendation. This information is only available when a
    #   Technical Account Manager takes an action on a recommendation
    #   managed by AWS Trusted Advisor Priority
    #   @return [String]
    #
    # @!attribute [rw] updated_on_behalf_of_job_title
    #   The job title of the person on whose behalf a Technical Account
    #   Manager (TAM) updated the recommendation. This information is only
    #   available when a Technical Account Manager takes an action on a
    #   recommendation managed by AWS Trusted Advisor Priority
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/Recommendation AWS API Documentation
    #
    class Recommendation < Struct.new(
      :arn,
      :aws_services,
      :check_arn,
      :created_at,
      :created_by,
      :description,
      :id,
      :last_updated_at,
      :lifecycle_stage,
      :name,
      :pillar_specific_aggregates,
      :pillars,
      :resolved_at,
      :resources_aggregates,
      :source,
      :status,
      :type,
      :update_reason,
      :update_reason_code,
      :updated_on_behalf_of,
      :updated_on_behalf_of_job_title)
      SENSITIVE = [:update_reason]
      include Aws::Structure
    end

    # Cost optimizing aggregates for a Recommendation
    #
    # @!attribute [rw] estimated_monthly_savings
    #   The estimated monthly savings
    #   @return [Float]
    #
    # @!attribute [rw] estimated_percent_monthly_savings
    #   The estimated percently monthly savings
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/RecommendationCostOptimizingAggregates AWS API Documentation
    #
    class RecommendationCostOptimizingAggregates < Struct.new(
      :estimated_monthly_savings,
      :estimated_percent_monthly_savings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Recommendation pillar aggregates
    #
    # @!attribute [rw] cost_optimizing
    #   Cost optimizing aggregates
    #   @return [Types::RecommendationCostOptimizingAggregates]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/RecommendationPillarSpecificAggregates AWS API Documentation
    #
    class RecommendationPillarSpecificAggregates < Struct.new(
      :cost_optimizing)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request entry for Recommendation Resource exclusion. Each entry is
    # a combination of Recommendation Resource ARN and corresponding
    # exclusion status
    #
    # @!attribute [rw] arn
    #   The ARN of the Recommendation Resource
    #   @return [String]
    #
    # @!attribute [rw] is_excluded
    #   The exclusion status
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/RecommendationResourceExclusion AWS API Documentation
    #
    class RecommendationResourceExclusion < Struct.new(
      :arn,
      :is_excluded)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of a Recommendation Resource
    #
    # @!attribute [rw] arn
    #   The ARN of the Recommendation Resource
    #   @return [String]
    #
    # @!attribute [rw] aws_resource_id
    #   The AWS resource identifier
    #   @return [String]
    #
    # @!attribute [rw] exclusion_status
    #   The exclusion status of the Recommendation Resource
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the Recommendation Resource
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   When the Recommendation Resource was last updated
    #   @return [Time]
    #
    # @!attribute [rw] metadata
    #   Metadata associated with the Recommendation Resource
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] recommendation_arn
    #   The Recommendation ARN
    #   @return [String]
    #
    # @!attribute [rw] region_code
    #   The AWS Region code that the Recommendation Resource is in
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the Recommendation Resource
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/RecommendationResourceSummary AWS API Documentation
    #
    class RecommendationResourceSummary < Struct.new(
      :arn,
      :aws_resource_id,
      :exclusion_status,
      :id,
      :last_updated_at,
      :metadata,
      :recommendation_arn,
      :region_code,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Aggregation of Recommendation Resources
    #
    # @!attribute [rw] error_count
    #   The number of AWS resources that were flagged to have errors
    #   according to the Trusted Advisor check
    #   @return [Integer]
    #
    # @!attribute [rw] ok_count
    #   The number of AWS resources that were flagged to be OK according to
    #   the Trusted Advisor check
    #   @return [Integer]
    #
    # @!attribute [rw] warning_count
    #   The number of AWS resources that were flagged to have warning
    #   according to the Trusted Advisor check
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/RecommendationResourcesAggregates AWS API Documentation
    #
    class RecommendationResourcesAggregates < Struct.new(
      :error_count,
      :ok_count,
      :warning_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of Recommendation for an Account
    #
    # @!attribute [rw] arn
    #   The ARN of the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] aws_services
    #   The AWS Services that the Recommendation applies to
    #   @return [Array<String>]
    #
    # @!attribute [rw] check_arn
    #   The AWS Trusted Advisor Check ARN that relates to the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   When the Recommendation was created, if created by AWS Trusted
    #   Advisor Priority
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The ID which identifies where the Recommendation was produced
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   When the Recommendation was last updated
    #   @return [Time]
    #
    # @!attribute [rw] lifecycle_stage
    #   The lifecycle stage from AWS Trusted Advisor Priority
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the AWS Trusted Advisor Recommendation
    #   @return [String]
    #
    # @!attribute [rw] pillar_specific_aggregates
    #   The pillar aggregations for cost savings
    #   @return [Types::RecommendationPillarSpecificAggregates]
    #
    # @!attribute [rw] pillars
    #   The Pillars that the Recommendation is optimizing
    #   @return [Array<String>]
    #
    # @!attribute [rw] resources_aggregates
    #   An aggregation of all resources
    #   @return [Types::RecommendationResourcesAggregates]
    #
    # @!attribute [rw] source
    #   The source of the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Recommendation
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Whether the Recommendation was automated or generated by AWS Trusted
    #   Advisor Priority
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/RecommendationSummary AWS API Documentation
    #
    class RecommendationSummary < Struct.new(
      :arn,
      :aws_services,
      :check_arn,
      :created_at,
      :id,
      :last_updated_at,
      :lifecycle_stage,
      :name,
      :pillar_specific_aggregates,
      :pillars,
      :resources_aggregates,
      :source,
      :status,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception that the requested resource has not been found
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception to notify that requests are being throttled
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lifecycle_stage
    #   The new lifecycle stage
    #   @return [String]
    #
    # @!attribute [rw] organization_recommendation_identifier
    #   The Recommendation identifier for AWS Trusted Advisor Priority
    #   recommendations
    #   @return [String]
    #
    # @!attribute [rw] update_reason
    #   Reason for the lifecycle stage change
    #   @return [String]
    #
    # @!attribute [rw] update_reason_code
    #   Reason code for the lifecycle state change
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/UpdateOrganizationRecommendationLifecycleRequest AWS API Documentation
    #
    class UpdateOrganizationRecommendationLifecycleRequest < Struct.new(
      :lifecycle_stage,
      :organization_recommendation_identifier,
      :update_reason,
      :update_reason_code)
      SENSITIVE = [:update_reason]
      include Aws::Structure
    end

    # @!attribute [rw] lifecycle_stage
    #   The new lifecycle stage
    #   @return [String]
    #
    # @!attribute [rw] recommendation_identifier
    #   The Recommendation identifier for AWS Trusted Advisor Priority
    #   recommendations
    #   @return [String]
    #
    # @!attribute [rw] update_reason
    #   Reason for the lifecycle stage change
    #   @return [String]
    #
    # @!attribute [rw] update_reason_code
    #   Reason code for the lifecycle state change
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/UpdateRecommendationLifecycleRequest AWS API Documentation
    #
    class UpdateRecommendationLifecycleRequest < Struct.new(
      :lifecycle_stage,
      :recommendation_identifier,
      :update_reason,
      :update_reason_code)
      SENSITIVE = [:update_reason]
      include Aws::Structure
    end

    # The error entry for Recommendation Resource exclusion. Each entry is a
    # combination of Recommendation Resource ARN, error code and error
    # message
    #
    # @!attribute [rw] arn
    #   The ARN of the Recommendation Resource
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/UpdateRecommendationResourceExclusionError AWS API Documentation
    #
    class UpdateRecommendationResourceExclusionError < Struct.new(
      :arn,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception that the request failed to satisfy service constraints
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

