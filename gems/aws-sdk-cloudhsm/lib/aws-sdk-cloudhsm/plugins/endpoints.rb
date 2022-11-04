# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CloudHSM
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CloudHSM::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CloudHSM::EndpointParameters`'
      ) do |cfg|
        Aws::CloudHSM::EndpointProvider.new
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
          when :add_tags_to_resource
            Aws::CloudHSM::Endpoints::AddTagsToResource.build(context)
          when :create_hapg
            Aws::CloudHSM::Endpoints::CreateHapg.build(context)
          when :create_hsm
            Aws::CloudHSM::Endpoints::CreateHsm.build(context)
          when :create_luna_client
            Aws::CloudHSM::Endpoints::CreateLunaClient.build(context)
          when :delete_hapg
            Aws::CloudHSM::Endpoints::DeleteHapg.build(context)
          when :delete_hsm
            Aws::CloudHSM::Endpoints::DeleteHsm.build(context)
          when :delete_luna_client
            Aws::CloudHSM::Endpoints::DeleteLunaClient.build(context)
          when :describe_hapg
            Aws::CloudHSM::Endpoints::DescribeHapg.build(context)
          when :describe_hsm
            Aws::CloudHSM::Endpoints::DescribeHsm.build(context)
          when :describe_luna_client
            Aws::CloudHSM::Endpoints::DescribeLunaClient.build(context)
          when :get_config
            Aws::CloudHSM::Endpoints::GetConfig.build(context)
          when :list_available_zones
            Aws::CloudHSM::Endpoints::ListAvailableZones.build(context)
          when :list_hapgs
            Aws::CloudHSM::Endpoints::ListHapgs.build(context)
          when :list_hsms
            Aws::CloudHSM::Endpoints::ListHsms.build(context)
          when :list_luna_clients
            Aws::CloudHSM::Endpoints::ListLunaClients.build(context)
          when :list_tags_for_resource
            Aws::CloudHSM::Endpoints::ListTagsForResource.build(context)
          when :modify_hapg
            Aws::CloudHSM::Endpoints::ModifyHapg.build(context)
          when :modify_hsm
            Aws::CloudHSM::Endpoints::ModifyHsm.build(context)
          when :modify_luna_client
            Aws::CloudHSM::Endpoints::ModifyLunaClient.build(context)
          when :remove_tags_from_resource
            Aws::CloudHSM::Endpoints::RemoveTagsFromResource.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
