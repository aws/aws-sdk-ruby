# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::PinpointEmail
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::PinpointEmail::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::PinpointEmail::EndpointParameters`'
      ) do |cfg|
        Aws::PinpointEmail::EndpointProvider.new
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
          when :create_configuration_set
            Aws::PinpointEmail::Endpoints::CreateConfigurationSet.build(context)
          when :create_configuration_set_event_destination
            Aws::PinpointEmail::Endpoints::CreateConfigurationSetEventDestination.build(context)
          when :create_dedicated_ip_pool
            Aws::PinpointEmail::Endpoints::CreateDedicatedIpPool.build(context)
          when :create_deliverability_test_report
            Aws::PinpointEmail::Endpoints::CreateDeliverabilityTestReport.build(context)
          when :create_email_identity
            Aws::PinpointEmail::Endpoints::CreateEmailIdentity.build(context)
          when :delete_configuration_set
            Aws::PinpointEmail::Endpoints::DeleteConfigurationSet.build(context)
          when :delete_configuration_set_event_destination
            Aws::PinpointEmail::Endpoints::DeleteConfigurationSetEventDestination.build(context)
          when :delete_dedicated_ip_pool
            Aws::PinpointEmail::Endpoints::DeleteDedicatedIpPool.build(context)
          when :delete_email_identity
            Aws::PinpointEmail::Endpoints::DeleteEmailIdentity.build(context)
          when :get_account
            Aws::PinpointEmail::Endpoints::GetAccount.build(context)
          when :get_blacklist_reports
            Aws::PinpointEmail::Endpoints::GetBlacklistReports.build(context)
          when :get_configuration_set
            Aws::PinpointEmail::Endpoints::GetConfigurationSet.build(context)
          when :get_configuration_set_event_destinations
            Aws::PinpointEmail::Endpoints::GetConfigurationSetEventDestinations.build(context)
          when :get_dedicated_ip
            Aws::PinpointEmail::Endpoints::GetDedicatedIp.build(context)
          when :get_dedicated_ips
            Aws::PinpointEmail::Endpoints::GetDedicatedIps.build(context)
          when :get_deliverability_dashboard_options
            Aws::PinpointEmail::Endpoints::GetDeliverabilityDashboardOptions.build(context)
          when :get_deliverability_test_report
            Aws::PinpointEmail::Endpoints::GetDeliverabilityTestReport.build(context)
          when :get_domain_deliverability_campaign
            Aws::PinpointEmail::Endpoints::GetDomainDeliverabilityCampaign.build(context)
          when :get_domain_statistics_report
            Aws::PinpointEmail::Endpoints::GetDomainStatisticsReport.build(context)
          when :get_email_identity
            Aws::PinpointEmail::Endpoints::GetEmailIdentity.build(context)
          when :list_configuration_sets
            Aws::PinpointEmail::Endpoints::ListConfigurationSets.build(context)
          when :list_dedicated_ip_pools
            Aws::PinpointEmail::Endpoints::ListDedicatedIpPools.build(context)
          when :list_deliverability_test_reports
            Aws::PinpointEmail::Endpoints::ListDeliverabilityTestReports.build(context)
          when :list_domain_deliverability_campaigns
            Aws::PinpointEmail::Endpoints::ListDomainDeliverabilityCampaigns.build(context)
          when :list_email_identities
            Aws::PinpointEmail::Endpoints::ListEmailIdentities.build(context)
          when :list_tags_for_resource
            Aws::PinpointEmail::Endpoints::ListTagsForResource.build(context)
          when :put_account_dedicated_ip_warmup_attributes
            Aws::PinpointEmail::Endpoints::PutAccountDedicatedIpWarmupAttributes.build(context)
          when :put_account_sending_attributes
            Aws::PinpointEmail::Endpoints::PutAccountSendingAttributes.build(context)
          when :put_configuration_set_delivery_options
            Aws::PinpointEmail::Endpoints::PutConfigurationSetDeliveryOptions.build(context)
          when :put_configuration_set_reputation_options
            Aws::PinpointEmail::Endpoints::PutConfigurationSetReputationOptions.build(context)
          when :put_configuration_set_sending_options
            Aws::PinpointEmail::Endpoints::PutConfigurationSetSendingOptions.build(context)
          when :put_configuration_set_tracking_options
            Aws::PinpointEmail::Endpoints::PutConfigurationSetTrackingOptions.build(context)
          when :put_dedicated_ip_in_pool
            Aws::PinpointEmail::Endpoints::PutDedicatedIpInPool.build(context)
          when :put_dedicated_ip_warmup_attributes
            Aws::PinpointEmail::Endpoints::PutDedicatedIpWarmupAttributes.build(context)
          when :put_deliverability_dashboard_option
            Aws::PinpointEmail::Endpoints::PutDeliverabilityDashboardOption.build(context)
          when :put_email_identity_dkim_attributes
            Aws::PinpointEmail::Endpoints::PutEmailIdentityDkimAttributes.build(context)
          when :put_email_identity_feedback_attributes
            Aws::PinpointEmail::Endpoints::PutEmailIdentityFeedbackAttributes.build(context)
          when :put_email_identity_mail_from_attributes
            Aws::PinpointEmail::Endpoints::PutEmailIdentityMailFromAttributes.build(context)
          when :send_email
            Aws::PinpointEmail::Endpoints::SendEmail.build(context)
          when :tag_resource
            Aws::PinpointEmail::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::PinpointEmail::Endpoints::UntagResource.build(context)
          when :update_configuration_set_event_destination
            Aws::PinpointEmail::Endpoints::UpdateConfigurationSetEventDestination.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
