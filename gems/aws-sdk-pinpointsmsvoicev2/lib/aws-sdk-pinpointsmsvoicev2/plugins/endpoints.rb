# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::PinpointSMSVoiceV2
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::PinpointSMSVoiceV2::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::PinpointSMSVoiceV2::EndpointParameters`'
      ) do |cfg|
        Aws::PinpointSMSVoiceV2::EndpointProvider.new
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
          when :associate_origination_identity
            Aws::PinpointSMSVoiceV2::Endpoints::AssociateOriginationIdentity.build(context)
          when :create_configuration_set
            Aws::PinpointSMSVoiceV2::Endpoints::CreateConfigurationSet.build(context)
          when :create_event_destination
            Aws::PinpointSMSVoiceV2::Endpoints::CreateEventDestination.build(context)
          when :create_opt_out_list
            Aws::PinpointSMSVoiceV2::Endpoints::CreateOptOutList.build(context)
          when :create_pool
            Aws::PinpointSMSVoiceV2::Endpoints::CreatePool.build(context)
          when :delete_configuration_set
            Aws::PinpointSMSVoiceV2::Endpoints::DeleteConfigurationSet.build(context)
          when :delete_default_message_type
            Aws::PinpointSMSVoiceV2::Endpoints::DeleteDefaultMessageType.build(context)
          when :delete_default_sender_id
            Aws::PinpointSMSVoiceV2::Endpoints::DeleteDefaultSenderId.build(context)
          when :delete_event_destination
            Aws::PinpointSMSVoiceV2::Endpoints::DeleteEventDestination.build(context)
          when :delete_keyword
            Aws::PinpointSMSVoiceV2::Endpoints::DeleteKeyword.build(context)
          when :delete_opt_out_list
            Aws::PinpointSMSVoiceV2::Endpoints::DeleteOptOutList.build(context)
          when :delete_opted_out_number
            Aws::PinpointSMSVoiceV2::Endpoints::DeleteOptedOutNumber.build(context)
          when :delete_pool
            Aws::PinpointSMSVoiceV2::Endpoints::DeletePool.build(context)
          when :delete_text_message_spend_limit_override
            Aws::PinpointSMSVoiceV2::Endpoints::DeleteTextMessageSpendLimitOverride.build(context)
          when :delete_voice_message_spend_limit_override
            Aws::PinpointSMSVoiceV2::Endpoints::DeleteVoiceMessageSpendLimitOverride.build(context)
          when :describe_account_attributes
            Aws::PinpointSMSVoiceV2::Endpoints::DescribeAccountAttributes.build(context)
          when :describe_account_limits
            Aws::PinpointSMSVoiceV2::Endpoints::DescribeAccountLimits.build(context)
          when :describe_configuration_sets
            Aws::PinpointSMSVoiceV2::Endpoints::DescribeConfigurationSets.build(context)
          when :describe_keywords
            Aws::PinpointSMSVoiceV2::Endpoints::DescribeKeywords.build(context)
          when :describe_opt_out_lists
            Aws::PinpointSMSVoiceV2::Endpoints::DescribeOptOutLists.build(context)
          when :describe_opted_out_numbers
            Aws::PinpointSMSVoiceV2::Endpoints::DescribeOptedOutNumbers.build(context)
          when :describe_phone_numbers
            Aws::PinpointSMSVoiceV2::Endpoints::DescribePhoneNumbers.build(context)
          when :describe_pools
            Aws::PinpointSMSVoiceV2::Endpoints::DescribePools.build(context)
          when :describe_sender_ids
            Aws::PinpointSMSVoiceV2::Endpoints::DescribeSenderIds.build(context)
          when :describe_spend_limits
            Aws::PinpointSMSVoiceV2::Endpoints::DescribeSpendLimits.build(context)
          when :disassociate_origination_identity
            Aws::PinpointSMSVoiceV2::Endpoints::DisassociateOriginationIdentity.build(context)
          when :list_pool_origination_identities
            Aws::PinpointSMSVoiceV2::Endpoints::ListPoolOriginationIdentities.build(context)
          when :list_tags_for_resource
            Aws::PinpointSMSVoiceV2::Endpoints::ListTagsForResource.build(context)
          when :put_keyword
            Aws::PinpointSMSVoiceV2::Endpoints::PutKeyword.build(context)
          when :put_opted_out_number
            Aws::PinpointSMSVoiceV2::Endpoints::PutOptedOutNumber.build(context)
          when :release_phone_number
            Aws::PinpointSMSVoiceV2::Endpoints::ReleasePhoneNumber.build(context)
          when :request_phone_number
            Aws::PinpointSMSVoiceV2::Endpoints::RequestPhoneNumber.build(context)
          when :send_text_message
            Aws::PinpointSMSVoiceV2::Endpoints::SendTextMessage.build(context)
          when :send_voice_message
            Aws::PinpointSMSVoiceV2::Endpoints::SendVoiceMessage.build(context)
          when :set_default_message_type
            Aws::PinpointSMSVoiceV2::Endpoints::SetDefaultMessageType.build(context)
          when :set_default_sender_id
            Aws::PinpointSMSVoiceV2::Endpoints::SetDefaultSenderId.build(context)
          when :set_text_message_spend_limit_override
            Aws::PinpointSMSVoiceV2::Endpoints::SetTextMessageSpendLimitOverride.build(context)
          when :set_voice_message_spend_limit_override
            Aws::PinpointSMSVoiceV2::Endpoints::SetVoiceMessageSpendLimitOverride.build(context)
          when :tag_resource
            Aws::PinpointSMSVoiceV2::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::PinpointSMSVoiceV2::Endpoints::UntagResource.build(context)
          when :update_event_destination
            Aws::PinpointSMSVoiceV2::Endpoints::UpdateEventDestination.build(context)
          when :update_phone_number
            Aws::PinpointSMSVoiceV2::Endpoints::UpdatePhoneNumber.build(context)
          when :update_pool
            Aws::PinpointSMSVoiceV2::Endpoints::UpdatePool.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
