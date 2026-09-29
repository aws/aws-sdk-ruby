# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LaunchWizard
  module Types

    # A constraint on which AWS account a deployment can be initiated from.
    # Specify one of the supported constraint types.
    #
    # @note AccountConstraint is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AccountConstraint corresponding to the set member.
    #
    # @!attribute [rw] management_account
    #   The deployment must be initiated from the AWS Organizations
    #   management account.
    #   @return [Types::ManagementAccountConstraint]
    #
    # @!attribute [rw] delegated_admin
    #   The deployment must be initiated from a delegated administrator
    #   account for the specified service principal.
    #   @return [Types::DelegatedAdminConstraint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/AccountConstraint AWS API Documentation
    #
    class AccountConstraint < Struct.new(
      :management_account,
      :delegated_admin,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ManagementAccount < AccountConstraint; end
      class DelegatedAdmin < AccountConstraint; end
      class Unknown < AccountConstraint; end
    end

    # @!attribute [rw] workload_name
    #   The name of the workload. You can use the [ `ListWorkloads` ][1]
    #   operation to discover supported values for this parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloads.html
    #   @return [String]
    #
    # @!attribute [rw] deployment_pattern_name
    #   The name of the deployment pattern supported by a given workload.
    #   You can use the [ `ListWorkloadDeploymentPatterns` ][1] operation to
    #   discover supported values for this parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloadDeploymentPatterns.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] specifications
    #   The settings specified for the deployment. These settings define how
    #   to deploy and configure your resources created by the deployment.
    #   For more information about the specifications required for creating
    #   a deployment for a SAP workload, see [SAP deployment
    #   specifications][1]. To retrieve the specifications required to
    #   create a deployment for other workloads, use the [
    #   `GetWorkloadDeploymentPattern` ][2] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/launchwizard/latest/APIReference/launch-wizard-specifications-sap.html
    #   [2]: https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_GetWorkloadDeploymentPattern.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tags to add to the deployment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/CreateDeploymentInput AWS API Documentation
    #
    class CreateDeploymentInput < Struct.new(
      :workload_name,
      :deployment_pattern_name,
      :name,
      :specifications,
      :dry_run,
      :tags)
      SENSITIVE = [:specifications]
      include Aws::Structure
    end

    # @!attribute [rw] deployment_id
    #   The ID of the deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/CreateDeploymentOutput AWS API Documentation
    #
    class CreateDeploymentOutput < Struct.new(
      :deployment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The deployment must be initiated from a delegated administrator
    # account for the specified service principal.
    #
    # @!attribute [rw] service_principal
    #   The service principal for which the account must be a delegated
    #   administrator. For example,
    #   `stacksets.cloudformation.amazonaws.com`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/DelegatedAdminConstraint AWS API Documentation
    #
    class DelegatedAdminConstraint < Struct.new(
      :service_principal)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_id
    #   The ID of the deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/DeleteDeploymentInput AWS API Documentation
    #
    class DeleteDeploymentInput < Struct.new(
      :deployment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the deployment status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/DeleteDeploymentOutput AWS API Documentation
    #
    class DeleteDeploymentOutput < Struct.new(
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # A field that details a condition of the specifications for a
    # deployment.
    #
    # @!attribute [rw] name
    #   The name of the deployment condition.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the condition.
    #   @return [String]
    #
    # @!attribute [rw] comparator
    #   The comparator of the condition.
    #
    #   Valid values: `Equal | NotEqual`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/DeploymentConditionalField AWS API Documentation
    #
    class DeploymentConditionalField < Struct.new(
      :name,
      :value,
      :comparator)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data associated with a deployment.
    #
    # @!attribute [rw] name
    #   The name of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] workload_name
    #   The name of the workload.
    #   @return [String]
    #
    # @!attribute [rw] pattern_name
    #   The pattern name of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time the deployment was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The time the deployment was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] specifications
    #   The settings specified for the deployment. These settings define how
    #   to deploy and configure your resources created by the deployment.
    #   For more information about the specifications required for creating
    #   a deployment for a SAP workload, see [SAP deployment
    #   specifications][1]. To retrieve the specifications required to
    #   create a deployment for other workloads, use the [
    #   `GetWorkloadDeploymentPattern` ][2] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/launchwizard/latest/APIReference/launch-wizard-specifications-sap.html
    #   [2]: https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_GetWorkloadDeploymentPattern.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] resource_group
    #   The resource group of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deleted_at
    #   The time the deployment was deleted.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   Information about the tags attached to a deployment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] deployment_arn
    #   The Amazon Resource Name (ARN) of the deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/DeploymentData AWS API Documentation
    #
    class DeploymentData < Struct.new(
      :name,
      :id,
      :workload_name,
      :pattern_name,
      :status,
      :created_at,
      :modified_at,
      :specifications,
      :resource_group,
      :deleted_at,
      :tags,
      :deployment_arn)
      SENSITIVE = [:specifications]
      include Aws::Structure
    end

    # A summary of the deployment data.
    #
    # @!attribute [rw] name
    #   The name of the deployment
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] workload_name
    #   The name of the workload.
    #   @return [String]
    #
    # @!attribute [rw] pattern_name
    #   The name of the workload deployment pattern.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time the deployment was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The time the deployment was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/DeploymentDataSummary AWS API Documentation
    #
    class DeploymentDataSummary < Struct.new(
      :name,
      :id,
      :workload_name,
      :pattern_name,
      :status,
      :created_at,
      :modified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the deployment event data.
    #
    # @!attribute [rw] name
    #   The name of the deployment event.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the deployment event.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the deployment event.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason of the deployment event status.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The timestamp of the deployment event.
    #   @return [Time]
    #
    # @!attribute [rw] metadata
    #   A map of metadata key-value pairs associated with a deployment
    #   event. For error detection events, contains workload context and log
    #   excerpts used for troubleshooting.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/DeploymentEventDataSummary AWS API Documentation
    #
    class DeploymentEventDataSummary < Struct.new(
      :name,
      :description,
      :status,
      :status_reason,
      :timestamp,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter name and value pair that is used to return more specific
    # results from a describe operation. Filters can be used to match a set
    # of resources by specific criteria.
    #
    # @!attribute [rw] name
    #   The name of the filter. Filter names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The filter values. Filter values are case-sensitive. If you specify
    #   multiple values for a filter, the values are joined with an `OR`,
    #   and the request returns all results that match any of the specified
    #   values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/DeploymentFilter AWS API Documentation
    #
    class DeploymentFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a deployment pattern version summary.
    #
    # @!attribute [rw] deployment_pattern_version_name
    #   The name of the deployment pattern version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the deployment pattern version.
    #   @return [String]
    #
    # @!attribute [rw] documentation_url
    #   The URL of the documentation for the deployment pattern version.
    #   @return [String]
    #
    # @!attribute [rw] workload_name
    #   The name of the workload.
    #   @return [String]
    #
    # @!attribute [rw] deployment_pattern_name
    #   The name of the deployment pattern.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/DeploymentPatternVersionDataSummary AWS API Documentation
    #
    class DeploymentPatternVersionDataSummary < Struct.new(
      :deployment_pattern_version_name,
      :description,
      :documentation_url,
      :workload_name,
      :deployment_pattern_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for deployment pattern versions. Use this filter to specify
    # criteria for querying deployment pattern versions in Launch Wizard.
    #
    # @!attribute [rw] name
    #   The name of the filter attribute. Specifies which attribute to
    #   filter on when querying deployment pattern versions.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to filter by. Contains the specific values to match
    #   against when filtering deployment pattern versions.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/DeploymentPatternVersionFilter AWS API Documentation
    #
    class DeploymentPatternVersionFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A field that details a specification of a deployment pattern.
    #
    # @!attribute [rw] name
    #   The name of the deployment specification.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the deployment specification.
    #   @return [String]
    #
    # @!attribute [rw] allowed_values
    #   The allowed values of the deployment specification.
    #   @return [Array<String>]
    #
    # @!attribute [rw] required
    #   Indicates if the deployment specification is required.
    #   @return [String]
    #
    # @!attribute [rw] conditionals
    #   The conditionals used for the deployment specification.
    #   @return [Array<Types::DeploymentConditionalField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/DeploymentSpecificationsField AWS API Documentation
    #
    class DeploymentSpecificationsField < Struct.new(
      :name,
      :description,
      :allowed_values,
      :required,
      :conditionals)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_id
    #   The ID of the deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/GetDeploymentInput AWS API Documentation
    #
    class GetDeploymentInput < Struct.new(
      :deployment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment
    #   An object that details the deployment.
    #   @return [Types::DeploymentData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/GetDeploymentOutput AWS API Documentation
    #
    class GetDeploymentOutput < Struct.new(
      :deployment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_name
    #   The name of the workload. You can use the [ `ListWorkloads` ][1]
    #   operation to discover supported values for this parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloads.html
    #   @return [String]
    #
    # @!attribute [rw] deployment_pattern_name
    #   The name of the deployment pattern. You can use the [
    #   `ListWorkloadDeploymentPatterns` ][1] operation to discover
    #   supported values for this parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloadDeploymentPatterns.html
    #   @return [String]
    #
    # @!attribute [rw] deployment_pattern_version_name
    #   The name of the deployment pattern version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/GetDeploymentPatternVersionInput AWS API Documentation
    #
    class GetDeploymentPatternVersionInput < Struct.new(
      :workload_name,
      :deployment_pattern_name,
      :deployment_pattern_version_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_pattern_version
    #   The deployment pattern version.
    #   @return [Types::DeploymentPatternVersionDataSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/GetDeploymentPatternVersionOutput AWS API Documentation
    #
    class GetDeploymentPatternVersionOutput < Struct.new(
      :deployment_pattern_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_name
    #   The name of the workload.
    #   @return [String]
    #
    # @!attribute [rw] deployment_pattern_name
    #   The name of the deployment pattern.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/GetWorkloadDeploymentPatternInput AWS API Documentation
    #
    class GetWorkloadDeploymentPatternInput < Struct.new(
      :workload_name,
      :deployment_pattern_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_deployment_pattern
    #   Details about the workload deployment pattern.
    #   @return [Types::WorkloadDeploymentPatternData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/GetWorkloadDeploymentPatternOutput AWS API Documentation
    #
    class GetWorkloadDeploymentPatternOutput < Struct.new(
      :workload_deployment_pattern)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_name
    #   The name of the workload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/GetWorkloadInput AWS API Documentation
    #
    class GetWorkloadInput < Struct.new(
      :workload_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload
    #   Information about the workload.
    #   @return [Types::WorkloadData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/GetWorkloadOutput AWS API Documentation
    #
    class GetWorkloadOutput < Struct.new(
      :workload)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal error has occurred. Retry your request, but if the problem
    # persists, contact us with details by posting a question on
    # [re:Post][1].
    #
    #
    #
    # [1]: https://repost.aws/
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_id
    #   The ID of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/ListDeploymentEventsInput AWS API Documentation
    #
    class ListDeploymentEventsInput < Struct.new(
      :deployment_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_events
    #   Lists the deployment events.
    #   @return [Array<Types::DeploymentEventDataSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to include in another request to get the next page of
    #   items. This value is `null` when there are no more items to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/ListDeploymentEventsOutput AWS API Documentation
    #
    class ListDeploymentEventsOutput < Struct.new(
      :deployment_events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_name
    #   The name of the workload. You can use the [ `ListWorkloads` ][1]
    #   operation to discover supported values for this parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloads.html
    #   @return [String]
    #
    # @!attribute [rw] deployment_pattern_name
    #   The name of the deployment pattern. You can use the [
    #   `ListWorkloadDeploymentPatterns` ][1] operation to discover
    #   supported values for this parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloadDeploymentPatterns.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of deployment pattern versions to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters to apply when listing deployment pattern versions.
    #   @return [Array<Types::DeploymentPatternVersionFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/ListDeploymentPatternVersionsInput AWS API Documentation
    #
    class ListDeploymentPatternVersionsInput < Struct.new(
      :workload_name,
      :deployment_pattern_name,
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_pattern_versions
    #   The deployment pattern versions.
    #   @return [Array<Types::DeploymentPatternVersionDataSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/ListDeploymentPatternVersionsOutput AWS API Documentation
    #
    class ListDeploymentPatternVersionsOutput < Struct.new(
      :deployment_pattern_versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters to scope the results. The following filters are supported:
    #
    #   * `WORKLOAD_NAME` - The name used in deployments.
    #
    #   * `DEPLOYMENT_STATUS` - `COMPLETED` \| `CREATING` \|
    #     `DELETE_IN_PROGRESS` \| `DELETE_INITIATING` \| `DELETE_FAILED` \|
    #     `DELETED` \| `FAILED` \| `IN_PROGRESS` \| `VALIDATING`
    #   @return [Array<Types::DeploymentFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/ListDeploymentsInput AWS API Documentation
    #
    class ListDeploymentsInput < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployments
    #   Lists the deployments.
    #   @return [Array<Types::DeploymentDataSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to include in another request to get the next page of
    #   items. This value is `null` when there are no more items to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/ListDeploymentsOutput AWS API Documentation
    #
    class ListDeploymentsOutput < Struct.new(
      :deployments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Information about the tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_name
    #   The name of the workload.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/ListWorkloadDeploymentPatternsInput AWS API Documentation
    #
    class ListWorkloadDeploymentPatternsInput < Struct.new(
      :workload_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_deployment_patterns
    #   Describes the workload deployment patterns.
    #   @return [Array<Types::WorkloadDeploymentPatternDataSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to include in another request to get the next page of
    #   items. This value is `null` when there are no more items to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/ListWorkloadDeploymentPatternsOutput AWS API Documentation
    #
    class ListWorkloadDeploymentPatternsOutput < Struct.new(
      :workload_deployment_patterns,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/ListWorkloadsInput AWS API Documentation
    #
    class ListWorkloadsInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workloads
    #   Information about the workloads.
    #   @return [Array<Types::WorkloadDataSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to include in another request to get the next page of
    #   items. This value is `null` when there are no more items to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/ListWorkloadsOutput AWS API Documentation
    #
    class ListWorkloadsOutput < Struct.new(
      :workloads,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The deployment must be initiated from the AWS Organizations management
    # account.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/ManagementAccountConstraint AWS API Documentation
    #
    class ManagementAccountConstraint < Aws::EmptyStructure; end

    # You have exceeded an Launch Wizard resource limit. For example, you
    # might have too many deployments in progress.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/ResourceLimitException AWS API Documentation
    #
    class ResourceLimitException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified workload or deployment resource can't be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags to attach to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Keys identifying the tags to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] deployment_id
    #   The ID of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] specifications
    #   The settings specified for the deployment. These settings define how
    #   to deploy and configure your resources created by the deployment.
    #   For more information about the specifications required for creating
    #   a deployment for a SAP workload, see [SAP deployment
    #   specifications][1]. To retrieve the specifications required to
    #   create a deployment for other workloads, use the [
    #   `GetWorkloadDeploymentPattern` ][2] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/launchwizard/latest/APIReference/launch-wizard-specifications-sap.html
    #   [2]: https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_GetWorkloadDeploymentPattern.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] workload_version_name
    #   The name of the workload version.
    #   @return [String]
    #
    # @!attribute [rw] deployment_pattern_version_name
    #   The name of the deployment pattern version.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] force
    #   Forces the update even if validation warnings are present.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/UpdateDeploymentInput AWS API Documentation
    #
    class UpdateDeploymentInput < Struct.new(
      :deployment_id,
      :specifications,
      :workload_version_name,
      :deployment_pattern_version_name,
      :dry_run,
      :force)
      SENSITIVE = [:specifications]
      include Aws::Structure
    end

    # @!attribute [rw] deployment
    #   The deployment.
    #   @return [Types::DeploymentDataSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/UpdateDeploymentOutput AWS API Documentation
    #
    class UpdateDeploymentOutput < Struct.new(
      :deployment)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a workload.
    #
    # @!attribute [rw] workload_name
    #   The name of the workload.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of a workload.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a workload.
    #
    #   *You can list deployments in the `DISABLED` status.*
    #   @return [String]
    #
    # @!attribute [rw] account_constraints
    #   Optional list of constraints describing what kind of AWS account is
    #   allowed to deploy this workload or deployment pattern. Within a
    #   single list the semantics are OR: an account satisfies the list if
    #   it satisfies any entry. Workload-level and pattern-level lists
    #   combine with AND at deployment time. An absent or empty list at this
    #   level means no constraint at this level.
    #   @return [Array<Types::AccountConstraint>]
    #
    # @!attribute [rw] description
    #   The description of a workload.
    #   @return [String]
    #
    # @!attribute [rw] documentation_url
    #   The URL of a workload document.
    #   @return [String]
    #
    # @!attribute [rw] icon_url
    #   The URL of a workload icon.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The message about a workload's status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/WorkloadData AWS API Documentation
    #
    class WorkloadData < Struct.new(
      :workload_name,
      :display_name,
      :status,
      :account_constraints,
      :description,
      :documentation_url,
      :icon_url,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes workload data.
    #
    # @!attribute [rw] workload_name
    #   The name of the workload.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the workload data.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the workload.
    #   @return [String]
    #
    # @!attribute [rw] account_constraints
    #   Optional list of constraints describing what kind of AWS account is
    #   allowed to deploy this workload or deployment pattern. Within a
    #   single list the semantics are OR: an account satisfies the list if
    #   it satisfies any entry. Workload-level and pattern-level lists
    #   combine with AND at deployment time. An absent or empty list at this
    #   level means no constraint at this level.
    #   @return [Array<Types::AccountConstraint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/WorkloadDataSummary AWS API Documentation
    #
    class WorkloadDataSummary < Struct.new(
      :workload_name,
      :display_name,
      :status,
      :account_constraints)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data that details a workload deployment pattern.
    #
    # @!attribute [rw] workload_name
    #   The workload name of the deployment pattern.
    #   @return [String]
    #
    # @!attribute [rw] deployment_pattern_name
    #   The name of the deployment pattern.
    #   @return [String]
    #
    # @!attribute [rw] workload_version_name
    #   The workload version name of the deployment pattern.
    #   @return [String]
    #
    # @!attribute [rw] deployment_pattern_version_name
    #   The version name of the deployment pattern.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the deployment pattern.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the deployment pattern.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the deployment pattern.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message of the deployment pattern.
    #   @return [String]
    #
    # @!attribute [rw] account_constraints
    #   Optional list of constraints describing what kind of AWS account is
    #   allowed to deploy this workload or deployment pattern. Within a
    #   single list the semantics are OR: an account satisfies the list if
    #   it satisfies any entry. Workload-level and pattern-level lists
    #   combine with AND at deployment time. An absent or empty list at this
    #   level means no constraint at this level.
    #   @return [Array<Types::AccountConstraint>]
    #
    # @!attribute [rw] specifications
    #   The settings specified for the deployment. These settings define how
    #   to deploy and configure your resources created by the deployment.
    #   For more information about the specifications required for creating
    #   a deployment for a SAP workload, see [SAP deployment
    #   specifications][1]. To retrieve the specifications required to
    #   create a deployment for other workloads, use the [
    #   `GetWorkloadDeploymentPattern` ][2] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/launchwizard/latest/APIReference/launch-wizard-specifications-sap.html
    #   [2]: https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_GetWorkloadDeploymentPattern.html
    #   @return [Array<Types::DeploymentSpecificationsField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/WorkloadDeploymentPatternData AWS API Documentation
    #
    class WorkloadDeploymentPatternData < Struct.new(
      :workload_name,
      :deployment_pattern_name,
      :workload_version_name,
      :deployment_pattern_version_name,
      :display_name,
      :description,
      :status,
      :status_message,
      :account_constraints,
      :specifications)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a workload deployment pattern.
    #
    # @!attribute [rw] workload_name
    #   The name of the workload.
    #   @return [String]
    #
    # @!attribute [rw] deployment_pattern_name
    #   The name of a workload deployment pattern.
    #   @return [String]
    #
    # @!attribute [rw] workload_version_name
    #   The name of the workload deployment pattern version.
    #   @return [String]
    #
    # @!attribute [rw] deployment_pattern_version_name
    #   The version name of a workload deployment pattern.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of a workload deployment pattern.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of a workload deployment pattern.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a workload deployment pattern.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message about a workload deployment pattern's status.
    #   @return [String]
    #
    # @!attribute [rw] account_constraints
    #   Optional list of constraints describing what kind of AWS account is
    #   allowed to deploy this workload or deployment pattern. Within a
    #   single list the semantics are OR: an account satisfies the list if
    #   it satisfies any entry. Workload-level and pattern-level lists
    #   combine with AND at deployment time. An absent or empty list at this
    #   level means no constraint at this level.
    #   @return [Array<Types::AccountConstraint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/launch-wizard-2018-05-10/WorkloadDeploymentPatternDataSummary AWS API Documentation
    #
    class WorkloadDeploymentPatternDataSummary < Struct.new(
      :workload_name,
      :deployment_pattern_name,
      :workload_version_name,
      :deployment_pattern_version_name,
      :display_name,
      :description,
      :status,
      :status_message,
      :account_constraints)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

