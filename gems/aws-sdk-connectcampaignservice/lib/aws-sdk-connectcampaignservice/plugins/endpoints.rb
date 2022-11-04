# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ConnectCampaignService
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ConnectCampaignService::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ConnectCampaignService::EndpointParameters`'
      ) do |cfg|
        Aws::ConnectCampaignService::EndpointProvider.new
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
          when :create_campaign
            Aws::ConnectCampaignService::Endpoints::CreateCampaign.build(context)
          when :delete_campaign
            Aws::ConnectCampaignService::Endpoints::DeleteCampaign.build(context)
          when :delete_connect_instance_config
            Aws::ConnectCampaignService::Endpoints::DeleteConnectInstanceConfig.build(context)
          when :delete_instance_onboarding_job
            Aws::ConnectCampaignService::Endpoints::DeleteInstanceOnboardingJob.build(context)
          when :describe_campaign
            Aws::ConnectCampaignService::Endpoints::DescribeCampaign.build(context)
          when :get_campaign_state
            Aws::ConnectCampaignService::Endpoints::GetCampaignState.build(context)
          when :get_campaign_state_batch
            Aws::ConnectCampaignService::Endpoints::GetCampaignStateBatch.build(context)
          when :get_connect_instance_config
            Aws::ConnectCampaignService::Endpoints::GetConnectInstanceConfig.build(context)
          when :get_instance_onboarding_job_status
            Aws::ConnectCampaignService::Endpoints::GetInstanceOnboardingJobStatus.build(context)
          when :list_campaigns
            Aws::ConnectCampaignService::Endpoints::ListCampaigns.build(context)
          when :list_tags_for_resource
            Aws::ConnectCampaignService::Endpoints::ListTagsForResource.build(context)
          when :pause_campaign
            Aws::ConnectCampaignService::Endpoints::PauseCampaign.build(context)
          when :put_dial_request_batch
            Aws::ConnectCampaignService::Endpoints::PutDialRequestBatch.build(context)
          when :resume_campaign
            Aws::ConnectCampaignService::Endpoints::ResumeCampaign.build(context)
          when :start_campaign
            Aws::ConnectCampaignService::Endpoints::StartCampaign.build(context)
          when :start_instance_onboarding_job
            Aws::ConnectCampaignService::Endpoints::StartInstanceOnboardingJob.build(context)
          when :stop_campaign
            Aws::ConnectCampaignService::Endpoints::StopCampaign.build(context)
          when :tag_resource
            Aws::ConnectCampaignService::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::ConnectCampaignService::Endpoints::UntagResource.build(context)
          when :update_campaign_dialer_config
            Aws::ConnectCampaignService::Endpoints::UpdateCampaignDialerConfig.build(context)
          when :update_campaign_name
            Aws::ConnectCampaignService::Endpoints::UpdateCampaignName.build(context)
          when :update_campaign_outbound_call_config
            Aws::ConnectCampaignService::Endpoints::UpdateCampaignOutboundCallConfig.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
