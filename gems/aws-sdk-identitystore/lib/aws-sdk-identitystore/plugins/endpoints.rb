# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::IdentityStore
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::IdentityStore::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::IdentityStore::EndpointParameters`'
      ) do |cfg|
        Aws::IdentityStore::EndpointProvider.new
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
          when :create_group
            Aws::IdentityStore::Endpoints::CreateGroup.build(context)
          when :create_group_membership
            Aws::IdentityStore::Endpoints::CreateGroupMembership.build(context)
          when :create_user
            Aws::IdentityStore::Endpoints::CreateUser.build(context)
          when :delete_group
            Aws::IdentityStore::Endpoints::DeleteGroup.build(context)
          when :delete_group_membership
            Aws::IdentityStore::Endpoints::DeleteGroupMembership.build(context)
          when :delete_user
            Aws::IdentityStore::Endpoints::DeleteUser.build(context)
          when :describe_group
            Aws::IdentityStore::Endpoints::DescribeGroup.build(context)
          when :describe_group_membership
            Aws::IdentityStore::Endpoints::DescribeGroupMembership.build(context)
          when :describe_user
            Aws::IdentityStore::Endpoints::DescribeUser.build(context)
          when :get_group_id
            Aws::IdentityStore::Endpoints::GetGroupId.build(context)
          when :get_group_membership_id
            Aws::IdentityStore::Endpoints::GetGroupMembershipId.build(context)
          when :get_user_id
            Aws::IdentityStore::Endpoints::GetUserId.build(context)
          when :is_member_in_groups
            Aws::IdentityStore::Endpoints::IsMemberInGroups.build(context)
          when :list_group_memberships
            Aws::IdentityStore::Endpoints::ListGroupMemberships.build(context)
          when :list_group_memberships_for_member
            Aws::IdentityStore::Endpoints::ListGroupMembershipsForMember.build(context)
          when :list_groups
            Aws::IdentityStore::Endpoints::ListGroups.build(context)
          when :list_users
            Aws::IdentityStore::Endpoints::ListUsers.build(context)
          when :update_group
            Aws::IdentityStore::Endpoints::UpdateGroup.build(context)
          when :update_user
            Aws::IdentityStore::Endpoints::UpdateUser.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
