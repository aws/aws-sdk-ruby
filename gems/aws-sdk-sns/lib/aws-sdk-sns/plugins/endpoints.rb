# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SNS
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::SNS::EndpointProvider',
        rbs_type: 'untyped',
        docstring: <<~DOCS) do |_cfg|
The endpoint provider used to resolve endpoints. Any object that responds to
`#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
`Aws::SNS::EndpointParameters`.
        DOCS
        Aws::SNS::EndpointProvider.new
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

          with_metrics(context) { @handler.call(context) }
        end

        private

        def with_metrics(context, &block)
          metrics = []
          metrics << 'ENDPOINT_OVERRIDE' unless context.config.regional_endpoint
          if context[:auth_scheme] && context[:auth_scheme]['name'] == 'sigv4a'
            metrics << 'SIGV4A_SIGNING'
          end
          if context.config.credentials&.credentials&.account_id
            metrics << 'RESOLVED_ACCOUNT_ID'
          end
          Aws::Plugins::UserAgent.metric(*metrics, &block)
        end

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
          when :add_permission
            Aws::SNS::Endpoints::AddPermission.build(context)
          when :check_if_phone_number_is_opted_out
            Aws::SNS::Endpoints::CheckIfPhoneNumberIsOptedOut.build(context)
          when :confirm_subscription
            Aws::SNS::Endpoints::ConfirmSubscription.build(context)
          when :create_platform_application
            Aws::SNS::Endpoints::CreatePlatformApplication.build(context)
          when :create_platform_endpoint
            Aws::SNS::Endpoints::CreatePlatformEndpoint.build(context)
          when :create_sms_sandbox_phone_number
            Aws::SNS::Endpoints::CreateSMSSandboxPhoneNumber.build(context)
          when :create_topic
            Aws::SNS::Endpoints::CreateTopic.build(context)
          when :delete_endpoint
            Aws::SNS::Endpoints::DeleteEndpoint.build(context)
          when :delete_platform_application
            Aws::SNS::Endpoints::DeletePlatformApplication.build(context)
          when :delete_sms_sandbox_phone_number
            Aws::SNS::Endpoints::DeleteSMSSandboxPhoneNumber.build(context)
          when :delete_topic
            Aws::SNS::Endpoints::DeleteTopic.build(context)
          when :get_data_protection_policy
            Aws::SNS::Endpoints::GetDataProtectionPolicy.build(context)
          when :get_endpoint_attributes
            Aws::SNS::Endpoints::GetEndpointAttributes.build(context)
          when :get_platform_application_attributes
            Aws::SNS::Endpoints::GetPlatformApplicationAttributes.build(context)
          when :get_sms_attributes
            Aws::SNS::Endpoints::GetSMSAttributes.build(context)
          when :get_sms_sandbox_account_status
            Aws::SNS::Endpoints::GetSMSSandboxAccountStatus.build(context)
          when :get_subscription_attributes
            Aws::SNS::Endpoints::GetSubscriptionAttributes.build(context)
          when :get_topic_attributes
            Aws::SNS::Endpoints::GetTopicAttributes.build(context)
          when :list_endpoints_by_platform_application
            Aws::SNS::Endpoints::ListEndpointsByPlatformApplication.build(context)
          when :list_origination_numbers
            Aws::SNS::Endpoints::ListOriginationNumbers.build(context)
          when :list_phone_numbers_opted_out
            Aws::SNS::Endpoints::ListPhoneNumbersOptedOut.build(context)
          when :list_platform_applications
            Aws::SNS::Endpoints::ListPlatformApplications.build(context)
          when :list_sms_sandbox_phone_numbers
            Aws::SNS::Endpoints::ListSMSSandboxPhoneNumbers.build(context)
          when :list_subscriptions
            Aws::SNS::Endpoints::ListSubscriptions.build(context)
          when :list_subscriptions_by_topic
            Aws::SNS::Endpoints::ListSubscriptionsByTopic.build(context)
          when :list_tags_for_resource
            Aws::SNS::Endpoints::ListTagsForResource.build(context)
          when :list_topics
            Aws::SNS::Endpoints::ListTopics.build(context)
          when :opt_in_phone_number
            Aws::SNS::Endpoints::OptInPhoneNumber.build(context)
          when :publish
            Aws::SNS::Endpoints::Publish.build(context)
          when :publish_batch
            Aws::SNS::Endpoints::PublishBatch.build(context)
          when :put_data_protection_policy
            Aws::SNS::Endpoints::PutDataProtectionPolicy.build(context)
          when :remove_permission
            Aws::SNS::Endpoints::RemovePermission.build(context)
          when :set_endpoint_attributes
            Aws::SNS::Endpoints::SetEndpointAttributes.build(context)
          when :set_platform_application_attributes
            Aws::SNS::Endpoints::SetPlatformApplicationAttributes.build(context)
          when :set_sms_attributes
            Aws::SNS::Endpoints::SetSMSAttributes.build(context)
          when :set_subscription_attributes
            Aws::SNS::Endpoints::SetSubscriptionAttributes.build(context)
          when :set_topic_attributes
            Aws::SNS::Endpoints::SetTopicAttributes.build(context)
          when :subscribe
            Aws::SNS::Endpoints::Subscribe.build(context)
          when :tag_resource
            Aws::SNS::Endpoints::TagResource.build(context)
          when :unsubscribe
            Aws::SNS::Endpoints::Unsubscribe.build(context)
          when :untag_resource
            Aws::SNS::Endpoints::UntagResource.build(context)
          when :verify_sms_sandbox_phone_number
            Aws::SNS::Endpoints::VerifySMSSandboxPhoneNumber.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
