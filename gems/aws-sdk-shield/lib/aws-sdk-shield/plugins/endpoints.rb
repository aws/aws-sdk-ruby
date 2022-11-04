# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Shield
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Shield::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Shield::EndpointParameters`'
      ) do |cfg|
        Aws::Shield::EndpointProvider.new
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
          when :associate_drt_log_bucket
            Aws::Shield::Endpoints::AssociateDRTLogBucket.build(context)
          when :associate_drt_role
            Aws::Shield::Endpoints::AssociateDRTRole.build(context)
          when :associate_health_check
            Aws::Shield::Endpoints::AssociateHealthCheck.build(context)
          when :associate_proactive_engagement_details
            Aws::Shield::Endpoints::AssociateProactiveEngagementDetails.build(context)
          when :create_protection
            Aws::Shield::Endpoints::CreateProtection.build(context)
          when :create_protection_group
            Aws::Shield::Endpoints::CreateProtectionGroup.build(context)
          when :create_subscription
            Aws::Shield::Endpoints::CreateSubscription.build(context)
          when :delete_protection
            Aws::Shield::Endpoints::DeleteProtection.build(context)
          when :delete_protection_group
            Aws::Shield::Endpoints::DeleteProtectionGroup.build(context)
          when :delete_subscription
            Aws::Shield::Endpoints::DeleteSubscription.build(context)
          when :describe_attack
            Aws::Shield::Endpoints::DescribeAttack.build(context)
          when :describe_attack_statistics
            Aws::Shield::Endpoints::DescribeAttackStatistics.build(context)
          when :describe_drt_access
            Aws::Shield::Endpoints::DescribeDRTAccess.build(context)
          when :describe_emergency_contact_settings
            Aws::Shield::Endpoints::DescribeEmergencyContactSettings.build(context)
          when :describe_protection
            Aws::Shield::Endpoints::DescribeProtection.build(context)
          when :describe_protection_group
            Aws::Shield::Endpoints::DescribeProtectionGroup.build(context)
          when :describe_subscription
            Aws::Shield::Endpoints::DescribeSubscription.build(context)
          when :disable_application_layer_automatic_response
            Aws::Shield::Endpoints::DisableApplicationLayerAutomaticResponse.build(context)
          when :disable_proactive_engagement
            Aws::Shield::Endpoints::DisableProactiveEngagement.build(context)
          when :disassociate_drt_log_bucket
            Aws::Shield::Endpoints::DisassociateDRTLogBucket.build(context)
          when :disassociate_drt_role
            Aws::Shield::Endpoints::DisassociateDRTRole.build(context)
          when :disassociate_health_check
            Aws::Shield::Endpoints::DisassociateHealthCheck.build(context)
          when :enable_application_layer_automatic_response
            Aws::Shield::Endpoints::EnableApplicationLayerAutomaticResponse.build(context)
          when :enable_proactive_engagement
            Aws::Shield::Endpoints::EnableProactiveEngagement.build(context)
          when :get_subscription_state
            Aws::Shield::Endpoints::GetSubscriptionState.build(context)
          when :list_attacks
            Aws::Shield::Endpoints::ListAttacks.build(context)
          when :list_protection_groups
            Aws::Shield::Endpoints::ListProtectionGroups.build(context)
          when :list_protections
            Aws::Shield::Endpoints::ListProtections.build(context)
          when :list_resources_in_protection_group
            Aws::Shield::Endpoints::ListResourcesInProtectionGroup.build(context)
          when :list_tags_for_resource
            Aws::Shield::Endpoints::ListTagsForResource.build(context)
          when :tag_resource
            Aws::Shield::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Shield::Endpoints::UntagResource.build(context)
          when :update_application_layer_automatic_response
            Aws::Shield::Endpoints::UpdateApplicationLayerAutomaticResponse.build(context)
          when :update_emergency_contact_settings
            Aws::Shield::Endpoints::UpdateEmergencyContactSettings.build(context)
          when :update_protection_group
            Aws::Shield::Endpoints::UpdateProtectionGroup.build(context)
          when :update_subscription
            Aws::Shield::Endpoints::UpdateSubscription.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
