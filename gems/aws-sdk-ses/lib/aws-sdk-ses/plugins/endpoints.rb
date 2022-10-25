# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SES
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::SES::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::SES::EndpointParameters`'
      ) do |cfg|
        Aws::SES::EndpointProvider.new
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
          when :clone_receipt_rule_set
            Aws::SES::Endpoints::CloneReceiptRuleSet.build(context)
          when :create_configuration_set
            Aws::SES::Endpoints::CreateConfigurationSet.build(context)
          when :create_configuration_set_event_destination
            Aws::SES::Endpoints::CreateConfigurationSetEventDestination.build(context)
          when :create_configuration_set_tracking_options
            Aws::SES::Endpoints::CreateConfigurationSetTrackingOptions.build(context)
          when :create_custom_verification_email_template
            Aws::SES::Endpoints::CreateCustomVerificationEmailTemplate.build(context)
          when :create_receipt_filter
            Aws::SES::Endpoints::CreateReceiptFilter.build(context)
          when :create_receipt_rule
            Aws::SES::Endpoints::CreateReceiptRule.build(context)
          when :create_receipt_rule_set
            Aws::SES::Endpoints::CreateReceiptRuleSet.build(context)
          when :create_template
            Aws::SES::Endpoints::CreateTemplate.build(context)
          when :delete_configuration_set
            Aws::SES::Endpoints::DeleteConfigurationSet.build(context)
          when :delete_configuration_set_event_destination
            Aws::SES::Endpoints::DeleteConfigurationSetEventDestination.build(context)
          when :delete_configuration_set_tracking_options
            Aws::SES::Endpoints::DeleteConfigurationSetTrackingOptions.build(context)
          when :delete_custom_verification_email_template
            Aws::SES::Endpoints::DeleteCustomVerificationEmailTemplate.build(context)
          when :delete_identity
            Aws::SES::Endpoints::DeleteIdentity.build(context)
          when :delete_identity_policy
            Aws::SES::Endpoints::DeleteIdentityPolicy.build(context)
          when :delete_receipt_filter
            Aws::SES::Endpoints::DeleteReceiptFilter.build(context)
          when :delete_receipt_rule
            Aws::SES::Endpoints::DeleteReceiptRule.build(context)
          when :delete_receipt_rule_set
            Aws::SES::Endpoints::DeleteReceiptRuleSet.build(context)
          when :delete_template
            Aws::SES::Endpoints::DeleteTemplate.build(context)
          when :delete_verified_email_address
            Aws::SES::Endpoints::DeleteVerifiedEmailAddress.build(context)
          when :describe_active_receipt_rule_set
            Aws::SES::Endpoints::DescribeActiveReceiptRuleSet.build(context)
          when :describe_configuration_set
            Aws::SES::Endpoints::DescribeConfigurationSet.build(context)
          when :describe_receipt_rule
            Aws::SES::Endpoints::DescribeReceiptRule.build(context)
          when :describe_receipt_rule_set
            Aws::SES::Endpoints::DescribeReceiptRuleSet.build(context)
          when :get_account_sending_enabled
            Aws::SES::Endpoints::GetAccountSendingEnabled.build(context)
          when :get_custom_verification_email_template
            Aws::SES::Endpoints::GetCustomVerificationEmailTemplate.build(context)
          when :get_identity_dkim_attributes
            Aws::SES::Endpoints::GetIdentityDkimAttributes.build(context)
          when :get_identity_mail_from_domain_attributes
            Aws::SES::Endpoints::GetIdentityMailFromDomainAttributes.build(context)
          when :get_identity_notification_attributes
            Aws::SES::Endpoints::GetIdentityNotificationAttributes.build(context)
          when :get_identity_policies
            Aws::SES::Endpoints::GetIdentityPolicies.build(context)
          when :get_identity_verification_attributes
            Aws::SES::Endpoints::GetIdentityVerificationAttributes.build(context)
          when :get_send_quota
            Aws::SES::Endpoints::GetSendQuota.build(context)
          when :get_send_statistics
            Aws::SES::Endpoints::GetSendStatistics.build(context)
          when :get_template
            Aws::SES::Endpoints::GetTemplate.build(context)
          when :list_configuration_sets
            Aws::SES::Endpoints::ListConfigurationSets.build(context)
          when :list_custom_verification_email_templates
            Aws::SES::Endpoints::ListCustomVerificationEmailTemplates.build(context)
          when :list_identities
            Aws::SES::Endpoints::ListIdentities.build(context)
          when :list_identity_policies
            Aws::SES::Endpoints::ListIdentityPolicies.build(context)
          when :list_receipt_filters
            Aws::SES::Endpoints::ListReceiptFilters.build(context)
          when :list_receipt_rule_sets
            Aws::SES::Endpoints::ListReceiptRuleSets.build(context)
          when :list_templates
            Aws::SES::Endpoints::ListTemplates.build(context)
          when :list_verified_email_addresses
            Aws::SES::Endpoints::ListVerifiedEmailAddresses.build(context)
          when :put_configuration_set_delivery_options
            Aws::SES::Endpoints::PutConfigurationSetDeliveryOptions.build(context)
          when :put_identity_policy
            Aws::SES::Endpoints::PutIdentityPolicy.build(context)
          when :reorder_receipt_rule_set
            Aws::SES::Endpoints::ReorderReceiptRuleSet.build(context)
          when :send_bounce
            Aws::SES::Endpoints::SendBounce.build(context)
          when :send_bulk_templated_email
            Aws::SES::Endpoints::SendBulkTemplatedEmail.build(context)
          when :send_custom_verification_email
            Aws::SES::Endpoints::SendCustomVerificationEmail.build(context)
          when :send_email
            Aws::SES::Endpoints::SendEmail.build(context)
          when :send_raw_email
            Aws::SES::Endpoints::SendRawEmail.build(context)
          when :send_templated_email
            Aws::SES::Endpoints::SendTemplatedEmail.build(context)
          when :set_active_receipt_rule_set
            Aws::SES::Endpoints::SetActiveReceiptRuleSet.build(context)
          when :set_identity_dkim_enabled
            Aws::SES::Endpoints::SetIdentityDkimEnabled.build(context)
          when :set_identity_feedback_forwarding_enabled
            Aws::SES::Endpoints::SetIdentityFeedbackForwardingEnabled.build(context)
          when :set_identity_headers_in_notifications_enabled
            Aws::SES::Endpoints::SetIdentityHeadersInNotificationsEnabled.build(context)
          when :set_identity_mail_from_domain
            Aws::SES::Endpoints::SetIdentityMailFromDomain.build(context)
          when :set_identity_notification_topic
            Aws::SES::Endpoints::SetIdentityNotificationTopic.build(context)
          when :set_receipt_rule_position
            Aws::SES::Endpoints::SetReceiptRulePosition.build(context)
          when :test_render_template
            Aws::SES::Endpoints::TestRenderTemplate.build(context)
          when :update_account_sending_enabled
            Aws::SES::Endpoints::UpdateAccountSendingEnabled.build(context)
          when :update_configuration_set_event_destination
            Aws::SES::Endpoints::UpdateConfigurationSetEventDestination.build(context)
          when :update_configuration_set_reputation_metrics_enabled
            Aws::SES::Endpoints::UpdateConfigurationSetReputationMetricsEnabled.build(context)
          when :update_configuration_set_sending_enabled
            Aws::SES::Endpoints::UpdateConfigurationSetSendingEnabled.build(context)
          when :update_configuration_set_tracking_options
            Aws::SES::Endpoints::UpdateConfigurationSetTrackingOptions.build(context)
          when :update_custom_verification_email_template
            Aws::SES::Endpoints::UpdateCustomVerificationEmailTemplate.build(context)
          when :update_receipt_rule
            Aws::SES::Endpoints::UpdateReceiptRule.build(context)
          when :update_template
            Aws::SES::Endpoints::UpdateTemplate.build(context)
          when :verify_domain_dkim
            Aws::SES::Endpoints::VerifyDomainDkim.build(context)
          when :verify_domain_identity
            Aws::SES::Endpoints::VerifyDomainIdentity.build(context)
          when :verify_email_address
            Aws::SES::Endpoints::VerifyEmailAddress.build(context)
          when :verify_email_identity
            Aws::SES::Endpoints::VerifyEmailIdentity.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
