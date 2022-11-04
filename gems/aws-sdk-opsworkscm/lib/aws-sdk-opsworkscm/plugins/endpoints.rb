# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::OpsWorksCM
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::OpsWorksCM::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::OpsWorksCM::EndpointParameters`'
      ) do |cfg|
        Aws::OpsWorksCM::EndpointProvider.new
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
          when :associate_node
            Aws::OpsWorksCM::Endpoints::AssociateNode.build(context)
          when :create_backup
            Aws::OpsWorksCM::Endpoints::CreateBackup.build(context)
          when :create_server
            Aws::OpsWorksCM::Endpoints::CreateServer.build(context)
          when :delete_backup
            Aws::OpsWorksCM::Endpoints::DeleteBackup.build(context)
          when :delete_server
            Aws::OpsWorksCM::Endpoints::DeleteServer.build(context)
          when :describe_account_attributes
            Aws::OpsWorksCM::Endpoints::DescribeAccountAttributes.build(context)
          when :describe_backups
            Aws::OpsWorksCM::Endpoints::DescribeBackups.build(context)
          when :describe_events
            Aws::OpsWorksCM::Endpoints::DescribeEvents.build(context)
          when :describe_node_association_status
            Aws::OpsWorksCM::Endpoints::DescribeNodeAssociationStatus.build(context)
          when :describe_servers
            Aws::OpsWorksCM::Endpoints::DescribeServers.build(context)
          when :disassociate_node
            Aws::OpsWorksCM::Endpoints::DisassociateNode.build(context)
          when :export_server_engine_attribute
            Aws::OpsWorksCM::Endpoints::ExportServerEngineAttribute.build(context)
          when :list_tags_for_resource
            Aws::OpsWorksCM::Endpoints::ListTagsForResource.build(context)
          when :restore_server
            Aws::OpsWorksCM::Endpoints::RestoreServer.build(context)
          when :start_maintenance
            Aws::OpsWorksCM::Endpoints::StartMaintenance.build(context)
          when :tag_resource
            Aws::OpsWorksCM::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::OpsWorksCM::Endpoints::UntagResource.build(context)
          when :update_server
            Aws::OpsWorksCM::Endpoints::UpdateServer.build(context)
          when :update_server_engine_attributes
            Aws::OpsWorksCM::Endpoints::UpdateServerEngineAttributes.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
