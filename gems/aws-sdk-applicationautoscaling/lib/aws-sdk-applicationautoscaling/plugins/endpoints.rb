# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ApplicationAutoScaling
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ApplicationAutoScaling::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ApplicationAutoScaling::EndpointParameters`'
      ) do |cfg|
        Aws::ApplicationAutoScaling::EndpointProvider.new
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
          when :delete_scaling_policy
            Aws::ApplicationAutoScaling::Endpoints::DeleteScalingPolicy.build(context)
          when :delete_scheduled_action
            Aws::ApplicationAutoScaling::Endpoints::DeleteScheduledAction.build(context)
          when :deregister_scalable_target
            Aws::ApplicationAutoScaling::Endpoints::DeregisterScalableTarget.build(context)
          when :describe_scalable_targets
            Aws::ApplicationAutoScaling::Endpoints::DescribeScalableTargets.build(context)
          when :describe_scaling_activities
            Aws::ApplicationAutoScaling::Endpoints::DescribeScalingActivities.build(context)
          when :describe_scaling_policies
            Aws::ApplicationAutoScaling::Endpoints::DescribeScalingPolicies.build(context)
          when :describe_scheduled_actions
            Aws::ApplicationAutoScaling::Endpoints::DescribeScheduledActions.build(context)
          when :list_tags_for_resource
            Aws::ApplicationAutoScaling::Endpoints::ListTagsForResource.build(context)
          when :put_scaling_policy
            Aws::ApplicationAutoScaling::Endpoints::PutScalingPolicy.build(context)
          when :put_scheduled_action
            Aws::ApplicationAutoScaling::Endpoints::PutScheduledAction.build(context)
          when :register_scalable_target
            Aws::ApplicationAutoScaling::Endpoints::RegisterScalableTarget.build(context)
          when :tag_resource
            Aws::ApplicationAutoScaling::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::ApplicationAutoScaling::Endpoints::UntagResource.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
