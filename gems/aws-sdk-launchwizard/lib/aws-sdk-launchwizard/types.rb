# frozen_string_literal: true

# This is generated code!

module Aws::LaunchWizard
  # This module contains the types returned by client operations.
  module Types

    # @!attribute workload_name
    #   <p>The name of the workload. You can use the <a href="https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloads.html">
    #                  <code>ListWorkloads</code>
    #               </a> operation to discover supported
    #            values for this parameter.</p>
    #   @return [String]
    # @!attribute deployment_pattern_name
    #   <p>The name of the deployment pattern supported by a given workload. You can use the <a href="https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloadDeploymentPatterns.html">
    #                  <code>ListWorkloadDeploymentPatterns</code>
    #               </a> operation to discover supported
    #            values for this parameter. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the deployment.</p>
    #   @return [String]
    # @!attribute specifications
    #   <p>The settings specified for the deployment. These settings define how to deploy and configure your
    #            resources created by the deployment. For more information about the specifications
    #            required for creating a deployment for a SAP workload, see <a href="https://docs.aws.amazon.com/launchwizard/latest/APIReference/launch-wizard-specifications-sap.html">SAP deployment
    #            specifications</a>. To retrieve the specifications required to create a deployment for other workloads,
    #            use the <a href="https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_GetWorkloadDeploymentPattern.html">
    #                  <code>GetWorkloadDeploymentPattern</code>
    #               </a> operation.</p>
    #   @return [Hash<String, String>]
    # @!attribute dry_run
    #   <p>Checks whether you have the required permissions for the action, without actually making
    #            the request, and provides an error response. If you have the required permissions, the
    #            error response is <code>DryRunOperation</code>. Otherwise, it is
    #               <code>UnauthorizedOperation</code>.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>The tags to add to the deployment.</p>
    #   @return [Hash<String, String>]
    class CreateDeploymentInput < Struct.new(
      :workload_name,
      :deployment_pattern_name,
      :name,
      :specifications,
      :dry_run,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute deployment_id
    #   <p>The ID of the deployment.</p>
    #   @return [String]
    class CreateDeploymentOutput < Struct.new(
      :deployment_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute deployment_id
    #   <p>The ID of the deployment.</p>
    #   @return [String]
    class DeleteDeploymentInput < Struct.new(
      :deployment_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the deployment.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the deployment status.</p>
    #   @return [String]
    class DeleteDeploymentOutput < Struct.new(
      :status,
      :status_reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A field that details a condition of the specifications for a deployment.</p>
    # @!attribute name
    #   <p>The name of the deployment condition.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the condition.</p>
    #   @return [String]
    # @!attribute comparator
    #   <p>The comparator of the condition.</p>
    #            <p>Valid values: <code>Equal | NotEqual</code>
    #            </p>
    #   @return [String]
    class DeploymentConditionalField < Struct.new(
      :name,
      :value,
      :comparator,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The data associated with a deployment.</p>
    # @!attribute name
    #   <p>The name of the deployment.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the deployment.</p>
    #   @return [String]
    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #   @return [String]
    # @!attribute pattern_name
    #   <p>The pattern name of the deployment.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the deployment.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time the deployment was created.</p>
    #   @return [Time]
    # @!attribute specifications
    #   <p>The settings specified for the deployment. These settings define how to deploy and configure your
    #            resources created by the deployment. For more information about the specifications
    #            required for creating a deployment for a SAP workload, see <a href="https://docs.aws.amazon.com/launchwizard/latest/APIReference/launch-wizard-specifications-sap.html">SAP deployment
    #            specifications</a>. To retrieve the specifications required to create a deployment for other workloads,
    #            use the <a href="https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_GetWorkloadDeploymentPattern.html">
    #                  <code>GetWorkloadDeploymentPattern</code>
    #               </a> operation.</p>
    #   @return [Hash<String, String>]
    # @!attribute resource_group
    #   <p>The resource group of the deployment.</p>
    #   @return [String]
    # @!attribute deleted_at
    #   <p>The time the deployment was deleted.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>Information about the tags attached to a deployment.</p>
    #   @return [Hash<String, String>]
    # @!attribute deployment_arn
    #   <p>The Amazon Resource Name (ARN) of the deployment.</p>
    #   @return [String]
    class DeploymentData < Struct.new(
      :name,
      :id,
      :workload_name,
      :pattern_name,
      :status,
      :created_at,
      :specifications,
      :resource_group,
      :deleted_at,
      :tags,
      :deployment_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A summary of the deployment data.</p>
    # @!attribute name
    #   <p>The name of the deployment</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the deployment.</p>
    #   @return [String]
    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #   @return [String]
    # @!attribute pattern_name
    #   <p>The name of the workload deployment pattern.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the deployment.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time the deployment was created.</p>
    #   @return [Time]
    class DeploymentDataSummary < Struct.new(
      :name,
      :id,
      :workload_name,
      :pattern_name,
      :status,
      :created_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A summary of the deployment event data.</p>
    # @!attribute name
    #   <p>The name of the deployment event.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the deployment event.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the deployment event.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason of the deployment event status.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamp of the deployment event.</p>
    #   @return [Time]
    class DeploymentEventDataSummary < Struct.new(
      :name,
      :description,
      :status,
      :status_reason,
      :timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A filter name and value pair that is used to return more specific results from a
    #          describe operation. Filters can be used to match a set of resources by specific
    #          criteria.</p>
    # @!attribute name
    #   <p>The name of the filter. Filter names are case-sensitive.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The filter values. Filter values are case-sensitive. If you specify multiple values for
    #            a filter, the values are joined with an <code>OR</code>, and the request returns all
    #            results that match any of the specified values.</p>
    #   @return [Array<String>]
    class DeploymentFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DeploymentFilterKey
      WORKLOAD_NAME = 'WORKLOAD_NAME'
      DEPLOYMENT_STATUS = 'DEPLOYMENT_STATUS'
    end

    # <p>A field that details a specification of a deployment pattern.</p>
    # @!attribute name
    #   <p>The name of the deployment specification.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the deployment specification.</p>
    #   @return [String]
    # @!attribute allowed_values
    #   <p>The allowed values of the deployment specification.</p>
    #   @return [Array<String>]
    # @!attribute required
    #   <p>Indicates if the deployment specification is required.</p>
    #   @return [String]
    # @!attribute conditionals
    #   <p>The conditionals used for the deployment specification.</p>
    #   @return [Array<Types::DeploymentConditionalField>]
    class DeploymentSpecificationsField < Struct.new(
      :name,
      :description,
      :allowed_values,
      :required,
      :conditionals,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DeploymentStatus
      COMPLETED = 'COMPLETED'
      CREATING = 'CREATING'
      DELETE_IN_PROGRESS = 'DELETE_IN_PROGRESS'
      DELETE_INITIATING = 'DELETE_INITIATING'
      DELETE_FAILED = 'DELETE_FAILED'
      DELETED = 'DELETED'
      FAILED = 'FAILED'
      IN_PROGRESS = 'IN_PROGRESS'
      VALIDATING = 'VALIDATING'
    end

    module EventStatus
      CANCELED = 'CANCELED'
      CANCELING = 'CANCELING'
      COMPLETED = 'COMPLETED'
      CREATED = 'CREATED'
      FAILED = 'FAILED'
      IN_PROGRESS = 'IN_PROGRESS'
      PENDING = 'PENDING'
      TIMED_OUT = 'TIMED_OUT'
    end

    # @!attribute deployment_id
    #   <p>The ID of the deployment.</p>
    #   @return [String]
    class GetDeploymentInput < Struct.new(
      :deployment_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute deployment
    #   <p>An object that details the deployment.</p>
    #   @return [Types::DeploymentData]
    class GetDeploymentOutput < Struct.new(
      :deployment,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #   @return [String]
    # @!attribute deployment_pattern_name
    #   <p>The name of the deployment pattern.</p>
    #   @return [String]
    class GetWorkloadDeploymentPatternInput < Struct.new(
      :workload_name,
      :deployment_pattern_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workload_deployment_pattern
    #   <p>Details about the workload deployment pattern.</p>
    #   @return [Types::WorkloadDeploymentPatternData]
    class GetWorkloadDeploymentPatternOutput < Struct.new(
      :workload_deployment_pattern,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #   @return [String]
    class GetWorkloadInput < Struct.new(
      :workload_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workload
    #   <p>Information about the workload.</p>
    #   @return [Types::WorkloadData]
    class GetWorkloadOutput < Struct.new(
      :workload,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An internal error has occurred. Retry your request, but if the problem persists, contact
    #          us with details by posting a question on <a href="https://repost.aws/">re:Post</a>.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute deployment_id
    #   <p>The ID of the deployment.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items,
    #            make another request with the token returned in the output.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end
    #            of the items returned by the previous request.</p>
    #   @return [String]
    class ListDeploymentEventsInput < Struct.new(
      :deployment_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute deployment_events
    #   <p>Lists the deployment events.</p>
    #   @return [Array<Types::DeploymentEventDataSummary>]
    # @!attribute next_token
    #   <p>The token to include in another request to get the next page of items. This value is
    #               <code>null</code> when there are no more items to return.</p>
    #   @return [String]
    class ListDeploymentEventsOutput < Struct.new(
      :deployment_events,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Filters to scope the results. The following filters are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>WORKLOAD_NAME</code> - The name used in deployments.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPLOYMENT_STATUS</code> - <code>COMPLETED</code> | <code>CREATING</code> |
    #                     <code>DELETE_IN_PROGRESS</code> | <code>DELETE_INITIATING</code> |
    #                     <code>DELETE_FAILED</code> | <code>DELETED</code> | <code>FAILED</code> |
    #                     <code>IN_PROGRESS</code> | <code>VALIDATING</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::DeploymentFilter>]
    # @!attribute max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items,
    #            make another request with the token returned in the output.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end
    #            of the items returned by the previous request.</p>
    #   @return [String]
    class ListDeploymentsInput < Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute deployments
    #   <p>Lists the deployments.</p>
    #   @return [Array<Types::DeploymentDataSummary>]
    # @!attribute next_token
    #   <p>The token to include in another request to get the next page of items. This value is
    #               <code>null</code> when there are no more items to return.</p>
    #   @return [String]
    class ListDeploymentsOutput < Struct.new(
      :deployments,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Information about the tags.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items,
    #            make another request with the token returned in the output.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end
    #            of the items returned by the previous request.</p>
    #   @return [String]
    class ListWorkloadDeploymentPatternsInput < Struct.new(
      :workload_name,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workload_deployment_patterns
    #   <p>Describes the workload deployment patterns.</p>
    #   @return [Array<Types::WorkloadDeploymentPatternDataSummary>]
    # @!attribute next_token
    #   <p>The token to include in another request to get the next page of items. This value is
    #               <code>null</code> when there are no more items to return.</p>
    #   @return [String]
    class ListWorkloadDeploymentPatternsOutput < Struct.new(
      :workload_deployment_patterns,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items,
    #            make another request with the token returned in the output.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end
    #            of the items returned by the previous request.</p>
    #   @return [String]
    class ListWorkloadsInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workloads
    #   <p>Information about the workloads.</p>
    #   @return [Array<Types::WorkloadDataSummary>]
    # @!attribute next_token
    #   <p>The token to include in another request to get the next page of items. This value is
    #               <code>null</code> when there are no more items to return.</p>
    #   @return [String]
    class ListWorkloadsOutput < Struct.new(
      :workloads,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You have exceeded an Launch Wizard resource limit. For example, you might have too many
    #          deployments in progress.</p>
    # @!attribute message
    #   @return [String]
    class ResourceLimitException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified workload or deployment resource can't be found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>One or more tags to attach to the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Keys identifying the tags to remove.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a workload.</p>
    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of a workload.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of a workload.</p>
    #   @return [String]
    # @!attribute documentation_url
    #   <p>The URL of a workload document.</p>
    #   @return [String]
    # @!attribute icon_url
    #   <p>The URL of a workload icon.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a workload.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The message about a workload's status.</p>
    #   @return [String]
    class WorkloadData < Struct.new(
      :workload_name,
      :display_name,
      :description,
      :documentation_url,
      :icon_url,
      :status,
      :status_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes workload data.</p>
    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the workload data.</p>
    #   @return [String]
    class WorkloadDataSummary < Struct.new(
      :workload_name,
      :display_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The data that details a workload deployment pattern.</p>
    # @!attribute workload_name
    #   <p>The workload name of the deployment pattern.</p>
    #   @return [String]
    # @!attribute deployment_pattern_name
    #   <p>The name of the deployment pattern.</p>
    #   @return [String]
    # @!attribute workload_version_name
    #   <p>The workload version name of the deployment pattern.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the deployment pattern.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the deployment pattern.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the deployment pattern.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message of the deployment pattern.</p>
    #   @return [String]
    # @!attribute specifications
    #   <p>The settings specified for the deployment. These settings define how to deploy and configure your
    #            resources created by the deployment. For more information about the specifications
    #            required for creating a deployment for a SAP workload, see <a href="https://docs.aws.amazon.com/launchwizard/latest/APIReference/launch-wizard-specifications-sap.html">SAP deployment
    #            specifications</a>. To retrieve the specifications required to create a deployment for other workloads,
    #            use the <a href="https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_GetWorkloadDeploymentPattern.html">
    #                  <code>GetWorkloadDeploymentPattern</code>
    #               </a> operation.</p>
    #   @return [Array<Types::DeploymentSpecificationsField>]
    class WorkloadDeploymentPatternData < Struct.new(
      :workload_name,
      :deployment_pattern_name,
      :workload_version_name,
      :display_name,
      :description,
      :status,
      :status_message,
      :specifications,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a workload deployment pattern.</p>
    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #   @return [String]
    # @!attribute deployment_pattern_name
    #   <p>The name of a workload deployment pattern.</p>
    #   @return [String]
    # @!attribute workload_version_name
    #   <p>The name of the workload deployment pattern version.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of a workload deployment pattern.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of a workload deployment pattern.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a workload deployment pattern.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A message about a workload deployment pattern's status.</p>
    #   @return [String]
    class WorkloadDeploymentPatternDataSummary < Struct.new(
      :workload_name,
      :deployment_pattern_name,
      :workload_version_name,
      :display_name,
      :description,
      :status,
      :status_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module WorkloadDeploymentPatternStatus
      ACTIVE = 'ACTIVE'
      INACTIVE = 'INACTIVE'
      DISABLED = 'DISABLED'
      DELETED = 'DELETED'
    end

    module WorkloadStatus
      ACTIVE = 'ACTIVE'
      INACTIVE = 'INACTIVE'
      DISABLED = 'DISABLED'
      DELETED = 'DELETED'
    end

  end
end
