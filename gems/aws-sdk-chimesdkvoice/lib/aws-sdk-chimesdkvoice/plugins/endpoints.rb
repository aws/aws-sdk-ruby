# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ChimeSDKVoice
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ChimeSDKVoice::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ChimeSDKVoice::EndpointParameters`'
      ) do |cfg|
        Aws::ChimeSDKVoice::EndpointProvider.new
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
          when :associate_phone_numbers_with_voice_connector
            Aws::ChimeSDKVoice::Endpoints::AssociatePhoneNumbersWithVoiceConnector.build(context)
          when :associate_phone_numbers_with_voice_connector_group
            Aws::ChimeSDKVoice::Endpoints::AssociatePhoneNumbersWithVoiceConnectorGroup.build(context)
          when :batch_delete_phone_number
            Aws::ChimeSDKVoice::Endpoints::BatchDeletePhoneNumber.build(context)
          when :batch_update_phone_number
            Aws::ChimeSDKVoice::Endpoints::BatchUpdatePhoneNumber.build(context)
          when :create_phone_number_order
            Aws::ChimeSDKVoice::Endpoints::CreatePhoneNumberOrder.build(context)
          when :create_proxy_session
            Aws::ChimeSDKVoice::Endpoints::CreateProxySession.build(context)
          when :create_sip_media_application
            Aws::ChimeSDKVoice::Endpoints::CreateSipMediaApplication.build(context)
          when :create_sip_media_application_call
            Aws::ChimeSDKVoice::Endpoints::CreateSipMediaApplicationCall.build(context)
          when :create_sip_rule
            Aws::ChimeSDKVoice::Endpoints::CreateSipRule.build(context)
          when :create_voice_connector
            Aws::ChimeSDKVoice::Endpoints::CreateVoiceConnector.build(context)
          when :create_voice_connector_group
            Aws::ChimeSDKVoice::Endpoints::CreateVoiceConnectorGroup.build(context)
          when :create_voice_profile
            Aws::ChimeSDKVoice::Endpoints::CreateVoiceProfile.build(context)
          when :create_voice_profile_domain
            Aws::ChimeSDKVoice::Endpoints::CreateVoiceProfileDomain.build(context)
          when :delete_phone_number
            Aws::ChimeSDKVoice::Endpoints::DeletePhoneNumber.build(context)
          when :delete_proxy_session
            Aws::ChimeSDKVoice::Endpoints::DeleteProxySession.build(context)
          when :delete_sip_media_application
            Aws::ChimeSDKVoice::Endpoints::DeleteSipMediaApplication.build(context)
          when :delete_sip_rule
            Aws::ChimeSDKVoice::Endpoints::DeleteSipRule.build(context)
          when :delete_voice_connector
            Aws::ChimeSDKVoice::Endpoints::DeleteVoiceConnector.build(context)
          when :delete_voice_connector_emergency_calling_configuration
            Aws::ChimeSDKVoice::Endpoints::DeleteVoiceConnectorEmergencyCallingConfiguration.build(context)
          when :delete_voice_connector_group
            Aws::ChimeSDKVoice::Endpoints::DeleteVoiceConnectorGroup.build(context)
          when :delete_voice_connector_origination
            Aws::ChimeSDKVoice::Endpoints::DeleteVoiceConnectorOrigination.build(context)
          when :delete_voice_connector_proxy
            Aws::ChimeSDKVoice::Endpoints::DeleteVoiceConnectorProxy.build(context)
          when :delete_voice_connector_streaming_configuration
            Aws::ChimeSDKVoice::Endpoints::DeleteVoiceConnectorStreamingConfiguration.build(context)
          when :delete_voice_connector_termination
            Aws::ChimeSDKVoice::Endpoints::DeleteVoiceConnectorTermination.build(context)
          when :delete_voice_connector_termination_credentials
            Aws::ChimeSDKVoice::Endpoints::DeleteVoiceConnectorTerminationCredentials.build(context)
          when :delete_voice_profile
            Aws::ChimeSDKVoice::Endpoints::DeleteVoiceProfile.build(context)
          when :delete_voice_profile_domain
            Aws::ChimeSDKVoice::Endpoints::DeleteVoiceProfileDomain.build(context)
          when :disassociate_phone_numbers_from_voice_connector
            Aws::ChimeSDKVoice::Endpoints::DisassociatePhoneNumbersFromVoiceConnector.build(context)
          when :disassociate_phone_numbers_from_voice_connector_group
            Aws::ChimeSDKVoice::Endpoints::DisassociatePhoneNumbersFromVoiceConnectorGroup.build(context)
          when :get_global_settings
            Aws::ChimeSDKVoice::Endpoints::GetGlobalSettings.build(context)
          when :get_phone_number
            Aws::ChimeSDKVoice::Endpoints::GetPhoneNumber.build(context)
          when :get_phone_number_order
            Aws::ChimeSDKVoice::Endpoints::GetPhoneNumberOrder.build(context)
          when :get_phone_number_settings
            Aws::ChimeSDKVoice::Endpoints::GetPhoneNumberSettings.build(context)
          when :get_proxy_session
            Aws::ChimeSDKVoice::Endpoints::GetProxySession.build(context)
          when :get_sip_media_application
            Aws::ChimeSDKVoice::Endpoints::GetSipMediaApplication.build(context)
          when :get_sip_media_application_alexa_skill_configuration
            Aws::ChimeSDKVoice::Endpoints::GetSipMediaApplicationAlexaSkillConfiguration.build(context)
          when :get_sip_media_application_logging_configuration
            Aws::ChimeSDKVoice::Endpoints::GetSipMediaApplicationLoggingConfiguration.build(context)
          when :get_sip_rule
            Aws::ChimeSDKVoice::Endpoints::GetSipRule.build(context)
          when :get_speaker_search_task
            Aws::ChimeSDKVoice::Endpoints::GetSpeakerSearchTask.build(context)
          when :get_voice_connector
            Aws::ChimeSDKVoice::Endpoints::GetVoiceConnector.build(context)
          when :get_voice_connector_emergency_calling_configuration
            Aws::ChimeSDKVoice::Endpoints::GetVoiceConnectorEmergencyCallingConfiguration.build(context)
          when :get_voice_connector_group
            Aws::ChimeSDKVoice::Endpoints::GetVoiceConnectorGroup.build(context)
          when :get_voice_connector_logging_configuration
            Aws::ChimeSDKVoice::Endpoints::GetVoiceConnectorLoggingConfiguration.build(context)
          when :get_voice_connector_origination
            Aws::ChimeSDKVoice::Endpoints::GetVoiceConnectorOrigination.build(context)
          when :get_voice_connector_proxy
            Aws::ChimeSDKVoice::Endpoints::GetVoiceConnectorProxy.build(context)
          when :get_voice_connector_streaming_configuration
            Aws::ChimeSDKVoice::Endpoints::GetVoiceConnectorStreamingConfiguration.build(context)
          when :get_voice_connector_termination
            Aws::ChimeSDKVoice::Endpoints::GetVoiceConnectorTermination.build(context)
          when :get_voice_connector_termination_health
            Aws::ChimeSDKVoice::Endpoints::GetVoiceConnectorTerminationHealth.build(context)
          when :get_voice_profile
            Aws::ChimeSDKVoice::Endpoints::GetVoiceProfile.build(context)
          when :get_voice_profile_domain
            Aws::ChimeSDKVoice::Endpoints::GetVoiceProfileDomain.build(context)
          when :get_voice_tone_analysis_task
            Aws::ChimeSDKVoice::Endpoints::GetVoiceToneAnalysisTask.build(context)
          when :list_available_voice_connector_regions
            Aws::ChimeSDKVoice::Endpoints::ListAvailableVoiceConnectorRegions.build(context)
          when :list_phone_number_orders
            Aws::ChimeSDKVoice::Endpoints::ListPhoneNumberOrders.build(context)
          when :list_phone_numbers
            Aws::ChimeSDKVoice::Endpoints::ListPhoneNumbers.build(context)
          when :list_proxy_sessions
            Aws::ChimeSDKVoice::Endpoints::ListProxySessions.build(context)
          when :list_sip_media_applications
            Aws::ChimeSDKVoice::Endpoints::ListSipMediaApplications.build(context)
          when :list_sip_rules
            Aws::ChimeSDKVoice::Endpoints::ListSipRules.build(context)
          when :list_supported_phone_number_countries
            Aws::ChimeSDKVoice::Endpoints::ListSupportedPhoneNumberCountries.build(context)
          when :list_tags_for_resource
            Aws::ChimeSDKVoice::Endpoints::ListTagsForResource.build(context)
          when :list_voice_connector_groups
            Aws::ChimeSDKVoice::Endpoints::ListVoiceConnectorGroups.build(context)
          when :list_voice_connector_termination_credentials
            Aws::ChimeSDKVoice::Endpoints::ListVoiceConnectorTerminationCredentials.build(context)
          when :list_voice_connectors
            Aws::ChimeSDKVoice::Endpoints::ListVoiceConnectors.build(context)
          when :list_voice_profile_domains
            Aws::ChimeSDKVoice::Endpoints::ListVoiceProfileDomains.build(context)
          when :list_voice_profiles
            Aws::ChimeSDKVoice::Endpoints::ListVoiceProfiles.build(context)
          when :put_sip_media_application_alexa_skill_configuration
            Aws::ChimeSDKVoice::Endpoints::PutSipMediaApplicationAlexaSkillConfiguration.build(context)
          when :put_sip_media_application_logging_configuration
            Aws::ChimeSDKVoice::Endpoints::PutSipMediaApplicationLoggingConfiguration.build(context)
          when :put_voice_connector_emergency_calling_configuration
            Aws::ChimeSDKVoice::Endpoints::PutVoiceConnectorEmergencyCallingConfiguration.build(context)
          when :put_voice_connector_logging_configuration
            Aws::ChimeSDKVoice::Endpoints::PutVoiceConnectorLoggingConfiguration.build(context)
          when :put_voice_connector_origination
            Aws::ChimeSDKVoice::Endpoints::PutVoiceConnectorOrigination.build(context)
          when :put_voice_connector_proxy
            Aws::ChimeSDKVoice::Endpoints::PutVoiceConnectorProxy.build(context)
          when :put_voice_connector_streaming_configuration
            Aws::ChimeSDKVoice::Endpoints::PutVoiceConnectorStreamingConfiguration.build(context)
          when :put_voice_connector_termination
            Aws::ChimeSDKVoice::Endpoints::PutVoiceConnectorTermination.build(context)
          when :put_voice_connector_termination_credentials
            Aws::ChimeSDKVoice::Endpoints::PutVoiceConnectorTerminationCredentials.build(context)
          when :restore_phone_number
            Aws::ChimeSDKVoice::Endpoints::RestorePhoneNumber.build(context)
          when :search_available_phone_numbers
            Aws::ChimeSDKVoice::Endpoints::SearchAvailablePhoneNumbers.build(context)
          when :start_speaker_search_task
            Aws::ChimeSDKVoice::Endpoints::StartSpeakerSearchTask.build(context)
          when :start_voice_tone_analysis_task
            Aws::ChimeSDKVoice::Endpoints::StartVoiceToneAnalysisTask.build(context)
          when :stop_speaker_search_task
            Aws::ChimeSDKVoice::Endpoints::StopSpeakerSearchTask.build(context)
          when :stop_voice_tone_analysis_task
            Aws::ChimeSDKVoice::Endpoints::StopVoiceToneAnalysisTask.build(context)
          when :tag_resource
            Aws::ChimeSDKVoice::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::ChimeSDKVoice::Endpoints::UntagResource.build(context)
          when :update_global_settings
            Aws::ChimeSDKVoice::Endpoints::UpdateGlobalSettings.build(context)
          when :update_phone_number
            Aws::ChimeSDKVoice::Endpoints::UpdatePhoneNumber.build(context)
          when :update_phone_number_settings
            Aws::ChimeSDKVoice::Endpoints::UpdatePhoneNumberSettings.build(context)
          when :update_proxy_session
            Aws::ChimeSDKVoice::Endpoints::UpdateProxySession.build(context)
          when :update_sip_media_application
            Aws::ChimeSDKVoice::Endpoints::UpdateSipMediaApplication.build(context)
          when :update_sip_media_application_call
            Aws::ChimeSDKVoice::Endpoints::UpdateSipMediaApplicationCall.build(context)
          when :update_sip_rule
            Aws::ChimeSDKVoice::Endpoints::UpdateSipRule.build(context)
          when :update_voice_connector
            Aws::ChimeSDKVoice::Endpoints::UpdateVoiceConnector.build(context)
          when :update_voice_connector_group
            Aws::ChimeSDKVoice::Endpoints::UpdateVoiceConnectorGroup.build(context)
          when :update_voice_profile
            Aws::ChimeSDKVoice::Endpoints::UpdateVoiceProfile.build(context)
          when :update_voice_profile_domain
            Aws::ChimeSDKVoice::Endpoints::UpdateVoiceProfileDomain.build(context)
          when :validate_e911_address
            Aws::ChimeSDKVoice::Endpoints::ValidateE911Address.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
