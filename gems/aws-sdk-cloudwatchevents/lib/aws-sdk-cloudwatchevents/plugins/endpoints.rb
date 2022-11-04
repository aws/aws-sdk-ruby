# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CloudWatchEvents
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CloudWatchEvents::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CloudWatchEvents::EndpointParameters`'
      ) do |cfg|
        Aws::CloudWatchEvents::EndpointProvider.new
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
            Aws::CloudWatchEvents::Endpoints::ActivateEventSource.build(context)
          when :cancel_replay
            Aws::CloudWatchEvents::Endpoints::CancelReplay.build(context)
          when :create_api_destination
            Aws::CloudWatchEvents::Endpoints::CreateApiDestination.build(context)
          when :create_archive
            Aws::CloudWatchEvents::Endpoints::CreateArchive.build(context)
          when :create_connection
            Aws::CloudWatchEvents::Endpoints::CreateConnection.build(context)
          when :create_event_bus
            Aws::CloudWatchEvents::Endpoints::CreateEventBus.build(context)
          when :create_partner_event_source
            Aws::CloudWatchEvents::Endpoints::CreatePartnerEventSource.build(context)
          when :deactivate_event_source
            Aws::CloudWatchEvents::Endpoints::DeactivateEventSource.build(context)
          when :deauthorize_connection
            Aws::CloudWatchEvents::Endpoints::DeauthorizeConnection.build(context)
          when :delete_api_destination
            Aws::CloudWatchEvents::Endpoints::DeleteApiDestination.build(context)
          when :delete_archive
            Aws::CloudWatchEvents::Endpoints::DeleteArchive.build(context)
          when :delete_connection
            Aws::CloudWatchEvents::Endpoints::DeleteConnection.build(context)
          when :delete_event_bus
            Aws::CloudWatchEvents::Endpoints::DeleteEventBus.build(context)
          when :delete_partner_event_source
            Aws::CloudWatchEvents::Endpoints::DeletePartnerEventSource.build(context)
          when :delete_rule
            Aws::CloudWatchEvents::Endpoints::DeleteRule.build(context)
          when :describe_api_destination
            Aws::CloudWatchEvents::Endpoints::DescribeApiDestination.build(context)
          when :describe_archive
            Aws::CloudWatchEvents::Endpoints::DescribeArchive.build(context)
          when :describe_connection
            Aws::CloudWatchEvents::Endpoints::DescribeConnection.build(context)
          when :describe_event_bus
            Aws::CloudWatchEvents::Endpoints::DescribeEventBus.build(context)
          when :describe_event_source
            Aws::CloudWatchEvents::Endpoints::DescribeEventSource.build(context)
          when :describe_partner_event_source
            Aws::CloudWatchEvents::Endpoints::DescribePartnerEventSource.build(context)
          when :describe_replay
            Aws::CloudWatchEvents::Endpoints::DescribeReplay.build(context)
          when :describe_rule
            Aws::CloudWatchEvents::Endpoints::DescribeRule.build(context)
          when :disable_rule
            Aws::CloudWatchEvents::Endpoints::DisableRule.build(context)
          when :enable_rule
            Aws::CloudWatchEvents::Endpoints::EnableRule.build(context)
          when :list_api_destinations
            Aws::CloudWatchEvents::Endpoints::ListApiDestinations.build(context)
          when :list_archives
            Aws::CloudWatchEvents::Endpoints::ListArchives.build(context)
          when :list_connections
            Aws::CloudWatchEvents::Endpoints::ListConnections.build(context)
          when :list_event_buses
            Aws::CloudWatchEvents::Endpoints::ListEventBuses.build(context)
          when :list_event_sources
            Aws::CloudWatchEvents::Endpoints::ListEventSources.build(context)
          when :list_partner_event_source_accounts
            Aws::CloudWatchEvents::Endpoints::ListPartnerEventSourceAccounts.build(context)
          when :list_partner_event_sources
            Aws::CloudWatchEvents::Endpoints::ListPartnerEventSources.build(context)
          when :list_replays
            Aws::CloudWatchEvents::Endpoints::ListReplays.build(context)
          when :list_rule_names_by_target
            Aws::CloudWatchEvents::Endpoints::ListRuleNamesByTarget.build(context)
          when :list_rules
            Aws::CloudWatchEvents::Endpoints::ListRules.build(context)
          when :list_tags_for_resource
            Aws::CloudWatchEvents::Endpoints::ListTagsForResource.build(context)
          when :list_targets_by_rule
            Aws::CloudWatchEvents::Endpoints::ListTargetsByRule.build(context)
          when :put_events
            Aws::CloudWatchEvents::Endpoints::PutEvents.build(context)
          when :put_partner_events
            Aws::CloudWatchEvents::Endpoints::PutPartnerEvents.build(context)
          when :put_permission
            Aws::CloudWatchEvents::Endpoints::PutPermission.build(context)
          when :put_rule
            Aws::CloudWatchEvents::Endpoints::PutRule.build(context)
          when :put_targets
            Aws::CloudWatchEvents::Endpoints::PutTargets.build(context)
          when :remove_permission
            Aws::CloudWatchEvents::Endpoints::RemovePermission.build(context)
          when :remove_targets
            Aws::CloudWatchEvents::Endpoints::RemoveTargets.build(context)
          when :start_replay
            Aws::CloudWatchEvents::Endpoints::StartReplay.build(context)
          when :tag_resource
            Aws::CloudWatchEvents::Endpoints::TagResource.build(context)
          when :test_event_pattern
            Aws::CloudWatchEvents::Endpoints::TestEventPattern.build(context)
          when :untag_resource
            Aws::CloudWatchEvents::Endpoints::UntagResource.build(context)
          when :update_api_destination
            Aws::CloudWatchEvents::Endpoints::UpdateApiDestination.build(context)
          when :update_archive
            Aws::CloudWatchEvents::Endpoints::UpdateArchive.build(context)
          when :update_connection
            Aws::CloudWatchEvents::Endpoints::UpdateConnection.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
