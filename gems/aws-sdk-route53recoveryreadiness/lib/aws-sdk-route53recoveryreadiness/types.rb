# frozen_string_literal: true

# This is generated code!

module Aws::Route53RecoveryReadiness
  # This module contains the types returned by client operations.
  module Types

    # User does not have sufficient access to perform this action.
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a cell.</p>
    # @!attribute cell_arn
    #   <p>The Amazon Resource Name (ARN) for the cell.</p>
    #   @return [String]
    # @!attribute cell_name
    #   <p>The name of the cell.</p>
    #   @return [String]
    # @!attribute cells
    #   <p>A list of cell ARNs.</p>
    #   @return [Array<String>]
    # @!attribute parent_readiness_scopes
    #   <p>The readiness scope for the cell, which can be a cell Amazon Resource Name (ARN) or a recovery group ARN. This is a list but currently can have only one element.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Tags on the resources.</p>
    #   @return [Hash<String, String>]
    class CellOutput < Struct.new(
      :cell_arn,
      :cell_name,
      :cells,
      :parent_readiness_scopes,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Updating or deleting a resource can cause an inconsistent state.
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cell_name
    #   <p>The name of the cell to create.</p>
    #   @return [String]
    # @!attribute cells
    #   <p>A list of cell Amazon Resource Names (ARNs) contained within this cell, for use in nested cells. For example, Availability Zones within specific Amazon Web Services Regions.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>A collection of tags associated with a resource.</p>
    #   @return [Hash<String, String>]
    class CreateCellRequest < Struct.new(
      :cell_name,
      :cells,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cell_arn
    #   <p>The Amazon Resource Name (ARN) for the cell.</p>
    #   @return [String]
    # @!attribute cell_name
    #   <p>The name of the cell.</p>
    #   @return [String]
    # @!attribute cells
    #   <p>A list of cell ARNs.</p>
    #   @return [Array<String>]
    # @!attribute parent_readiness_scopes
    #   <p>The readiness scope for the cell, which can be a cell Amazon Resource Name (ARN) or a recovery group ARN. This is a list but currently can have only one element.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Tags on the resources.</p>
    #   @return [Hash<String, String>]
    class CreateCellResponse < Struct.new(
      :cell_arn,
      :cell_name,
      :cells,
      :parent_readiness_scopes,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cross_account_authorization
    #   <p>The cross-account authorization.</p>
    #   @return [String]
    class CreateCrossAccountAuthorizationRequest < Struct.new(
      :cross_account_authorization,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cross_account_authorization
    #   <p>The cross-account authorization.</p>
    #   @return [String]
    class CreateCrossAccountAuthorizationResponse < Struct.new(
      :cross_account_authorization,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute readiness_check_name
    #   <p>The name of the readiness check to create.</p>
    #   @return [String]
    # @!attribute resource_set_name
    #   <p>The name of the resource set to check.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of tags associated with a resource.</p>
    #   @return [Hash<String, String>]
    class CreateReadinessCheckRequest < Struct.new(
      :readiness_check_name,
      :resource_set_name,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute readiness_check_arn
    #   <p>The Amazon Resource Name (ARN) associated with a readiness check.</p>
    #   @return [String]
    # @!attribute readiness_check_name
    #   <p>Name of a readiness check.</p>
    #   @return [String]
    # @!attribute resource_set
    #   <p>Name of the resource set to be checked.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of tags associated with a resource.</p>
    #   @return [Hash<String, String>]
    class CreateReadinessCheckResponse < Struct.new(
      :readiness_check_arn,
      :readiness_check_name,
      :resource_set,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cells
    #   <p>A list of the cell Amazon Resource Names (ARNs) in the recovery group.</p>
    #   @return [Array<String>]
    # @!attribute recovery_group_name
    #   <p>The name of the recovery group to create.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of tags associated with a resource.</p>
    #   @return [Hash<String, String>]
    class CreateRecoveryGroupRequest < Struct.new(
      :cells,
      :recovery_group_name,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cells
    #   <p>A list of a cell's Amazon Resource Names (ARNs).</p>
    #   @return [Array<String>]
    # @!attribute recovery_group_arn
    #   <p>The Amazon Resource Name (ARN) for the recovery group.</p>
    #   @return [String]
    # @!attribute recovery_group_name
    #   <p>The name of the recovery group.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the recovery group.</p>
    #   @return [Hash<String, String>]
    class CreateRecoveryGroupResponse < Struct.new(
      :cells,
      :recovery_group_arn,
      :recovery_group_name,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_set_name
    #   <p>The name of the resource set to create.</p>
    #   @return [String]
    # @!attribute resource_set_type
    #   <p>The resource type of the resources in the resource set. Enter one of the following values for resource type:</p> <p>AWS::ApiGateway::Stage, AWS::ApiGatewayV2::Stage, AWS::AutoScaling::AutoScalingGroup, AWS::CloudWatch::Alarm, AWS::EC2::CustomerGateway, AWS::DynamoDB::Table, AWS::EC2::Volume, AWS::ElasticLoadBalancing::LoadBalancer, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::Lambda::Function, AWS::MSK::Cluster, AWS::RDS::DBCluster, AWS::Route53::HealthCheck, AWS::SQS::Queue, AWS::SNS::Topic, AWS::SNS::Subscription, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::Route53RecoveryReadiness::DNSTargetResource</p>
    #   @return [String]
    # @!attribute resources
    #   <p>A list of resource objects in the resource set.</p>
    #   @return [Array<Types::Resource>]
    # @!attribute tags
    #   <p>A tag to associate with the parameters for a resource set.</p>
    #   @return [Hash<String, String>]
    class CreateResourceSetRequest < Struct.new(
      :resource_set_name,
      :resource_set_type,
      :resources,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_set_arn
    #   <p>The Amazon Resource Name (ARN) for the resource set.</p>
    #   @return [String]
    # @!attribute resource_set_name
    #   <p>The name of the resource set.</p>
    #   @return [String]
    # @!attribute resource_set_type
    #   <p>The resource type of the resources in the resource set. Enter one of the following values for resource type:</p> <p>AWS::ApiGateway::Stage, AWS::ApiGatewayV2::Stage, AWS::AutoScaling::AutoScalingGroup, AWS::CloudWatch::Alarm, AWS::EC2::CustomerGateway, AWS::DynamoDB::Table, AWS::EC2::Volume, AWS::ElasticLoadBalancing::LoadBalancer, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::Lambda::Function, AWS::MSK::Cluster, AWS::RDS::DBCluster, AWS::Route53::HealthCheck, AWS::SQS::Queue, AWS::SNS::Topic, AWS::SNS::Subscription, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::Route53RecoveryReadiness::DNSTargetResource</p>
    #   @return [String]
    # @!attribute resources
    #   <p>A list of resource objects.</p>
    #   @return [Array<Types::Resource>]
    # @!attribute tags
    #   <p>A collection of tags associated with a resource.</p>
    #   @return [Hash<String, String>]
    class CreateResourceSetResponse < Struct.new(
      :resource_set_arn,
      :resource_set_name,
      :resource_set_type,
      :resources,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A component for DNS/routing control readiness checks and architecture checks.</p>
    # @!attribute domain_name
    #   <p>The domain name that acts as an ingress point to a portion of the customer application.</p>
    #   @return [String]
    # @!attribute hosted_zone_arn
    #   <p>The hosted zone Amazon Resource Name (ARN) that contains the DNS record with the provided name of the target resource.</p>
    #   @return [String]
    # @!attribute record_set_id
    #   <p>The Route 53 record set ID that uniquely identifies a DNS record, given a name and a type.</p>
    #   @return [String]
    # @!attribute record_type
    #   <p>The type of DNS record of the target resource.</p>
    #   @return [String]
    # @!attribute target_resource
    #   <p>The target resource of the DNS target resource.</p>
    #   @return [Types::TargetResource]
    class DNSTargetResource < Struct.new(
      :domain_name,
      :hosted_zone_arn,
      :record_set_id,
      :record_type,
      :target_resource,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cell_name
    #   <p>The name of the cell.</p>
    #   @return [String]
    class DeleteCellRequest < Struct.new(
      :cell_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cross_account_authorization
    #   <p>The cross-account authorization.</p>
    #   @return [String]
    class DeleteCrossAccountAuthorizationRequest < Struct.new(
      :cross_account_authorization,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteCrossAccountAuthorizationResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute readiness_check_name
    #   <p>Name of a readiness check.</p>
    #   @return [String]
    class DeleteReadinessCheckRequest < Struct.new(
      :readiness_check_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute recovery_group_name
    #   <p>The name of a recovery group.</p>
    #   @return [String]
    class DeleteRecoveryGroupRequest < Struct.new(
      :recovery_group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_set_name
    #   <p>Name of a resource set.</p>
    #   @return [String]
    class DeleteResourceSetRequest < Struct.new(
      :resource_set_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    # @!attribute recovery_group_name
    #   <p>The name of a recovery group.</p>
    #   @return [String]
    class GetArchitectureRecommendationsRequest < Struct.new(
      :max_results,
      :next_token,
      :recovery_group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute last_audit_timestamp
    #   <p>The time that a recovery group was last assessed for recommendations, in UTC ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    # @!attribute recommendations
    #   <p>A list of the recommendations for the customer's application.</p>
    #   @return [Array<Types::Recommendation>]
    class GetArchitectureRecommendationsResponse < Struct.new(
      :last_audit_timestamp,
      :next_token,
      :recommendations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cell_name
    #   <p>The name of the cell.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    class GetCellReadinessSummaryRequest < Struct.new(
      :cell_name,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    # @!attribute readiness
    #   <p>The readiness at a cell level.</p>
    #   @return [String]
    # @!attribute readiness_checks
    #   <p>Summaries for the readiness checks that make up the cell.</p>
    #   @return [Array<Types::ReadinessCheckSummary>]
    class GetCellReadinessSummaryResponse < Struct.new(
      :next_token,
      :readiness,
      :readiness_checks,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cell_name
    #   <p>The name of the cell.</p>
    #   @return [String]
    class GetCellRequest < Struct.new(
      :cell_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cell_arn
    #   <p>The Amazon Resource Name (ARN) for the cell.</p>
    #   @return [String]
    # @!attribute cell_name
    #   <p>The name of the cell.</p>
    #   @return [String]
    # @!attribute cells
    #   <p>A list of cell ARNs.</p>
    #   @return [Array<String>]
    # @!attribute parent_readiness_scopes
    #   <p>The readiness scope for the cell, which can be a cell Amazon Resource Name (ARN) or a recovery group ARN. This is a list but currently can have only one element.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Tags on the resources.</p>
    #   @return [Hash<String, String>]
    class GetCellResponse < Struct.new(
      :cell_arn,
      :cell_name,
      :cells,
      :parent_readiness_scopes,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute readiness_check_name
    #   <p>Name of a readiness check.</p>
    #   @return [String]
    class GetReadinessCheckRequest < Struct.new(
      :readiness_check_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    # @!attribute readiness_check_name
    #   <p>Name of a readiness check.</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>The resource identifier, which is the Amazon Resource Name (ARN) or the identifier generated for the resource by Application Recovery Controller (for example, for a DNS target resource).</p>
    #   @return [String]
    class GetReadinessCheckResourceStatusRequest < Struct.new(
      :max_results,
      :next_token,
      :readiness_check_name,
      :resource_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    # @!attribute readiness
    #   <p>The readiness at a rule level.</p>
    #   @return [String]
    # @!attribute rules
    #   <p>Details of the rule's results.</p>
    #   @return [Array<Types::RuleResult>]
    class GetReadinessCheckResourceStatusResponse < Struct.new(
      :next_token,
      :readiness,
      :rules,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute readiness_check_arn
    #   <p>The Amazon Resource Name (ARN) associated with a readiness check.</p>
    #   @return [String]
    # @!attribute readiness_check_name
    #   <p>Name of a readiness check.</p>
    #   @return [String]
    # @!attribute resource_set
    #   <p>Name of the resource set to be checked.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of tags associated with a resource.</p>
    #   @return [Hash<String, String>]
    class GetReadinessCheckResponse < Struct.new(
      :readiness_check_arn,
      :readiness_check_name,
      :resource_set,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    # @!attribute readiness_check_name
    #   <p>Name of a readiness check.</p>
    #   @return [String]
    class GetReadinessCheckStatusRequest < Struct.new(
      :max_results,
      :next_token,
      :readiness_check_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute messages
    #   <p>Top level messages for readiness check status</p>
    #   @return [Array<Types::Message>]
    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    # @!attribute readiness
    #   <p>The readiness at rule level.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>Summary of the readiness of resources.</p>
    #   @return [Array<Types::ResourceResult>]
    class GetReadinessCheckStatusResponse < Struct.new(
      :messages,
      :next_token,
      :readiness,
      :resources,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    # @!attribute recovery_group_name
    #   <p>The name of a recovery group.</p>
    #   @return [String]
    class GetRecoveryGroupReadinessSummaryRequest < Struct.new(
      :max_results,
      :next_token,
      :recovery_group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    # @!attribute readiness
    #   <p>The readiness status at a recovery group level.</p>
    #   @return [String]
    # @!attribute readiness_checks
    #   <p>Summaries of the readiness checks for the recovery group.</p>
    #   @return [Array<Types::ReadinessCheckSummary>]
    class GetRecoveryGroupReadinessSummaryResponse < Struct.new(
      :next_token,
      :readiness,
      :readiness_checks,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute recovery_group_name
    #   <p>The name of a recovery group.</p>
    #   @return [String]
    class GetRecoveryGroupRequest < Struct.new(
      :recovery_group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cells
    #   <p>A list of a cell's Amazon Resource Names (ARNs).</p>
    #   @return [Array<String>]
    # @!attribute recovery_group_arn
    #   <p>The Amazon Resource Name (ARN) for the recovery group.</p>
    #   @return [String]
    # @!attribute recovery_group_name
    #   <p>The name of the recovery group.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the recovery group.</p>
    #   @return [Hash<String, String>]
    class GetRecoveryGroupResponse < Struct.new(
      :cells,
      :recovery_group_arn,
      :recovery_group_name,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_set_name
    #   <p>Name of a resource set.</p>
    #   @return [String]
    class GetResourceSetRequest < Struct.new(
      :resource_set_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_set_arn
    #   <p>The Amazon Resource Name (ARN) for the resource set.</p>
    #   @return [String]
    # @!attribute resource_set_name
    #   <p>The name of the resource set.</p>
    #   @return [String]
    # @!attribute resource_set_type
    #   <p>The resource type of the resources in the resource set. Enter one of the following values for resource type:</p> <p>AWS::ApiGateway::Stage, AWS::ApiGatewayV2::Stage, AWS::AutoScaling::AutoScalingGroup, AWS::CloudWatch::Alarm, AWS::EC2::CustomerGateway, AWS::DynamoDB::Table, AWS::EC2::Volume, AWS::ElasticLoadBalancing::LoadBalancer, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::Lambda::Function, AWS::MSK::Cluster, AWS::RDS::DBCluster, AWS::Route53::HealthCheck, AWS::SQS::Queue, AWS::SNS::Topic, AWS::SNS::Subscription, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::Route53RecoveryReadiness::DNSTargetResource</p>
    #   @return [String]
    # @!attribute resources
    #   <p>A list of resource objects.</p>
    #   @return [Array<Types::Resource>]
    # @!attribute tags
    #   <p>A collection of tags associated with a resource.</p>
    #   @return [Hash<String, String>]
    class GetResourceSetResponse < Struct.new(
      :resource_set_arn,
      :resource_set_name,
      :resource_set_type,
      :resources,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # An unexpected error occurred.
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    class ListCellsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cells
    #   <p>A list of cells.</p>
    #   @return [Array<Types::CellOutput>]
    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    class ListCellsResponse < Struct.new(
      :cells,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    class ListCrossAccountAuthorizationsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cross_account_authorizations
    #   <p>A list of cross-account authorizations.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    class ListCrossAccountAuthorizationsResponse < Struct.new(
      :cross_account_authorizations,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    class ListReadinessChecksRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    # @!attribute readiness_checks
    #   <p>A list of readiness checks associated with the account.</p>
    #   @return [Array<Types::ReadinessCheckOutput>]
    class ListReadinessChecksResponse < Struct.new(
      :next_token,
      :readiness_checks,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    class ListRecoveryGroupsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    # @!attribute recovery_groups
    #   <p>A list of recovery groups.</p>
    #   @return [Array<Types::RecoveryGroupOutput>]
    class ListRecoveryGroupsResponse < Struct.new(
      :next_token,
      :recovery_groups,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    class ListResourceSetsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    # @!attribute resource_sets
    #   <p>A list of resource sets associated with the account.</p>
    #   @return [Array<Types::ResourceSetOutput>]
    class ListResourceSetsResponse < Struct.new(
      :next_token,
      :resource_sets,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Readiness rule information, including the resource type, rule ID, and rule description.</p>
    # @!attribute resource_type
    #   <p>The resource type that the readiness rule applies to.</p>
    #   @return [String]
    # @!attribute rule_description
    #   <p>The description of a readiness rule.</p>
    #   @return [String]
    # @!attribute rule_id
    #   <p>The ID for the readiness rule.</p>
    #   @return [String]
    class ListRulesOutput < Struct.new(
      :resource_type,
      :rule_description,
      :rule_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type that a readiness rule applies to.</p>
    #   @return [String]
    class ListRulesRequest < Struct.new(
      :max_results,
      :next_token,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    # @!attribute rules
    #   <p>A list of readiness rules for a specific resource type.</p>
    #   @return [Array<Types::ListRulesOutput>]
    class ListRulesResponse < Struct.new(
      :next_token,
      :rules,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for a resource.</p>
    #   @return [String]
    class ListTagsForResourcesRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p></p>
    #   @return [Hash<String, String>]
    class ListTagsForResourcesResponse < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information relating to readiness check status.</p>
    # @!attribute message_text
    #   <p>The text of a readiness check message.</p>
    #   @return [String]
    class Message < Struct.new(
      :message_text,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Network Load Balancer resource that a DNS target resource points to.</p>
    # @!attribute arn
    #   <p>The Network Load Balancer resource Amazon Resource Name (ARN).</p>
    #   @return [String]
    class NLBResource < Struct.new(
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Route 53 resource that a DNS target resource record points to.</p>
    # @!attribute domain_name
    #   <p>The DNS target domain name.</p>
    #   @return [String]
    # @!attribute record_set_id
    #   <p>The Route 53 Resource Record Set ID.</p>
    #   @return [String]
    class R53ResourceRecord < Struct.new(
      :domain_name,
      :record_set_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The readiness status.</p>
    module Readiness
      READY = 'READY'
      NOT_READY = 'NOT_READY'
      UNKNOWN = 'UNKNOWN'
      NOT_AUTHORIZED = 'NOT_AUTHORIZED'
    end

    # <p>A readiness check.</p>
    # @!attribute readiness_check_arn
    #   <p>The Amazon Resource Name (ARN) associated with a readiness check.</p>
    #   @return [String]
    # @!attribute readiness_check_name
    #   <p>Name of a readiness check.</p>
    #   @return [String]
    # @!attribute resource_set
    #   <p>Name of the resource set to be checked.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of tags associated with a resource.</p>
    #   @return [Hash<String, String>]
    class ReadinessCheckOutput < Struct.new(
      :readiness_check_arn,
      :readiness_check_name,
      :resource_set,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary of all readiness check statuses in a recovery group, paginated in GetRecoveryGroupReadinessSummary and GetCellReadinessSummary.</p>
    # @!attribute readiness
    #   <p>The readiness status of this readiness check.</p>
    #   @return [String]
    # @!attribute readiness_check_name
    #   <p>The name of a readiness check.</p>
    #   @return [String]
    class ReadinessCheckSummary < Struct.new(
      :readiness,
      :readiness_check_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Recommendations that are provided to make an application more recovery resilient.</p>
    # @!attribute recommendation_text
    #   <p>Text of the recommendations that are provided to make an application more recovery resilient.</p>
    #   @return [String]
    class Recommendation < Struct.new(
      :recommendation_text,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A representation of the application, typically containing multiple cells.</p>
    # @!attribute cells
    #   <p>A list of a cell's Amazon Resource Names (ARNs).</p>
    #   @return [Array<String>]
    # @!attribute recovery_group_arn
    #   <p>The Amazon Resource Name (ARN) for the recovery group.</p>
    #   @return [String]
    # @!attribute recovery_group_name
    #   <p>The name of the recovery group.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the recovery group.</p>
    #   @return [Hash<String, String>]
    class RecoveryGroupOutput < Struct.new(
      :cells,
      :recovery_group_arn,
      :recovery_group_name,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The resource element of a resource set.</p>
    # @!attribute component_id
    #   <p>The component identifier of the resource, generated when DNS target resource is used.</p>
    #   @return [String]
    # @!attribute dns_target_resource
    #   <p>The DNS target resource.</p>
    #   @return [Types::DNSTargetResource]
    # @!attribute readiness_scopes
    #   <p>A list of recovery group Amazon Resource Names (ARNs) and cell ARNs that this resource is contained within.</p>
    #   @return [Array<String>]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services resource.</p>
    #   @return [String]
    class Resource < Struct.new(
      :component_id,
      :dns_target_resource,
      :readiness_scopes,
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # The requested resource does not exist.
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The result of a successful Resource request, with status for an individual resource.</p>
    # @!attribute component_id
    #   <p>The component id of the resource.</p>
    #   @return [String]
    # @!attribute last_checked_timestamp
    #   <p>The time (UTC) that the resource was last checked for readiness, in ISO-8601 format.</p>
    #   @return [Time]
    # @!attribute readiness
    #   <p>The readiness of a resource.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ResourceResult < Struct.new(
      :component_id,
      :last_checked_timestamp,
      :readiness,
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A collection of resources of the same type.</p>
    # @!attribute resource_set_arn
    #   <p>The Amazon Resource Name (ARN) for the resource set.</p>
    #   @return [String]
    # @!attribute resource_set_name
    #   <p>The name of the resource set.</p>
    #   @return [String]
    # @!attribute resource_set_type
    #   <p>The resource type of the resources in the resource set. Enter one of the following values for resource type:</p> <p>AWS::ApiGateway::Stage, AWS::ApiGatewayV2::Stage, AWS::AutoScaling::AutoScalingGroup, AWS::CloudWatch::Alarm, AWS::EC2::CustomerGateway, AWS::DynamoDB::Table, AWS::EC2::Volume, AWS::ElasticLoadBalancing::LoadBalancer, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::Lambda::Function, AWS::MSK::Cluster, AWS::RDS::DBCluster, AWS::Route53::HealthCheck, AWS::SQS::Queue, AWS::SNS::Topic, AWS::SNS::Subscription, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::Route53RecoveryReadiness::DNSTargetResource</p>
    #   @return [String]
    # @!attribute resources
    #   <p>A list of resource objects.</p>
    #   @return [Array<Types::Resource>]
    # @!attribute tags
    #   <p>A collection of tags associated with a resource.</p>
    #   @return [Hash<String, String>]
    class ResourceSetOutput < Struct.new(
      :resource_set_arn,
      :resource_set_name,
      :resource_set_type,
      :resources,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The result of a successful Rule request, with status for an individual rule.</p>
    # @!attribute last_checked_timestamp
    #   <p>The time the resource was last checked for readiness, in ISO-8601 format, UTC.</p>
    #   @return [Time]
    # @!attribute messages
    #   <p>Details about the resource's readiness.</p>
    #   @return [Array<Types::Message>]
    # @!attribute readiness
    #   <p>The readiness at rule level.</p>
    #   @return [String]
    # @!attribute rule_id
    #   <p>The identifier of the rule.</p>
    #   @return [String]
    class RuleResult < Struct.new(
      :last_checked_timestamp,
      :messages,
      :readiness,
      :rule_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for a resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p></p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The target resource that the Route 53 record points to.</p>
    # @!attribute nlb_resource
    #   <p>The Network Load Balancer Resource.</p>
    #   @return [Types::NLBResource]
    # @!attribute r53_resource
    #   <p>The Route 53 resource.</p>
    #   @return [Types::R53ResourceRecord]
    class TargetResource < Struct.new(
      :nlb_resource,
      :r53_resource,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Request was denied due to request throttling.
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for a resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys for tags you add to resources.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cell_name
    #   <p>The name of the cell.</p>
    #   @return [String]
    # @!attribute cells
    #   <p>A list of cell Amazon Resource Names (ARNs), which completely replaces the previous list.</p>
    #   @return [Array<String>]
    class UpdateCellRequest < Struct.new(
      :cell_name,
      :cells,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cell_arn
    #   <p>The Amazon Resource Name (ARN) for the cell.</p>
    #   @return [String]
    # @!attribute cell_name
    #   <p>The name of the cell.</p>
    #   @return [String]
    # @!attribute cells
    #   <p>A list of cell ARNs.</p>
    #   @return [Array<String>]
    # @!attribute parent_readiness_scopes
    #   <p>The readiness scope for the cell, which can be a cell Amazon Resource Name (ARN) or a recovery group ARN. This is a list but currently can have only one element.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Tags on the resources.</p>
    #   @return [Hash<String, String>]
    class UpdateCellResponse < Struct.new(
      :cell_arn,
      :cell_name,
      :cells,
      :parent_readiness_scopes,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Name of a readiness check to describe.</p>
    # @!attribute readiness_check_name
    #   <p>Name of a readiness check.</p>
    #   @return [String]
    # @!attribute resource_set_name
    #   <p>The name of the resource set to be checked.</p>
    #   @return [String]
    class UpdateReadinessCheckRequest < Struct.new(
      :readiness_check_name,
      :resource_set_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute readiness_check_arn
    #   <p>The Amazon Resource Name (ARN) associated with a readiness check.</p>
    #   @return [String]
    # @!attribute readiness_check_name
    #   <p>Name of a readiness check.</p>
    #   @return [String]
    # @!attribute resource_set
    #   <p>Name of the resource set to be checked.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of tags associated with a resource.</p>
    #   @return [Hash<String, String>]
    class UpdateReadinessCheckResponse < Struct.new(
      :readiness_check_arn,
      :readiness_check_name,
      :resource_set,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Name of a recovery group.</p>
    # @!attribute cells
    #   <p>A list of cell Amazon Resource Names (ARNs). This list completely replaces the previous list.</p>
    #   @return [Array<String>]
    # @!attribute recovery_group_name
    #   <p>The name of a recovery group.</p>
    #   @return [String]
    class UpdateRecoveryGroupRequest < Struct.new(
      :cells,
      :recovery_group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cells
    #   <p>A list of a cell's Amazon Resource Names (ARNs).</p>
    #   @return [Array<String>]
    # @!attribute recovery_group_arn
    #   <p>The Amazon Resource Name (ARN) for the recovery group.</p>
    #   @return [String]
    # @!attribute recovery_group_name
    #   <p>The name of the recovery group.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the recovery group.</p>
    #   @return [Hash<String, String>]
    class UpdateRecoveryGroupResponse < Struct.new(
      :cells,
      :recovery_group_arn,
      :recovery_group_name,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Name of a resource set.</p>
    # @!attribute resource_set_name
    #   <p>Name of a resource set.</p>
    #   @return [String]
    # @!attribute resource_set_type
    #   <p>The resource type of the resources in the resource set. Enter one of the following values for resource type:</p> <p>AWS::ApiGateway::Stage, AWS::ApiGatewayV2::Stage, AWS::AutoScaling::AutoScalingGroup, AWS::CloudWatch::Alarm, AWS::EC2::CustomerGateway, AWS::DynamoDB::Table, AWS::EC2::Volume, AWS::ElasticLoadBalancing::LoadBalancer, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::Lambda::Function, AWS::MSK::Cluster, AWS::RDS::DBCluster, AWS::Route53::HealthCheck, AWS::SQS::Queue, AWS::SNS::Topic, AWS::SNS::Subscription, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::Route53RecoveryReadiness::DNSTargetResource</p>
    #   @return [String]
    # @!attribute resources
    #   <p>A list of resource objects.</p>
    #   @return [Array<Types::Resource>]
    class UpdateResourceSetRequest < Struct.new(
      :resource_set_name,
      :resource_set_type,
      :resources,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_set_arn
    #   <p>The Amazon Resource Name (ARN) for the resource set.</p>
    #   @return [String]
    # @!attribute resource_set_name
    #   <p>The name of the resource set.</p>
    #   @return [String]
    # @!attribute resource_set_type
    #   <p>The resource type of the resources in the resource set. Enter one of the following values for resource type:</p> <p>AWS::ApiGateway::Stage, AWS::ApiGatewayV2::Stage, AWS::AutoScaling::AutoScalingGroup, AWS::CloudWatch::Alarm, AWS::EC2::CustomerGateway, AWS::DynamoDB::Table, AWS::EC2::Volume, AWS::ElasticLoadBalancing::LoadBalancer, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::Lambda::Function, AWS::MSK::Cluster, AWS::RDS::DBCluster, AWS::Route53::HealthCheck, AWS::SQS::Queue, AWS::SNS::Topic, AWS::SNS::Subscription, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::Route53RecoveryReadiness::DNSTargetResource</p>
    #   @return [String]
    # @!attribute resources
    #   <p>A list of resource objects.</p>
    #   @return [Array<Types::Resource>]
    # @!attribute tags
    #   <p>A collection of tags associated with a resource.</p>
    #   @return [Hash<String, String>]
    class UpdateResourceSetResponse < Struct.new(
      :resource_set_arn,
      :resource_set_name,
      :resource_set_type,
      :resources,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # The input fails to satisfy the constraints specified by an AWS service.
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
