# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::WorkSpacesThinClient
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::WorkSpacesThinClient::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::WorkSpacesThinClient::EndpointParameters`'
      ) do |cfg|
        Aws::WorkSpacesThinClient::EndpointProvider.new
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
          when :create_environment
            Aws::WorkSpacesThinClient::Endpoints::CreateEnvironment.build(context)
          when :delete_device
            Aws::WorkSpacesThinClient::Endpoints::DeleteDevice.build(context)
          when :delete_environment
            Aws::WorkSpacesThinClient::Endpoints::DeleteEnvironment.build(context)
          when :deregister_device
            Aws::WorkSpacesThinClient::Endpoints::DeregisterDevice.build(context)
          when :get_device
            Aws::WorkSpacesThinClient::Endpoints::GetDevice.build(context)
          when :get_environment
            Aws::WorkSpacesThinClient::Endpoints::GetEnvironment.build(context)
          when :get_software_set
            Aws::WorkSpacesThinClient::Endpoints::GetSoftwareSet.build(context)
          when :list_devices
            Aws::WorkSpacesThinClient::Endpoints::ListDevices.build(context)
          when :list_environments
            Aws::WorkSpacesThinClient::Endpoints::ListEnvironments.build(context)
          when :list_software_sets
            Aws::WorkSpacesThinClient::Endpoints::ListSoftwareSets.build(context)
          when :list_tags_for_resource
            Aws::WorkSpacesThinClient::Endpoints::ListTagsForResource.build(context)
          when :tag_resource
            Aws::WorkSpacesThinClient::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::WorkSpacesThinClient::Endpoints::UntagResource.build(context)
          when :update_device
            Aws::WorkSpacesThinClient::Endpoints::UpdateDevice.build(context)
          when :update_environment
            Aws::WorkSpacesThinClient::Endpoints::UpdateEnvironment.build(context)
          when :update_software_set
            Aws::WorkSpacesThinClient::Endpoints::UpdateSoftwareSet.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
