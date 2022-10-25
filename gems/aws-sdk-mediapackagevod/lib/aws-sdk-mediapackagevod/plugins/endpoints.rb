# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MediaPackageVod
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::MediaPackageVod::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::MediaPackageVod::EndpointParameters`'
      ) do |cfg|
        Aws::MediaPackageVod::EndpointProvider.new
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
          when :configure_logs
            Aws::MediaPackageVod::Endpoints::ConfigureLogs.build(context)
          when :create_asset
            Aws::MediaPackageVod::Endpoints::CreateAsset.build(context)
          when :create_packaging_configuration
            Aws::MediaPackageVod::Endpoints::CreatePackagingConfiguration.build(context)
          when :create_packaging_group
            Aws::MediaPackageVod::Endpoints::CreatePackagingGroup.build(context)
          when :delete_asset
            Aws::MediaPackageVod::Endpoints::DeleteAsset.build(context)
          when :delete_packaging_configuration
            Aws::MediaPackageVod::Endpoints::DeletePackagingConfiguration.build(context)
          when :delete_packaging_group
            Aws::MediaPackageVod::Endpoints::DeletePackagingGroup.build(context)
          when :describe_asset
            Aws::MediaPackageVod::Endpoints::DescribeAsset.build(context)
          when :describe_packaging_configuration
            Aws::MediaPackageVod::Endpoints::DescribePackagingConfiguration.build(context)
          when :describe_packaging_group
            Aws::MediaPackageVod::Endpoints::DescribePackagingGroup.build(context)
          when :list_assets
            Aws::MediaPackageVod::Endpoints::ListAssets.build(context)
          when :list_packaging_configurations
            Aws::MediaPackageVod::Endpoints::ListPackagingConfigurations.build(context)
          when :list_packaging_groups
            Aws::MediaPackageVod::Endpoints::ListPackagingGroups.build(context)
          when :list_tags_for_resource
            Aws::MediaPackageVod::Endpoints::ListTagsForResource.build(context)
          when :tag_resource
            Aws::MediaPackageVod::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::MediaPackageVod::Endpoints::UntagResource.build(context)
          when :update_packaging_group
            Aws::MediaPackageVod::Endpoints::UpdatePackagingGroup.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
