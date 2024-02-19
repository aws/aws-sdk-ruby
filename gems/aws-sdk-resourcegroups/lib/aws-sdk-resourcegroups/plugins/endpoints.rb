# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ResourceGroups
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ResourceGroups::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ResourceGroups::EndpointParameters`'
      ) do |cfg|
        Aws::ResourceGroups::EndpointProvider.new
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
          when :create_group
            Aws::ResourceGroups::Endpoints::CreateGroup.build(context)
          when :delete_group
            Aws::ResourceGroups::Endpoints::DeleteGroup.build(context)
          when :get_account_settings
            Aws::ResourceGroups::Endpoints::GetAccountSettings.build(context)
          when :get_group
            Aws::ResourceGroups::Endpoints::GetGroup.build(context)
          when :get_group_configuration
            Aws::ResourceGroups::Endpoints::GetGroupConfiguration.build(context)
          when :get_group_query
            Aws::ResourceGroups::Endpoints::GetGroupQuery.build(context)
          when :get_tags
            Aws::ResourceGroups::Endpoints::GetTags.build(context)
          when :group_resources
            Aws::ResourceGroups::Endpoints::GroupResources.build(context)
          when :list_group_resources
            Aws::ResourceGroups::Endpoints::ListGroupResources.build(context)
          when :list_groups
            Aws::ResourceGroups::Endpoints::ListGroups.build(context)
          when :put_group_configuration
            Aws::ResourceGroups::Endpoints::PutGroupConfiguration.build(context)
          when :search_resources
            Aws::ResourceGroups::Endpoints::SearchResources.build(context)
          when :tag
            Aws::ResourceGroups::Endpoints::Tag.build(context)
          when :ungroup_resources
            Aws::ResourceGroups::Endpoints::UngroupResources.build(context)
          when :untag
            Aws::ResourceGroups::Endpoints::Untag.build(context)
          when :update_account_settings
            Aws::ResourceGroups::Endpoints::UpdateAccountSettings.build(context)
          when :update_group
            Aws::ResourceGroups::Endpoints::UpdateGroup.build(context)
          when :update_group_query
            Aws::ResourceGroups::Endpoints::UpdateGroupQuery.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
