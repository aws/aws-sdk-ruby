# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::RolesAnywhere
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::RolesAnywhere::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::RolesAnywhere::EndpointParameters`'
      ) do |cfg|
        Aws::RolesAnywhere::EndpointProvider.new
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
          when :create_profile
            Aws::RolesAnywhere::Endpoints::CreateProfile.build(context)
          when :create_trust_anchor
            Aws::RolesAnywhere::Endpoints::CreateTrustAnchor.build(context)
          when :delete_crl
            Aws::RolesAnywhere::Endpoints::DeleteCrl.build(context)
          when :delete_profile
            Aws::RolesAnywhere::Endpoints::DeleteProfile.build(context)
          when :delete_trust_anchor
            Aws::RolesAnywhere::Endpoints::DeleteTrustAnchor.build(context)
          when :disable_crl
            Aws::RolesAnywhere::Endpoints::DisableCrl.build(context)
          when :disable_profile
            Aws::RolesAnywhere::Endpoints::DisableProfile.build(context)
          when :disable_trust_anchor
            Aws::RolesAnywhere::Endpoints::DisableTrustAnchor.build(context)
          when :enable_crl
            Aws::RolesAnywhere::Endpoints::EnableCrl.build(context)
          when :enable_profile
            Aws::RolesAnywhere::Endpoints::EnableProfile.build(context)
          when :enable_trust_anchor
            Aws::RolesAnywhere::Endpoints::EnableTrustAnchor.build(context)
          when :get_crl
            Aws::RolesAnywhere::Endpoints::GetCrl.build(context)
          when :get_profile
            Aws::RolesAnywhere::Endpoints::GetProfile.build(context)
          when :get_subject
            Aws::RolesAnywhere::Endpoints::GetSubject.build(context)
          when :get_trust_anchor
            Aws::RolesAnywhere::Endpoints::GetTrustAnchor.build(context)
          when :import_crl
            Aws::RolesAnywhere::Endpoints::ImportCrl.build(context)
          when :list_crls
            Aws::RolesAnywhere::Endpoints::ListCrls.build(context)
          when :list_profiles
            Aws::RolesAnywhere::Endpoints::ListProfiles.build(context)
          when :list_subjects
            Aws::RolesAnywhere::Endpoints::ListSubjects.build(context)
          when :list_tags_for_resource
            Aws::RolesAnywhere::Endpoints::ListTagsForResource.build(context)
          when :list_trust_anchors
            Aws::RolesAnywhere::Endpoints::ListTrustAnchors.build(context)
          when :put_notification_settings
            Aws::RolesAnywhere::Endpoints::PutNotificationSettings.build(context)
          when :reset_notification_settings
            Aws::RolesAnywhere::Endpoints::ResetNotificationSettings.build(context)
          when :tag_resource
            Aws::RolesAnywhere::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::RolesAnywhere::Endpoints::UntagResource.build(context)
          when :update_crl
            Aws::RolesAnywhere::Endpoints::UpdateCrl.build(context)
          when :update_profile
            Aws::RolesAnywhere::Endpoints::UpdateProfile.build(context)
          when :update_trust_anchor
            Aws::RolesAnywhere::Endpoints::UpdateTrustAnchor.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
