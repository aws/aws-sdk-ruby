# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MediaPackage
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::MediaPackage::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::MediaPackage::EndpointParameters`'
      ) do |cfg|
        Aws::MediaPackage::EndpointProvider.new
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
            Aws::MediaPackage::Endpoints::ConfigureLogs.build(context)
          when :create_channel
            Aws::MediaPackage::Endpoints::CreateChannel.build(context)
          when :create_harvest_job
            Aws::MediaPackage::Endpoints::CreateHarvestJob.build(context)
          when :create_origin_endpoint
            Aws::MediaPackage::Endpoints::CreateOriginEndpoint.build(context)
          when :delete_channel
            Aws::MediaPackage::Endpoints::DeleteChannel.build(context)
          when :delete_origin_endpoint
            Aws::MediaPackage::Endpoints::DeleteOriginEndpoint.build(context)
          when :describe_channel
            Aws::MediaPackage::Endpoints::DescribeChannel.build(context)
          when :describe_harvest_job
            Aws::MediaPackage::Endpoints::DescribeHarvestJob.build(context)
          when :describe_origin_endpoint
            Aws::MediaPackage::Endpoints::DescribeOriginEndpoint.build(context)
          when :list_channels
            Aws::MediaPackage::Endpoints::ListChannels.build(context)
          when :list_harvest_jobs
            Aws::MediaPackage::Endpoints::ListHarvestJobs.build(context)
          when :list_origin_endpoints
            Aws::MediaPackage::Endpoints::ListOriginEndpoints.build(context)
          when :list_tags_for_resource
            Aws::MediaPackage::Endpoints::ListTagsForResource.build(context)
          when :rotate_channel_credentials
            Aws::MediaPackage::Endpoints::RotateChannelCredentials.build(context)
          when :rotate_ingest_endpoint_credentials
            Aws::MediaPackage::Endpoints::RotateIngestEndpointCredentials.build(context)
          when :tag_resource
            Aws::MediaPackage::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::MediaPackage::Endpoints::UntagResource.build(context)
          when :update_channel
            Aws::MediaPackage::Endpoints::UpdateChannel.build(context)
          when :update_origin_endpoint
            Aws::MediaPackage::Endpoints::UpdateOriginEndpoint.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
