# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::NimbleStudio
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::NimbleStudio::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::NimbleStudio::EndpointParameters`'
      ) do |cfg|
        Aws::NimbleStudio::EndpointProvider.new
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
          when :accept_eulas
            Aws::NimbleStudio::Endpoints::AcceptEulas.build(context)
          when :create_launch_profile
            Aws::NimbleStudio::Endpoints::CreateLaunchProfile.build(context)
          when :create_streaming_image
            Aws::NimbleStudio::Endpoints::CreateStreamingImage.build(context)
          when :create_streaming_session
            Aws::NimbleStudio::Endpoints::CreateStreamingSession.build(context)
          when :create_streaming_session_stream
            Aws::NimbleStudio::Endpoints::CreateStreamingSessionStream.build(context)
          when :create_studio
            Aws::NimbleStudio::Endpoints::CreateStudio.build(context)
          when :create_studio_component
            Aws::NimbleStudio::Endpoints::CreateStudioComponent.build(context)
          when :delete_launch_profile
            Aws::NimbleStudio::Endpoints::DeleteLaunchProfile.build(context)
          when :delete_launch_profile_member
            Aws::NimbleStudio::Endpoints::DeleteLaunchProfileMember.build(context)
          when :delete_streaming_image
            Aws::NimbleStudio::Endpoints::DeleteStreamingImage.build(context)
          when :delete_streaming_session
            Aws::NimbleStudio::Endpoints::DeleteStreamingSession.build(context)
          when :delete_studio
            Aws::NimbleStudio::Endpoints::DeleteStudio.build(context)
          when :delete_studio_component
            Aws::NimbleStudio::Endpoints::DeleteStudioComponent.build(context)
          when :delete_studio_member
            Aws::NimbleStudio::Endpoints::DeleteStudioMember.build(context)
          when :get_eula
            Aws::NimbleStudio::Endpoints::GetEula.build(context)
          when :get_launch_profile
            Aws::NimbleStudio::Endpoints::GetLaunchProfile.build(context)
          when :get_launch_profile_details
            Aws::NimbleStudio::Endpoints::GetLaunchProfileDetails.build(context)
          when :get_launch_profile_initialization
            Aws::NimbleStudio::Endpoints::GetLaunchProfileInitialization.build(context)
          when :get_launch_profile_member
            Aws::NimbleStudio::Endpoints::GetLaunchProfileMember.build(context)
          when :get_streaming_image
            Aws::NimbleStudio::Endpoints::GetStreamingImage.build(context)
          when :get_streaming_session
            Aws::NimbleStudio::Endpoints::GetStreamingSession.build(context)
          when :get_streaming_session_backup
            Aws::NimbleStudio::Endpoints::GetStreamingSessionBackup.build(context)
          when :get_streaming_session_stream
            Aws::NimbleStudio::Endpoints::GetStreamingSessionStream.build(context)
          when :get_studio
            Aws::NimbleStudio::Endpoints::GetStudio.build(context)
          when :get_studio_component
            Aws::NimbleStudio::Endpoints::GetStudioComponent.build(context)
          when :get_studio_member
            Aws::NimbleStudio::Endpoints::GetStudioMember.build(context)
          when :list_eula_acceptances
            Aws::NimbleStudio::Endpoints::ListEulaAcceptances.build(context)
          when :list_eulas
            Aws::NimbleStudio::Endpoints::ListEulas.build(context)
          when :list_launch_profile_members
            Aws::NimbleStudio::Endpoints::ListLaunchProfileMembers.build(context)
          when :list_launch_profiles
            Aws::NimbleStudio::Endpoints::ListLaunchProfiles.build(context)
          when :list_streaming_images
            Aws::NimbleStudio::Endpoints::ListStreamingImages.build(context)
          when :list_streaming_session_backups
            Aws::NimbleStudio::Endpoints::ListStreamingSessionBackups.build(context)
          when :list_streaming_sessions
            Aws::NimbleStudio::Endpoints::ListStreamingSessions.build(context)
          when :list_studio_components
            Aws::NimbleStudio::Endpoints::ListStudioComponents.build(context)
          when :list_studio_members
            Aws::NimbleStudio::Endpoints::ListStudioMembers.build(context)
          when :list_studios
            Aws::NimbleStudio::Endpoints::ListStudios.build(context)
          when :list_tags_for_resource
            Aws::NimbleStudio::Endpoints::ListTagsForResource.build(context)
          when :put_launch_profile_members
            Aws::NimbleStudio::Endpoints::PutLaunchProfileMembers.build(context)
          when :put_studio_members
            Aws::NimbleStudio::Endpoints::PutStudioMembers.build(context)
          when :start_streaming_session
            Aws::NimbleStudio::Endpoints::StartStreamingSession.build(context)
          when :start_studio_sso_configuration_repair
            Aws::NimbleStudio::Endpoints::StartStudioSSOConfigurationRepair.build(context)
          when :stop_streaming_session
            Aws::NimbleStudio::Endpoints::StopStreamingSession.build(context)
          when :tag_resource
            Aws::NimbleStudio::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::NimbleStudio::Endpoints::UntagResource.build(context)
          when :update_launch_profile
            Aws::NimbleStudio::Endpoints::UpdateLaunchProfile.build(context)
          when :update_launch_profile_member
            Aws::NimbleStudio::Endpoints::UpdateLaunchProfileMember.build(context)
          when :update_streaming_image
            Aws::NimbleStudio::Endpoints::UpdateStreamingImage.build(context)
          when :update_studio
            Aws::NimbleStudio::Endpoints::UpdateStudio.build(context)
          when :update_studio_component
            Aws::NimbleStudio::Endpoints::UpdateStudioComponent.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
