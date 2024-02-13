# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::IVSRealTime
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::IVSRealTime::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::IVSRealTime::EndpointParameters`'
      ) do |cfg|
        Aws::IVSRealTime::EndpointProvider.new
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
          when :create_encoder_configuration
            Aws::IVSRealTime::Endpoints::CreateEncoderConfiguration.build(context)
          when :create_participant_token
            Aws::IVSRealTime::Endpoints::CreateParticipantToken.build(context)
          when :create_stage
            Aws::IVSRealTime::Endpoints::CreateStage.build(context)
          when :create_storage_configuration
            Aws::IVSRealTime::Endpoints::CreateStorageConfiguration.build(context)
          when :delete_encoder_configuration
            Aws::IVSRealTime::Endpoints::DeleteEncoderConfiguration.build(context)
          when :delete_stage
            Aws::IVSRealTime::Endpoints::DeleteStage.build(context)
          when :delete_storage_configuration
            Aws::IVSRealTime::Endpoints::DeleteStorageConfiguration.build(context)
          when :disconnect_participant
            Aws::IVSRealTime::Endpoints::DisconnectParticipant.build(context)
          when :get_composition
            Aws::IVSRealTime::Endpoints::GetComposition.build(context)
          when :get_encoder_configuration
            Aws::IVSRealTime::Endpoints::GetEncoderConfiguration.build(context)
          when :get_participant
            Aws::IVSRealTime::Endpoints::GetParticipant.build(context)
          when :get_stage
            Aws::IVSRealTime::Endpoints::GetStage.build(context)
          when :get_stage_session
            Aws::IVSRealTime::Endpoints::GetStageSession.build(context)
          when :get_storage_configuration
            Aws::IVSRealTime::Endpoints::GetStorageConfiguration.build(context)
          when :list_compositions
            Aws::IVSRealTime::Endpoints::ListCompositions.build(context)
          when :list_encoder_configurations
            Aws::IVSRealTime::Endpoints::ListEncoderConfigurations.build(context)
          when :list_participant_events
            Aws::IVSRealTime::Endpoints::ListParticipantEvents.build(context)
          when :list_participants
            Aws::IVSRealTime::Endpoints::ListParticipants.build(context)
          when :list_stage_sessions
            Aws::IVSRealTime::Endpoints::ListStageSessions.build(context)
          when :list_stages
            Aws::IVSRealTime::Endpoints::ListStages.build(context)
          when :list_storage_configurations
            Aws::IVSRealTime::Endpoints::ListStorageConfigurations.build(context)
          when :list_tags_for_resource
            Aws::IVSRealTime::Endpoints::ListTagsForResource.build(context)
          when :start_composition
            Aws::IVSRealTime::Endpoints::StartComposition.build(context)
          when :stop_composition
            Aws::IVSRealTime::Endpoints::StopComposition.build(context)
          when :tag_resource
            Aws::IVSRealTime::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::IVSRealTime::Endpoints::UntagResource.build(context)
          when :update_stage
            Aws::IVSRealTime::Endpoints::UpdateStage.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
