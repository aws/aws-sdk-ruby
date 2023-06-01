# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SESV2
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::SESV2::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::SESV2::EndpointParameters`'
      ) do |cfg|
        Aws::SESV2::EndpointProvider.new
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
          when :batch_get_metric_data
            Aws::SESV2::Endpoints::BatchGetMetricData.build(context)
          when :create_configuration_set
            Aws::SESV2::Endpoints::CreateConfigurationSet.build(context)
          when :create_configuration_set_event_destination
            Aws::SESV2::Endpoints::CreateConfigurationSetEventDestination.build(context)
          when :create_contact
            Aws::SESV2::Endpoints::CreateContact.build(context)
          when :create_contact_list
            Aws::SESV2::Endpoints::CreateContactList.build(context)
          when :create_custom_verification_email_template
            Aws::SESV2::Endpoints::CreateCustomVerificationEmailTemplate.build(context)
          when :create_dedicated_ip_pool
            Aws::SESV2::Endpoints::CreateDedicatedIpPool.build(context)
          when :create_deliverability_test_report
            Aws::SESV2::Endpoints::CreateDeliverabilityTestReport.build(context)
          when :create_email_identity
            Aws::SESV2::Endpoints::CreateEmailIdentity.build(context)
          when :create_email_identity_policy
            Aws::SESV2::Endpoints::CreateEmailIdentityPolicy.build(context)
          when :create_email_template
            Aws::SESV2::Endpoints::CreateEmailTemplate.build(context)
          when :create_import_job
            Aws::SESV2::Endpoints::CreateImportJob.build(context)
          when :delete_configuration_set
            Aws::SESV2::Endpoints::DeleteConfigurationSet.build(context)
          when :delete_configuration_set_event_destination
            Aws::SESV2::Endpoints::DeleteConfigurationSetEventDestination.build(context)
          when :delete_contact
            Aws::SESV2::Endpoints::DeleteContact.build(context)
          when :delete_contact_list
            Aws::SESV2::Endpoints::DeleteContactList.build(context)
          when :delete_custom_verification_email_template
            Aws::SESV2::Endpoints::DeleteCustomVerificationEmailTemplate.build(context)
          when :delete_dedicated_ip_pool
            Aws::SESV2::Endpoints::DeleteDedicatedIpPool.build(context)
          when :delete_email_identity
            Aws::SESV2::Endpoints::DeleteEmailIdentity.build(context)
          when :delete_email_identity_policy
            Aws::SESV2::Endpoints::DeleteEmailIdentityPolicy.build(context)
          when :delete_email_template
            Aws::SESV2::Endpoints::DeleteEmailTemplate.build(context)
          when :delete_suppressed_destination
            Aws::SESV2::Endpoints::DeleteSuppressedDestination.build(context)
          when :get_account
            Aws::SESV2::Endpoints::GetAccount.build(context)
          when :get_blacklist_reports
            Aws::SESV2::Endpoints::GetBlacklistReports.build(context)
          when :get_configuration_set
            Aws::SESV2::Endpoints::GetConfigurationSet.build(context)
          when :get_configuration_set_event_destinations
            Aws::SESV2::Endpoints::GetConfigurationSetEventDestinations.build(context)
          when :get_contact
            Aws::SESV2::Endpoints::GetContact.build(context)
          when :get_contact_list
            Aws::SESV2::Endpoints::GetContactList.build(context)
          when :get_custom_verification_email_template
            Aws::SESV2::Endpoints::GetCustomVerificationEmailTemplate.build(context)
          when :get_dedicated_ip
            Aws::SESV2::Endpoints::GetDedicatedIp.build(context)
          when :get_dedicated_ip_pool
            Aws::SESV2::Endpoints::GetDedicatedIpPool.build(context)
          when :get_dedicated_ips
            Aws::SESV2::Endpoints::GetDedicatedIps.build(context)
          when :get_deliverability_dashboard_options
            Aws::SESV2::Endpoints::GetDeliverabilityDashboardOptions.build(context)
          when :get_deliverability_test_report
            Aws::SESV2::Endpoints::GetDeliverabilityTestReport.build(context)
          when :get_domain_deliverability_campaign
            Aws::SESV2::Endpoints::GetDomainDeliverabilityCampaign.build(context)
          when :get_domain_statistics_report
            Aws::SESV2::Endpoints::GetDomainStatisticsReport.build(context)
          when :get_email_identity
            Aws::SESV2::Endpoints::GetEmailIdentity.build(context)
          when :get_email_identity_policies
            Aws::SESV2::Endpoints::GetEmailIdentityPolicies.build(context)
          when :get_email_template
            Aws::SESV2::Endpoints::GetEmailTemplate.build(context)
          when :get_import_job
            Aws::SESV2::Endpoints::GetImportJob.build(context)
          when :get_suppressed_destination
            Aws::SESV2::Endpoints::GetSuppressedDestination.build(context)
          when :list_configuration_sets
            Aws::SESV2::Endpoints::ListConfigurationSets.build(context)
          when :list_contact_lists
            Aws::SESV2::Endpoints::ListContactLists.build(context)
          when :list_contacts
            Aws::SESV2::Endpoints::ListContacts.build(context)
          when :list_custom_verification_email_templates
            Aws::SESV2::Endpoints::ListCustomVerificationEmailTemplates.build(context)
          when :list_dedicated_ip_pools
            Aws::SESV2::Endpoints::ListDedicatedIpPools.build(context)
          when :list_deliverability_test_reports
            Aws::SESV2::Endpoints::ListDeliverabilityTestReports.build(context)
          when :list_domain_deliverability_campaigns
            Aws::SESV2::Endpoints::ListDomainDeliverabilityCampaigns.build(context)
          when :list_email_identities
            Aws::SESV2::Endpoints::ListEmailIdentities.build(context)
          when :list_email_templates
            Aws::SESV2::Endpoints::ListEmailTemplates.build(context)
          when :list_import_jobs
            Aws::SESV2::Endpoints::ListImportJobs.build(context)
          when :list_recommendations
            Aws::SESV2::Endpoints::ListRecommendations.build(context)
          when :list_suppressed_destinations
            Aws::SESV2::Endpoints::ListSuppressedDestinations.build(context)
          when :list_tags_for_resource
            Aws::SESV2::Endpoints::ListTagsForResource.build(context)
          when :put_account_dedicated_ip_warmup_attributes
            Aws::SESV2::Endpoints::PutAccountDedicatedIpWarmupAttributes.build(context)
          when :put_account_details
            Aws::SESV2::Endpoints::PutAccountDetails.build(context)
          when :put_account_sending_attributes
            Aws::SESV2::Endpoints::PutAccountSendingAttributes.build(context)
          when :put_account_suppression_attributes
            Aws::SESV2::Endpoints::PutAccountSuppressionAttributes.build(context)
          when :put_account_vdm_attributes
            Aws::SESV2::Endpoints::PutAccountVdmAttributes.build(context)
          when :put_configuration_set_delivery_options
            Aws::SESV2::Endpoints::PutConfigurationSetDeliveryOptions.build(context)
          when :put_configuration_set_reputation_options
            Aws::SESV2::Endpoints::PutConfigurationSetReputationOptions.build(context)
          when :put_configuration_set_sending_options
            Aws::SESV2::Endpoints::PutConfigurationSetSendingOptions.build(context)
          when :put_configuration_set_suppression_options
            Aws::SESV2::Endpoints::PutConfigurationSetSuppressionOptions.build(context)
          when :put_configuration_set_tracking_options
            Aws::SESV2::Endpoints::PutConfigurationSetTrackingOptions.build(context)
          when :put_configuration_set_vdm_options
            Aws::SESV2::Endpoints::PutConfigurationSetVdmOptions.build(context)
          when :put_dedicated_ip_in_pool
            Aws::SESV2::Endpoints::PutDedicatedIpInPool.build(context)
          when :put_dedicated_ip_pool_scaling_attributes
            Aws::SESV2::Endpoints::PutDedicatedIpPoolScalingAttributes.build(context)
          when :put_dedicated_ip_warmup_attributes
            Aws::SESV2::Endpoints::PutDedicatedIpWarmupAttributes.build(context)
          when :put_deliverability_dashboard_option
            Aws::SESV2::Endpoints::PutDeliverabilityDashboardOption.build(context)
          when :put_email_identity_configuration_set_attributes
            Aws::SESV2::Endpoints::PutEmailIdentityConfigurationSetAttributes.build(context)
          when :put_email_identity_dkim_attributes
            Aws::SESV2::Endpoints::PutEmailIdentityDkimAttributes.build(context)
          when :put_email_identity_dkim_signing_attributes
            Aws::SESV2::Endpoints::PutEmailIdentityDkimSigningAttributes.build(context)
          when :put_email_identity_feedback_attributes
            Aws::SESV2::Endpoints::PutEmailIdentityFeedbackAttributes.build(context)
          when :put_email_identity_mail_from_attributes
            Aws::SESV2::Endpoints::PutEmailIdentityMailFromAttributes.build(context)
          when :put_suppressed_destination
            Aws::SESV2::Endpoints::PutSuppressedDestination.build(context)
          when :send_bulk_email
            Aws::SESV2::Endpoints::SendBulkEmail.build(context)
          when :send_custom_verification_email
            Aws::SESV2::Endpoints::SendCustomVerificationEmail.build(context)
          when :send_email
            Aws::SESV2::Endpoints::SendEmail.build(context)
          when :tag_resource
            Aws::SESV2::Endpoints::TagResource.build(context)
          when :test_render_email_template
            Aws::SESV2::Endpoints::TestRenderEmailTemplate.build(context)
          when :untag_resource
            Aws::SESV2::Endpoints::UntagResource.build(context)
          when :update_configuration_set_event_destination
            Aws::SESV2::Endpoints::UpdateConfigurationSetEventDestination.build(context)
          when :update_contact
            Aws::SESV2::Endpoints::UpdateContact.build(context)
          when :update_contact_list
            Aws::SESV2::Endpoints::UpdateContactList.build(context)
          when :update_custom_verification_email_template
            Aws::SESV2::Endpoints::UpdateCustomVerificationEmailTemplate.build(context)
          when :update_email_identity_policy
            Aws::SESV2::Endpoints::UpdateEmailIdentityPolicy.build(context)
          when :update_email_template
            Aws::SESV2::Endpoints::UpdateEmailTemplate.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
