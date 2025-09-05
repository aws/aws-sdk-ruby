# frozen_string_literal: true

# This is generated code!

module Aws::Redshift
  # @api private
  module Paginators

    # @api private
    class DescribeClusterDbRevisions
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
        data.cluster_db_revisions
      end
    end

    # @api private
    class DescribeClusterParameterGroups
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
        data.parameter_groups
      end
    end

    # @api private
    class DescribeClusterParameters
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
    class DescribeClusterSecurityGroups
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
        data.cluster_security_groups
      end
    end

    # @api private
    class DescribeClusterSnapshots
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
        data.snapshots
      end
    end

    # @api private
    class DescribeClusterSubnetGroups
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
        data.cluster_subnet_groups
      end
    end

    # @api private
    class DescribeClusterTracks
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
        data.maintenance_tracks
      end
    end

    # @api private
    class DescribeClusterVersions
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
        data.cluster_versions
      end
    end

    # @api private
    class DescribeClusters
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
        data.clusters
      end
    end

    # @api private
    class DescribeCustomDomainAssociations
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
        data.associations
      end
    end

    # @api private
    class DescribeDataShares
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
        data.data_shares
      end
    end

    # @api private
    class DescribeDataSharesForConsumer
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
        data.data_shares
      end
    end

    # @api private
    class DescribeDataSharesForProducer
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
        data.data_shares
      end
    end

    # @api private
    class DescribeDefaultClusterParameters
      def next_tokens(data)
        next_token = data.default_cluster_parameters.marker
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
        data.default_cluster_parameters.parameters
      end
    end

    # @api private
    class DescribeEndpointAccess
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
        data.endpoint_access_list
      end
    end

    # @api private
    class DescribeEndpointAuthorization
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
        data.endpoint_authorization_list
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
    class DescribeHsmClientCertificates
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
        data.hsm_client_certificates
      end
    end

    # @api private
    class DescribeHsmConfigurations
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
        data.hsm_configurations
      end
    end

    # @api private
    class DescribeInboundIntegrations
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
        data.inbound_integrations
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
    class DescribeNodeConfigurationOptions
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
        data.node_configuration_option_list
      end
    end

    # @api private
    class DescribeOrderableClusterOptions
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
        data.orderable_cluster_options
      end
    end

    # @api private
    class DescribeRedshiftIdcApplications
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
        data.redshift_idc_applications
      end
    end

    # @api private
    class DescribeReservedNodeExchangeStatus
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
        data.reserved_node_exchange_status_details
      end
    end

    # @api private
    class DescribeReservedNodeOfferings
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
        data.reserved_node_offerings
      end
    end

    # @api private
    class DescribeReservedNodes
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
        data.reserved_nodes
      end
    end

    # @api private
    class DescribeScheduledActions
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
        data.scheduled_actions
      end
    end

    # @api private
    class DescribeSnapshotCopyGrants
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
        data.snapshot_copy_grants
      end
    end

    # @api private
    class DescribeSnapshotSchedules
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
        data.snapshot_schedules
      end
    end

    # @api private
    class DescribeTableRestoreStatus
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
        data.table_restore_status_details
      end
    end

    # @api private
    class DescribeTags
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
        data.tagged_resources
      end
    end

    # @api private
    class DescribeUsageLimits
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
        data.usage_limits
      end
    end

    # @api private
    class GetReservedNodeExchangeConfigurationOptions
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
        data.reserved_node_configuration_option_list
      end
    end

    # @api private
    class GetReservedNodeExchangeOfferings
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
        data.reserved_node_offerings
      end
    end

    # @api private
    class ListRecommendations
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
        data.recommendations
      end
    end

  end
end
