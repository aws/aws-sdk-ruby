# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Pinpoint
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Pinpoint::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Pinpoint::EndpointParameters`'
      ) do |cfg|
        Aws::Pinpoint::EndpointProvider.new
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
          when :create_app
            Aws::Pinpoint::Endpoints::CreateApp.build(context)
          when :create_campaign
            Aws::Pinpoint::Endpoints::CreateCampaign.build(context)
          when :create_email_template
            Aws::Pinpoint::Endpoints::CreateEmailTemplate.build(context)
          when :create_export_job
            Aws::Pinpoint::Endpoints::CreateExportJob.build(context)
          when :create_import_job
            Aws::Pinpoint::Endpoints::CreateImportJob.build(context)
          when :create_in_app_template
            Aws::Pinpoint::Endpoints::CreateInAppTemplate.build(context)
          when :create_journey
            Aws::Pinpoint::Endpoints::CreateJourney.build(context)
          when :create_push_template
            Aws::Pinpoint::Endpoints::CreatePushTemplate.build(context)
          when :create_recommender_configuration
            Aws::Pinpoint::Endpoints::CreateRecommenderConfiguration.build(context)
          when :create_segment
            Aws::Pinpoint::Endpoints::CreateSegment.build(context)
          when :create_sms_template
            Aws::Pinpoint::Endpoints::CreateSmsTemplate.build(context)
          when :create_voice_template
            Aws::Pinpoint::Endpoints::CreateVoiceTemplate.build(context)
          when :delete_adm_channel
            Aws::Pinpoint::Endpoints::DeleteAdmChannel.build(context)
          when :delete_apns_channel
            Aws::Pinpoint::Endpoints::DeleteApnsChannel.build(context)
          when :delete_apns_sandbox_channel
            Aws::Pinpoint::Endpoints::DeleteApnsSandboxChannel.build(context)
          when :delete_apns_voip_channel
            Aws::Pinpoint::Endpoints::DeleteApnsVoipChannel.build(context)
          when :delete_apns_voip_sandbox_channel
            Aws::Pinpoint::Endpoints::DeleteApnsVoipSandboxChannel.build(context)
          when :delete_app
            Aws::Pinpoint::Endpoints::DeleteApp.build(context)
          when :delete_baidu_channel
            Aws::Pinpoint::Endpoints::DeleteBaiduChannel.build(context)
          when :delete_campaign
            Aws::Pinpoint::Endpoints::DeleteCampaign.build(context)
          when :delete_email_channel
            Aws::Pinpoint::Endpoints::DeleteEmailChannel.build(context)
          when :delete_email_template
            Aws::Pinpoint::Endpoints::DeleteEmailTemplate.build(context)
          when :delete_endpoint
            Aws::Pinpoint::Endpoints::DeleteEndpoint.build(context)
          when :delete_event_stream
            Aws::Pinpoint::Endpoints::DeleteEventStream.build(context)
          when :delete_gcm_channel
            Aws::Pinpoint::Endpoints::DeleteGcmChannel.build(context)
          when :delete_in_app_template
            Aws::Pinpoint::Endpoints::DeleteInAppTemplate.build(context)
          when :delete_journey
            Aws::Pinpoint::Endpoints::DeleteJourney.build(context)
          when :delete_push_template
            Aws::Pinpoint::Endpoints::DeletePushTemplate.build(context)
          when :delete_recommender_configuration
            Aws::Pinpoint::Endpoints::DeleteRecommenderConfiguration.build(context)
          when :delete_segment
            Aws::Pinpoint::Endpoints::DeleteSegment.build(context)
          when :delete_sms_channel
            Aws::Pinpoint::Endpoints::DeleteSmsChannel.build(context)
          when :delete_sms_template
            Aws::Pinpoint::Endpoints::DeleteSmsTemplate.build(context)
          when :delete_user_endpoints
            Aws::Pinpoint::Endpoints::DeleteUserEndpoints.build(context)
          when :delete_voice_channel
            Aws::Pinpoint::Endpoints::DeleteVoiceChannel.build(context)
          when :delete_voice_template
            Aws::Pinpoint::Endpoints::DeleteVoiceTemplate.build(context)
          when :get_adm_channel
            Aws::Pinpoint::Endpoints::GetAdmChannel.build(context)
          when :get_apns_channel
            Aws::Pinpoint::Endpoints::GetApnsChannel.build(context)
          when :get_apns_sandbox_channel
            Aws::Pinpoint::Endpoints::GetApnsSandboxChannel.build(context)
          when :get_apns_voip_channel
            Aws::Pinpoint::Endpoints::GetApnsVoipChannel.build(context)
          when :get_apns_voip_sandbox_channel
            Aws::Pinpoint::Endpoints::GetApnsVoipSandboxChannel.build(context)
          when :get_app
            Aws::Pinpoint::Endpoints::GetApp.build(context)
          when :get_application_date_range_kpi
            Aws::Pinpoint::Endpoints::GetApplicationDateRangeKpi.build(context)
          when :get_application_settings
            Aws::Pinpoint::Endpoints::GetApplicationSettings.build(context)
          when :get_apps
            Aws::Pinpoint::Endpoints::GetApps.build(context)
          when :get_baidu_channel
            Aws::Pinpoint::Endpoints::GetBaiduChannel.build(context)
          when :get_campaign
            Aws::Pinpoint::Endpoints::GetCampaign.build(context)
          when :get_campaign_activities
            Aws::Pinpoint::Endpoints::GetCampaignActivities.build(context)
          when :get_campaign_date_range_kpi
            Aws::Pinpoint::Endpoints::GetCampaignDateRangeKpi.build(context)
          when :get_campaign_version
            Aws::Pinpoint::Endpoints::GetCampaignVersion.build(context)
          when :get_campaign_versions
            Aws::Pinpoint::Endpoints::GetCampaignVersions.build(context)
          when :get_campaigns
            Aws::Pinpoint::Endpoints::GetCampaigns.build(context)
          when :get_channels
            Aws::Pinpoint::Endpoints::GetChannels.build(context)
          when :get_email_channel
            Aws::Pinpoint::Endpoints::GetEmailChannel.build(context)
          when :get_email_template
            Aws::Pinpoint::Endpoints::GetEmailTemplate.build(context)
          when :get_endpoint
            Aws::Pinpoint::Endpoints::GetEndpoint.build(context)
          when :get_event_stream
            Aws::Pinpoint::Endpoints::GetEventStream.build(context)
          when :get_export_job
            Aws::Pinpoint::Endpoints::GetExportJob.build(context)
          when :get_export_jobs
            Aws::Pinpoint::Endpoints::GetExportJobs.build(context)
          when :get_gcm_channel
            Aws::Pinpoint::Endpoints::GetGcmChannel.build(context)
          when :get_import_job
            Aws::Pinpoint::Endpoints::GetImportJob.build(context)
          when :get_import_jobs
            Aws::Pinpoint::Endpoints::GetImportJobs.build(context)
          when :get_in_app_messages
            Aws::Pinpoint::Endpoints::GetInAppMessages.build(context)
          when :get_in_app_template
            Aws::Pinpoint::Endpoints::GetInAppTemplate.build(context)
          when :get_journey
            Aws::Pinpoint::Endpoints::GetJourney.build(context)
          when :get_journey_date_range_kpi
            Aws::Pinpoint::Endpoints::GetJourneyDateRangeKpi.build(context)
          when :get_journey_execution_activity_metrics
            Aws::Pinpoint::Endpoints::GetJourneyExecutionActivityMetrics.build(context)
          when :get_journey_execution_metrics
            Aws::Pinpoint::Endpoints::GetJourneyExecutionMetrics.build(context)
          when :get_journey_run_execution_activity_metrics
            Aws::Pinpoint::Endpoints::GetJourneyRunExecutionActivityMetrics.build(context)
          when :get_journey_run_execution_metrics
            Aws::Pinpoint::Endpoints::GetJourneyRunExecutionMetrics.build(context)
          when :get_journey_runs
            Aws::Pinpoint::Endpoints::GetJourneyRuns.build(context)
          when :get_push_template
            Aws::Pinpoint::Endpoints::GetPushTemplate.build(context)
          when :get_recommender_configuration
            Aws::Pinpoint::Endpoints::GetRecommenderConfiguration.build(context)
          when :get_recommender_configurations
            Aws::Pinpoint::Endpoints::GetRecommenderConfigurations.build(context)
          when :get_segment
            Aws::Pinpoint::Endpoints::GetSegment.build(context)
          when :get_segment_export_jobs
            Aws::Pinpoint::Endpoints::GetSegmentExportJobs.build(context)
          when :get_segment_import_jobs
            Aws::Pinpoint::Endpoints::GetSegmentImportJobs.build(context)
          when :get_segment_version
            Aws::Pinpoint::Endpoints::GetSegmentVersion.build(context)
          when :get_segment_versions
            Aws::Pinpoint::Endpoints::GetSegmentVersions.build(context)
          when :get_segments
            Aws::Pinpoint::Endpoints::GetSegments.build(context)
          when :get_sms_channel
            Aws::Pinpoint::Endpoints::GetSmsChannel.build(context)
          when :get_sms_template
            Aws::Pinpoint::Endpoints::GetSmsTemplate.build(context)
          when :get_user_endpoints
            Aws::Pinpoint::Endpoints::GetUserEndpoints.build(context)
          when :get_voice_channel
            Aws::Pinpoint::Endpoints::GetVoiceChannel.build(context)
          when :get_voice_template
            Aws::Pinpoint::Endpoints::GetVoiceTemplate.build(context)
          when :list_journeys
            Aws::Pinpoint::Endpoints::ListJourneys.build(context)
          when :list_tags_for_resource
            Aws::Pinpoint::Endpoints::ListTagsForResource.build(context)
          when :list_template_versions
            Aws::Pinpoint::Endpoints::ListTemplateVersions.build(context)
          when :list_templates
            Aws::Pinpoint::Endpoints::ListTemplates.build(context)
          when :phone_number_validate
            Aws::Pinpoint::Endpoints::PhoneNumberValidate.build(context)
          when :put_event_stream
            Aws::Pinpoint::Endpoints::PutEventStream.build(context)
          when :put_events
            Aws::Pinpoint::Endpoints::PutEvents.build(context)
          when :remove_attributes
            Aws::Pinpoint::Endpoints::RemoveAttributes.build(context)
          when :send_messages
            Aws::Pinpoint::Endpoints::SendMessages.build(context)
          when :send_otp_message
            Aws::Pinpoint::Endpoints::SendOTPMessage.build(context)
          when :send_users_messages
            Aws::Pinpoint::Endpoints::SendUsersMessages.build(context)
          when :tag_resource
            Aws::Pinpoint::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Pinpoint::Endpoints::UntagResource.build(context)
          when :update_adm_channel
            Aws::Pinpoint::Endpoints::UpdateAdmChannel.build(context)
          when :update_apns_channel
            Aws::Pinpoint::Endpoints::UpdateApnsChannel.build(context)
          when :update_apns_sandbox_channel
            Aws::Pinpoint::Endpoints::UpdateApnsSandboxChannel.build(context)
          when :update_apns_voip_channel
            Aws::Pinpoint::Endpoints::UpdateApnsVoipChannel.build(context)
          when :update_apns_voip_sandbox_channel
            Aws::Pinpoint::Endpoints::UpdateApnsVoipSandboxChannel.build(context)
          when :update_application_settings
            Aws::Pinpoint::Endpoints::UpdateApplicationSettings.build(context)
          when :update_baidu_channel
            Aws::Pinpoint::Endpoints::UpdateBaiduChannel.build(context)
          when :update_campaign
            Aws::Pinpoint::Endpoints::UpdateCampaign.build(context)
          when :update_email_channel
            Aws::Pinpoint::Endpoints::UpdateEmailChannel.build(context)
          when :update_email_template
            Aws::Pinpoint::Endpoints::UpdateEmailTemplate.build(context)
          when :update_endpoint
            Aws::Pinpoint::Endpoints::UpdateEndpoint.build(context)
          when :update_endpoints_batch
            Aws::Pinpoint::Endpoints::UpdateEndpointsBatch.build(context)
          when :update_gcm_channel
            Aws::Pinpoint::Endpoints::UpdateGcmChannel.build(context)
          when :update_in_app_template
            Aws::Pinpoint::Endpoints::UpdateInAppTemplate.build(context)
          when :update_journey
            Aws::Pinpoint::Endpoints::UpdateJourney.build(context)
          when :update_journey_state
            Aws::Pinpoint::Endpoints::UpdateJourneyState.build(context)
          when :update_push_template
            Aws::Pinpoint::Endpoints::UpdatePushTemplate.build(context)
          when :update_recommender_configuration
            Aws::Pinpoint::Endpoints::UpdateRecommenderConfiguration.build(context)
          when :update_segment
            Aws::Pinpoint::Endpoints::UpdateSegment.build(context)
          when :update_sms_channel
            Aws::Pinpoint::Endpoints::UpdateSmsChannel.build(context)
          when :update_sms_template
            Aws::Pinpoint::Endpoints::UpdateSmsTemplate.build(context)
          when :update_template_active_version
            Aws::Pinpoint::Endpoints::UpdateTemplateActiveVersion.build(context)
          when :update_voice_channel
            Aws::Pinpoint::Endpoints::UpdateVoiceChannel.build(context)
          when :update_voice_template
            Aws::Pinpoint::Endpoints::UpdateVoiceTemplate.build(context)
          when :verify_otp_message
            Aws::Pinpoint::Endpoints::VerifyOTPMessage.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
