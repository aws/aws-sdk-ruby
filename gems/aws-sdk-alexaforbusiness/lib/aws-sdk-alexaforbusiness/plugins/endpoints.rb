# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AlexaForBusiness
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::AlexaForBusiness::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::AlexaForBusiness::EndpointParameters`'
      ) do |cfg|
        Aws::AlexaForBusiness::EndpointProvider.new
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
          when :approve_skill
            Aws::AlexaForBusiness::Endpoints::ApproveSkill.build(context)
          when :associate_contact_with_address_book
            Aws::AlexaForBusiness::Endpoints::AssociateContactWithAddressBook.build(context)
          when :associate_device_with_network_profile
            Aws::AlexaForBusiness::Endpoints::AssociateDeviceWithNetworkProfile.build(context)
          when :associate_device_with_room
            Aws::AlexaForBusiness::Endpoints::AssociateDeviceWithRoom.build(context)
          when :associate_skill_group_with_room
            Aws::AlexaForBusiness::Endpoints::AssociateSkillGroupWithRoom.build(context)
          when :associate_skill_with_skill_group
            Aws::AlexaForBusiness::Endpoints::AssociateSkillWithSkillGroup.build(context)
          when :associate_skill_with_users
            Aws::AlexaForBusiness::Endpoints::AssociateSkillWithUsers.build(context)
          when :create_address_book
            Aws::AlexaForBusiness::Endpoints::CreateAddressBook.build(context)
          when :create_business_report_schedule
            Aws::AlexaForBusiness::Endpoints::CreateBusinessReportSchedule.build(context)
          when :create_conference_provider
            Aws::AlexaForBusiness::Endpoints::CreateConferenceProvider.build(context)
          when :create_contact
            Aws::AlexaForBusiness::Endpoints::CreateContact.build(context)
          when :create_gateway_group
            Aws::AlexaForBusiness::Endpoints::CreateGatewayGroup.build(context)
          when :create_network_profile
            Aws::AlexaForBusiness::Endpoints::CreateNetworkProfile.build(context)
          when :create_profile
            Aws::AlexaForBusiness::Endpoints::CreateProfile.build(context)
          when :create_room
            Aws::AlexaForBusiness::Endpoints::CreateRoom.build(context)
          when :create_skill_group
            Aws::AlexaForBusiness::Endpoints::CreateSkillGroup.build(context)
          when :create_user
            Aws::AlexaForBusiness::Endpoints::CreateUser.build(context)
          when :delete_address_book
            Aws::AlexaForBusiness::Endpoints::DeleteAddressBook.build(context)
          when :delete_business_report_schedule
            Aws::AlexaForBusiness::Endpoints::DeleteBusinessReportSchedule.build(context)
          when :delete_conference_provider
            Aws::AlexaForBusiness::Endpoints::DeleteConferenceProvider.build(context)
          when :delete_contact
            Aws::AlexaForBusiness::Endpoints::DeleteContact.build(context)
          when :delete_device
            Aws::AlexaForBusiness::Endpoints::DeleteDevice.build(context)
          when :delete_device_usage_data
            Aws::AlexaForBusiness::Endpoints::DeleteDeviceUsageData.build(context)
          when :delete_gateway_group
            Aws::AlexaForBusiness::Endpoints::DeleteGatewayGroup.build(context)
          when :delete_network_profile
            Aws::AlexaForBusiness::Endpoints::DeleteNetworkProfile.build(context)
          when :delete_profile
            Aws::AlexaForBusiness::Endpoints::DeleteProfile.build(context)
          when :delete_room
            Aws::AlexaForBusiness::Endpoints::DeleteRoom.build(context)
          when :delete_room_skill_parameter
            Aws::AlexaForBusiness::Endpoints::DeleteRoomSkillParameter.build(context)
          when :delete_skill_authorization
            Aws::AlexaForBusiness::Endpoints::DeleteSkillAuthorization.build(context)
          when :delete_skill_group
            Aws::AlexaForBusiness::Endpoints::DeleteSkillGroup.build(context)
          when :delete_user
            Aws::AlexaForBusiness::Endpoints::DeleteUser.build(context)
          when :disassociate_contact_from_address_book
            Aws::AlexaForBusiness::Endpoints::DisassociateContactFromAddressBook.build(context)
          when :disassociate_device_from_room
            Aws::AlexaForBusiness::Endpoints::DisassociateDeviceFromRoom.build(context)
          when :disassociate_skill_from_skill_group
            Aws::AlexaForBusiness::Endpoints::DisassociateSkillFromSkillGroup.build(context)
          when :disassociate_skill_from_users
            Aws::AlexaForBusiness::Endpoints::DisassociateSkillFromUsers.build(context)
          when :disassociate_skill_group_from_room
            Aws::AlexaForBusiness::Endpoints::DisassociateSkillGroupFromRoom.build(context)
          when :forget_smart_home_appliances
            Aws::AlexaForBusiness::Endpoints::ForgetSmartHomeAppliances.build(context)
          when :get_address_book
            Aws::AlexaForBusiness::Endpoints::GetAddressBook.build(context)
          when :get_conference_preference
            Aws::AlexaForBusiness::Endpoints::GetConferencePreference.build(context)
          when :get_conference_provider
            Aws::AlexaForBusiness::Endpoints::GetConferenceProvider.build(context)
          when :get_contact
            Aws::AlexaForBusiness::Endpoints::GetContact.build(context)
          when :get_device
            Aws::AlexaForBusiness::Endpoints::GetDevice.build(context)
          when :get_gateway
            Aws::AlexaForBusiness::Endpoints::GetGateway.build(context)
          when :get_gateway_group
            Aws::AlexaForBusiness::Endpoints::GetGatewayGroup.build(context)
          when :get_invitation_configuration
            Aws::AlexaForBusiness::Endpoints::GetInvitationConfiguration.build(context)
          when :get_network_profile
            Aws::AlexaForBusiness::Endpoints::GetNetworkProfile.build(context)
          when :get_profile
            Aws::AlexaForBusiness::Endpoints::GetProfile.build(context)
          when :get_room
            Aws::AlexaForBusiness::Endpoints::GetRoom.build(context)
          when :get_room_skill_parameter
            Aws::AlexaForBusiness::Endpoints::GetRoomSkillParameter.build(context)
          when :get_skill_group
            Aws::AlexaForBusiness::Endpoints::GetSkillGroup.build(context)
          when :list_business_report_schedules
            Aws::AlexaForBusiness::Endpoints::ListBusinessReportSchedules.build(context)
          when :list_conference_providers
            Aws::AlexaForBusiness::Endpoints::ListConferenceProviders.build(context)
          when :list_device_events
            Aws::AlexaForBusiness::Endpoints::ListDeviceEvents.build(context)
          when :list_gateway_groups
            Aws::AlexaForBusiness::Endpoints::ListGatewayGroups.build(context)
          when :list_gateways
            Aws::AlexaForBusiness::Endpoints::ListGateways.build(context)
          when :list_skills
            Aws::AlexaForBusiness::Endpoints::ListSkills.build(context)
          when :list_skills_store_categories
            Aws::AlexaForBusiness::Endpoints::ListSkillsStoreCategories.build(context)
          when :list_skills_store_skills_by_category
            Aws::AlexaForBusiness::Endpoints::ListSkillsStoreSkillsByCategory.build(context)
          when :list_smart_home_appliances
            Aws::AlexaForBusiness::Endpoints::ListSmartHomeAppliances.build(context)
          when :list_tags
            Aws::AlexaForBusiness::Endpoints::ListTags.build(context)
          when :put_conference_preference
            Aws::AlexaForBusiness::Endpoints::PutConferencePreference.build(context)
          when :put_invitation_configuration
            Aws::AlexaForBusiness::Endpoints::PutInvitationConfiguration.build(context)
          when :put_room_skill_parameter
            Aws::AlexaForBusiness::Endpoints::PutRoomSkillParameter.build(context)
          when :put_skill_authorization
            Aws::AlexaForBusiness::Endpoints::PutSkillAuthorization.build(context)
          when :register_avs_device
            Aws::AlexaForBusiness::Endpoints::RegisterAVSDevice.build(context)
          when :reject_skill
            Aws::AlexaForBusiness::Endpoints::RejectSkill.build(context)
          when :resolve_room
            Aws::AlexaForBusiness::Endpoints::ResolveRoom.build(context)
          when :revoke_invitation
            Aws::AlexaForBusiness::Endpoints::RevokeInvitation.build(context)
          when :search_address_books
            Aws::AlexaForBusiness::Endpoints::SearchAddressBooks.build(context)
          when :search_contacts
            Aws::AlexaForBusiness::Endpoints::SearchContacts.build(context)
          when :search_devices
            Aws::AlexaForBusiness::Endpoints::SearchDevices.build(context)
          when :search_network_profiles
            Aws::AlexaForBusiness::Endpoints::SearchNetworkProfiles.build(context)
          when :search_profiles
            Aws::AlexaForBusiness::Endpoints::SearchProfiles.build(context)
          when :search_rooms
            Aws::AlexaForBusiness::Endpoints::SearchRooms.build(context)
          when :search_skill_groups
            Aws::AlexaForBusiness::Endpoints::SearchSkillGroups.build(context)
          when :search_users
            Aws::AlexaForBusiness::Endpoints::SearchUsers.build(context)
          when :send_announcement
            Aws::AlexaForBusiness::Endpoints::SendAnnouncement.build(context)
          when :send_invitation
            Aws::AlexaForBusiness::Endpoints::SendInvitation.build(context)
          when :start_device_sync
            Aws::AlexaForBusiness::Endpoints::StartDeviceSync.build(context)
          when :start_smart_home_appliance_discovery
            Aws::AlexaForBusiness::Endpoints::StartSmartHomeApplianceDiscovery.build(context)
          when :tag_resource
            Aws::AlexaForBusiness::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::AlexaForBusiness::Endpoints::UntagResource.build(context)
          when :update_address_book
            Aws::AlexaForBusiness::Endpoints::UpdateAddressBook.build(context)
          when :update_business_report_schedule
            Aws::AlexaForBusiness::Endpoints::UpdateBusinessReportSchedule.build(context)
          when :update_conference_provider
            Aws::AlexaForBusiness::Endpoints::UpdateConferenceProvider.build(context)
          when :update_contact
            Aws::AlexaForBusiness::Endpoints::UpdateContact.build(context)
          when :update_device
            Aws::AlexaForBusiness::Endpoints::UpdateDevice.build(context)
          when :update_gateway
            Aws::AlexaForBusiness::Endpoints::UpdateGateway.build(context)
          when :update_gateway_group
            Aws::AlexaForBusiness::Endpoints::UpdateGatewayGroup.build(context)
          when :update_network_profile
            Aws::AlexaForBusiness::Endpoints::UpdateNetworkProfile.build(context)
          when :update_profile
            Aws::AlexaForBusiness::Endpoints::UpdateProfile.build(context)
          when :update_room
            Aws::AlexaForBusiness::Endpoints::UpdateRoom.build(context)
          when :update_skill_group
            Aws::AlexaForBusiness::Endpoints::UpdateSkillGroup.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
