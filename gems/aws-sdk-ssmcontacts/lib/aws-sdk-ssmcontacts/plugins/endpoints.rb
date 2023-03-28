# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SSMContacts
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::SSMContacts::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::SSMContacts::EndpointParameters`'
      ) do |cfg|
        Aws::SSMContacts::EndpointProvider.new
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
          when :accept_page
            Aws::SSMContacts::Endpoints::AcceptPage.build(context)
          when :activate_contact_channel
            Aws::SSMContacts::Endpoints::ActivateContactChannel.build(context)
          when :create_contact
            Aws::SSMContacts::Endpoints::CreateContact.build(context)
          when :create_contact_channel
            Aws::SSMContacts::Endpoints::CreateContactChannel.build(context)
          when :create_rotation
            Aws::SSMContacts::Endpoints::CreateRotation.build(context)
          when :create_rotation_override
            Aws::SSMContacts::Endpoints::CreateRotationOverride.build(context)
          when :deactivate_contact_channel
            Aws::SSMContacts::Endpoints::DeactivateContactChannel.build(context)
          when :delete_contact
            Aws::SSMContacts::Endpoints::DeleteContact.build(context)
          when :delete_contact_channel
            Aws::SSMContacts::Endpoints::DeleteContactChannel.build(context)
          when :delete_rotation
            Aws::SSMContacts::Endpoints::DeleteRotation.build(context)
          when :delete_rotation_override
            Aws::SSMContacts::Endpoints::DeleteRotationOverride.build(context)
          when :describe_engagement
            Aws::SSMContacts::Endpoints::DescribeEngagement.build(context)
          when :describe_page
            Aws::SSMContacts::Endpoints::DescribePage.build(context)
          when :get_contact
            Aws::SSMContacts::Endpoints::GetContact.build(context)
          when :get_contact_channel
            Aws::SSMContacts::Endpoints::GetContactChannel.build(context)
          when :get_contact_policy
            Aws::SSMContacts::Endpoints::GetContactPolicy.build(context)
          when :get_rotation
            Aws::SSMContacts::Endpoints::GetRotation.build(context)
          when :get_rotation_override
            Aws::SSMContacts::Endpoints::GetRotationOverride.build(context)
          when :list_contact_channels
            Aws::SSMContacts::Endpoints::ListContactChannels.build(context)
          when :list_contacts
            Aws::SSMContacts::Endpoints::ListContacts.build(context)
          when :list_engagements
            Aws::SSMContacts::Endpoints::ListEngagements.build(context)
          when :list_page_receipts
            Aws::SSMContacts::Endpoints::ListPageReceipts.build(context)
          when :list_page_resolutions
            Aws::SSMContacts::Endpoints::ListPageResolutions.build(context)
          when :list_pages_by_contact
            Aws::SSMContacts::Endpoints::ListPagesByContact.build(context)
          when :list_pages_by_engagement
            Aws::SSMContacts::Endpoints::ListPagesByEngagement.build(context)
          when :list_preview_rotation_shifts
            Aws::SSMContacts::Endpoints::ListPreviewRotationShifts.build(context)
          when :list_rotation_overrides
            Aws::SSMContacts::Endpoints::ListRotationOverrides.build(context)
          when :list_rotation_shifts
            Aws::SSMContacts::Endpoints::ListRotationShifts.build(context)
          when :list_rotations
            Aws::SSMContacts::Endpoints::ListRotations.build(context)
          when :list_tags_for_resource
            Aws::SSMContacts::Endpoints::ListTagsForResource.build(context)
          when :put_contact_policy
            Aws::SSMContacts::Endpoints::PutContactPolicy.build(context)
          when :send_activation_code
            Aws::SSMContacts::Endpoints::SendActivationCode.build(context)
          when :start_engagement
            Aws::SSMContacts::Endpoints::StartEngagement.build(context)
          when :stop_engagement
            Aws::SSMContacts::Endpoints::StopEngagement.build(context)
          when :tag_resource
            Aws::SSMContacts::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::SSMContacts::Endpoints::UntagResource.build(context)
          when :update_contact
            Aws::SSMContacts::Endpoints::UpdateContact.build(context)
          when :update_contact_channel
            Aws::SSMContacts::Endpoints::UpdateContactChannel.build(context)
          when :update_rotation
            Aws::SSMContacts::Endpoints::UpdateRotation.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
