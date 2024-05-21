# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MailManager
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::MailManager::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::MailManager::EndpointParameters`'
      ) do |cfg|
        Aws::MailManager::EndpointProvider.new
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
          when :create_addon_instance
            Aws::MailManager::Endpoints::CreateAddonInstance.build(context)
          when :create_addon_subscription
            Aws::MailManager::Endpoints::CreateAddonSubscription.build(context)
          when :create_archive
            Aws::MailManager::Endpoints::CreateArchive.build(context)
          when :create_ingress_point
            Aws::MailManager::Endpoints::CreateIngressPoint.build(context)
          when :create_relay
            Aws::MailManager::Endpoints::CreateRelay.build(context)
          when :create_rule_set
            Aws::MailManager::Endpoints::CreateRuleSet.build(context)
          when :create_traffic_policy
            Aws::MailManager::Endpoints::CreateTrafficPolicy.build(context)
          when :delete_addon_instance
            Aws::MailManager::Endpoints::DeleteAddonInstance.build(context)
          when :delete_addon_subscription
            Aws::MailManager::Endpoints::DeleteAddonSubscription.build(context)
          when :delete_archive
            Aws::MailManager::Endpoints::DeleteArchive.build(context)
          when :delete_ingress_point
            Aws::MailManager::Endpoints::DeleteIngressPoint.build(context)
          when :delete_relay
            Aws::MailManager::Endpoints::DeleteRelay.build(context)
          when :delete_rule_set
            Aws::MailManager::Endpoints::DeleteRuleSet.build(context)
          when :delete_traffic_policy
            Aws::MailManager::Endpoints::DeleteTrafficPolicy.build(context)
          when :get_addon_instance
            Aws::MailManager::Endpoints::GetAddonInstance.build(context)
          when :get_addon_subscription
            Aws::MailManager::Endpoints::GetAddonSubscription.build(context)
          when :get_archive
            Aws::MailManager::Endpoints::GetArchive.build(context)
          when :get_archive_export
            Aws::MailManager::Endpoints::GetArchiveExport.build(context)
          when :get_archive_message
            Aws::MailManager::Endpoints::GetArchiveMessage.build(context)
          when :get_archive_message_content
            Aws::MailManager::Endpoints::GetArchiveMessageContent.build(context)
          when :get_archive_search
            Aws::MailManager::Endpoints::GetArchiveSearch.build(context)
          when :get_archive_search_results
            Aws::MailManager::Endpoints::GetArchiveSearchResults.build(context)
          when :get_ingress_point
            Aws::MailManager::Endpoints::GetIngressPoint.build(context)
          when :get_relay
            Aws::MailManager::Endpoints::GetRelay.build(context)
          when :get_rule_set
            Aws::MailManager::Endpoints::GetRuleSet.build(context)
          when :get_traffic_policy
            Aws::MailManager::Endpoints::GetTrafficPolicy.build(context)
          when :list_addon_instances
            Aws::MailManager::Endpoints::ListAddonInstances.build(context)
          when :list_addon_subscriptions
            Aws::MailManager::Endpoints::ListAddonSubscriptions.build(context)
          when :list_archive_exports
            Aws::MailManager::Endpoints::ListArchiveExports.build(context)
          when :list_archive_searches
            Aws::MailManager::Endpoints::ListArchiveSearches.build(context)
          when :list_archives
            Aws::MailManager::Endpoints::ListArchives.build(context)
          when :list_ingress_points
            Aws::MailManager::Endpoints::ListIngressPoints.build(context)
          when :list_relays
            Aws::MailManager::Endpoints::ListRelays.build(context)
          when :list_rule_sets
            Aws::MailManager::Endpoints::ListRuleSets.build(context)
          when :list_tags_for_resource
            Aws::MailManager::Endpoints::ListTagsForResource.build(context)
          when :list_traffic_policies
            Aws::MailManager::Endpoints::ListTrafficPolicies.build(context)
          when :start_archive_export
            Aws::MailManager::Endpoints::StartArchiveExport.build(context)
          when :start_archive_search
            Aws::MailManager::Endpoints::StartArchiveSearch.build(context)
          when :stop_archive_export
            Aws::MailManager::Endpoints::StopArchiveExport.build(context)
          when :stop_archive_search
            Aws::MailManager::Endpoints::StopArchiveSearch.build(context)
          when :tag_resource
            Aws::MailManager::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::MailManager::Endpoints::UntagResource.build(context)
          when :update_archive
            Aws::MailManager::Endpoints::UpdateArchive.build(context)
          when :update_ingress_point
            Aws::MailManager::Endpoints::UpdateIngressPoint.build(context)
          when :update_relay
            Aws::MailManager::Endpoints::UpdateRelay.build(context)
          when :update_rule_set
            Aws::MailManager::Endpoints::UpdateRuleSet.build(context)
          when :update_traffic_policy
            Aws::MailManager::Endpoints::UpdateTrafficPolicy.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
