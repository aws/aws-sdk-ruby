# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Synthetics
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Synthetics::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Synthetics::EndpointParameters`'
      ) do |cfg|
        Aws::Synthetics::EndpointProvider.new
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
          when :associate_resource
            Aws::Synthetics::Endpoints::AssociateResource.build(context)
          when :create_canary
            Aws::Synthetics::Endpoints::CreateCanary.build(context)
          when :create_group
            Aws::Synthetics::Endpoints::CreateGroup.build(context)
          when :delete_canary
            Aws::Synthetics::Endpoints::DeleteCanary.build(context)
          when :delete_group
            Aws::Synthetics::Endpoints::DeleteGroup.build(context)
          when :describe_canaries
            Aws::Synthetics::Endpoints::DescribeCanaries.build(context)
          when :describe_canaries_last_run
            Aws::Synthetics::Endpoints::DescribeCanariesLastRun.build(context)
          when :describe_runtime_versions
            Aws::Synthetics::Endpoints::DescribeRuntimeVersions.build(context)
          when :disassociate_resource
            Aws::Synthetics::Endpoints::DisassociateResource.build(context)
          when :get_canary
            Aws::Synthetics::Endpoints::GetCanary.build(context)
          when :get_canary_runs
            Aws::Synthetics::Endpoints::GetCanaryRuns.build(context)
          when :get_group
            Aws::Synthetics::Endpoints::GetGroup.build(context)
          when :list_associated_groups
            Aws::Synthetics::Endpoints::ListAssociatedGroups.build(context)
          when :list_group_resources
            Aws::Synthetics::Endpoints::ListGroupResources.build(context)
          when :list_groups
            Aws::Synthetics::Endpoints::ListGroups.build(context)
          when :list_tags_for_resource
            Aws::Synthetics::Endpoints::ListTagsForResource.build(context)
          when :start_canary
            Aws::Synthetics::Endpoints::StartCanary.build(context)
          when :stop_canary
            Aws::Synthetics::Endpoints::StopCanary.build(context)
          when :tag_resource
            Aws::Synthetics::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Synthetics::Endpoints::UntagResource.build(context)
          when :update_canary
            Aws::Synthetics::Endpoints::UpdateCanary.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
