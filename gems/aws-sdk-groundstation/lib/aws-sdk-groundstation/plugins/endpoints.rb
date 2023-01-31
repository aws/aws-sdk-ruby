# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::GroundStation
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::GroundStation::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::GroundStation::EndpointParameters`'
      ) do |cfg|
        Aws::GroundStation::EndpointProvider.new
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
          when :cancel_contact
            Aws::GroundStation::Endpoints::CancelContact.build(context)
          when :create_config
            Aws::GroundStation::Endpoints::CreateConfig.build(context)
          when :create_dataflow_endpoint_group
            Aws::GroundStation::Endpoints::CreateDataflowEndpointGroup.build(context)
          when :create_ephemeris
            Aws::GroundStation::Endpoints::CreateEphemeris.build(context)
          when :create_mission_profile
            Aws::GroundStation::Endpoints::CreateMissionProfile.build(context)
          when :delete_config
            Aws::GroundStation::Endpoints::DeleteConfig.build(context)
          when :delete_dataflow_endpoint_group
            Aws::GroundStation::Endpoints::DeleteDataflowEndpointGroup.build(context)
          when :delete_ephemeris
            Aws::GroundStation::Endpoints::DeleteEphemeris.build(context)
          when :delete_mission_profile
            Aws::GroundStation::Endpoints::DeleteMissionProfile.build(context)
          when :describe_contact
            Aws::GroundStation::Endpoints::DescribeContact.build(context)
          when :describe_ephemeris
            Aws::GroundStation::Endpoints::DescribeEphemeris.build(context)
          when :get_agent_configuration
            Aws::GroundStation::Endpoints::GetAgentConfiguration.build(context)
          when :get_config
            Aws::GroundStation::Endpoints::GetConfig.build(context)
          when :get_dataflow_endpoint_group
            Aws::GroundStation::Endpoints::GetDataflowEndpointGroup.build(context)
          when :get_minute_usage
            Aws::GroundStation::Endpoints::GetMinuteUsage.build(context)
          when :get_mission_profile
            Aws::GroundStation::Endpoints::GetMissionProfile.build(context)
          when :get_satellite
            Aws::GroundStation::Endpoints::GetSatellite.build(context)
          when :list_configs
            Aws::GroundStation::Endpoints::ListConfigs.build(context)
          when :list_contacts
            Aws::GroundStation::Endpoints::ListContacts.build(context)
          when :list_dataflow_endpoint_groups
            Aws::GroundStation::Endpoints::ListDataflowEndpointGroups.build(context)
          when :list_ephemerides
            Aws::GroundStation::Endpoints::ListEphemerides.build(context)
          when :list_ground_stations
            Aws::GroundStation::Endpoints::ListGroundStations.build(context)
          when :list_mission_profiles
            Aws::GroundStation::Endpoints::ListMissionProfiles.build(context)
          when :list_satellites
            Aws::GroundStation::Endpoints::ListSatellites.build(context)
          when :list_tags_for_resource
            Aws::GroundStation::Endpoints::ListTagsForResource.build(context)
          when :register_agent
            Aws::GroundStation::Endpoints::RegisterAgent.build(context)
          when :reserve_contact
            Aws::GroundStation::Endpoints::ReserveContact.build(context)
          when :tag_resource
            Aws::GroundStation::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::GroundStation::Endpoints::UntagResource.build(context)
          when :update_agent_status
            Aws::GroundStation::Endpoints::UpdateAgentStatus.build(context)
          when :update_config
            Aws::GroundStation::Endpoints::UpdateConfig.build(context)
          when :update_ephemeris
            Aws::GroundStation::Endpoints::UpdateEphemeris.build(context)
          when :update_mission_profile
            Aws::GroundStation::Endpoints::UpdateMissionProfile.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
