# frozen_string_literal: true

# This is generated code!

module Aws::DatabaseMigrationService
  # @api private
  module Paginators

    # @api private
    class DescribeApplicableIndividualAssessments
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class DescribeConnections
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

    # @api private
    class DescribeDataMigrations
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
        data.data_migrations
      end
    end

    # @api private
    class DescribeDataProviders
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

    # @api private
    class DescribeEndpointSettings
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

    # @api private
    class DescribeEndpointTypes
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

    # @api private
    class DescribeEndpoints
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

    # @api private
    class DescribeEngineVersions
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class DescribeExtensionPackAssociations
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

    # @api private
    class DescribeFleetAdvisorCollectors
      def next_tokens(data)
        next_token = data.next_token
        return {} if next_token.nil? || next_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_token]
        return {} if prev_token.nil? || prev_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = prev_token
        tokens
      end

      def items(data)
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class DescribeFleetAdvisorDatabases
      def next_tokens(data)
        next_token = data.next_token
        return {} if next_token.nil? || next_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_token]
        return {} if prev_token.nil? || prev_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = prev_token
        tokens
      end

      def items(data)
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class DescribeFleetAdvisorLsaAnalysis
      def next_tokens(data)
        next_token = data.next_token
        return {} if next_token.nil? || next_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_token]
        return {} if prev_token.nil? || prev_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = prev_token
        tokens
      end

      def items(data)
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class DescribeFleetAdvisorSchemaObjectSummary
      def next_tokens(data)
        next_token = data.next_token
        return {} if next_token.nil? || next_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_token]
        return {} if prev_token.nil? || prev_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = prev_token
        tokens
      end

      def items(data)
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class DescribeFleetAdvisorSchemas
      def next_tokens(data)
        next_token = data.next_token
        return {} if next_token.nil? || next_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_token]
        return {} if prev_token.nil? || prev_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = prev_token
        tokens
      end

      def items(data)
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class DescribeInstanceProfiles
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

    # @api private
    class DescribeMetadataModelAssessments
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

    # @api private
    class DescribeMetadataModelConversions
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

    # @api private
    class DescribeMetadataModelExportsAsScript
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

    # @api private
    class DescribeMetadataModelExportsToTarget
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

    # @api private
    class DescribeMetadataModelImports
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

    # @api private
    class DescribeMigrationProjects
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

    # @api private
    class DescribeOrderableReplicationInstances
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class DescribeRecommendationLimitations
      def next_tokens(data)
        next_token = data.next_token
        return {} if next_token.nil? || next_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_token]
        return {} if prev_token.nil? || prev_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = prev_token
        tokens
      end

      def items(data)
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class DescribeRecommendations
      def next_tokens(data)
        next_token = data.next_token
        return {} if next_token.nil? || next_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_token]
        return {} if prev_token.nil? || prev_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = prev_token
        tokens
      end

      def items(data)
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class DescribeReplicationConfigs
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

    # @api private
    class DescribeReplicationInstanceTaskLogs
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

    # @api private
    class DescribeReplicationInstances
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

    # @api private
    class DescribeReplicationSubnetGroups
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

    # @api private
    class DescribeReplicationTableStatistics
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

    # @api private
    class DescribeReplicationTaskAssessmentResults
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

    # @api private
    class DescribeReplicationTaskAssessmentRuns
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

    # @api private
    class DescribeReplicationTaskIndividualAssessments
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

    # @api private
    class DescribeReplicationTasks
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

    # @api private
    class DescribeReplications
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

    # @api private
    class DescribeSchemas
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

    # @api private
    class DescribeTableStatistics
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
