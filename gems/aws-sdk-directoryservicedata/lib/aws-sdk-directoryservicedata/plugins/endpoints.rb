# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::DirectoryServiceData
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::DirectoryServiceData::EndpointProvider',
        rbs_type: 'untyped',
        docstring: <<~DOCS) do |_cfg|
The endpoint provider used to resolve endpoints. Any object that responds to
`#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
`Aws::DirectoryServiceData::EndpointParameters`.
        DOCS
        Aws::DirectoryServiceData::EndpointProvider.new
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

          with_metrics(context) { @handler.call(context) }
        end

        private

        def with_metrics(context, &block)
          metrics = []
          metrics << 'ENDPOINT_OVERRIDE' unless context.config.regional_endpoint
          if context[:auth_scheme] && context[:auth_scheme]['name'] == 'sigv4a'
            metrics << 'SIGV4A_SIGNING'
          end
          if context.config.credentials&.credentials&.account_id
            metrics << 'RESOLVED_ACCOUNT_ID'
          end
          Aws::Plugins::UserAgent.metric(*metrics, &block)
        end

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
          when :add_group_member
            Aws::DirectoryServiceData::Endpoints::AddGroupMember.build(context)
          when :create_group
            Aws::DirectoryServiceData::Endpoints::CreateGroup.build(context)
          when :create_user
            Aws::DirectoryServiceData::Endpoints::CreateUser.build(context)
          when :delete_group
            Aws::DirectoryServiceData::Endpoints::DeleteGroup.build(context)
          when :delete_user
            Aws::DirectoryServiceData::Endpoints::DeleteUser.build(context)
          when :describe_group
            Aws::DirectoryServiceData::Endpoints::DescribeGroup.build(context)
          when :describe_user
            Aws::DirectoryServiceData::Endpoints::DescribeUser.build(context)
          when :disable_user
            Aws::DirectoryServiceData::Endpoints::DisableUser.build(context)
          when :list_group_members
            Aws::DirectoryServiceData::Endpoints::ListGroupMembers.build(context)
          when :list_groups
            Aws::DirectoryServiceData::Endpoints::ListGroups.build(context)
          when :list_groups_for_member
            Aws::DirectoryServiceData::Endpoints::ListGroupsForMember.build(context)
          when :list_users
            Aws::DirectoryServiceData::Endpoints::ListUsers.build(context)
          when :remove_group_member
            Aws::DirectoryServiceData::Endpoints::RemoveGroupMember.build(context)
          when :search_groups
            Aws::DirectoryServiceData::Endpoints::SearchGroups.build(context)
          when :search_users
            Aws::DirectoryServiceData::Endpoints::SearchUsers.build(context)
          when :update_group
            Aws::DirectoryServiceData::Endpoints::UpdateGroup.build(context)
          when :update_user
            Aws::DirectoryServiceData::Endpoints::UpdateUser.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
