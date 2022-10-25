# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CodeStar
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CodeStar::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CodeStar::EndpointParameters`'
      ) do |cfg|
        Aws::CodeStar::EndpointProvider.new
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
          when :associate_team_member
            Aws::CodeStar::Endpoints::AssociateTeamMember.build(context)
          when :create_project
            Aws::CodeStar::Endpoints::CreateProject.build(context)
          when :create_user_profile
            Aws::CodeStar::Endpoints::CreateUserProfile.build(context)
          when :delete_project
            Aws::CodeStar::Endpoints::DeleteProject.build(context)
          when :delete_user_profile
            Aws::CodeStar::Endpoints::DeleteUserProfile.build(context)
          when :describe_project
            Aws::CodeStar::Endpoints::DescribeProject.build(context)
          when :describe_user_profile
            Aws::CodeStar::Endpoints::DescribeUserProfile.build(context)
          when :disassociate_team_member
            Aws::CodeStar::Endpoints::DisassociateTeamMember.build(context)
          when :list_projects
            Aws::CodeStar::Endpoints::ListProjects.build(context)
          when :list_resources
            Aws::CodeStar::Endpoints::ListResources.build(context)
          when :list_tags_for_project
            Aws::CodeStar::Endpoints::ListTagsForProject.build(context)
          when :list_team_members
            Aws::CodeStar::Endpoints::ListTeamMembers.build(context)
          when :list_user_profiles
            Aws::CodeStar::Endpoints::ListUserProfiles.build(context)
          when :tag_project
            Aws::CodeStar::Endpoints::TagProject.build(context)
          when :untag_project
            Aws::CodeStar::Endpoints::UntagProject.build(context)
          when :update_project
            Aws::CodeStar::Endpoints::UpdateProject.build(context)
          when :update_team_member
            Aws::CodeStar::Endpoints::UpdateTeamMember.build(context)
          when :update_user_profile
            Aws::CodeStar::Endpoints::UpdateUserProfile.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
