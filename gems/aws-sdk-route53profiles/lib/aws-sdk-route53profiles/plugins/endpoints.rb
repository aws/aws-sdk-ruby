# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Route53Profiles
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Route53Profiles::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Route53Profiles::EndpointParameters`'
      ) do |cfg|
        Aws::Route53Profiles::EndpointProvider.new
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
          when :associate_profile
            Aws::Route53Profiles::Endpoints::AssociateProfile.build(context)
          when :associate_resource_to_profile
            Aws::Route53Profiles::Endpoints::AssociateResourceToProfile.build(context)
          when :create_profile
            Aws::Route53Profiles::Endpoints::CreateProfile.build(context)
          when :delete_profile
            Aws::Route53Profiles::Endpoints::DeleteProfile.build(context)
          when :disassociate_profile
            Aws::Route53Profiles::Endpoints::DisassociateProfile.build(context)
          when :disassociate_resource_from_profile
            Aws::Route53Profiles::Endpoints::DisassociateResourceFromProfile.build(context)
          when :get_profile
            Aws::Route53Profiles::Endpoints::GetProfile.build(context)
          when :get_profile_association
            Aws::Route53Profiles::Endpoints::GetProfileAssociation.build(context)
          when :get_profile_resource_association
            Aws::Route53Profiles::Endpoints::GetProfileResourceAssociation.build(context)
          when :list_profile_associations
            Aws::Route53Profiles::Endpoints::ListProfileAssociations.build(context)
          when :list_profile_resource_associations
            Aws::Route53Profiles::Endpoints::ListProfileResourceAssociations.build(context)
          when :list_profiles
            Aws::Route53Profiles::Endpoints::ListProfiles.build(context)
          when :list_tags_for_resource
            Aws::Route53Profiles::Endpoints::ListTagsForResource.build(context)
          when :tag_resource
            Aws::Route53Profiles::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Route53Profiles::Endpoints::UntagResource.build(context)
          when :update_profile_resource_association
            Aws::Route53Profiles::Endpoints::UpdateProfileResourceAssociation.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
