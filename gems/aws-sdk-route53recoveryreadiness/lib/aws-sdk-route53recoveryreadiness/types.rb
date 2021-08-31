# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Route53RecoveryReadiness
  module Types

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Cell and its properties
    #
    # @!attribute [rw] cell_arn
    #   The arn for the Cell
    #   @return [String]
    #
    # @!attribute [rw] cell_name
    #   The name of the Cell
    #   @return [String]
    #
    # @!attribute [rw] cells
    #   A list of Cell arns
    #   @return [Array<String>]
    #
    # @!attribute [rw] parent_readiness_scopes
    #   A list of Cell ARNs and/or RecoveryGroup ARNs
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/CellOutput AWS API Documentation
    #
    class CellOutput < Struct.new(
      :cell_arn,
      :cell_name,
      :cells,
      :parent_readiness_scopes,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCellRequest
    #   data as a hash:
    #
    #       {
    #         cell_name: "__string", # required
    #         cells: ["__string"],
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] cell_name
    #   @return [String]
    #
    # @!attribute [rw] cells
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/CreateCellRequest AWS API Documentation
    #
    class CreateCellRequest < Struct.new(
      :cell_name,
      :cells,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cell_arn
    #   @return [String]
    #
    # @!attribute [rw] cell_name
    #   @return [String]
    #
    # @!attribute [rw] cells
    #   @return [Array<String>]
    #
    # @!attribute [rw] parent_readiness_scopes
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/CreateCellResponse AWS API Documentation
    #
    class CreateCellResponse < Struct.new(
      :cell_arn,
      :cell_name,
      :cells,
      :parent_readiness_scopes,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCrossAccountAuthorizationRequest
    #   data as a hash:
    #
    #       {
    #         cross_account_authorization: "CrossAccountAuthorization", # required
    #       }
    #
    # @!attribute [rw] cross_account_authorization
    #   A cross-account authorization, e.g. arn:aws:iam::123456789012:root
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/CreateCrossAccountAuthorizationRequest AWS API Documentation
    #
    class CreateCrossAccountAuthorizationRequest < Struct.new(
      :cross_account_authorization)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cross_account_authorization
    #   A cross-account authorization, e.g. arn:aws:iam::123456789012:root
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/CreateCrossAccountAuthorizationResponse AWS API Documentation
    #
    class CreateCrossAccountAuthorizationResponse < Struct.new(
      :cross_account_authorization)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateReadinessCheckRequest
    #   data as a hash:
    #
    #       {
    #         readiness_check_name: "__string", # required
    #         resource_set_name: "__string", # required
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] readiness_check_name
    #   @return [String]
    #
    # @!attribute [rw] resource_set_name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/CreateReadinessCheckRequest AWS API Documentation
    #
    class CreateReadinessCheckRequest < Struct.new(
      :readiness_check_name,
      :resource_set_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] readiness_check_arn
    #   @return [String]
    #
    # @!attribute [rw] readiness_check_name
    #   @return [String]
    #
    # @!attribute [rw] resource_set
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/CreateReadinessCheckResponse AWS API Documentation
    #
    class CreateReadinessCheckResponse < Struct.new(
      :readiness_check_arn,
      :readiness_check_name,
      :resource_set,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRecoveryGroupRequest
    #   data as a hash:
    #
    #       {
    #         cells: ["__string"],
    #         recovery_group_name: "__string", # required
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] cells
    #   @return [Array<String>]
    #
    # @!attribute [rw] recovery_group_name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/CreateRecoveryGroupRequest AWS API Documentation
    #
    class CreateRecoveryGroupRequest < Struct.new(
      :cells,
      :recovery_group_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cells
    #   @return [Array<String>]
    #
    # @!attribute [rw] recovery_group_arn
    #   @return [String]
    #
    # @!attribute [rw] recovery_group_name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/CreateRecoveryGroupResponse AWS API Documentation
    #
    class CreateRecoveryGroupResponse < Struct.new(
      :cells,
      :recovery_group_arn,
      :recovery_group_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateResourceSetRequest
    #   data as a hash:
    #
    #       {
    #         resource_set_name: "__string", # required
    #         resource_set_type: "__stringPatternAWSAZaZ09AZaZ09", # required
    #         resources: [ # required
    #           {
    #             component_id: "__string",
    #             dns_target_resource: {
    #               domain_name: "__string",
    #               hosted_zone_arn: "__string",
    #               record_set_id: "__string",
    #               record_type: "__string",
    #               target_resource: {
    #                 nlb_resource: {
    #                   arn: "__string",
    #                 },
    #                 r53_resource: {
    #                   domain_name: "__string",
    #                   record_set_id: "__string",
    #                 },
    #               },
    #             },
    #             readiness_scopes: ["__string"],
    #             resource_arn: "__string",
    #           },
    #         ],
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] resource_set_name
    #   @return [String]
    #
    # @!attribute [rw] resource_set_type
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/CreateResourceSetRequest AWS API Documentation
    #
    class CreateResourceSetRequest < Struct.new(
      :resource_set_name,
      :resource_set_type,
      :resources,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_set_arn
    #   @return [String]
    #
    # @!attribute [rw] resource_set_name
    #   @return [String]
    #
    # @!attribute [rw] resource_set_type
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/CreateResourceSetResponse AWS API Documentation
    #
    class CreateResourceSetResponse < Struct.new(
      :resource_set_arn,
      :resource_set_name,
      :resource_set_type,
      :resources,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A component for DNS/Routing Control Readiness Checks
    #
    # @note When making an API call, you may pass DNSTargetResource
    #   data as a hash:
    #
    #       {
    #         domain_name: "__string",
    #         hosted_zone_arn: "__string",
    #         record_set_id: "__string",
    #         record_type: "__string",
    #         target_resource: {
    #           nlb_resource: {
    #             arn: "__string",
    #           },
    #           r53_resource: {
    #             domain_name: "__string",
    #             record_set_id: "__string",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] domain_name
    #   The DNS Name that acts as ingress point to a portion of application
    #   @return [String]
    #
    # @!attribute [rw] hosted_zone_arn
    #   The Hosted Zone ARN that contains the DNS record with the provided
    #   name of target resource.
    #   @return [String]
    #
    # @!attribute [rw] record_set_id
    #   The R53 Set Id to uniquely identify a record given a Name and a Type
    #   @return [String]
    #
    # @!attribute [rw] record_type
    #   The Type of DNS Record of target resource
    #   @return [String]
    #
    # @!attribute [rw] target_resource
    #   The target resource the R53 record points to
    #   @return [Types::TargetResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/DNSTargetResource AWS API Documentation
    #
    class DNSTargetResource < Struct.new(
      :domain_name,
      :hosted_zone_arn,
      :record_set_id,
      :record_type,
      :target_resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteCellRequest
    #   data as a hash:
    #
    #       {
    #         cell_name: "__string", # required
    #       }
    #
    # @!attribute [rw] cell_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/DeleteCellRequest AWS API Documentation
    #
    class DeleteCellRequest < Struct.new(
      :cell_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteCrossAccountAuthorizationRequest
    #   data as a hash:
    #
    #       {
    #         cross_account_authorization: "__string", # required
    #       }
    #
    # @!attribute [rw] cross_account_authorization
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/DeleteCrossAccountAuthorizationRequest AWS API Documentation
    #
    class DeleteCrossAccountAuthorizationRequest < Struct.new(
      :cross_account_authorization)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/DeleteCrossAccountAuthorizationResponse AWS API Documentation
    #
    class DeleteCrossAccountAuthorizationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteReadinessCheckRequest
    #   data as a hash:
    #
    #       {
    #         readiness_check_name: "__string", # required
    #       }
    #
    # @!attribute [rw] readiness_check_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/DeleteReadinessCheckRequest AWS API Documentation
    #
    class DeleteReadinessCheckRequest < Struct.new(
      :readiness_check_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRecoveryGroupRequest
    #   data as a hash:
    #
    #       {
    #         recovery_group_name: "__string", # required
    #       }
    #
    # @!attribute [rw] recovery_group_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/DeleteRecoveryGroupRequest AWS API Documentation
    #
    class DeleteRecoveryGroupRequest < Struct.new(
      :recovery_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteResourceSetRequest
    #   data as a hash:
    #
    #       {
    #         resource_set_name: "__string", # required
    #       }
    #
    # @!attribute [rw] resource_set_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/DeleteResourceSetRequest AWS API Documentation
    #
    class DeleteResourceSetRequest < Struct.new(
      :resource_set_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetArchitectureRecommendationsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #         recovery_group_name: "__string", # required
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] recovery_group_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetArchitectureRecommendationsRequest AWS API Documentation
    #
    class GetArchitectureRecommendationsRequest < Struct.new(
      :max_results,
      :next_token,
      :recovery_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] last_audit_timestamp
    #   The time a Recovery Group was last assessed for recommendations in
    #   UTC ISO-8601 format
    #   @return [Time]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] recommendations
    #   @return [Array<Types::Recommendation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetArchitectureRecommendationsResponse AWS API Documentation
    #
    class GetArchitectureRecommendationsResponse < Struct.new(
      :last_audit_timestamp,
      :next_token,
      :recommendations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCellReadinessSummaryRequest
    #   data as a hash:
    #
    #       {
    #         cell_name: "__string", # required
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] cell_name
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetCellReadinessSummaryRequest AWS API Documentation
    #
    class GetCellReadinessSummaryRequest < Struct.new(
      :cell_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] readiness
    #   The readiness of an entire ReadinessCheck or an individual resource
    #   ARN.
    #   @return [String]
    #
    # @!attribute [rw] readiness_checks
    #   @return [Array<Types::ReadinessCheckSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetCellReadinessSummaryResponse AWS API Documentation
    #
    class GetCellReadinessSummaryResponse < Struct.new(
      :next_token,
      :readiness,
      :readiness_checks)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCellRequest
    #   data as a hash:
    #
    #       {
    #         cell_name: "__string", # required
    #       }
    #
    # @!attribute [rw] cell_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetCellRequest AWS API Documentation
    #
    class GetCellRequest < Struct.new(
      :cell_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cell_arn
    #   @return [String]
    #
    # @!attribute [rw] cell_name
    #   @return [String]
    #
    # @!attribute [rw] cells
    #   @return [Array<String>]
    #
    # @!attribute [rw] parent_readiness_scopes
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetCellResponse AWS API Documentation
    #
    class GetCellResponse < Struct.new(
      :cell_arn,
      :cell_name,
      :cells,
      :parent_readiness_scopes,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetReadinessCheckRequest
    #   data as a hash:
    #
    #       {
    #         readiness_check_name: "__string", # required
    #       }
    #
    # @!attribute [rw] readiness_check_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetReadinessCheckRequest AWS API Documentation
    #
    class GetReadinessCheckRequest < Struct.new(
      :readiness_check_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetReadinessCheckResourceStatusRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #         readiness_check_name: "__string", # required
    #         resource_identifier: "__string", # required
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] readiness_check_name
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetReadinessCheckResourceStatusRequest AWS API Documentation
    #
    class GetReadinessCheckResourceStatusRequest < Struct.new(
      :max_results,
      :next_token,
      :readiness_check_name,
      :resource_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] readiness
    #   The readiness of an entire ReadinessCheck or an individual resource
    #   ARN.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   @return [Array<Types::RuleResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetReadinessCheckResourceStatusResponse AWS API Documentation
    #
    class GetReadinessCheckResourceStatusResponse < Struct.new(
      :next_token,
      :readiness,
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] readiness_check_arn
    #   @return [String]
    #
    # @!attribute [rw] readiness_check_name
    #   @return [String]
    #
    # @!attribute [rw] resource_set
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetReadinessCheckResponse AWS API Documentation
    #
    class GetReadinessCheckResponse < Struct.new(
      :readiness_check_arn,
      :readiness_check_name,
      :resource_set,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetReadinessCheckStatusRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #         readiness_check_name: "__string", # required
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] readiness_check_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetReadinessCheckStatusRequest AWS API Documentation
    #
    class GetReadinessCheckStatusRequest < Struct.new(
      :max_results,
      :next_token,
      :readiness_check_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] messages
    #   @return [Array<Types::Message>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] readiness
    #   The readiness of an entire ReadinessCheck or an individual resource
    #   ARN.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   @return [Array<Types::ResourceResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetReadinessCheckStatusResponse AWS API Documentation
    #
    class GetReadinessCheckStatusResponse < Struct.new(
      :messages,
      :next_token,
      :readiness,
      :resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRecoveryGroupReadinessSummaryRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #         recovery_group_name: "__string", # required
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] recovery_group_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetRecoveryGroupReadinessSummaryRequest AWS API Documentation
    #
    class GetRecoveryGroupReadinessSummaryRequest < Struct.new(
      :max_results,
      :next_token,
      :recovery_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] readiness
    #   The readiness of an entire ReadinessCheck or an individual resource
    #   ARN.
    #   @return [String]
    #
    # @!attribute [rw] readiness_checks
    #   @return [Array<Types::ReadinessCheckSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetRecoveryGroupReadinessSummaryResponse AWS API Documentation
    #
    class GetRecoveryGroupReadinessSummaryResponse < Struct.new(
      :next_token,
      :readiness,
      :readiness_checks)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRecoveryGroupRequest
    #   data as a hash:
    #
    #       {
    #         recovery_group_name: "__string", # required
    #       }
    #
    # @!attribute [rw] recovery_group_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetRecoveryGroupRequest AWS API Documentation
    #
    class GetRecoveryGroupRequest < Struct.new(
      :recovery_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cells
    #   @return [Array<String>]
    #
    # @!attribute [rw] recovery_group_arn
    #   @return [String]
    #
    # @!attribute [rw] recovery_group_name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetRecoveryGroupResponse AWS API Documentation
    #
    class GetRecoveryGroupResponse < Struct.new(
      :cells,
      :recovery_group_arn,
      :recovery_group_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetResourceSetRequest
    #   data as a hash:
    #
    #       {
    #         resource_set_name: "__string", # required
    #       }
    #
    # @!attribute [rw] resource_set_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetResourceSetRequest AWS API Documentation
    #
    class GetResourceSetRequest < Struct.new(
      :resource_set_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_set_arn
    #   @return [String]
    #
    # @!attribute [rw] resource_set_name
    #   @return [String]
    #
    # @!attribute [rw] resource_set_type
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetResourceSetResponse AWS API Documentation
    #
    class GetResourceSetResponse < Struct.new(
      :resource_set_arn,
      :resource_set_name,
      :resource_set_type,
      :resources,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCellsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ListCellsRequest AWS API Documentation
    #
    class ListCellsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cells
    #   @return [Array<Types::CellOutput>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ListCellsResponse AWS API Documentation
    #
    class ListCellsResponse < Struct.new(
      :cells,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCrossAccountAuthorizationsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ListCrossAccountAuthorizationsRequest AWS API Documentation
    #
    class ListCrossAccountAuthorizationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cross_account_authorizations
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ListCrossAccountAuthorizationsResponse AWS API Documentation
    #
    class ListCrossAccountAuthorizationsResponse < Struct.new(
      :cross_account_authorizations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListReadinessChecksRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ListReadinessChecksRequest AWS API Documentation
    #
    class ListReadinessChecksRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] readiness_checks
    #   @return [Array<Types::ReadinessCheckOutput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ListReadinessChecksResponse AWS API Documentation
    #
    class ListReadinessChecksResponse < Struct.new(
      :next_token,
      :readiness_checks)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRecoveryGroupsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ListRecoveryGroupsRequest AWS API Documentation
    #
    class ListRecoveryGroupsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] recovery_groups
    #   @return [Array<Types::RecoveryGroupOutput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ListRecoveryGroupsResponse AWS API Documentation
    #
    class ListRecoveryGroupsResponse < Struct.new(
      :next_token,
      :recovery_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListResourceSetsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ListResourceSetsRequest AWS API Documentation
    #
    class ListResourceSetsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] resource_sets
    #   @return [Array<Types::ResourceSetOutput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ListResourceSetsResponse AWS API Documentation
    #
    class ListResourceSetsResponse < Struct.new(
      :next_token,
      :resource_sets)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of rules used in a readiness check
    #
    # @!attribute [rw] resource_type
    #   The resource type the rule applies to.
    #   @return [String]
    #
    # @!attribute [rw] rule_description
    #   A description of the rule
    #   @return [String]
    #
    # @!attribute [rw] rule_id
    #   The Rule's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ListRulesOutput AWS API Documentation
    #
    class ListRulesOutput < Struct.new(
      :resource_type,
      :rule_description,
      :rule_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRulesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #         resource_type: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ListRulesRequest AWS API Documentation
    #
    class ListRulesRequest < Struct.new(
      :max_results,
      :next_token,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   @return [Array<Types::ListRulesOutput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ListRulesResponse AWS API Documentation
    #
    class ListRulesResponse < Struct.new(
      :next_token,
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourcesRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ListTagsForResourcesRequest AWS API Documentation
    #
    class ListTagsForResourcesRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ListTagsForResourcesResponse AWS API Documentation
    #
    class ListTagsForResourcesResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information relating to readiness check status
    #
    # @!attribute [rw] message_text
    #   The text of a readiness check message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/Message AWS API Documentation
    #
    class Message < Struct.new(
      :message_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # The NLB resource a DNS Target Resource points to
    #
    # @note When making an API call, you may pass NLBResource
    #   data as a hash:
    #
    #       {
    #         arn: "__string",
    #       }
    #
    # @!attribute [rw] arn
    #   An NLB resource arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/NLBResource AWS API Documentation
    #
    class NLBResource < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Route 53 resource a DNS Target Resource record points to
    #
    # @note When making an API call, you may pass R53ResourceRecord
    #   data as a hash:
    #
    #       {
    #         domain_name: "__string",
    #         record_set_id: "__string",
    #       }
    #
    # @!attribute [rw] domain_name
    #   The DNS target name
    #   @return [String]
    #
    # @!attribute [rw] record_set_id
    #   The Resource Record set id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/R53ResourceRecord AWS API Documentation
    #
    class R53ResourceRecord < Struct.new(
      :domain_name,
      :record_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource used for checking the readiness of a Resource Set
    #
    # @!attribute [rw] readiness_check_arn
    #   Arn associated with ReadinessCheck
    #   @return [String]
    #
    # @!attribute [rw] readiness_check_name
    #   Name for a ReadinessCheck
    #   @return [String]
    #
    # @!attribute [rw] resource_set
    #   Name of the ResourceSet to be checked
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ReadinessCheckOutput AWS API Documentation
    #
    class ReadinessCheckOutput < Struct.new(
      :readiness_check_arn,
      :readiness_check_name,
      :resource_set,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of ReadinessCheck status, paginated in
    # GetRecoveryGroupReadinessSummary and GetCellReadinessSummary
    #
    # @!attribute [rw] readiness
    #   The readiness of this ReadinessCheck
    #   @return [String]
    #
    # @!attribute [rw] readiness_check_name
    #   The name of a ReadinessCheck which is part of the given
    #   RecoveryGroup or Cell
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ReadinessCheckSummary AWS API Documentation
    #
    class ReadinessCheckSummary < Struct.new(
      :readiness,
      :readiness_check_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Guidance for improving Recovery Group resilliancy
    #
    # @!attribute [rw] recommendation_text
    #   Guidance text for recommendation
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/Recommendation AWS API Documentation
    #
    class Recommendation < Struct.new(
      :recommendation_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Recovery Group generally containing multiple Cells
    #
    # @!attribute [rw] cells
    #   A list of Cell arns
    #   @return [Array<String>]
    #
    # @!attribute [rw] recovery_group_arn
    #   The arn for the RecoveryGroup
    #   @return [String]
    #
    # @!attribute [rw] recovery_group_name
    #   The name of the RecoveryGroup
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/RecoveryGroupOutput AWS API Documentation
    #
    class RecoveryGroupOutput < Struct.new(
      :cells,
      :recovery_group_arn,
      :recovery_group_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource element of a ResourceSet
    #
    # @note When making an API call, you may pass Resource
    #   data as a hash:
    #
    #       {
    #         component_id: "__string",
    #         dns_target_resource: {
    #           domain_name: "__string",
    #           hosted_zone_arn: "__string",
    #           record_set_id: "__string",
    #           record_type: "__string",
    #           target_resource: {
    #             nlb_resource: {
    #               arn: "__string",
    #             },
    #             r53_resource: {
    #               domain_name: "__string",
    #               record_set_id: "__string",
    #             },
    #           },
    #         },
    #         readiness_scopes: ["__string"],
    #         resource_arn: "__string",
    #       }
    #
    # @!attribute [rw] component_id
    #   The component id of the resource, generated by the service when
    #   dnsTargetResource is used
    #   @return [String]
    #
    # @!attribute [rw] dns_target_resource
    #   A component for DNS/Routing Control Readiness Checks
    #   @return [Types::DNSTargetResource]
    #
    # @!attribute [rw] readiness_scopes
    #   A list of RecoveryGroup ARNs and/or Cell ARNs that this resource is
    #   contained within.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the AWS resource, can be skipped if dnsTargetResource is
    #   used
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :component_id,
      :dns_target_resource,
      :readiness_scopes,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Result with status for an individual resource.
    #
    # @!attribute [rw] component_id
    #   The component id of the resource
    #   @return [String]
    #
    # @!attribute [rw] last_checked_timestamp
    #   The time the resource was last checked for readiness, in ISO-8601
    #   format, UTC.
    #   @return [Time]
    #
    # @!attribute [rw] readiness
    #   The readiness of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ResourceResult AWS API Documentation
    #
    class ResourceResult < Struct.new(
      :component_id,
      :last_checked_timestamp,
      :readiness,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of resources of the same type
    #
    # @!attribute [rw] resource_set_arn
    #   The arn for the ResourceSet
    #   @return [String]
    #
    # @!attribute [rw] resource_set_name
    #   The name of the ResourceSet
    #   @return [String]
    #
    # @!attribute [rw] resource_set_type
    #   AWS Resource Type of the resources in the ResourceSet
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   A list of Resource objects
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ResourceSetOutput AWS API Documentation
    #
    class ResourceSetOutput < Struct.new(
      :resource_set_arn,
      :resource_set_name,
      :resource_set_type,
      :resources,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Result with status for an individual rule..
    #
    # @!attribute [rw] last_checked_timestamp
    #   The time the resource was last checked for readiness, in ISO-8601
    #   format, UTC.
    #   @return [Time]
    #
    # @!attribute [rw] messages
    #   Details about the resource's readiness
    #   @return [Array<Types::Message>]
    #
    # @!attribute [rw] readiness
    #   The readiness at rule level.
    #   @return [String]
    #
    # @!attribute [rw] rule_id
    #   The identifier of the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/RuleResult AWS API Documentation
    #
    class RuleResult < Struct.new(
      :last_checked_timestamp,
      :messages,
      :readiness,
      :rule_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #         tags: { # required
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The target resource the R53 record points to
    #
    # @note When making an API call, you may pass TargetResource
    #   data as a hash:
    #
    #       {
    #         nlb_resource: {
    #           arn: "__string",
    #         },
    #         r53_resource: {
    #           domain_name: "__string",
    #           record_set_id: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] nlb_resource
    #   The NLB resource a DNS Target Resource points to
    #   @return [Types::NLBResource]
    #
    # @!attribute [rw] r53_resource
    #   The Route 53 resource a DNS Target Resource record points to
    #   @return [Types::R53ResourceRecord]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/TargetResource AWS API Documentation
    #
    class TargetResource < Struct.new(
      :nlb_resource,
      :r53_resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #         tag_keys: ["__string"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateCellRequest
    #   data as a hash:
    #
    #       {
    #         cell_name: "__string", # required
    #         cells: ["__string"], # required
    #       }
    #
    # @!attribute [rw] cell_name
    #   @return [String]
    #
    # @!attribute [rw] cells
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/UpdateCellRequest AWS API Documentation
    #
    class UpdateCellRequest < Struct.new(
      :cell_name,
      :cells)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cell_arn
    #   @return [String]
    #
    # @!attribute [rw] cell_name
    #   @return [String]
    #
    # @!attribute [rw] cells
    #   @return [Array<String>]
    #
    # @!attribute [rw] parent_readiness_scopes
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/UpdateCellResponse AWS API Documentation
    #
    class UpdateCellResponse < Struct.new(
      :cell_arn,
      :cell_name,
      :cells,
      :parent_readiness_scopes,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateReadinessCheckRequest
    #   data as a hash:
    #
    #       {
    #         readiness_check_name: "__string", # required
    #         resource_set_name: "__string", # required
    #       }
    #
    # @!attribute [rw] readiness_check_name
    #   @return [String]
    #
    # @!attribute [rw] resource_set_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/UpdateReadinessCheckRequest AWS API Documentation
    #
    class UpdateReadinessCheckRequest < Struct.new(
      :readiness_check_name,
      :resource_set_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] readiness_check_arn
    #   @return [String]
    #
    # @!attribute [rw] readiness_check_name
    #   @return [String]
    #
    # @!attribute [rw] resource_set
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/UpdateReadinessCheckResponse AWS API Documentation
    #
    class UpdateReadinessCheckResponse < Struct.new(
      :readiness_check_arn,
      :readiness_check_name,
      :resource_set,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRecoveryGroupRequest
    #   data as a hash:
    #
    #       {
    #         cells: ["__string"], # required
    #         recovery_group_name: "__string", # required
    #       }
    #
    # @!attribute [rw] cells
    #   @return [Array<String>]
    #
    # @!attribute [rw] recovery_group_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/UpdateRecoveryGroupRequest AWS API Documentation
    #
    class UpdateRecoveryGroupRequest < Struct.new(
      :cells,
      :recovery_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cells
    #   @return [Array<String>]
    #
    # @!attribute [rw] recovery_group_arn
    #   @return [String]
    #
    # @!attribute [rw] recovery_group_name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/UpdateRecoveryGroupResponse AWS API Documentation
    #
    class UpdateRecoveryGroupResponse < Struct.new(
      :cells,
      :recovery_group_arn,
      :recovery_group_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateResourceSetRequest
    #   data as a hash:
    #
    #       {
    #         resource_set_name: "__string", # required
    #         resource_set_type: "__stringPatternAWSAZaZ09AZaZ09", # required
    #         resources: [ # required
    #           {
    #             component_id: "__string",
    #             dns_target_resource: {
    #               domain_name: "__string",
    #               hosted_zone_arn: "__string",
    #               record_set_id: "__string",
    #               record_type: "__string",
    #               target_resource: {
    #                 nlb_resource: {
    #                   arn: "__string",
    #                 },
    #                 r53_resource: {
    #                   domain_name: "__string",
    #                   record_set_id: "__string",
    #                 },
    #               },
    #             },
    #             readiness_scopes: ["__string"],
    #             resource_arn: "__string",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_set_name
    #   @return [String]
    #
    # @!attribute [rw] resource_set_type
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   @return [Array<Types::Resource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/UpdateResourceSetRequest AWS API Documentation
    #
    class UpdateResourceSetRequest < Struct.new(
      :resource_set_name,
      :resource_set_type,
      :resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_set_arn
    #   @return [String]
    #
    # @!attribute [rw] resource_set_name
    #   @return [String]
    #
    # @!attribute [rw] resource_set_type
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/UpdateResourceSetResponse AWS API Documentation
    #
    class UpdateResourceSetResponse < Struct.new(
      :resource_set_arn,
      :resource_set_name,
      :resource_set_type,
      :resources,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
