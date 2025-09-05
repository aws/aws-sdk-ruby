# frozen_string_literal: true

# This is generated code!

module Aws::Neptune
  # @api private
  module Paginators

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

  end
end
