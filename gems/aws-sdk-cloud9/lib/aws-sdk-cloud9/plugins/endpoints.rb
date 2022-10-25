# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Cloud9
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Cloud9::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Cloud9::EndpointParameters`'
      ) do |cfg|
        Aws::Cloud9::EndpointProvider.new
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
          when :create_environment_ec2
            Aws::Cloud9::Endpoints::CreateEnvironmentEC2.build(context)
          when :create_environment_membership
            Aws::Cloud9::Endpoints::CreateEnvironmentMembership.build(context)
          when :delete_environment
            Aws::Cloud9::Endpoints::DeleteEnvironment.build(context)
          when :delete_environment_membership
            Aws::Cloud9::Endpoints::DeleteEnvironmentMembership.build(context)
          when :describe_environment_memberships
            Aws::Cloud9::Endpoints::DescribeEnvironmentMemberships.build(context)
          when :describe_environment_status
            Aws::Cloud9::Endpoints::DescribeEnvironmentStatus.build(context)
          when :describe_environments
            Aws::Cloud9::Endpoints::DescribeEnvironments.build(context)
          when :list_environments
            Aws::Cloud9::Endpoints::ListEnvironments.build(context)
          when :list_tags_for_resource
            Aws::Cloud9::Endpoints::ListTagsForResource.build(context)
          when :tag_resource
            Aws::Cloud9::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Cloud9::Endpoints::UntagResource.build(context)
          when :update_environment
            Aws::Cloud9::Endpoints::UpdateEnvironment.build(context)
          when :update_environment_membership
            Aws::Cloud9::Endpoints::UpdateEnvironmentMembership.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
