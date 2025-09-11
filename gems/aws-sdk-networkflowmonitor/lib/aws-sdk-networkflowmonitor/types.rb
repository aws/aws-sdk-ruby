# frozen_string_literal: true

# This is generated code!

module Aws::NetworkFlowMonitor
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have sufficient permission to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource is in use.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor. </p>
    #   @return [String]
    # @!attribute local_resources
    #   <p>The local resources to monitor. A local resource, in a bi-directional flow of a workload, is the host where the agent is installed. For example, if a workload consists of an interaction between a web service and a backend database (for example, Amazon Relational Database Service (RDS)), the EC2 instance hosting the web service, which also runs the agent, is the local resource.</p>
    #   @return [Array<Types::MonitorLocalResource>]
    # @!attribute remote_resources
    #   <p>The remote resources to monitor. A remote resource is the other endpoint in the bi-directional flow of a workload, with a local resource. For example, Amazon Relational Database Service (RDS) can be a remote resource.</p>
    #   @return [Array<Types::MonitorRemoteResource>]
    # @!attribute scope_arn
    #   <p>The Amazon Resource Name (ARN) of the scope for the monitor.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive string of up to 64 ASCII characters that you specify to make an idempotent API request. Don't reuse the same client token for other API requests.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for a monitor. You can add a maximum of 200 tags.</p>
    #   @return [Hash<String, String>]
    class CreateMonitorInput < Struct.new(
      :monitor_name,
      :local_resources,
      :remote_resources,
      :scope_arn,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_arn
    #   <p>The Amazon Resource Name (ARN) of the monitor.</p>
    #   @return [String]
    # @!attribute monitor_name
    #   <p>The name of the monitor. </p>
    #   @return [String]
    # @!attribute monitor_status
    #   <p>The status of a monitor. The status can be one of the following</p> <ul> <li> <p> <code>PENDING</code>: The monitor is in the process of being created.</p> </li> <li> <p> <code>ACTIVE</code>: The monitor is active.</p> </li> <li> <p> <code>INACTIVE</code>: The monitor is inactive.</p> </li> <li> <p> <code>ERROR</code>: Monitor creation failed due to an error.</p> </li> <li> <p> <code>DELETING</code>: The monitor is in the process of being deleted.</p> </li> </ul>
    #   @return [String]
    # @!attribute local_resources
    #   <p>The local resources to monitor. A local resource, in a bi-directional flow of a workload, is the host where the agent is installed. </p>
    #   @return [Array<Types::MonitorLocalResource>]
    # @!attribute remote_resources
    #   <p>The remote resources to monitor. A remote resource is the other endpoint in the bi-directional flow of a workload, with a local resource. For example, Amazon Relational Database Service (RDS) can be a remote resource. The remote resource is identified by its ARN or an identifier.</p>
    #   @return [Array<Types::MonitorRemoteResource>]
    # @!attribute created_at
    #   <p>The date and time when the monitor was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The last date and time that the monitor was modified.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags for a monitor.</p>
    #   @return [Hash<String, String>]
    class CreateMonitorOutput < Struct.new(
      :monitor_arn,
      :monitor_name,
      :monitor_status,
      :local_resources,
      :remote_resources,
      :created_at,
      :modified_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute targets
    #   <p>The targets to define the scope to be monitored. Currently, a target is an Amazon Web Services account.</p>
    #   @return [Array<Types::TargetResource>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive string of up to 64 ASCII characters that you specify to make an idempotent API request. Don't reuse the same client token for other API requests.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for a scope. You can add a maximum of 200 tags.</p>
    #   @return [Hash<String, String>]
    class CreateScopeInput < Struct.new(
      :targets,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope_id
    #   <p>The identifier for the scope that includes the resources you want to get metrics for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status for a scope. The status can be one of the following: <code>SUCCEEDED</code>, <code>IN_PROGRESS</code>, <code>FAILED</code>, <code>DEACTIVATING</code>, or <code>DEACTIVATED</code>.</p> <p>A status of <code>DEACTIVATING</code> means that you've requested a scope to be deactivated and Network Flow Monitor is in the process of deactivating the scope. A status of <code>DEACTIVATED</code> means that the deactivating process is complete.</p>
    #   @return [String]
    # @!attribute scope_arn
    #   <p>The Amazon Resource Name (ARN) of the scope.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for a scope.</p>
    #   @return [Hash<String, String>]
    class CreateScopeOutput < Struct.new(
      :scope_id,
      :status,
      :scope_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor to delete.</p>
    #   @return [String]
    class DeleteMonitorInput < Struct.new(
      :monitor_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteMonitorOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope_id
    #   <p>The identifier for the scope that includes the resources you want to get data results for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account.</p>
    #   @return [String]
    class DeleteScopeInput < Struct.new(
      :scope_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteScopeOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor.</p>
    #   @return [String]
    class GetMonitorInput < Struct.new(
      :monitor_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_arn
    #   <p>The Amazon Resource Name (ARN) of the monitor.</p>
    #   @return [String]
    # @!attribute monitor_name
    #   <p>The name of the monitor.</p>
    #   @return [String]
    # @!attribute monitor_status
    #   <p>The status of a monitor. The status can be one of the following</p> <ul> <li> <p> <code>PENDING</code>: The monitor is in the process of being created.</p> </li> <li> <p> <code>ACTIVE</code>: The monitor is active.</p> </li> <li> <p> <code>INACTIVE</code>: The monitor is inactive.</p> </li> <li> <p> <code>ERROR</code>: Monitor creation failed due to an error.</p> </li> <li> <p> <code>DELETING</code>: The monitor is in the process of being deleted.</p> </li> </ul>
    #   @return [String]
    # @!attribute local_resources
    #   <p>The local resources for this monitor.</p>
    #   @return [Array<Types::MonitorLocalResource>]
    # @!attribute remote_resources
    #   <p>The remote resources for this monitor.</p>
    #   @return [Array<Types::MonitorRemoteResource>]
    # @!attribute created_at
    #   <p>The date and time when the monitor was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time when the monitor was last modified.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags for a monitor.</p>
    #   @return [Hash<String, String>]
    class GetMonitorOutput < Struct.new(
      :monitor_arn,
      :monitor_name,
      :monitor_status,
      :local_resources,
      :remote_resources,
      :created_at,
      :modified_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor.</p>
    #   @return [String]
    # @!attribute query_id
    #   <p>The identifier for the query. A query ID is an internally-generated identifier for a specific query returned from an API call to create a query.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of query results that you want to return with this call.</p>
    #   @return [Integer]
    class GetQueryResultsMonitorTopContributorsInput < Struct.new(
      :monitor_name,
      :query_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute unit
    #   <p>The units for a metric returned by the query.</p>
    #   @return [String]
    # @!attribute top_contributors
    #   <p>The top contributor network flows overall for a specific metric type, for example, the number of retransmissions.</p>
    #   @return [Array<Types::MonitorTopContributorsRow>]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class GetQueryResultsMonitorTopContributorsOutput < Struct.new(
      :unit,
      :top_contributors,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope_id
    #   <p>The identifier for the scope that includes the resources you want to get data results for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account.</p>
    #   @return [String]
    # @!attribute query_id
    #   <p>The identifier for the query. A query ID is an internally-generated identifier for a specific query returned from an API call to create a query.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of query results that you want to return with this call.</p>
    #   @return [Integer]
    class GetQueryResultsWorkloadInsightsTopContributorsDataInput < Struct.new(
      :scope_id,
      :query_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute unit
    #   <p>The units for a metric returned by the query.</p>
    #   @return [String]
    # @!attribute datapoints
    #   <p>The datapoints returned by the query.</p>
    #   @return [Array<Types::WorkloadInsightsTopContributorsDataPoint>]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class GetQueryResultsWorkloadInsightsTopContributorsDataOutput < Struct.new(
      :unit,
      :datapoints,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope_id
    #   <p>The identifier for the scope that includes the resources you want to get data results for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account.</p>
    #   @return [String]
    # @!attribute query_id
    #   <p>The identifier for the query. A query ID is an internally-generated identifier for a specific query returned from an API call to create a query.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of query results that you want to return with this call.</p>
    #   @return [Integer]
    class GetQueryResultsWorkloadInsightsTopContributorsInput < Struct.new(
      :scope_id,
      :query_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute top_contributors
    #   <p>The top contributor network flows overall for a specific metric type, for example, the number of retransmissions.</p>
    #   @return [Array<Types::WorkloadInsightsTopContributorsRow>]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class GetQueryResultsWorkloadInsightsTopContributorsOutput < Struct.new(
      :top_contributors,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor.</p>
    #   @return [String]
    # @!attribute query_id
    #   <p>The identifier for the query. A query ID is an internally-generated identifier for a specific query returned from an API call to start a query.</p>
    #   @return [String]
    class GetQueryStatusMonitorTopContributorsInput < Struct.new(
      :monitor_name,
      :query_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>When you run a query, use this call to check the status of the query to make sure that the query has <code>SUCCEEDED</code> before you review the results.</p> <ul> <li> <p> <code>QUEUED</code>: The query is scheduled to run.</p> </li> <li> <p> <code>RUNNING</code>: The query is in progress but not complete.</p> </li> <li> <p> <code>SUCCEEDED</code>: The query completed sucessfully.</p> </li> <li> <p> <code>FAILED</code>: The query failed due to an error.</p> </li> <li> <p> <code>CANCELED</code>: The query was canceled.</p> </li> </ul>
    #   @return [String]
    class GetQueryStatusMonitorTopContributorsOutput < Struct.new(
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope_id
    #   <p>The identifier for the scope that includes the resources you want to get data results for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account. A scope ID is returned from a <code>CreateScope</code> API call.</p>
    #   @return [String]
    # @!attribute query_id
    #   <p>The identifier for the query. A query ID is an internally-generated identifier for a specific query returned from an API call to start a query.</p>
    #   @return [String]
    class GetQueryStatusWorkloadInsightsTopContributorsDataInput < Struct.new(
      :scope_id,
      :query_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of a query for top contributors data.</p> <ul> <li> <p> <code>QUEUED</code>: The query is scheduled to run.</p> </li> <li> <p> <code>RUNNING</code>: The query is in progress but not complete.</p> </li> <li> <p> <code>SUCCEEDED</code>: The query completed sucessfully.</p> </li> <li> <p> <code>FAILED</code>: The query failed due to an error.</p> </li> <li> <p> <code>CANCELED</code>: The query was canceled.</p> </li> </ul>
    #   @return [String]
    class GetQueryStatusWorkloadInsightsTopContributorsDataOutput < Struct.new(
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope_id
    #   <p>The identifier for the scope that includes the resources you want to get data results for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account.</p>
    #   @return [String]
    # @!attribute query_id
    #   <p>The identifier for the query. A query ID is an internally-generated identifier for a specific query returned from an API call to start a query.</p>
    #   @return [String]
    class GetQueryStatusWorkloadInsightsTopContributorsInput < Struct.new(
      :scope_id,
      :query_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>When you run a query, use this call to check the status of the query to make sure that the query has <code>SUCCEEDED</code> before you review the results.</p> <ul> <li> <p> <code>QUEUED</code>: The query is scheduled to run.</p> </li> <li> <p> <code>RUNNING</code>: The query is in progress but not complete.</p> </li> <li> <p> <code>SUCCEEDED</code>: The query completed sucessfully.</p> </li> <li> <p> <code>FAILED</code>: The query failed due to an error.</p> </li> <li> <p> <code>CANCELED</code>: The query was canceled.</p> </li> </ul>
    #   @return [String]
    class GetQueryStatusWorkloadInsightsTopContributorsOutput < Struct.new(
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope_id
    #   <p>The identifier for the scope that includes the resources you want to get data results for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account. A scope ID is returned from a <code>CreateScope</code> API call.</p>
    #   @return [String]
    class GetScopeInput < Struct.new(
      :scope_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope_id
    #   <p>The identifier for the scope that includes the resources you want to get data results for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account. A scope ID is returned from a <code>CreateScope</code> API call.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status for a scope. The status can be one of the following: <code>SUCCEEDED</code>, <code>IN_PROGRESS</code>, <code>FAILED</code>, <code>DEACTIVATING</code>, or <code>DEACTIVATED</code>.</p> <p>A status of <code>DEACTIVATING</code> means that you've requested a scope to be deactivated and Network Flow Monitor is in the process of deactivating the scope. A status of <code>DEACTIVATED</code> means that the deactivating process is complete.</p>
    #   @return [String]
    # @!attribute scope_arn
    #   <p>The Amazon Resource Name (ARN) of the scope.</p>
    #   @return [String]
    # @!attribute targets
    #   <p>The targets for a scope</p>
    #   @return [Array<Types::TargetResource>]
    # @!attribute tags
    #   <p>The tags for a scope.</p>
    #   @return [Hash<String, String>]
    class GetScopeOutput < Struct.new(
      :scope_id,
      :status,
      :scope_arn,
      :targets,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal error occurred.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Meta data about Kubernetes resources.</p>
    # @!attribute local_service_name
    #   <p>The service name for a local resource.</p>
    #   @return [String]
    # @!attribute local_pod_name
    #   <p>The name of the pod for a local resource.</p>
    #   @return [String]
    # @!attribute local_pod_namespace
    #   <p>The namespace of the pod for a local resource.</p>
    #   @return [String]
    # @!attribute remote_service_name
    #   <p>The service name for a remote resource.</p>
    #   @return [String]
    # @!attribute remote_pod_name
    #   <p>The name of the pod for a remote resource.</p>
    #   @return [String]
    # @!attribute remote_pod_namespace
    #   <p>The namespace of the pod for a remote resource.</p>
    #   @return [String]
    class KubernetesMetadata < Struct.new(
      :local_service_name,
      :local_pod_name,
      :local_pod_namespace,
      :remote_service_name,
      :remote_pod_name,
      :remote_pod_namespace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of query results that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute monitor_status
    #   <p>The status of a monitor. The status can be one of the following</p> <ul> <li> <p> <code>PENDING</code>: The monitor is in the process of being created.</p> </li> <li> <p> <code>ACTIVE</code>: The monitor is active.</p> </li> <li> <p> <code>INACTIVE</code>: The monitor is inactive.</p> </li> <li> <p> <code>ERROR</code>: Monitor creation failed due to an error.</p> </li> <li> <p> <code>DELETING</code>: The monitor is in the process of being deleted.</p> </li> </ul>
    #   @return [String]
    class ListMonitorsInput < Struct.new(
      :next_token,
      :max_results,
      :monitor_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitors
    #   <p>The monitors that are in an account.</p>
    #   @return [Array<Types::MonitorSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class ListMonitorsOutput < Struct.new(
      :monitors,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of query results that you want to return with this call.</p>
    #   @return [Integer]
    class ListScopesInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scopes
    #   <p>The scopes returned by the call.</p>
    #   @return [Array<Types::ScopeSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class ListScopesOutput < Struct.new(
      :scopes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags for a resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A local resource is the host where the agent is installed. Local resources can be a a subnet, a VPC, or an Availability Zone.</p>
    # @!attribute type
    #   <p>The type of the local resource. Valid values are <code>AWS::EC2::VPC</code> <code>AWS::AvailabilityZone</code> or <code>AWS::EC2::Subnet</code>.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the local resource, such as an ARN.</p>
    #   @return [String]
    class MonitorLocalResource < Struct.new(
      :type,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A remote resource is the other endpoint in a network flow. That is, one endpoint is the local resource and the other is the remote resource. Remote resources can be a a subnet, a VPC, an Availability Zone, or an Amazon Web Services service. </p>
    # @!attribute type
    #   <p>The type of the remote resource. Valid values are <code>AWS::EC2::VPC</code> <code>AWS::AvailabilityZone</code>, <code>AWS::EC2::Subnet</code>, or <code>AWS::AWSService</code>.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the remote resource, such as an ARN.</p>
    #   @return [String]
    class MonitorRemoteResource < Struct.new(
      :type,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of information about a monitor, includ the ARN, the name, and the status.</p>
    # @!attribute monitor_arn
    #   <p>The Amazon Resource Name (ARN) of the monitor.</p>
    #   @return [String]
    # @!attribute monitor_name
    #   <p>The name of the monitor.</p>
    #   @return [String]
    # @!attribute monitor_status
    #   <p>The status of a monitor. The status can be one of the following</p> <ul> <li> <p> <code>PENDING</code>: The monitor is in the process of being created.</p> </li> <li> <p> <code>ACTIVE</code>: The monitor is active.</p> </li> <li> <p> <code>INACTIVE</code>: The monitor is inactive.</p> </li> <li> <p> <code>ERROR</code>: Monitor creation failed due to an error.</p> </li> <li> <p> <code>DELETING</code>: The monitor is in the process of being deleted.</p> </li> </ul>
    #   @return [String]
    class MonitorSummary < Struct.new(
      :monitor_arn,
      :monitor_name,
      :monitor_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of information for a top contributor network flow in a monitor. In a monitor, Network Flow Monitor returns information about the network flows for top contributors for each metric. Top contributors are network flows with the top values for each metric type.</p>
    # @!attribute local_ip
    #   <p>The IP address of the local resource for a top contributor network flow.</p>
    #   @return [String]
    # @!attribute snat_ip
    #   <p>The secure network address translation (SNAT) IP address for a top contributor network flow.</p>
    #   @return [String]
    # @!attribute local_instance_id
    #   <p>The instance identifier for the local resource for a top contributor network flow.</p>
    #   @return [String]
    # @!attribute local_vpc_id
    #   <p>The VPC ID for a top contributor network flow for the local resource.</p>
    #   @return [String]
    # @!attribute local_region
    #   <p>The Amazon Web Services Region for the local resource for a top contributor network flow.</p>
    #   @return [String]
    # @!attribute local_az
    #   <p>The Availability Zone for the local resource for a top contributor network flow.</p>
    #   @return [String]
    # @!attribute local_subnet_id
    #   <p>The subnet ID for the local resource for a top contributor network flow.</p>
    #   @return [String]
    # @!attribute target_port
    #   <p>The target port.</p>
    #   @return [Integer]
    # @!attribute destination_category
    #   <p>The destination category for a top contributors row. Destination categories can be one of the following: </p> <ul> <li> <p> <code>INTRA_AZ</code>: Top contributor network flows within a single Availability Zone</p> </li> <li> <p> <code>INTER_AZ</code>: Top contributor network flows between Availability Zones</p> </li> <li> <p> <code>INTER_VPC</code>: Top contributor network flows between VPCs</p> </li> <li> <p> <code>AWS_SERVICES</code>: Top contributor network flows to or from Amazon Web Services services</p> </li> <li> <p> <code>UNCLASSIFIED</code>: Top contributor network flows that do not have a bucket classification</p> </li> </ul>
    #   @return [String]
    # @!attribute remote_vpc_id
    #   <p>The VPC ID for a top contributor network flow for the remote resource.</p>
    #   @return [String]
    # @!attribute remote_region
    #   <p>The Amazon Web Services Region for the remote resource for a top contributor network flow.</p>
    #   @return [String]
    # @!attribute remote_az
    #   <p>The Availability Zone for the remote resource for a top contributor network flow.</p>
    #   @return [String]
    # @!attribute remote_subnet_id
    #   <p>The subnet ID for the remote resource for a top contributor network flow.</p>
    #   @return [String]
    # @!attribute remote_instance_id
    #   <p>The instance identifier for the remote resource for a top contributor network flow.</p>
    #   @return [String]
    # @!attribute remote_ip
    #   <p>The IP address of the remote resource for a top contributor network flow.</p>
    #   @return [String]
    # @!attribute dnat_ip
    #   <p>The destination network address translation (DNAT) IP address for a top contributor network flow.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the metric for a top contributor network flow.</p>
    #   @return [Integer]
    # @!attribute traversed_constructs
    #   <p>The constructs traversed by a network flow.</p>
    #   @return [Array<Types::TraversedComponent>]
    # @!attribute kubernetes_metadata
    #   <p>Meta data about Kubernetes resources.</p>
    #   @return [Types::KubernetesMetadata]
    # @!attribute local_instance_arn
    #   <p>The Amazon Resource Name (ARN) of a local resource.</p>
    #   @return [String]
    # @!attribute local_subnet_arn
    #   <p>The Amazon Resource Name (ARN) of a local subnet.</p>
    #   @return [String]
    # @!attribute local_vpc_arn
    #   <p>The Amazon Resource Name (ARN) of a local VPC.</p>
    #   @return [String]
    # @!attribute remote_instance_arn
    #   <p>The Amazon Resource Name (ARN) of a remote resource.</p>
    #   @return [String]
    # @!attribute remote_subnet_arn
    #   <p>The Amazon Resource Name (ARN) of a remote subnet.</p>
    #   @return [String]
    # @!attribute remote_vpc_arn
    #   <p>The Amazon Resource Name (ARN) of a remote VPC.</p>
    #   @return [String]
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
      :remote_vpc_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request specifies a resource that doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of information about a scope, including the ARN, target ID, and Amazon Web Services Region.</p>
    # @!attribute scope_id
    #   <p>The identifier for the scope that includes the resources you want to get data results for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status for a scope. The status can be one of the following: <code>SUCCEEDED</code>, <code>IN_PROGRESS</code>, <code>FAILED</code>, <code>DEACTIVATING</code>, or <code>DEACTIVATED</code>.</p> <p>A status of <code>DEACTIVATING</code> means that you've requested a scope to be deactivated and Network Flow Monitor is in the process of deactivating the scope. A status of <code>DEACTIVATED</code> means that the deactivating process is complete.</p>
    #   @return [String]
    # @!attribute scope_arn
    #   <p>The Amazon Resource Name (ARN) of the scope.</p>
    #   @return [String]
    class ScopeSummary < Struct.new(
      :scope_id,
      :status,
      :scope_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeded a service quota.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The timestamp that is the date and time beginning of the period that you want to retrieve results for with your query.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The timestamp that is the date and time end of the period that you want to retrieve results for with your query.</p>
    #   @return [Time]
    # @!attribute metric_name
    #   <p>The metric that you want to query top contributors for. That is, you can specify a metric with this call and return the top contributor network flows, for that type of metric, for a monitor and (optionally) within a specific category, such as network flows between Availability Zones.</p>
    #   @return [String]
    # @!attribute destination_category
    #   <p>The category that you want to query top contributors for, for a specific monitor. Destination categories can be one of the following: </p> <ul> <li> <p> <code>INTRA_AZ</code>: Top contributor network flows within a single Availability Zone</p> </li> <li> <p> <code>INTER_AZ</code>: Top contributor network flows between Availability Zones</p> </li> <li> <p> <code>INTER_VPC</code>: Top contributor network flows between VPCs</p> </li> <li> <p> <code>AMAZON_S3</code>: Top contributor network flows to or from Amazon S3</p> </li> <li> <p> <code>AMAZON_DYNAMODB</code>: Top contributor network flows to or from Amazon Dynamo DB</p> </li> <li> <p> <code>UNCLASSIFIED</code>: Top contributor network flows that do not have a bucket classification</p> </li> </ul>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of top contributors to return.</p>
    #   @return [Integer]
    class StartQueryMonitorTopContributorsInput < Struct.new(
      :monitor_name,
      :start_time,
      :end_time,
      :metric_name,
      :destination_category,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_id
    #   <p>The identifier for the query. A query ID is an internally-generated identifier for a specific query returned from an API call to start a query.</p>
    #   @return [String]
    class StartQueryMonitorTopContributorsOutput < Struct.new(
      :query_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope_id
    #   <p>The identifier for the scope that includes the resources you want to get data results for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The timestamp that is the date and time beginning of the period that you want to retrieve results for with your query.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The timestamp that is the date and time end of the period that you want to retrieve results for with your query.</p>
    #   @return [Time]
    # @!attribute metric_name
    #   <p>The metric that you want to query top contributors for. That is, you can specify this metric to return the top contributor network flows, for this type of metric, for a monitor and (optionally) within a specific category, such as network flows between Availability Zones.</p>
    #   @return [String]
    # @!attribute destination_category
    #   <p>The destination category for a top contributors. Destination categories can be one of the following: </p> <ul> <li> <p> <code>INTRA_AZ</code>: Top contributor network flows within a single Availability Zone</p> </li> <li> <p> <code>INTER_AZ</code>: Top contributor network flows between Availability Zones</p> </li> <li> <p> <code>INTER_VPC</code>: Top contributor network flows between VPCs</p> </li> <li> <p> <code>AWS_SERVICES</code>: Top contributor network flows to or from Amazon Web Services services</p> </li> <li> <p> <code>UNCLASSIFIED</code>: Top contributor network flows that do not have a bucket classification</p> </li> </ul>
    #   @return [String]
    class StartQueryWorkloadInsightsTopContributorsDataInput < Struct.new(
      :scope_id,
      :start_time,
      :end_time,
      :metric_name,
      :destination_category,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_id
    #   <p>The identifier for the query. A query ID is an internally-generated identifier for a specific query returned from an API call to start a query.</p>
    #   @return [String]
    class StartQueryWorkloadInsightsTopContributorsDataOutput < Struct.new(
      :query_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope_id
    #   <p>The identifier for the scope that includes the resources you want to get data results for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account. A scope ID is returned from a <code>CreateScope</code> API call.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The timestamp that is the date and time beginning of the period that you want to retrieve results for with your query.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The timestamp that is the date and time end of the period that you want to retrieve results for with your query.</p>
    #   @return [Time]
    # @!attribute metric_name
    #   <p>The metric that you want to query top contributors for. That is, you can specify this metric to return the top contributor network flows, for this type of metric, for a monitor and (optionally) within a specific category, such as network flows between Availability Zones.</p>
    #   @return [String]
    # @!attribute destination_category
    #   <p>The destination category for a top contributors row. Destination categories can be one of the following: </p> <ul> <li> <p> <code>INTRA_AZ</code>: Top contributor network flows within a single Availability Zone</p> </li> <li> <p> <code>INTER_AZ</code>: Top contributor network flows between Availability Zones</p> </li> <li> <p> <code>INTER_VPC</code>: Top contributor network flows between VPCs</p> </li> <li> <p> <code>AWS_SERVICES</code>: Top contributor network flows to or from Amazon Web Services services</p> </li> <li> <p> <code>UNCLASSIFIED</code>: Top contributor network flows that do not have a bucket classification</p> </li> </ul>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of top contributors to return.</p>
    #   @return [Integer]
    class StartQueryWorkloadInsightsTopContributorsInput < Struct.new(
      :scope_id,
      :start_time,
      :end_time,
      :metric_name,
      :destination_category,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_id
    #   <p>The identifier for the query. A query ID is an internally-generated identifier for a specific query returned from an API call to start a query.</p>
    #   @return [String]
    class StartQueryWorkloadInsightsTopContributorsOutput < Struct.new(
      :query_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor.</p>
    #   @return [String]
    # @!attribute query_id
    #   <p>The identifier for the query. A query ID is an internally-generated identifier for a specific query returned from an API call to create a query.</p>
    #   @return [String]
    class StopQueryMonitorTopContributorsInput < Struct.new(
      :monitor_name,
      :query_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopQueryMonitorTopContributorsOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope_id
    #   <p>The identifier for the scope that includes the resources you want to get data results for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account.</p>
    #   @return [String]
    # @!attribute query_id
    #   <p>The identifier for the query. A query ID is an internally-generated identifier for a specific query returned from an API call to create a query.</p>
    #   @return [String]
    class StopQueryWorkloadInsightsTopContributorsDataInput < Struct.new(
      :scope_id,
      :query_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopQueryWorkloadInsightsTopContributorsDataOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope_id
    #   <p>The identifier for the scope that includes the resources you want to get data results for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account.</p>
    #   @return [String]
    # @!attribute query_id
    #   <p>The identifier for the query. A query ID is an internally-generated identifier for a specific query returned from an API call to create a query.</p>
    #   @return [String]
    class StopQueryWorkloadInsightsTopContributorsInput < Struct.new(
      :scope_id,
      :query_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopQueryWorkloadInsightsTopContributorsOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for a resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A target ID is an internally-generated identifier for a target. A target allows you to identify all the resources in a Network Flow Monitor scope. Currently, a target is always an Amazon Web Services account.</p>
    # @!attribute account_id
    #   <p>The identifier for the account for a target.</p>
    #   @return [String]
    class TargetId < Struct.new(
      :account_id,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AccountId < TargetId; end
      class Unknown < TargetId; end
    end

    # <p>A target identifier is a pair of identifying information for a resource that is included in a target. A target identifier includes the target ID and the target type.</p>
    # @!attribute target_id
    #   <p>The identifier for a target.</p>
    #   @return [Types::TargetId]
    # @!attribute target_type
    #   <p>The type of a target. A target type is currently always <code>ACCOUNT</code> because a target is currently a single Amazon Web Services account.</p>
    #   @return [String]
    class TargetIdentifier < Struct.new(
      :target_id,
      :target_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A target resource in a scope. The resource is identified by a Region and a target identifier, which includes a target ID and a target type.</p>
    # @!attribute target_identifier
    #   <p>A target identifier is a pair of identifying information for a resource that is included in a target. A target identifier includes the target ID and the target type.</p>
    #   @return [Types::TargetIdentifier]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the target resource is located.</p>
    #   @return [String]
    class TargetResource < Struct.new(
      :target_identifier,
      :region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A section of the network that a network flow has traveled through.</p>
    # @!attribute component_id
    #   <p>The identifier for the traversed component.</p>
    #   @return [String]
    # @!attribute component_type
    #   <p>The type of component that was traversed.</p>
    #   @return [String]
    # @!attribute component_arn
    #   <p>The Amazon Resource Name (ARN) of a tranversed component.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The service name for the traversed component.</p>
    #   @return [String]
    class TraversedComponent < Struct.new(
      :component_id,
      :component_type,
      :component_arn,
      :service_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Keys that you specified when you tagged a resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor.</p>
    #   @return [String]
    # @!attribute local_resources_to_add
    #   <p>The local resources to add, as an array of resources with identifiers and types.</p>
    #   @return [Array<Types::MonitorLocalResource>]
    # @!attribute local_resources_to_remove
    #   <p>The local resources to remove, as an array of resources with identifiers and types.</p>
    #   @return [Array<Types::MonitorLocalResource>]
    # @!attribute remote_resources_to_add
    #   <p>The remove resources to add, as an array of resources with identifiers and types.</p>
    #   @return [Array<Types::MonitorRemoteResource>]
    # @!attribute remote_resources_to_remove
    #   <p>The remove resources to remove, as an array of resources with identifiers and types.</p>
    #   @return [Array<Types::MonitorRemoteResource>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive string of up to 64 ASCII characters that you specify to make an idempotent API request. Don't reuse the same client token for other API requests.</p>
    #   @return [String]
    class UpdateMonitorInput < Struct.new(
      :monitor_name,
      :local_resources_to_add,
      :local_resources_to_remove,
      :remote_resources_to_add,
      :remote_resources_to_remove,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_arn
    #   <p>The Amazon Resource Name (ARN) of the monitor.</p>
    #   @return [String]
    # @!attribute monitor_name
    #   <p>The name of the monitor.</p>
    #   @return [String]
    # @!attribute monitor_status
    #   <p>The status of a monitor. The status can be one of the following</p> <ul> <li> <p> <code>PENDING</code>: The monitor is in the process of being created.</p> </li> <li> <p> <code>ACTIVE</code>: The monitor is active.</p> </li> <li> <p> <code>INACTIVE</code>: The monitor is inactive.</p> </li> <li> <p> <code>ERROR</code>: Monitor creation failed due to an error.</p> </li> <li> <p> <code>DELETING</code>: The monitor is in the process of being deleted.</p> </li> </ul>
    #   @return [String]
    # @!attribute local_resources
    #   <p>The local resources updated for a monitor, as an array of resources with identifiers and types.</p>
    #   @return [Array<Types::MonitorLocalResource>]
    # @!attribute remote_resources
    #   <p>The remote resources updated for a monitor, as an array of resources with identifiers and types.</p>
    #   @return [Array<Types::MonitorRemoteResource>]
    # @!attribute created_at
    #   <p>The date and time when the monitor was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The last date and time that the monitor was modified.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags for a monitor.</p>
    #   @return [Hash<String, String>]
    class UpdateMonitorOutput < Struct.new(
      :monitor_arn,
      :monitor_name,
      :monitor_status,
      :local_resources,
      :remote_resources,
      :created_at,
      :modified_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope_id
    #   <p>The identifier for the scope that includes the resources you want to get data results for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account.</p>
    #   @return [String]
    # @!attribute resources_to_add
    #   <p>A list of resources to add to a scope.</p>
    #   @return [Array<Types::TargetResource>]
    # @!attribute resources_to_delete
    #   <p>A list of resources to delete from a scope.</p>
    #   @return [Array<Types::TargetResource>]
    class UpdateScopeInput < Struct.new(
      :scope_id,
      :resources_to_add,
      :resources_to_delete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope_id
    #   <p>The identifier for the scope that includes the resources you want to get data results for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status for a scope. The status can be one of the following: <code>SUCCEEDED</code>, <code>IN_PROGRESS</code>, <code>FAILED</code>, <code>DEACTIVATING</code>, or <code>DEACTIVATED</code>.</p> <p>A status of <code>DEACTIVATING</code> means that you've requested a scope to be deactivated and Network Flow Monitor is in the process of deactivating the scope. A status of <code>DEACTIVATED</code> means that the deactivating process is complete.</p>
    #   @return [String]
    # @!attribute scope_arn
    #   <p>The Amazon Resource Name (ARN) of the scope.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for a scope.</p>
    #   @return [Hash<String, String>]
    class UpdateScopeOutput < Struct.new(
      :scope_id,
      :status,
      :scope_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Invalid request.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A data point for a top contributor network flow in a scope. Network Flow Monitor returns information about the network flows with the top values for each metric type, which are called top contributors.</p>
    # @!attribute timestamps
    #   <p>An array of the timestamps for the data point.</p>
    #   @return [Array<Time>]
    # @!attribute values
    #   <p>The values for the data point.</p>
    #   @return [Array<Float>]
    # @!attribute label
    #   <p>The label identifying the data point.</p>
    #   @return [String]
    class WorkloadInsightsTopContributorsDataPoint < Struct.new(
      :timestamps,
      :values,
      :label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A row for a top contributor for a scope.</p>
    # @!attribute account_id
    #   <p>The account ID for a specific row of data.</p>
    #   @return [String]
    # @!attribute local_subnet_id
    #   <p>The subnet identifier for the local resource.</p>
    #   @return [String]
    # @!attribute local_az
    #   <p>The identifier for the Availability Zone where the local resource is located.</p>
    #   @return [String]
    # @!attribute local_vpc_id
    #   <p>The identifier for the VPC for the local resource.</p>
    #   @return [String]
    # @!attribute local_region
    #   <p>The Amazon Web Services Region where the local resource is located.</p>
    #   @return [String]
    # @!attribute remote_identifier
    #   <p>The identifier of a remote resource.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value for a metric.</p>
    #   @return [Integer]
    # @!attribute local_subnet_arn
    #   <p>The Amazon Resource Name (ARN) of a local subnet.</p>
    #   @return [String]
    # @!attribute local_vpc_arn
    #   <p>The Amazon Resource Name (ARN) of a local VPC.</p>
    #   @return [String]
    class WorkloadInsightsTopContributorsRow < Struct.new(
      :account_id,
      :local_subnet_id,
      :local_az,
      :local_vpc_id,
      :local_region,
      :remote_identifier,
      :value,
      :local_subnet_arn,
      :local_vpc_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
