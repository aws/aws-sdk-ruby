# frozen_string_literal: true

# This is generated code!

module Aws::TrustedAdvisor
  # This module contains the types returned by client operations.
  module Types

    # <p>Exception that access has been denied due to insufficient access</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of an AccountRecommendationLifecycle for an Organization Recommendation</p>
    # @!attribute account_id
    #   <p>The AWS account ID</p>
    #   @return [String]
    # @!attribute account_recommendation_arn
    #   <p>The Recommendation ARN</p>
    #   @return [String]
    # @!attribute lifecycle_stage
    #   <p>The lifecycle stage from AWS Trusted Advisor Priority</p>
    #   @return [String]
    # @!attribute updated_on_behalf_of
    #   <p>The person on whose behalf a Technical Account Manager (TAM) updated the recommendation. This information is only available when a Technical Account Manager takes an action on a recommendation managed by AWS Trusted Advisor Priority </p>
    #   @return [String]
    # @!attribute updated_on_behalf_of_job_title
    #   <p>The job title of the person on whose behalf a Technical Account Manager (TAM) updated the recommendation. This information is only available when a Technical Account Manager takes an action on a recommendation managed by AWS Trusted Advisor Priority </p>
    #   @return [String]
    # @!attribute update_reason
    #   <p>Reason for the lifecycle stage change</p>
    #   @return [String]
    # @!attribute update_reason_code
    #   <p>Reason code for the lifecycle state change</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>When the Recommendation was last updated</p>
    #   @return [Time]
    class AccountRecommendationLifecycleSummary < Struct.new(
      nil,
      :account_id,
      :account_recommendation_arn,
      :lifecycle_stage,
      :updated_on_behalf_of,
      :updated_on_behalf_of_job_title,
      :update_reason,
      :update_reason_code,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommendation_resource_exclusions
    #   <p>A list of recommendation resource ARNs and exclusion status to update</p>
    #   @return [Array<Types::RecommendationResourceExclusion>]
    class BatchUpdateRecommendationResourceExclusionRequest < Struct.new(
      nil,
      :recommendation_resource_exclusions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_update_recommendation_resource_exclusion_errors
    #   <p>A list of recommendation resource ARNs whose exclusion status failed to update, if any</p>
    #   @return [Array<Types::UpdateRecommendationResourceExclusionError>]
    class BatchUpdateRecommendationResourceExclusionResponse < Struct.new(
      nil,
      :batch_update_recommendation_resource_exclusion_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of an AWS Trusted Advisor Check</p>
    # @!attribute id
    #   <p>The unique identifier of the AWS Trusted Advisor Check</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the AWS Trusted Advisor Check</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the AWS Trusted Advisor Check</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of what the AWS Trusted Advisor Check is monitoring</p>
    #   @return [String]
    # @!attribute pillars
    #   <p>The Recommendation pillars that the AWS Trusted Advisor Check falls under</p>
    #   @return [Array<String>]
    # @!attribute aws_services
    #   <p>The AWS Services that the Check applies to</p>
    #   @return [Array<String>]
    # @!attribute source
    #   <p>The source of the Recommendation</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The column headings for the metadata returned in the resource</p>
    #   @return [Hash<String, String>]
    # @!attribute resource_arn_queryable
    #   <p>Indicates whether this check is supported by the ListRecommendationsForResource API.</p>
    #   @return [Boolean]
    # @!attribute aws_resource_types
    #   <p>The AWS resource types that this check evaluates (for example, AWS::EC2::Instance).</p>
    #   @return [Array<String>]
    # @!attribute check_granularity
    #   <p>The granularity level at which the check operates: resource, account, or account_region.</p>
    #   @return [String]
    # @!attribute recommendation_id
    #   <p>The recommendation identifier associated with the check.</p>
    #   @return [String]
    class CheckSummary < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :description,
      :pillars,
      :aws_services,
      :source,
      :metadata,
      :resource_arn_queryable,
      :aws_resource_types,
      :check_granularity,
      :recommendation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:resource_arn_queryable] = false unless options.key?(:resource_arn_queryable)
        options[:aws_resource_types] = [] unless options.key?(:aws_resource_types)
        super
      end
    end

    # <p>Exception that the request was denied due to conflictions in state</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_recommendation_identifier
    #   <p>The Recommendation identifier</p>
    #   @return [String]
    class GetOrganizationRecommendationRequest < Struct.new(
      nil,
      :organization_recommendation_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_recommendation
    #   <p>The Recommendation</p>
    #   @return [Types::OrganizationRecommendation]
    class GetOrganizationRecommendationResponse < Struct.new(
      nil,
      :organization_recommendation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommendation_identifier
    #   <p>The Recommendation identifier</p>
    #   @return [String]
    # @!attribute language
    #   <p>The ISO 639-1 code for the language that you want your recommendations to appear in.</p>
    #   @return [String]
    class GetRecommendationRequest < Struct.new(
      nil,
      :recommendation_identifier,
      :language,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommendation
    #   <p>The Recommendation</p>
    #   @return [Types::Recommendation]
    class GetRecommendationResponse < Struct.new(
      nil,
      :recommendation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Exception to notify that an unexpected internal error occurred during processing of the request</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute pillar
    #   <p>The pillar of the check</p>
    #   @return [String]
    # @!attribute aws_service
    #   <p>The aws service associated with the check</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source of the check</p>
    #   @return [String]
    # @!attribute language
    #   <p>The ISO 639-1 code for the language that you want your checks to appear in.</p>
    #   @return [String]
    class ListChecksRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :pillar,
      :aws_service,
      :source,
      :language,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. </p>
    #   @return [String]
    # @!attribute check_summaries
    #   <p>The list of Checks</p>
    #   @return [Array<Types::CheckSummary>]
    class ListChecksResponse < Struct.new(
      nil,
      :next_token,
      :check_summaries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute organization_recommendation_identifier
    #   <p>The Recommendation identifier</p>
    #   @return [String]
    # @!attribute affected_account_id
    #   <p>An account affected by this organization recommendation</p>
    #   @return [String]
    class ListOrganizationRecommendationAccountsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :organization_recommendation_identifier,
      :affected_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. </p>
    #   @return [String]
    # @!attribute account_recommendation_lifecycle_summaries
    #   <p>The account recommendations lifecycles that are applicable to the Recommendation</p>
    #   @return [Array<Types::AccountRecommendationLifecycleSummary>]
    class ListOrganizationRecommendationAccountsResponse < Struct.new(
      nil,
      :next_token,
      :account_recommendation_lifecycle_summaries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the resource</p>
    #   @return [String]
    # @!attribute exclusion_status
    #   <p>The exclusion status of the resource</p>
    #   @return [String]
    # @!attribute region_code
    #   <p>The AWS Region code of the resource</p>
    #   @return [String]
    # @!attribute organization_recommendation_identifier
    #   <p>The AWS Organization organization's Recommendation identifier</p>
    #   @return [String]
    # @!attribute affected_account_id
    #   <p>An account affected by this organization recommendation</p>
    #   @return [String]
    class ListOrganizationRecommendationResourcesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :status,
      :exclusion_status,
      :region_code,
      :organization_recommendation_identifier,
      :affected_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. </p>
    #   @return [String]
    # @!attribute organization_recommendation_resource_summaries
    #   <p>A list of Recommendation Resources</p>
    #   @return [Array<Types::OrganizationRecommendationResourceSummary>]
    class ListOrganizationRecommendationResourcesResponse < Struct.new(
      nil,
      :next_token,
      :organization_recommendation_resource_summaries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute type
    #   <p>The type of the Recommendation</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Recommendation</p>
    #   @return [String]
    # @!attribute pillar
    #   <p>The pillar of the Recommendation</p>
    #   @return [String]
    # @!attribute aws_service
    #   <p>The aws service associated with the Recommendation</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source of the Recommendation</p>
    #   @return [String]
    # @!attribute check_identifier
    #   <p>The check identifier of the Recommendation</p>
    #   @return [String]
    # @!attribute after_last_updated_at
    #   <p>After the last update of the Recommendation</p>
    #   @return [Time]
    # @!attribute before_last_updated_at
    #   <p>Before the last update of the Recommendation</p>
    #   @return [Time]
    class ListOrganizationRecommendationsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :type,
      :status,
      :pillar,
      :aws_service,
      :source,
      :check_identifier,
      :after_last_updated_at,
      :before_last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. </p>
    #   @return [String]
    # @!attribute organization_recommendation_summaries
    #   <p>The list of Recommendations</p>
    #   @return [Array<Types::OrganizationRecommendationSummary>]
    class ListOrganizationRecommendationsResponse < Struct.new(
      nil,
      :next_token,
      :organization_recommendation_summaries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the resource</p>
    #   @return [String]
    # @!attribute exclusion_status
    #   <p>The exclusion status of the resource</p>
    #   @return [String]
    # @!attribute region_code
    #   <p>The AWS Region code of the resource</p>
    #   @return [String]
    # @!attribute recommendation_identifier
    #   <p>The Recommendation identifier</p>
    #   @return [String]
    # @!attribute language
    #   <p>The ISO 639-1 code for the language that you want your recommendations to appear in.</p>
    #   @return [String]
    class ListRecommendationResourcesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :status,
      :exclusion_status,
      :region_code,
      :recommendation_identifier,
      :language,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. </p>
    #   @return [String]
    # @!attribute recommendation_resource_summaries
    #   <p>A list of Recommendation Resources</p>
    #   @return [Array<Types::RecommendationResourceSummary>]
    class ListRecommendationResourcesResponse < Struct.new(
      nil,
      :next_token,
      :recommendation_resource_summaries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page</p>
    #   @return [Integer]
    # @!attribute aws_resource_arn
    #   <p>The ARN of the AWS resource to query recommendations for</p>
    #   @return [String]
    # @!attribute pillar
    #   <p>The pillar that the recommendation belongs to</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the Recommendation Resource</p>
    #   @return [String]
    # @!attribute check_arn
    #   <p>The AWS Trusted Advisor Check ARN that relates to the Recommendation</p>
    #   @return [String]
    # @!attribute language
    #   <p>The ISO 639-1 code for the language that you want your recommendations to appear in.</p>
    #   @return [String]
    class ListRecommendationsForResourceRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :aws_resource_arn,
      :pillar,
      :status,
      :check_arn,
      :language,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. </p>
    #   @return [String]
    # @!attribute recommendation_for_resource_summaries
    #   <p>List of Trusted Advisor recommendations associated with the given AWS resource</p>
    #   @return [Array<Types::RecommendationForResourceSummary>]
    class ListRecommendationsForResourceResponse < Struct.new(
      nil,
      :next_token,
      :recommendation_for_resource_summaries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute type
    #   <p>The type of the Recommendation</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Recommendation</p>
    #   @return [String]
    # @!attribute pillar
    #   <p>The pillar of the Recommendation</p>
    #   @return [String]
    # @!attribute aws_service
    #   <p>The aws service associated with the Recommendation</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source of the Recommendation</p>
    #   @return [String]
    # @!attribute check_identifier
    #   <p>The check identifier of the Recommendation</p>
    #   @return [String]
    # @!attribute after_last_updated_at
    #   <p>After the last update of the Recommendation</p>
    #   @return [Time]
    # @!attribute before_last_updated_at
    #   <p>Before the last update of the Recommendation</p>
    #   @return [Time]
    # @!attribute language
    #   <p>The ISO 639-1 code for the language that you want your recommendations to appear in.</p>
    #   @return [String]
    class ListRecommendationsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :type,
      :status,
      :pillar,
      :aws_service,
      :source,
      :check_identifier,
      :after_last_updated_at,
      :before_last_updated_at,
      :language,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. </p>
    #   @return [String]
    # @!attribute recommendation_summaries
    #   <p>The list of Recommendations</p>
    #   @return [Array<Types::RecommendationSummary>]
    class ListRecommendationsResponse < Struct.new(
      nil,
      :next_token,
      :recommendation_summaries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A Recommendation for accounts within an Organization</p>
    # @!attribute id
    #   <p>The ID which identifies where the Recommendation was produced</p>
    #   @return [String]
    # @!attribute type
    #   <p>Whether the Recommendation was automated or generated by AWS Trusted Advisor Priority</p>
    #   @return [String]
    # @!attribute check_arn
    #   <p>The AWS Trusted Advisor Check ARN that relates to the Recommendation</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Recommendation</p>
    #   @return [String]
    # @!attribute lifecycle_stage
    #   <p>The lifecycle stage from AWS Trusted Advisor Priority</p>
    #   @return [String]
    # @!attribute pillars
    #   <p>The Pillars that the Recommendation is optimizing</p>
    #   @return [Array<String>]
    # @!attribute source
    #   <p>The source of the Recommendation</p>
    #   @return [String]
    # @!attribute aws_services
    #   <p>The AWS Services that the Recommendation applies to</p>
    #   @return [Array<String>]
    # @!attribute name
    #   <p>The name of the AWS Trusted Advisor Recommendation</p>
    #   @return [String]
    # @!attribute resources_aggregates
    #   <p>An aggregation of all resources</p>
    #   @return [Types::RecommendationResourcesAggregates]
    # @!attribute pillar_specific_aggregates
    #   <p>The pillar aggregations for cost savings</p>
    #   @return [Types::RecommendationPillarSpecificAggregates]
    # @!attribute created_at
    #   <p>When the Recommendation was created, if created by AWS Trusted Advisor Priority</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>When the Recommendation was last updated</p>
    #   @return [Time]
    # @!attribute arn
    #   <p>The ARN of the Recommendation</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for AWS Trusted Advisor recommendations</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The creator, if created by AWS Trusted Advisor Priority</p>
    #   @return [String]
    # @!attribute updated_on_behalf_of
    #   <p>The person on whose behalf a Technical Account Manager (TAM) updated the recommendation. This information is only available when a Technical Account Manager takes an action on a recommendation managed by AWS Trusted Advisor Priority </p>
    #   @return [String]
    # @!attribute updated_on_behalf_of_job_title
    #   <p>The job title of the person on whose behalf a Technical Account Manager (TAM) updated the recommendation. This information is only available when a Technical Account Manager takes an action on a recommendation managed by AWS Trusted Advisor Priority </p>
    #   @return [String]
    # @!attribute update_reason
    #   <p>Reason for the lifecycle stage change</p>
    #   @return [String]
    # @!attribute update_reason_code
    #   <p>Reason code for the lifecycle state change</p>
    #   @return [String]
    # @!attribute resolved_at
    #   <p>When the Recommendation was resolved</p>
    #   @return [Time]
    class OrganizationRecommendation < Struct.new(
      nil,
      :id,
      :type,
      :check_arn,
      :status,
      :lifecycle_stage,
      :pillars,
      :source,
      :aws_services,
      :name,
      :resources_aggregates,
      :pillar_specific_aggregates,
      :created_at,
      :last_updated_at,
      :arn,
      :description,
      :created_by,
      :updated_on_behalf_of,
      :updated_on_behalf_of_job_title,
      :update_reason,
      :update_reason_code,
      :resolved_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Organization Recommendation Resource Summary</p>
    # @!attribute id
    #   <p>The ID of the Recommendation Resource</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the Recommendation Resource</p>
    #   @return [String]
    # @!attribute aws_resource_id
    #   <p>The AWS resource identifier. There are certain checks that generate recommendation resources without an awsResourceId.</p>
    #   @return [String]
    # @!attribute region_code
    #   <p>The AWS Region code that the Recommendation Resource is in</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the Recommendation Resource</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>Metadata associated with the Recommendation Resource</p>
    #   @return [Hash<String, String>]
    # @!attribute last_updated_at
    #   <p>When the Recommendation Resource was last updated</p>
    #   @return [Time]
    # @!attribute exclusion_status
    #   <p>The exclusion status of the Recommendation Resource</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The AWS account ID</p>
    #   @return [String]
    # @!attribute recommendation_arn
    #   <p>The Recommendation ARN</p>
    #   @return [String]
    class OrganizationRecommendationResourceSummary < Struct.new(
      nil,
      :id,
      :arn,
      :aws_resource_id,
      :region_code,
      :status,
      :metadata,
      :last_updated_at,
      :exclusion_status,
      :account_id,
      :recommendation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:exclusion_status] = 'included' unless options.key?(:exclusion_status)
        super
      end
    end

    # <p>Summary of recommendation for accounts within an Organization</p>
    # @!attribute id
    #   <p>The ID which identifies where the Recommendation was produced</p>
    #   @return [String]
    # @!attribute type
    #   <p>Whether the Recommendation was automated or generated by AWS Trusted Advisor Priority</p>
    #   @return [String]
    # @!attribute check_arn
    #   <p>The AWS Trusted Advisor Check ARN that relates to the Recommendation</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Recommendation</p>
    #   @return [String]
    # @!attribute lifecycle_stage
    #   <p>The lifecycle stage from AWS Trusted Advisor Priority</p>
    #   @return [String]
    # @!attribute pillars
    #   <p>The Pillars that the Recommendation is optimizing</p>
    #   @return [Array<String>]
    # @!attribute source
    #   <p>The source of the Recommendation</p>
    #   @return [String]
    # @!attribute aws_services
    #   <p>The AWS Services that the Recommendation applies to</p>
    #   @return [Array<String>]
    # @!attribute name
    #   <p>The name of the AWS Trusted Advisor Recommendation</p>
    #   @return [String]
    # @!attribute resources_aggregates
    #   <p>An aggregation of all resources</p>
    #   @return [Types::RecommendationResourcesAggregates]
    # @!attribute pillar_specific_aggregates
    #   <p>The pillar aggregations for cost savings</p>
    #   @return [Types::RecommendationPillarSpecificAggregates]
    # @!attribute created_at
    #   <p>When the Recommendation was created, if created by AWS Trusted Advisor Priority</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>When the Recommendation was last updated</p>
    #   @return [Time]
    # @!attribute arn
    #   <p>The ARN of the Recommendation</p>
    #   @return [String]
    class OrganizationRecommendationSummary < Struct.new(
      nil,
      :id,
      :type,
      :check_arn,
      :status,
      :lifecycle_stage,
      :pillars,
      :source,
      :aws_services,
      :name,
      :resources_aggregates,
      :pillar_specific_aggregates,
      :created_at,
      :last_updated_at,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A Recommendation for an Account</p>
    # @!attribute id
    #   <p>The ID which identifies where the Recommendation was produced</p>
    #   @return [String]
    # @!attribute type
    #   <p>Whether the Recommendation was automated or generated by AWS Trusted Advisor Priority</p>
    #   @return [String]
    # @!attribute check_arn
    #   <p>The AWS Trusted Advisor Check ARN that relates to the Recommendation</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Recommendation</p>
    #   @return [String]
    # @!attribute lifecycle_stage
    #   <p>The lifecycle stage from AWS Trusted Advisor Priority</p>
    #   @return [String]
    # @!attribute pillars
    #   <p>The Pillars that the Recommendation is optimizing</p>
    #   @return [Array<String>]
    # @!attribute source
    #   <p>The source of the Recommendation</p>
    #   @return [String]
    # @!attribute aws_services
    #   <p>The AWS Services that the Recommendation applies to</p>
    #   @return [Array<String>]
    # @!attribute name
    #   <p>The name of the AWS Trusted Advisor Recommendation</p>
    #   @return [String]
    # @!attribute resources_aggregates
    #   <p>An aggregation of all resources</p>
    #   @return [Types::RecommendationResourcesAggregates]
    # @!attribute pillar_specific_aggregates
    #   <p>The pillar aggregations for cost savings</p>
    #   @return [Types::RecommendationPillarSpecificAggregates]
    # @!attribute created_at
    #   <p>When the Recommendation was created, if created by AWS Trusted Advisor Priority</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>When the Recommendation was last updated</p>
    #   @return [Time]
    # @!attribute arn
    #   <p>The ARN of the Recommendation</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>This attribute provides additional details about potential discrepancies in check status determination.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for AWS Trusted Advisor recommendations</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The creator, if created by AWS Trusted Advisor Priority</p>
    #   @return [String]
    # @!attribute updated_on_behalf_of
    #   <p>The person on whose behalf a Technical Account Manager (TAM) updated the recommendation. This information is only available when a Technical Account Manager takes an action on a recommendation managed by AWS Trusted Advisor Priority </p>
    #   @return [String]
    # @!attribute updated_on_behalf_of_job_title
    #   <p>The job title of the person on whose behalf a Technical Account Manager (TAM) updated the recommendation. This information is only available when a Technical Account Manager takes an action on a recommendation managed by AWS Trusted Advisor Priority </p>
    #   @return [String]
    # @!attribute update_reason
    #   <p>Reason for the lifecycle stage change</p>
    #   @return [String]
    # @!attribute update_reason_code
    #   <p>Reason code for the lifecycle state change</p>
    #   @return [String]
    # @!attribute resolved_at
    #   <p>When the Recommendation was resolved</p>
    #   @return [Time]
    class Recommendation < Struct.new(
      nil,
      :id,
      :type,
      :check_arn,
      :status,
      :lifecycle_stage,
      :pillars,
      :source,
      :aws_services,
      :name,
      :resources_aggregates,
      :pillar_specific_aggregates,
      :created_at,
      :last_updated_at,
      :arn,
      :status_reason,
      :description,
      :created_by,
      :updated_on_behalf_of,
      :updated_on_behalf_of_job_title,
      :update_reason,
      :update_reason_code,
      :resolved_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Cost optimizing aggregates for a Recommendation</p>
    # @!attribute estimated_monthly_savings
    #   <p>The estimated monthly savings</p>
    #   @return [Float]
    # @!attribute estimated_percent_monthly_savings
    #   <p>The estimated percently monthly savings</p>
    #   @return [Float]
    class RecommendationCostOptimizingAggregates < Struct.new(
      nil,
      :estimated_monthly_savings,
      :estimated_percent_monthly_savings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of a Recommendation for a specific AWS Resource</p>
    # @!attribute check_arn
    #   <p>The Check ARN</p>
    #   @return [String]
    # @!attribute recommendation_arn
    #   <p>The Recommendation ARN</p>
    #   @return [String]
    # @!attribute aws_resource_arn
    #   <p>The AWS Resource ARN</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the recommendation</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>When the recommendation was last updated</p>
    #   @return [Time]
    # @!attribute exclusion_status
    #   <p>The exclusion status of the recommendation</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>Metadata associated with the recommendation</p>
    #   @return [Hash<String, String>]
    # @!attribute pillars
    #   <p>The Pillars that the Recommendation is optimizing</p>
    #   @return [Array<String>]
    class RecommendationForResourceSummary < Struct.new(
      nil,
      :check_arn,
      :recommendation_arn,
      :aws_resource_arn,
      :status,
      :last_updated_at,
      :exclusion_status,
      :metadata,
      :pillars,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Recommendation pillar aggregates</p>
    # @!attribute cost_optimizing
    #   <p>Cost optimizing aggregates</p>
    #   @return [Types::RecommendationCostOptimizingAggregates]
    class RecommendationPillarSpecificAggregates < Struct.new(
      nil,
      :cost_optimizing,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request entry for Recommendation Resource exclusion. Each entry is a combination of Recommendation Resource ARN and corresponding exclusion status</p>
    # @!attribute arn
    #   <p>The ARN of the Recommendation Resource</p>
    #   @return [String]
    # @!attribute is_excluded
    #   <p>The exclusion status</p>
    #   @return [Boolean]
    class RecommendationResourceExclusion < Struct.new(
      nil,
      :arn,
      :is_excluded,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of a Recommendation Resource</p>
    # @!attribute id
    #   <p>The ID of the Recommendation Resource</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the Recommendation Resource</p>
    #   @return [String]
    # @!attribute aws_resource_id
    #   <p>The AWS resource identifier. There are certain checks that generate recommendation resources without an awsResourceId.</p>
    #   @return [String]
    # @!attribute region_code
    #   <p>The AWS Region code that the Recommendation Resource is in</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the Recommendation Resource</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>Metadata associated with the Recommendation Resource</p>
    #   @return [Hash<String, String>]
    # @!attribute last_updated_at
    #   <p>When the Recommendation Resource was last updated</p>
    #   @return [Time]
    # @!attribute exclusion_status
    #   <p>The exclusion status of the Recommendation Resource</p>
    #   @return [String]
    # @!attribute recommendation_arn
    #   <p>The Recommendation ARN</p>
    #   @return [String]
    class RecommendationResourceSummary < Struct.new(
      nil,
      :id,
      :arn,
      :aws_resource_id,
      :region_code,
      :status,
      :metadata,
      :last_updated_at,
      :exclusion_status,
      :recommendation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:exclusion_status] = 'included' unless options.key?(:exclusion_status)
        super
      end
    end

    # <p>Aggregation of Recommendation Resources</p>
    # @!attribute ok_count
    #   <p>The number of AWS resources that were flagged to be OK according to the Trusted Advisor check</p>
    #   @return [Integer]
    # @!attribute warning_count
    #   <p>The number of AWS resources that were flagged to have warning according to the Trusted Advisor check </p>
    #   @return [Integer]
    # @!attribute error_count
    #   <p>The number of AWS resources that were flagged to have errors according to the Trusted Advisor check</p>
    #   @return [Integer]
    # @!attribute excluded_count
    #   <p>The number of AWS resources belonging to this Trusted Advisor check that were excluded by the customer</p>
    #   @return [Integer]
    class RecommendationResourcesAggregates < Struct.new(
      nil,
      :ok_count,
      :warning_count,
      :error_count,
      :excluded_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of Recommendation for an Account</p>
    # @!attribute id
    #   <p>The ID which identifies where the Recommendation was produced</p>
    #   @return [String]
    # @!attribute type
    #   <p>Whether the Recommendation was automated or generated by AWS Trusted Advisor Priority</p>
    #   @return [String]
    # @!attribute check_arn
    #   <p>The AWS Trusted Advisor Check ARN that relates to the Recommendation</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Recommendation</p>
    #   @return [String]
    # @!attribute lifecycle_stage
    #   <p>The lifecycle stage from AWS Trusted Advisor Priority</p>
    #   @return [String]
    # @!attribute pillars
    #   <p>The Pillars that the Recommendation is optimizing</p>
    #   @return [Array<String>]
    # @!attribute source
    #   <p>The source of the Recommendation</p>
    #   @return [String]
    # @!attribute aws_services
    #   <p>The AWS Services that the Recommendation applies to</p>
    #   @return [Array<String>]
    # @!attribute name
    #   <p>The name of the AWS Trusted Advisor Recommendation</p>
    #   @return [String]
    # @!attribute resources_aggregates
    #   <p>An aggregation of all resources</p>
    #   @return [Types::RecommendationResourcesAggregates]
    # @!attribute pillar_specific_aggregates
    #   <p>The pillar aggregations for cost savings</p>
    #   @return [Types::RecommendationPillarSpecificAggregates]
    # @!attribute created_at
    #   <p>When the Recommendation was created, if created by AWS Trusted Advisor Priority</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>When the Recommendation was last updated</p>
    #   @return [Time]
    # @!attribute arn
    #   <p>The ARN of the Recommendation</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>This attribute provides additional details about potential discrepancies in check status determination.</p>
    #   @return [String]
    class RecommendationSummary < Struct.new(
      nil,
      :id,
      :type,
      :check_arn,
      :status,
      :lifecycle_stage,
      :pillars,
      :source,
      :aws_services,
      :name,
      :resources_aggregates,
      :pillar_specific_aggregates,
      :created_at,
      :last_updated_at,
      :arn,
      :status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Exception that the requested resource has not been found</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Exception to notify that requests are being throttled</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_stage
    #   <p>The new lifecycle stage</p>
    #   @return [String]
    # @!attribute update_reason
    #   <p>Reason for the lifecycle stage change</p>
    #   @return [String]
    # @!attribute update_reason_code
    #   <p>Reason code for the lifecycle state change</p>
    #   @return [String]
    # @!attribute organization_recommendation_identifier
    #   <p>The Recommendation identifier for AWS Trusted Advisor Priority recommendations</p>
    #   @return [String]
    class UpdateOrganizationRecommendationLifecycleRequest < Struct.new(
      nil,
      :lifecycle_stage,
      :update_reason,
      :update_reason_code,
      :organization_recommendation_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_stage
    #   <p>The new lifecycle stage</p>
    #   @return [String]
    # @!attribute update_reason
    #   <p>Reason for the lifecycle stage change</p>
    #   @return [String]
    # @!attribute update_reason_code
    #   <p>Reason code for the lifecycle state change</p>
    #   @return [String]
    # @!attribute recommendation_identifier
    #   <p>The Recommendation identifier for AWS Trusted Advisor Priority recommendations</p>
    #   @return [String]
    class UpdateRecommendationLifecycleRequest < Struct.new(
      nil,
      :lifecycle_stage,
      :update_reason,
      :update_reason_code,
      :recommendation_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The error entry for Recommendation Resource exclusion. Each entry is a combination of Recommendation Resource ARN, error code and error message</p>
    # @!attribute arn
    #   <p>The ARN of the Recommendation Resource</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message</p>
    #   @return [String]
    class UpdateRecommendationResourceExclusionError < Struct.new(
      nil,
      :arn,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Exception that the request failed to satisfy service constraints</p>
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
