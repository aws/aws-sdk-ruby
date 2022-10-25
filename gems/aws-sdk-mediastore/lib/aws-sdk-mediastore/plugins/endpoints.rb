# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MediaStore
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::MediaStore::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::MediaStore::EndpointParameters`'
      ) do |cfg|
        Aws::MediaStore::EndpointProvider.new
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
          when :create_container
            Aws::MediaStore::Endpoints::CreateContainer.build(context)
          when :delete_container
            Aws::MediaStore::Endpoints::DeleteContainer.build(context)
          when :delete_container_policy
            Aws::MediaStore::Endpoints::DeleteContainerPolicy.build(context)
          when :delete_cors_policy
            Aws::MediaStore::Endpoints::DeleteCorsPolicy.build(context)
          when :delete_lifecycle_policy
            Aws::MediaStore::Endpoints::DeleteLifecyclePolicy.build(context)
          when :delete_metric_policy
            Aws::MediaStore::Endpoints::DeleteMetricPolicy.build(context)
          when :describe_container
            Aws::MediaStore::Endpoints::DescribeContainer.build(context)
          when :get_container_policy
            Aws::MediaStore::Endpoints::GetContainerPolicy.build(context)
          when :get_cors_policy
            Aws::MediaStore::Endpoints::GetCorsPolicy.build(context)
          when :get_lifecycle_policy
            Aws::MediaStore::Endpoints::GetLifecyclePolicy.build(context)
          when :get_metric_policy
            Aws::MediaStore::Endpoints::GetMetricPolicy.build(context)
          when :list_containers
            Aws::MediaStore::Endpoints::ListContainers.build(context)
          when :list_tags_for_resource
            Aws::MediaStore::Endpoints::ListTagsForResource.build(context)
          when :put_container_policy
            Aws::MediaStore::Endpoints::PutContainerPolicy.build(context)
          when :put_cors_policy
            Aws::MediaStore::Endpoints::PutCorsPolicy.build(context)
          when :put_lifecycle_policy
            Aws::MediaStore::Endpoints::PutLifecyclePolicy.build(context)
          when :put_metric_policy
            Aws::MediaStore::Endpoints::PutMetricPolicy.build(context)
          when :start_access_logging
            Aws::MediaStore::Endpoints::StartAccessLogging.build(context)
          when :stop_access_logging
            Aws::MediaStore::Endpoints::StopAccessLogging.build(context)
          when :tag_resource
            Aws::MediaStore::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::MediaStore::Endpoints::UntagResource.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
