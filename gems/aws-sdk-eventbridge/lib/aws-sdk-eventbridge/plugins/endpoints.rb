# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::EventBridge
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::EventBridge::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::EventBridge::EndpointParameters`'
      ) do |cfg|
        Aws::EventBridge::EndpointProvider.new
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
          when :activate_event_source
            Aws::EventBridge::Endpoints::ActivateEventSource.build(context)
          when :cancel_replay
            Aws::EventBridge::Endpoints::CancelReplay.build(context)
          when :create_api_destination
            Aws::EventBridge::Endpoints::CreateApiDestination.build(context)
          when :create_archive
            Aws::EventBridge::Endpoints::CreateArchive.build(context)
          when :create_connection
            Aws::EventBridge::Endpoints::CreateConnection.build(context)
          when :create_endpoint
            Aws::EventBridge::Endpoints::CreateEndpoint.build(context)
          when :create_event_bus
            Aws::EventBridge::Endpoints::CreateEventBus.build(context)
          when :create_partner_event_source
            Aws::EventBridge::Endpoints::CreatePartnerEventSource.build(context)
          when :deactivate_event_source
            Aws::EventBridge::Endpoints::DeactivateEventSource.build(context)
          when :deauthorize_connection
            Aws::EventBridge::Endpoints::DeauthorizeConnection.build(context)
          when :delete_api_destination
            Aws::EventBridge::Endpoints::DeleteApiDestination.build(context)
          when :delete_archive
            Aws::EventBridge::Endpoints::DeleteArchive.build(context)
          when :delete_connection
            Aws::EventBridge::Endpoints::DeleteConnection.build(context)
          when :delete_endpoint
            Aws::EventBridge::Endpoints::DeleteEndpoint.build(context)
          when :delete_event_bus
            Aws::EventBridge::Endpoints::DeleteEventBus.build(context)
          when :delete_partner_event_source
            Aws::EventBridge::Endpoints::DeletePartnerEventSource.build(context)
          when :delete_rule
            Aws::EventBridge::Endpoints::DeleteRule.build(context)
          when :describe_api_destination
            Aws::EventBridge::Endpoints::DescribeApiDestination.build(context)
          when :describe_archive
            Aws::EventBridge::Endpoints::DescribeArchive.build(context)
          when :describe_connection
            Aws::EventBridge::Endpoints::DescribeConnection.build(context)
          when :describe_endpoint
            Aws::EventBridge::Endpoints::DescribeEndpoint.build(context)
          when :describe_event_bus
            Aws::EventBridge::Endpoints::DescribeEventBus.build(context)
          when :describe_event_source
            Aws::EventBridge::Endpoints::DescribeEventSource.build(context)
          when :describe_partner_event_source
            Aws::EventBridge::Endpoints::DescribePartnerEventSource.build(context)
          when :describe_replay
            Aws::EventBridge::Endpoints::DescribeReplay.build(context)
          when :describe_rule
            Aws::EventBridge::Endpoints::DescribeRule.build(context)
          when :disable_rule
            Aws::EventBridge::Endpoints::DisableRule.build(context)
          when :enable_rule
            Aws::EventBridge::Endpoints::EnableRule.build(context)
          when :list_api_destinations
            Aws::EventBridge::Endpoints::ListApiDestinations.build(context)
          when :list_archives
            Aws::EventBridge::Endpoints::ListArchives.build(context)
          when :list_connections
            Aws::EventBridge::Endpoints::ListConnections.build(context)
          when :list_endpoints
            Aws::EventBridge::Endpoints::ListEndpoints.build(context)
          when :list_event_buses
            Aws::EventBridge::Endpoints::ListEventBuses.build(context)
          when :list_event_sources
            Aws::EventBridge::Endpoints::ListEventSources.build(context)
          when :list_partner_event_source_accounts
            Aws::EventBridge::Endpoints::ListPartnerEventSourceAccounts.build(context)
          when :list_partner_event_sources
            Aws::EventBridge::Endpoints::ListPartnerEventSources.build(context)
          when :list_replays
            Aws::EventBridge::Endpoints::ListReplays.build(context)
          when :list_rule_names_by_target
            Aws::EventBridge::Endpoints::ListRuleNamesByTarget.build(context)
          when :list_rules
            Aws::EventBridge::Endpoints::ListRules.build(context)
          when :list_tags_for_resource
            Aws::EventBridge::Endpoints::ListTagsForResource.build(context)
          when :list_targets_by_rule
            Aws::EventBridge::Endpoints::ListTargetsByRule.build(context)
          when :put_events
            Aws::EventBridge::Endpoints::PutEvents.build(context)
          when :put_partner_events
            Aws::EventBridge::Endpoints::PutPartnerEvents.build(context)
          when :put_permission
            Aws::EventBridge::Endpoints::PutPermission.build(context)
          when :put_rule
            Aws::EventBridge::Endpoints::PutRule.build(context)
          when :put_targets
            Aws::EventBridge::Endpoints::PutTargets.build(context)
          when :remove_permission
            Aws::EventBridge::Endpoints::RemovePermission.build(context)
          when :remove_targets
            Aws::EventBridge::Endpoints::RemoveTargets.build(context)
          when :start_replay
            Aws::EventBridge::Endpoints::StartReplay.build(context)
          when :tag_resource
            Aws::EventBridge::Endpoints::TagResource.build(context)
          when :test_event_pattern
            Aws::EventBridge::Endpoints::TestEventPattern.build(context)
          when :untag_resource
            Aws::EventBridge::Endpoints::UntagResource.build(context)
          when :update_api_destination
            Aws::EventBridge::Endpoints::UpdateApiDestination.build(context)
          when :update_archive
            Aws::EventBridge::Endpoints::UpdateArchive.build(context)
          when :update_connection
            Aws::EventBridge::Endpoints::UpdateConnection.build(context)
          when :update_endpoint
            Aws::EventBridge::Endpoints::UpdateEndpoint.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
