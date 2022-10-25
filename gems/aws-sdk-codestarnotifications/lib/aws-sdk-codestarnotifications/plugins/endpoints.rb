# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CodeStarNotifications
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CodeStarNotifications::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CodeStarNotifications::EndpointParameters`'
      ) do |cfg|
        Aws::CodeStarNotifications::EndpointProvider.new
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
          when :create_notification_rule
            Aws::CodeStarNotifications::Endpoints::CreateNotificationRule.build(context)
          when :delete_notification_rule
            Aws::CodeStarNotifications::Endpoints::DeleteNotificationRule.build(context)
          when :delete_target
            Aws::CodeStarNotifications::Endpoints::DeleteTarget.build(context)
          when :describe_notification_rule
            Aws::CodeStarNotifications::Endpoints::DescribeNotificationRule.build(context)
          when :list_event_types
            Aws::CodeStarNotifications::Endpoints::ListEventTypes.build(context)
          when :list_notification_rules
            Aws::CodeStarNotifications::Endpoints::ListNotificationRules.build(context)
          when :list_tags_for_resource
            Aws::CodeStarNotifications::Endpoints::ListTagsForResource.build(context)
          when :list_targets
            Aws::CodeStarNotifications::Endpoints::ListTargets.build(context)
          when :subscribe
            Aws::CodeStarNotifications::Endpoints::Subscribe.build(context)
          when :tag_resource
            Aws::CodeStarNotifications::Endpoints::TagResource.build(context)
          when :unsubscribe
            Aws::CodeStarNotifications::Endpoints::Unsubscribe.build(context)
          when :untag_resource
            Aws::CodeStarNotifications::Endpoints::UntagResource.build(context)
          when :update_notification_rule
            Aws::CodeStarNotifications::Endpoints::UpdateNotificationRule.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
