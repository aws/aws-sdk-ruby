# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ResourceExplorer2
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ResourceExplorer2::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ResourceExplorer2::EndpointParameters`'
      ) do |cfg|
        Aws::ResourceExplorer2::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)

            context[:endpoint_params] = params
            context[:endpoint_properties] = endpoint.properties
          end

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
          when :associate_default_view
            Aws::ResourceExplorer2::Endpoints::AssociateDefaultView.build(context)
          when :batch_get_view
            Aws::ResourceExplorer2::Endpoints::BatchGetView.build(context)
          when :create_index
            Aws::ResourceExplorer2::Endpoints::CreateIndex.build(context)
          when :create_view
            Aws::ResourceExplorer2::Endpoints::CreateView.build(context)
          when :delete_index
            Aws::ResourceExplorer2::Endpoints::DeleteIndex.build(context)
          when :delete_view
            Aws::ResourceExplorer2::Endpoints::DeleteView.build(context)
          when :disassociate_default_view
            Aws::ResourceExplorer2::Endpoints::DisassociateDefaultView.build(context)
          when :get_account_level_service_configuration
            Aws::ResourceExplorer2::Endpoints::GetAccountLevelServiceConfiguration.build(context)
          when :get_default_view
            Aws::ResourceExplorer2::Endpoints::GetDefaultView.build(context)
          when :get_index
            Aws::ResourceExplorer2::Endpoints::GetIndex.build(context)
          when :get_view
            Aws::ResourceExplorer2::Endpoints::GetView.build(context)
          when :list_indexes
            Aws::ResourceExplorer2::Endpoints::ListIndexes.build(context)
          when :list_indexes_for_members
            Aws::ResourceExplorer2::Endpoints::ListIndexesForMembers.build(context)
          when :list_supported_resource_types
            Aws::ResourceExplorer2::Endpoints::ListSupportedResourceTypes.build(context)
          when :list_tags_for_resource
            Aws::ResourceExplorer2::Endpoints::ListTagsForResource.build(context)
          when :list_views
            Aws::ResourceExplorer2::Endpoints::ListViews.build(context)
          when :search
            Aws::ResourceExplorer2::Endpoints::Search.build(context)
          when :tag_resource
            Aws::ResourceExplorer2::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::ResourceExplorer2::Endpoints::UntagResource.build(context)
          when :update_index_type
            Aws::ResourceExplorer2::Endpoints::UpdateIndexType.build(context)
          when :update_view
            Aws::ResourceExplorer2::Endpoints::UpdateView.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
