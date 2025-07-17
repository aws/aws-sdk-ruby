# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::NetworkFlowMonitor
  module Types

    # You don't have sufficient permission to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource is in use.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_name
    #   The name of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] local_resources
    #   The local resources to monitor. A local resource, in a
    #   bi-directional flow of a workload, is the host where the agent is
    #   installed. For example, if a workload consists of an interaction
    #   between a web service and a backend database (for example, Amazon
    #   Relational Database Service (RDS)), the EC2 instance hosting the web
    #   service, which also runs the agent, is the local resource.
    #   @return [Array<Types::MonitorLocalResource>]
    #
    # @!attribute [rw] remote_resources
    #   The remote resources to monitor. A remote resource is the other
    #   endpoint in the bi-directional flow of a workload, with a local
    #   resource. For example, Amazon Relational Database Service (RDS) can
    #   be a remote resource.
    #   @return [Array<Types::MonitorRemoteResource>]
    #
    # @!attribute [rw] scope_arn
    #   The Amazon Resource Name (ARN) of the scope for the monitor.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive string of up to 64 ASCII characters that
    #   you specify to make an idempotent API request. Don't reuse the same
    #   client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for a monitor. You can add a maximum of 200 tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/CreateMonitorInput AWS API Documentation
    #
    class CreateMonitorInput < Struct.new(
      :monitor_name,
      :local_resources,
      :remote_resources,
      :scope_arn,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_arn
    #   The Amazon Resource Name (ARN) of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] monitor_name
    #   The name of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] monitor_status
    #   The status of a monitor. The status can be one of the following
    #
    #   * `PENDING`: The monitor is in the process of being created.
    #
    #   * `ACTIVE`: The monitor is active.
    #
    #   * `INACTIVE`: The monitor is inactive.
    #
    #   * `ERROR`: Monitor creation failed due to an error.
    #
    #   * `DELETING`: The monitor is in the process of being deleted.
    #   @return [String]
    #
    # @!attribute [rw] local_resources
    #   The local resources to monitor. A local resource, in a
    #   bi-directional flow of a workload, is the host where the agent is
    #   installed.
    #   @return [Array<Types::MonitorLocalResource>]
    #
    # @!attribute [rw] remote_resources
    #   The remote resources to monitor. A remote resource is the other
    #   endpoint in the bi-directional flow of a workload, with a local
    #   resource. For example, Amazon Relational Database Service (RDS) can
    #   be a remote resource. The remote resource is identified by its ARN
    #   or an identifier.
    #   @return [Array<Types::MonitorRemoteResource>]
    #
    # @!attribute [rw] created_at
    #   The date and time when the monitor was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The last date and time that the monitor was modified.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags for a monitor.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/CreateMonitorOutput AWS API Documentation
    #
    class CreateMonitorOutput < Struct.new(
      :monitor_arn,
      :monitor_name,
      :monitor_status,
      :local_resources,
      :remote_resources,
      :created_at,
      :modified_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] targets
    #   The targets to define the scope to be monitored. Currently, a target
    #   is an Amazon Web Services account.
    #   @return [Array<Types::TargetResource>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive string of up to 64 ASCII characters that
    #   you specify to make an idempotent API request. Don't reuse the same
    #   client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for a scope. You can add a maximum of 200 tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/CreateScopeInput AWS API Documentation
    #
    class CreateScopeInput < Struct.new(
      :targets,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get metrics for. A scope ID is an internally-generated identifier
    #   that includes all the resources for a specific root account.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status for a scope. The status can be one of the following:
    #   `SUCCEEDED`, `IN_PROGRESS`, `FAILED`, `DEACTIVATING`, or
    #   `DEACTIVATED`.
    #
    #   A status of `DEACTIVATING` means that you've requested a scope to
    #   be deactivated and Network Flow Monitor is in the process of
    #   deactivating the scope. A status of `DEACTIVATED` means that the
    #   deactivating process is complete.
    #   @return [String]
    #
    # @!attribute [rw] scope_arn
    #   The Amazon Resource Name (ARN) of the scope.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for a scope.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/CreateScopeOutput AWS API Documentation
    #
    class CreateScopeOutput < Struct.new(
      :scope_id,
      :status,
      :scope_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_name
    #   The name of the monitor to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/DeleteMonitorInput AWS API Documentation
    #
    class DeleteMonitorInput < Struct.new(
      :monitor_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/DeleteMonitorOutput AWS API Documentation
    #
    class DeleteMonitorOutput < Aws::EmptyStructure; end

    # @!attribute [rw] scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get data results for. A scope ID is an internally-generated
    #   identifier that includes all the resources for a specific root
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/DeleteScopeInput AWS API Documentation
    #
    class DeleteScopeInput < Struct.new(
      :scope_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/DeleteScopeOutput AWS API Documentation
    #
    class DeleteScopeOutput < Aws::EmptyStructure; end

    # @!attribute [rw] monitor_name
    #   The name of the monitor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/GetMonitorInput AWS API Documentation
    #
    class GetMonitorInput < Struct.new(
      :monitor_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_arn
    #   The Amazon Resource Name (ARN) of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] monitor_name
    #   The name of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] monitor_status
    #   The status of a monitor. The status can be one of the following
    #
    #   * `PENDING`: The monitor is in the process of being created.
    #
    #   * `ACTIVE`: The monitor is active.
    #
    #   * `INACTIVE`: The monitor is inactive.
    #
    #   * `ERROR`: Monitor creation failed due to an error.
    #
    #   * `DELETING`: The monitor is in the process of being deleted.
    #   @return [String]
    #
    # @!attribute [rw] local_resources
    #   The local resources for this monitor.
    #   @return [Array<Types::MonitorLocalResource>]
    #
    # @!attribute [rw] remote_resources
    #   The remote resources for this monitor.
    #   @return [Array<Types::MonitorRemoteResource>]
    #
    # @!attribute [rw] created_at
    #   The date and time when the monitor was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time when the monitor was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags for a monitor.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/GetMonitorOutput AWS API Documentation
    #
    class GetMonitorOutput < Struct.new(
      :monitor_arn,
      :monitor_name,
      :monitor_status,
      :local_resources,
      :remote_resources,
      :created_at,
      :modified_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_name
    #   The name of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] query_id
    #   The identifier for the query. A query ID is an internally-generated
    #   identifier for a specific query returned from an API call to create
    #   a query.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of query results that you want to return with this call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/GetQueryResultsMonitorTopContributorsInput AWS API Documentation
    #
    class GetQueryResultsMonitorTopContributorsInput < Struct.new(
      :monitor_name,
      :query_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] unit
    #   The units for a metric returned by the query.
    #   @return [String]
    #
    # @!attribute [rw] top_contributors
    #   The top contributor network flows overall for a specific metric
    #   type, for example, the number of retransmissions.
    #   @return [Array<Types::MonitorTopContributorsRow>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/GetQueryResultsMonitorTopContributorsOutput AWS API Documentation
    #
    class GetQueryResultsMonitorTopContributorsOutput < Struct.new(
      :unit,
      :top_contributors,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get data results for. A scope ID is an internally-generated
    #   identifier that includes all the resources for a specific root
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] query_id
    #   The identifier for the query. A query ID is an internally-generated
    #   identifier for a specific query returned from an API call to create
    #   a query.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of query results that you want to return with this call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/GetQueryResultsWorkloadInsightsTopContributorsDataInput AWS API Documentation
    #
    class GetQueryResultsWorkloadInsightsTopContributorsDataInput < Struct.new(
      :scope_id,
      :query_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] unit
    #   The units for a metric returned by the query.
    #   @return [String]
    #
    # @!attribute [rw] datapoints
    #   The datapoints returned by the query.
    #   @return [Array<Types::WorkloadInsightsTopContributorsDataPoint>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/GetQueryResultsWorkloadInsightsTopContributorsDataOutput AWS API Documentation
    #
    class GetQueryResultsWorkloadInsightsTopContributorsDataOutput < Struct.new(
      :unit,
      :datapoints,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get data results for. A scope ID is an internally-generated
    #   identifier that includes all the resources for a specific root
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] query_id
    #   The identifier for the query. A query ID is an internally-generated
    #   identifier for a specific query returned from an API call to create
    #   a query.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of query results that you want to return with this call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/GetQueryResultsWorkloadInsightsTopContributorsInput AWS API Documentation
    #
    class GetQueryResultsWorkloadInsightsTopContributorsInput < Struct.new(
      :scope_id,
      :query_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] top_contributors
    #   The top contributor network flows overall for a specific metric
    #   type, for example, the number of retransmissions.
    #   @return [Array<Types::WorkloadInsightsTopContributorsRow>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/GetQueryResultsWorkloadInsightsTopContributorsOutput AWS API Documentation
    #
    class GetQueryResultsWorkloadInsightsTopContributorsOutput < Struct.new(
      :top_contributors,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_name
    #   The name of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] query_id
    #   The identifier for the query. A query ID is an internally-generated
    #   identifier for a specific query returned from an API call to start a
    #   query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/GetQueryStatusMonitorTopContributorsInput AWS API Documentation
    #
    class GetQueryStatusMonitorTopContributorsInput < Struct.new(
      :monitor_name,
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   When you run a query, use this call to check the status of the query
    #   to make sure that the query has `SUCCEEDED` before you review the
    #   results.
    #
    #   * `QUEUED`: The query is scheduled to run.
    #
    #   * `RUNNING`: The query is in progress but not complete.
    #
    #   * `SUCCEEDED`: The query completed sucessfully.
    #
    #   * `FAILED`: The query failed due to an error.
    #
    #   * `CANCELED`: The query was canceled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/GetQueryStatusMonitorTopContributorsOutput AWS API Documentation
    #
    class GetQueryStatusMonitorTopContributorsOutput < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get data results for. A scope ID is an internally-generated
    #   identifier that includes all the resources for a specific root
    #   account. A scope ID is returned from a `CreateScope` API call.
    #   @return [String]
    #
    # @!attribute [rw] query_id
    #   The identifier for the query. A query ID is an internally-generated
    #   identifier for a specific query returned from an API call to start a
    #   query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/GetQueryStatusWorkloadInsightsTopContributorsDataInput AWS API Documentation
    #
    class GetQueryStatusWorkloadInsightsTopContributorsDataInput < Struct.new(
      :scope_id,
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of a query for top contributors data.
    #
    #   * `QUEUED`: The query is scheduled to run.
    #
    #   * `RUNNING`: The query is in progress but not complete.
    #
    #   * `SUCCEEDED`: The query completed sucessfully.
    #
    #   * `FAILED`: The query failed due to an error.
    #
    #   * `CANCELED`: The query was canceled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/GetQueryStatusWorkloadInsightsTopContributorsDataOutput AWS API Documentation
    #
    class GetQueryStatusWorkloadInsightsTopContributorsDataOutput < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get data results for. A scope ID is an internally-generated
    #   identifier that includes all the resources for a specific root
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] query_id
    #   The identifier for the query. A query ID is an internally-generated
    #   identifier for a specific query returned from an API call to start a
    #   query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/GetQueryStatusWorkloadInsightsTopContributorsInput AWS API Documentation
    #
    class GetQueryStatusWorkloadInsightsTopContributorsInput < Struct.new(
      :scope_id,
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   When you run a query, use this call to check the status of the query
    #   to make sure that the query has `SUCCEEDED` before you review the
    #   results.
    #
    #   * `QUEUED`: The query is scheduled to run.
    #
    #   * `RUNNING`: The query is in progress but not complete.
    #
    #   * `SUCCEEDED`: The query completed sucessfully.
    #
    #   * `FAILED`: The query failed due to an error.
    #
    #   * `CANCELED`: The query was canceled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/GetQueryStatusWorkloadInsightsTopContributorsOutput AWS API Documentation
    #
    class GetQueryStatusWorkloadInsightsTopContributorsOutput < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get data results for. A scope ID is an internally-generated
    #   identifier that includes all the resources for a specific root
    #   account. A scope ID is returned from a `CreateScope` API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/GetScopeInput AWS API Documentation
    #
    class GetScopeInput < Struct.new(
      :scope_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get data results for. A scope ID is an internally-generated
    #   identifier that includes all the resources for a specific root
    #   account. A scope ID is returned from a `CreateScope` API call.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status for a scope. The status can be one of the following:
    #   `SUCCEEDED`, `IN_PROGRESS`, `FAILED`, `DEACTIVATING`, or
    #   `DEACTIVATED`.
    #
    #   A status of `DEACTIVATING` means that you've requested a scope to
    #   be deactivated and Network Flow Monitor is in the process of
    #   deactivating the scope. A status of `DEACTIVATED` means that the
    #   deactivating process is complete.
    #   @return [String]
    #
    # @!attribute [rw] scope_arn
    #   The Amazon Resource Name (ARN) of the scope.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets for a scope
    #   @return [Array<Types::TargetResource>]
    #
    # @!attribute [rw] tags
    #   The tags for a scope.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/GetScopeOutput AWS API Documentation
    #
    class GetScopeOutput < Struct.new(
      :scope_id,
      :status,
      :scope_arn,
      :targets,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal error occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Meta data about Kubernetes resources.
    #
    # @!attribute [rw] local_service_name
    #   The service name for a local resource.
    #   @return [String]
    #
    # @!attribute [rw] local_pod_name
    #   The name of the pod for a local resource.
    #   @return [String]
    #
    # @!attribute [rw] local_pod_namespace
    #   The namespace of the pod for a local resource.
    #   @return [String]
    #
    # @!attribute [rw] remote_service_name
    #   The service name for a remote resource.
    #   @return [String]
    #
    # @!attribute [rw] remote_pod_name
    #   The name of the pod for a remote resource.
    #   @return [String]
    #
    # @!attribute [rw] remote_pod_namespace
    #   The namespace of the pod for a remote resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/KubernetesMetadata AWS API Documentation
    #
    class KubernetesMetadata < Struct.new(
      :local_service_name,
      :local_pod_name,
      :local_pod_namespace,
      :remote_service_name,
      :remote_pod_name,
      :remote_pod_namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of query results that you want to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] monitor_status
    #   The status of a monitor. The status can be one of the following
    #
    #   * `PENDING`: The monitor is in the process of being created.
    #
    #   * `ACTIVE`: The monitor is active.
    #
    #   * `INACTIVE`: The monitor is inactive.
    #
    #   * `ERROR`: Monitor creation failed due to an error.
    #
    #   * `DELETING`: The monitor is in the process of being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/ListMonitorsInput AWS API Documentation
    #
    class ListMonitorsInput < Struct.new(
      :next_token,
      :max_results,
      :monitor_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitors
    #   The monitors that are in an account.
    #   @return [Array<Types::MonitorSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/ListMonitorsOutput AWS API Documentation
    #
    class ListMonitorsOutput < Struct.new(
      :monitors,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of query results that you want to return with this call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/ListScopesInput AWS API Documentation
    #
    class ListScopesInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scopes
    #   The scopes returned by the call.
    #   @return [Array<Types::ScopeSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/ListScopesOutput AWS API Documentation
    #
    class ListScopesOutput < Struct.new(
      :scopes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A local resource is the host where the agent is installed. Local
    # resources can be a a subnet, a VPC, or an Availability Zone.
    #
    # @!attribute [rw] type
    #   The type of the local resource. Valid values are `AWS::EC2::VPC`
    #   `AWS::AvailabilityZone` or `AWS::EC2::Subnet`.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the local resource, such as an ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/MonitorLocalResource AWS API Documentation
    #
    class MonitorLocalResource < Struct.new(
      :type,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # A remote resource is the other endpoint in a network flow. That is,
    # one endpoint is the local resource and the other is the remote
    # resource. Remote resources can be a a subnet, a VPC, an Availability
    # Zone, or an Amazon Web Services service.
    #
    # @!attribute [rw] type
    #   The type of the remote resource. Valid values are `AWS::EC2::VPC`
    #   `AWS::AvailabilityZone`, `AWS::EC2::Subnet`, or `AWS::AWSService`.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the remote resource, such as an ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/MonitorRemoteResource AWS API Documentation
    #
    class MonitorRemoteResource < Struct.new(
      :type,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of information about a monitor, includ the ARN, the name,
    # and the status.
    #
    # @!attribute [rw] monitor_arn
    #   The Amazon Resource Name (ARN) of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] monitor_name
    #   The name of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] monitor_status
    #   The status of a monitor. The status can be one of the following
    #
    #   * `PENDING`: The monitor is in the process of being created.
    #
    #   * `ACTIVE`: The monitor is active.
    #
    #   * `INACTIVE`: The monitor is inactive.
    #
    #   * `ERROR`: Monitor creation failed due to an error.
    #
    #   * `DELETING`: The monitor is in the process of being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/MonitorSummary AWS API Documentation
    #
    class MonitorSummary < Struct.new(
      :monitor_arn,
      :monitor_name,
      :monitor_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of information for a top contributor network flow in a monitor.
    # In a monitor, Network Flow Monitor returns information about the
    # network flows for top contributors for each metric. Top contributors
    # are network flows with the top values for each metric type.
    #
    # @!attribute [rw] local_ip
    #   The IP address of the local resource for a top contributor network
    #   flow.
    #   @return [String]
    #
    # @!attribute [rw] snat_ip
    #   The secure network address translation (SNAT) IP address for a top
    #   contributor network flow.
    #   @return [String]
    #
    # @!attribute [rw] local_instance_id
    #   The instance identifier for the local resource for a top contributor
    #   network flow.
    #   @return [String]
    #
    # @!attribute [rw] local_vpc_id
    #   The VPC ID for a top contributor network flow for the local
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] local_region
    #   The Amazon Web Services Region for the local resource for a top
    #   contributor network flow.
    #   @return [String]
    #
    # @!attribute [rw] local_az
    #   The Availability Zone for the local resource for a top contributor
    #   network flow.
    #   @return [String]
    #
    # @!attribute [rw] local_subnet_id
    #   The subnet ID for the local resource for a top contributor network
    #   flow.
    #   @return [String]
    #
    # @!attribute [rw] target_port
    #   The target port.
    #   @return [Integer]
    #
    # @!attribute [rw] destination_category
    #   The destination category for a top contributors row. Destination
    #   categories can be one of the following:
    #
    #   * `INTRA_AZ`: Top contributor network flows within a single
    #     Availability Zone
    #
    #   * `INTER_AZ`: Top contributor network flows between Availability
    #     Zones
    #
    #   * `INTER_VPC`: Top contributor network flows between VPCs
    #
    #   * `AWS_SERVICES`: Top contributor network flows to or from Amazon
    #     Web Services services
    #
    #   * `UNCLASSIFIED`: Top contributor network flows that do not have a
    #     bucket classification
    #   @return [String]
    #
    # @!attribute [rw] remote_vpc_id
    #   The VPC ID for a top contributor network flow for the remote
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] remote_region
    #   The Amazon Web Services Region for the remote resource for a top
    #   contributor network flow.
    #   @return [String]
    #
    # @!attribute [rw] remote_az
    #   The Availability Zone for the remote resource for a top contributor
    #   network flow.
    #   @return [String]
    #
    # @!attribute [rw] remote_subnet_id
    #   The subnet ID for the remote resource for a top contributor network
    #   flow.
    #   @return [String]
    #
    # @!attribute [rw] remote_instance_id
    #   The instance identifier for the remote resource for a top
    #   contributor network flow.
    #   @return [String]
    #
    # @!attribute [rw] remote_ip
    #   The IP address of the remote resource for a top contributor network
    #   flow.
    #   @return [String]
    #
    # @!attribute [rw] dnat_ip
    #   The destination network address translation (DNAT) IP address for a
    #   top contributor network flow.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the metric for a top contributor network flow.
    #   @return [Integer]
    #
    # @!attribute [rw] traversed_constructs
    #   The constructs traversed by a network flow.
    #   @return [Array<Types::TraversedComponent>]
    #
    # @!attribute [rw] kubernetes_metadata
    #   Meta data about Kubernetes resources.
    #   @return [Types::KubernetesMetadata]
    #
    # @!attribute [rw] local_instance_arn
    #   The Amazon Resource Name (ARN) of a local resource.
    #   @return [String]
    #
    # @!attribute [rw] local_subnet_arn
    #   The Amazon Resource Name (ARN) of a local subnet.
    #   @return [String]
    #
    # @!attribute [rw] local_vpc_arn
    #   The Amazon Resource Name (ARN) of a local VPC.
    #   @return [String]
    #
    # @!attribute [rw] remote_instance_arn
    #   The Amazon Resource Name (ARN) of a remote resource.
    #   @return [String]
    #
    # @!attribute [rw] remote_subnet_arn
    #   The Amazon Resource Name (ARN) of a remote subnet.
    #   @return [String]
    #
    # @!attribute [rw] remote_vpc_arn
    #   The Amazon Resource Name (ARN) of a remote VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/MonitorTopContributorsRow AWS API Documentation
    #
    class MonitorTopContributorsRow < Struct.new(
      :local_ip,
      :snat_ip,
      :local_instance_id,
      :local_vpc_id,
      :local_region,
      :local_az,
      :local_subnet_id,
      :target_port,
      :destination_category,
      :remote_vpc_id,
      :remote_region,
      :remote_az,
      :remote_subnet_id,
      :remote_instance_id,
      :remote_ip,
      :dnat_ip,
      :value,
      :traversed_constructs,
      :kubernetes_metadata,
      :local_instance_arn,
      :local_subnet_arn,
      :local_vpc_arn,
      :remote_instance_arn,
      :remote_subnet_arn,
      :remote_vpc_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request specifies a resource that doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of information about a scope, including the ARN, target ID,
    # and Amazon Web Services Region.
    #
    # @!attribute [rw] scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get data results for. A scope ID is an internally-generated
    #   identifier that includes all the resources for a specific root
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status for a scope. The status can be one of the following:
    #   `SUCCEEDED`, `IN_PROGRESS`, `FAILED`, `DEACTIVATING`, or
    #   `DEACTIVATED`.
    #
    #   A status of `DEACTIVATING` means that you've requested a scope to
    #   be deactivated and Network Flow Monitor is in the process of
    #   deactivating the scope. A status of `DEACTIVATED` means that the
    #   deactivating process is complete.
    #   @return [String]
    #
    # @!attribute [rw] scope_arn
    #   The Amazon Resource Name (ARN) of the scope.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/ScopeSummary AWS API Documentation
    #
    class ScopeSummary < Struct.new(
      :scope_id,
      :status,
      :scope_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeded a service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_name
    #   The name of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp that is the date and time beginning of the period that
    #   you want to retrieve results for with your query.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The timestamp that is the date and time end of the period that you
    #   want to retrieve results for with your query.
    #   @return [Time]
    #
    # @!attribute [rw] metric_name
    #   The metric that you want to query top contributors for. That is, you
    #   can specify a metric with this call and return the top contributor
    #   network flows, for that type of metric, for a monitor and
    #   (optionally) within a specific category, such as network flows
    #   between Availability Zones.
    #   @return [String]
    #
    # @!attribute [rw] destination_category
    #   The category that you want to query top contributors for, for a
    #   specific monitor. Destination categories can be one of the
    #   following:
    #
    #   * `INTRA_AZ`: Top contributor network flows within a single
    #     Availability Zone
    #
    #   * `INTER_AZ`: Top contributor network flows between Availability
    #     Zones
    #
    #   * `INTER_VPC`: Top contributor network flows between VPCs
    #
    #   * `AMAZON_S3`: Top contributor network flows to or from Amazon S3
    #
    #   * `AMAZON_DYNAMODB`: Top contributor network flows to or from Amazon
    #     Dynamo DB
    #
    #   * `UNCLASSIFIED`: Top contributor network flows that do not have a
    #     bucket classification
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of top contributors to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/StartQueryMonitorTopContributorsInput AWS API Documentation
    #
    class StartQueryMonitorTopContributorsInput < Struct.new(
      :monitor_name,
      :start_time,
      :end_time,
      :metric_name,
      :destination_category,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The identifier for the query. A query ID is an internally-generated
    #   identifier for a specific query returned from an API call to start a
    #   query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/StartQueryMonitorTopContributorsOutput AWS API Documentation
    #
    class StartQueryMonitorTopContributorsOutput < Struct.new(
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get data results for. A scope ID is an internally-generated
    #   identifier that includes all the resources for a specific root
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp that is the date and time beginning of the period that
    #   you want to retrieve results for with your query.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The timestamp that is the date and time end of the period that you
    #   want to retrieve results for with your query.
    #   @return [Time]
    #
    # @!attribute [rw] metric_name
    #   The metric that you want to query top contributors for. That is, you
    #   can specify this metric to return the top contributor network flows,
    #   for this type of metric, for a monitor and (optionally) within a
    #   specific category, such as network flows between Availability Zones.
    #   @return [String]
    #
    # @!attribute [rw] destination_category
    #   The destination category for a top contributors. Destination
    #   categories can be one of the following:
    #
    #   * `INTRA_AZ`: Top contributor network flows within a single
    #     Availability Zone
    #
    #   * `INTER_AZ`: Top contributor network flows between Availability
    #     Zones
    #
    #   * `INTER_VPC`: Top contributor network flows between VPCs
    #
    #   * `AWS_SERVICES`: Top contributor network flows to or from Amazon
    #     Web Services services
    #
    #   * `UNCLASSIFIED`: Top contributor network flows that do not have a
    #     bucket classification
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/StartQueryWorkloadInsightsTopContributorsDataInput AWS API Documentation
    #
    class StartQueryWorkloadInsightsTopContributorsDataInput < Struct.new(
      :scope_id,
      :start_time,
      :end_time,
      :metric_name,
      :destination_category)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The identifier for the query. A query ID is an internally-generated
    #   identifier for a specific query returned from an API call to start a
    #   query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/StartQueryWorkloadInsightsTopContributorsDataOutput AWS API Documentation
    #
    class StartQueryWorkloadInsightsTopContributorsDataOutput < Struct.new(
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get data results for. A scope ID is an internally-generated
    #   identifier that includes all the resources for a specific root
    #   account. A scope ID is returned from a `CreateScope` API call.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp that is the date and time beginning of the period that
    #   you want to retrieve results for with your query.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The timestamp that is the date and time end of the period that you
    #   want to retrieve results for with your query.
    #   @return [Time]
    #
    # @!attribute [rw] metric_name
    #   The metric that you want to query top contributors for. That is, you
    #   can specify this metric to return the top contributor network flows,
    #   for this type of metric, for a monitor and (optionally) within a
    #   specific category, such as network flows between Availability Zones.
    #   @return [String]
    #
    # @!attribute [rw] destination_category
    #   The destination category for a top contributors row. Destination
    #   categories can be one of the following:
    #
    #   * `INTRA_AZ`: Top contributor network flows within a single
    #     Availability Zone
    #
    #   * `INTER_AZ`: Top contributor network flows between Availability
    #     Zones
    #
    #   * `INTER_VPC`: Top contributor network flows between VPCs
    #
    #   * `AWS_SERVICES`: Top contributor network flows to or from Amazon
    #     Web Services services
    #
    #   * `UNCLASSIFIED`: Top contributor network flows that do not have a
    #     bucket classification
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of top contributors to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/StartQueryWorkloadInsightsTopContributorsInput AWS API Documentation
    #
    class StartQueryWorkloadInsightsTopContributorsInput < Struct.new(
      :scope_id,
      :start_time,
      :end_time,
      :metric_name,
      :destination_category,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The identifier for the query. A query ID is an internally-generated
    #   identifier for a specific query returned from an API call to start a
    #   query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/StartQueryWorkloadInsightsTopContributorsOutput AWS API Documentation
    #
    class StartQueryWorkloadInsightsTopContributorsOutput < Struct.new(
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_name
    #   The name of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] query_id
    #   The identifier for the query. A query ID is an internally-generated
    #   identifier for a specific query returned from an API call to create
    #   a query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/StopQueryMonitorTopContributorsInput AWS API Documentation
    #
    class StopQueryMonitorTopContributorsInput < Struct.new(
      :monitor_name,
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/StopQueryMonitorTopContributorsOutput AWS API Documentation
    #
    class StopQueryMonitorTopContributorsOutput < Aws::EmptyStructure; end

    # @!attribute [rw] scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get data results for. A scope ID is an internally-generated
    #   identifier that includes all the resources for a specific root
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] query_id
    #   The identifier for the query. A query ID is an internally-generated
    #   identifier for a specific query returned from an API call to create
    #   a query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/StopQueryWorkloadInsightsTopContributorsDataInput AWS API Documentation
    #
    class StopQueryWorkloadInsightsTopContributorsDataInput < Struct.new(
      :scope_id,
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/StopQueryWorkloadInsightsTopContributorsDataOutput AWS API Documentation
    #
    class StopQueryWorkloadInsightsTopContributorsDataOutput < Aws::EmptyStructure; end

    # @!attribute [rw] scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get data results for. A scope ID is an internally-generated
    #   identifier that includes all the resources for a specific root
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] query_id
    #   The identifier for the query. A query ID is an internally-generated
    #   identifier for a specific query returned from an API call to create
    #   a query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/StopQueryWorkloadInsightsTopContributorsInput AWS API Documentation
    #
    class StopQueryWorkloadInsightsTopContributorsInput < Struct.new(
      :scope_id,
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/StopQueryWorkloadInsightsTopContributorsOutput AWS API Documentation
    #
    class StopQueryWorkloadInsightsTopContributorsOutput < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # A target ID is an internally-generated identifier for a target. A
    # target allows you to identify all the resources in a Network Flow
    # Monitor scope. Currently, a target is always an Amazon Web Services
    # account.
    #
    # @note TargetId is a union - when making an API calls you must set exactly one of the members.
    #
    # @note TargetId is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of TargetId corresponding to the set member.
    #
    # @!attribute [rw] account_id
    #   The identifier for the account for a target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/TargetId AWS API Documentation
    #
    class TargetId < Struct.new(
      :account_id,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AccountId < TargetId; end
      class Unknown < TargetId; end
    end

    # A target identifier is a pair of identifying information for a
    # resource that is included in a target. A target identifier includes
    # the target ID and the target type.
    #
    # @!attribute [rw] target_id
    #   The identifier for a target.
    #   @return [Types::TargetId]
    #
    # @!attribute [rw] target_type
    #   The type of a target. A target type is currently always `ACCOUNT`
    #   because a target is currently a single Amazon Web Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/TargetIdentifier AWS API Documentation
    #
    class TargetIdentifier < Struct.new(
      :target_id,
      :target_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A target resource in a scope. The resource is identified by a Region
    # and a target identifier, which includes a target ID and a target type.
    #
    # @!attribute [rw] target_identifier
    #   A target identifier is a pair of identifying information for a
    #   resource that is included in a target. A target identifier includes
    #   the target ID and the target type.
    #   @return [Types::TargetIdentifier]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region where the target resource is located.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/TargetResource AWS API Documentation
    #
    class TargetResource < Struct.new(
      :target_identifier,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A section of the network that a network flow has traveled through.
    #
    # @!attribute [rw] component_id
    #   The identifier for the traversed component.
    #   @return [String]
    #
    # @!attribute [rw] component_type
    #   The type of component that was traversed.
    #   @return [String]
    #
    # @!attribute [rw] component_arn
    #   The Amazon Resource Name (ARN) of a tranversed component.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The service name for the traversed component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/TraversedComponent AWS API Documentation
    #
    class TraversedComponent < Struct.new(
      :component_id,
      :component_type,
      :component_arn,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Keys that you specified when you tagged a resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] monitor_name
    #   The name of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] local_resources_to_add
    #   The local resources to add, as an array of resources with
    #   identifiers and types.
    #   @return [Array<Types::MonitorLocalResource>]
    #
    # @!attribute [rw] local_resources_to_remove
    #   The local resources to remove, as an array of resources with
    #   identifiers and types.
    #   @return [Array<Types::MonitorLocalResource>]
    #
    # @!attribute [rw] remote_resources_to_add
    #   The remove resources to add, as an array of resources with
    #   identifiers and types.
    #   @return [Array<Types::MonitorRemoteResource>]
    #
    # @!attribute [rw] remote_resources_to_remove
    #   The remove resources to remove, as an array of resources with
    #   identifiers and types.
    #   @return [Array<Types::MonitorRemoteResource>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive string of up to 64 ASCII characters that
    #   you specify to make an idempotent API request. Don't reuse the same
    #   client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/UpdateMonitorInput AWS API Documentation
    #
    class UpdateMonitorInput < Struct.new(
      :monitor_name,
      :local_resources_to_add,
      :local_resources_to_remove,
      :remote_resources_to_add,
      :remote_resources_to_remove,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_arn
    #   The Amazon Resource Name (ARN) of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] monitor_name
    #   The name of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] monitor_status
    #   The status of a monitor. The status can be one of the following
    #
    #   * `PENDING`: The monitor is in the process of being created.
    #
    #   * `ACTIVE`: The monitor is active.
    #
    #   * `INACTIVE`: The monitor is inactive.
    #
    #   * `ERROR`: Monitor creation failed due to an error.
    #
    #   * `DELETING`: The monitor is in the process of being deleted.
    #   @return [String]
    #
    # @!attribute [rw] local_resources
    #   The local resources updated for a monitor, as an array of resources
    #   with identifiers and types.
    #   @return [Array<Types::MonitorLocalResource>]
    #
    # @!attribute [rw] remote_resources
    #   The remote resources updated for a monitor, as an array of resources
    #   with identifiers and types.
    #   @return [Array<Types::MonitorRemoteResource>]
    #
    # @!attribute [rw] created_at
    #   The date and time when the monitor was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The last date and time that the monitor was modified.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags for a monitor.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/UpdateMonitorOutput AWS API Documentation
    #
    class UpdateMonitorOutput < Struct.new(
      :monitor_arn,
      :monitor_name,
      :monitor_status,
      :local_resources,
      :remote_resources,
      :created_at,
      :modified_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get data results for. A scope ID is an internally-generated
    #   identifier that includes all the resources for a specific root
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] resources_to_add
    #   A list of resources to add to a scope.
    #   @return [Array<Types::TargetResource>]
    #
    # @!attribute [rw] resources_to_delete
    #   A list of resources to delete from a scope.
    #   @return [Array<Types::TargetResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/UpdateScopeInput AWS API Documentation
    #
    class UpdateScopeInput < Struct.new(
      :scope_id,
      :resources_to_add,
      :resources_to_delete)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get data results for. A scope ID is an internally-generated
    #   identifier that includes all the resources for a specific root
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status for a scope. The status can be one of the following:
    #   `SUCCEEDED`, `IN_PROGRESS`, `FAILED`, `DEACTIVATING`, or
    #   `DEACTIVATED`.
    #
    #   A status of `DEACTIVATING` means that you've requested a scope to
    #   be deactivated and Network Flow Monitor is in the process of
    #   deactivating the scope. A status of `DEACTIVATED` means that the
    #   deactivating process is complete.
    #   @return [String]
    #
    # @!attribute [rw] scope_arn
    #   The Amazon Resource Name (ARN) of the scope.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for a scope.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/UpdateScopeOutput AWS API Documentation
    #
    class UpdateScopeOutput < Struct.new(
      :scope_id,
      :status,
      :scope_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Invalid request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A data point for a top contributor network flow in a scope. Network
    # Flow Monitor returns information about the network flows with the top
    # values for each metric type, which are called top contributors.
    #
    # @!attribute [rw] timestamps
    #   An array of the timestamps for the data point.
    #   @return [Array<Time>]
    #
    # @!attribute [rw] values
    #   The values for the data point.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] label
    #   The label identifying the data point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/WorkloadInsightsTopContributorsDataPoint AWS API Documentation
    #
    class WorkloadInsightsTopContributorsDataPoint < Struct.new(
      :timestamps,
      :values,
      :label)
      SENSITIVE = []
      include Aws::Structure
    end

    # A row for a top contributor for a scope.
    #
    # @!attribute [rw] account_id
    #   The account ID for a specific row of data.
    #   @return [String]
    #
    # @!attribute [rw] local_subnet_id
    #   The subnet identifier for the local resource.
    #   @return [String]
    #
    # @!attribute [rw] local_az
    #   The identifier for the Availability Zone where the local resource is
    #   located.
    #   @return [String]
    #
    # @!attribute [rw] local_vpc_id
    #   The identifier for the VPC for the local resource.
    #   @return [String]
    #
    # @!attribute [rw] local_region
    #   The Amazon Web Services Region where the local resource is located.
    #   @return [String]
    #
    # @!attribute [rw] remote_identifier
    #   The identifier of a remote resource.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for a metric.
    #   @return [Integer]
    #
    # @!attribute [rw] local_subnet_arn
    #   The Amazon Resource Name (ARN) of a local subnet.
    #   @return [String]
    #
    # @!attribute [rw] local_vpc_arn
    #   The Amazon Resource Name (ARN) of a local VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/WorkloadInsightsTopContributorsRow AWS API Documentation
    #
    class WorkloadInsightsTopContributorsRow < Struct.new(
      :account_id,
      :local_subnet_id,
      :local_az,
      :local_vpc_id,
      :local_region,
      :remote_identifier,
      :value,
      :local_subnet_arn,
      :local_vpc_arn)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

