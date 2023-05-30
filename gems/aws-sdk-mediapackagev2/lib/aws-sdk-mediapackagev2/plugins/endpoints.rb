# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MediaPackageV2
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::MediaPackageV2::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::MediaPackageV2::EndpointParameters`'
      ) do |cfg|
        Aws::MediaPackageV2::EndpointProvider.new
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
          when :create_channel
            Aws::MediaPackageV2::Endpoints::CreateChannel.build(context)
          when :create_channel_group
            Aws::MediaPackageV2::Endpoints::CreateChannelGroup.build(context)
          when :create_origin_endpoint
            Aws::MediaPackageV2::Endpoints::CreateOriginEndpoint.build(context)
          when :delete_channel
            Aws::MediaPackageV2::Endpoints::DeleteChannel.build(context)
          when :delete_channel_group
            Aws::MediaPackageV2::Endpoints::DeleteChannelGroup.build(context)
          when :delete_channel_policy
            Aws::MediaPackageV2::Endpoints::DeleteChannelPolicy.build(context)
          when :delete_origin_endpoint
            Aws::MediaPackageV2::Endpoints::DeleteOriginEndpoint.build(context)
          when :delete_origin_endpoint_policy
            Aws::MediaPackageV2::Endpoints::DeleteOriginEndpointPolicy.build(context)
          when :get_channel
            Aws::MediaPackageV2::Endpoints::GetChannel.build(context)
          when :get_channel_group
            Aws::MediaPackageV2::Endpoints::GetChannelGroup.build(context)
          when :get_channel_policy
            Aws::MediaPackageV2::Endpoints::GetChannelPolicy.build(context)
          when :get_origin_endpoint
            Aws::MediaPackageV2::Endpoints::GetOriginEndpoint.build(context)
          when :get_origin_endpoint_policy
            Aws::MediaPackageV2::Endpoints::GetOriginEndpointPolicy.build(context)
          when :list_channel_groups
            Aws::MediaPackageV2::Endpoints::ListChannelGroups.build(context)
          when :list_channels
            Aws::MediaPackageV2::Endpoints::ListChannels.build(context)
          when :list_origin_endpoints
            Aws::MediaPackageV2::Endpoints::ListOriginEndpoints.build(context)
          when :list_tags_for_resource
            Aws::MediaPackageV2::Endpoints::ListTagsForResource.build(context)
          when :put_channel_policy
            Aws::MediaPackageV2::Endpoints::PutChannelPolicy.build(context)
          when :put_origin_endpoint_policy
            Aws::MediaPackageV2::Endpoints::PutOriginEndpointPolicy.build(context)
          when :tag_resource
            Aws::MediaPackageV2::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::MediaPackageV2::Endpoints::UntagResource.build(context)
          when :update_channel
            Aws::MediaPackageV2::Endpoints::UpdateChannel.build(context)
          when :update_channel_group
            Aws::MediaPackageV2::Endpoints::UpdateChannelGroup.build(context)
          when :update_origin_endpoint
            Aws::MediaPackageV2::Endpoints::UpdateOriginEndpoint.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
