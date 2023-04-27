# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Kafka
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Kafka::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Kafka::EndpointParameters`'
      ) do |cfg|
        Aws::Kafka::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          # If endpoint was discovered, do not resolve or apply the endpoint.
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)
          end

          context[:endpoint_params] = params
          context[:auth_scheme] =
            Aws::Endpoints.resolve_auth_scheme(context, endpoint)

          @handler.call(context)
        end

        private

        def apply_endpoint_headers(context, headers)
          headers.each do |key, values|
            value = values
              .compact
              .map { |s| Seahorse::Util.escape_header_list_string(s.to_s) }
              .join(',')

            context.http_request.headers[key] = value
          end
        end

        def parameters_for_operation(context)
          case context.operation_name
          when :batch_associate_scram_secret
            Aws::Kafka::Endpoints::BatchAssociateScramSecret.build(context)
          when :create_cluster
            Aws::Kafka::Endpoints::CreateCluster.build(context)
          when :create_cluster_v2
            Aws::Kafka::Endpoints::CreateClusterV2.build(context)
          when :create_configuration
            Aws::Kafka::Endpoints::CreateConfiguration.build(context)
          when :create_vpc_connection
            Aws::Kafka::Endpoints::CreateVpcConnection.build(context)
          when :delete_cluster
            Aws::Kafka::Endpoints::DeleteCluster.build(context)
          when :delete_configuration
            Aws::Kafka::Endpoints::DeleteConfiguration.build(context)
          when :delete_vpc_connection
            Aws::Kafka::Endpoints::DeleteVpcConnection.build(context)
          when :describe_cluster
            Aws::Kafka::Endpoints::DescribeCluster.build(context)
          when :describe_cluster_v2
            Aws::Kafka::Endpoints::DescribeClusterV2.build(context)
          when :describe_cluster_operation
            Aws::Kafka::Endpoints::DescribeClusterOperation.build(context)
          when :describe_configuration
            Aws::Kafka::Endpoints::DescribeConfiguration.build(context)
          when :describe_configuration_revision
            Aws::Kafka::Endpoints::DescribeConfigurationRevision.build(context)
          when :describe_vpc_connection
            Aws::Kafka::Endpoints::DescribeVpcConnection.build(context)
          when :batch_disassociate_scram_secret
            Aws::Kafka::Endpoints::BatchDisassociateScramSecret.build(context)
          when :get_bootstrap_brokers
            Aws::Kafka::Endpoints::GetBootstrapBrokers.build(context)
          when :get_compatible_kafka_versions
            Aws::Kafka::Endpoints::GetCompatibleKafkaVersions.build(context)
          when :list_cluster_operations
            Aws::Kafka::Endpoints::ListClusterOperations.build(context)
          when :list_clusters
            Aws::Kafka::Endpoints::ListClusters.build(context)
          when :list_clusters_v2
            Aws::Kafka::Endpoints::ListClustersV2.build(context)
          when :list_configuration_revisions
            Aws::Kafka::Endpoints::ListConfigurationRevisions.build(context)
          when :list_configurations
            Aws::Kafka::Endpoints::ListConfigurations.build(context)
          when :list_kafka_versions
            Aws::Kafka::Endpoints::ListKafkaVersions.build(context)
          when :list_nodes
            Aws::Kafka::Endpoints::ListNodes.build(context)
          when :list_scram_secrets
            Aws::Kafka::Endpoints::ListScramSecrets.build(context)
          when :list_tags_for_resource
            Aws::Kafka::Endpoints::ListTagsForResource.build(context)
          when :list_client_vpc_connections
            Aws::Kafka::Endpoints::ListClientVpcConnections.build(context)
          when :list_vpc_connections
            Aws::Kafka::Endpoints::ListVpcConnections.build(context)
          when :reject_client_vpc_connection
            Aws::Kafka::Endpoints::RejectClientVpcConnection.build(context)
          when :delete_cluster_policy
            Aws::Kafka::Endpoints::DeleteClusterPolicy.build(context)
          when :get_cluster_policy
            Aws::Kafka::Endpoints::GetClusterPolicy.build(context)
          when :put_cluster_policy
            Aws::Kafka::Endpoints::PutClusterPolicy.build(context)
          when :reboot_broker
            Aws::Kafka::Endpoints::RebootBroker.build(context)
          when :tag_resource
            Aws::Kafka::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Kafka::Endpoints::UntagResource.build(context)
          when :update_broker_count
            Aws::Kafka::Endpoints::UpdateBrokerCount.build(context)
          when :update_broker_type
            Aws::Kafka::Endpoints::UpdateBrokerType.build(context)
          when :update_broker_storage
            Aws::Kafka::Endpoints::UpdateBrokerStorage.build(context)
          when :update_configuration
            Aws::Kafka::Endpoints::UpdateConfiguration.build(context)
          when :update_cluster_configuration
            Aws::Kafka::Endpoints::UpdateClusterConfiguration.build(context)
          when :update_cluster_kafka_version
            Aws::Kafka::Endpoints::UpdateClusterKafkaVersion.build(context)
          when :update_connectivity
            Aws::Kafka::Endpoints::UpdateConnectivity.build(context)
          when :update_monitoring
            Aws::Kafka::Endpoints::UpdateMonitoring.build(context)
          when :update_security
            Aws::Kafka::Endpoints::UpdateSecurity.build(context)
          when :update_storage
            Aws::Kafka::Endpoints::UpdateStorage.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
