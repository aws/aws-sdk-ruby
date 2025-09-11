# frozen_string_literal: true

# This is generated code!

module Aws::RDS
  # @api private
  module Paginators

    # @api private
    class DescribeBlueGreenDeployments
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.blue_green_deployments
      end
    end

    # @api private
    class DescribeCertificates
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.certificates
      end
    end

    # @api private
    class DescribeDBClusterAutomatedBackups
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.db_cluster_automated_backups
      end
    end

    # @api private
    class DescribeDBClusterBacktracks
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.db_cluster_backtracks
      end
    end

    # @api private
    class DescribeDBClusterEndpoints
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.db_cluster_endpoints
      end
    end

    # @api private
    class DescribeDBClusterParameterGroups
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.db_cluster_parameter_groups
      end
    end

    # @api private
    class DescribeDBClusterParameters
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.parameters
      end
    end

    # @api private
    class DescribeDBClusterSnapshots
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.db_cluster_snapshots
      end
    end

    # @api private
    class DescribeDBClusters
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.db_clusters
      end
    end

    # @api private
    class DescribeDBEngineVersions
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.db_engine_versions
      end
    end

    # @api private
    class DescribeDBInstanceAutomatedBackups
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.db_instance_automated_backups
      end
    end

    # @api private
    class DescribeDBInstances
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.db_instances
      end
    end

    # @api private
    class DescribeDBLogFiles
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.describe_db_log_files
      end
    end

    # @api private
    class DescribeDBMajorEngineVersions
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.db_major_engine_versions
      end
    end

    # @api private
    class DescribeDBParameterGroups
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.db_parameter_groups
      end
    end

    # @api private
    class DescribeDBParameters
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.parameters
      end
    end

    # @api private
    class DescribeDBProxies
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.db_proxies
      end
    end

    # @api private
    class DescribeDBProxyEndpoints
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.db_proxy_endpoints
      end
    end

    # @api private
    class DescribeDBProxyTargetGroups
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.target_groups
      end
    end

    # @api private
    class DescribeDBProxyTargets
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.targets
      end
    end

    # @api private
    class DescribeDBRecommendations
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.db_recommendations
      end
    end

    # @api private
    class DescribeDBSecurityGroups
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.db_security_groups
      end
    end

    # @api private
    class DescribeDBSnapshotTenantDatabases
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.db_snapshot_tenant_databases
      end
    end

    # @api private
    class DescribeDBSnapshots
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.db_snapshots
      end
    end

    # @api private
    class DescribeDBSubnetGroups
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.db_subnet_groups
      end
    end

    # @api private
    class DescribeEngineDefaultParameters
      def next_tokens(data)
        next_token = data.engine_defaults.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.engine_defaults.parameters
      end
    end

    # @api private
    class DescribeEventSubscriptions
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.event_subscriptions_list
      end
    end

    # @api private
    class DescribeEvents
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.events
      end
    end

    # @api private
    class DescribeExportTasks
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.export_tasks
      end
    end

    # @api private
    class DescribeGlobalClusters
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.global_clusters
      end
    end

    # @api private
    class DescribeIntegrations
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.integrations
      end
    end

    # @api private
    class DescribeOptionGroupOptions
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.option_group_options
      end
    end

    # @api private
    class DescribeOptionGroups
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.option_groups_list
      end
    end

    # @api private
    class DescribeOrderableDBInstanceOptions
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.orderable_db_instance_options
      end
    end

    # @api private
    class DescribePendingMaintenanceActions
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.pending_maintenance_actions
      end
    end

    # @api private
    class DescribeReservedDBInstances
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.reserved_db_instances
      end
    end

    # @api private
    class DescribeReservedDBInstancesOfferings
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.reserved_db_instances_offerings
      end
    end

    # @api private
    class DescribeSourceRegions
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.source_regions
      end
    end

    # @api private
    class DescribeTenantDatabases
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.tenant_databases
      end
    end

    # @api private
    class DownloadDBLogFilePortion
      def next_tokens(data)
        next_token = data.marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

  end
end
