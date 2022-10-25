# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CloudDirectory
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CloudDirectory::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CloudDirectory::EndpointParameters`'
      ) do |cfg|
        Aws::CloudDirectory::EndpointProvider.new
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
          when :add_facet_to_object
            Aws::CloudDirectory::Endpoints::AddFacetToObject.build(context)
          when :apply_schema
            Aws::CloudDirectory::Endpoints::ApplySchema.build(context)
          when :attach_object
            Aws::CloudDirectory::Endpoints::AttachObject.build(context)
          when :attach_policy
            Aws::CloudDirectory::Endpoints::AttachPolicy.build(context)
          when :attach_to_index
            Aws::CloudDirectory::Endpoints::AttachToIndex.build(context)
          when :attach_typed_link
            Aws::CloudDirectory::Endpoints::AttachTypedLink.build(context)
          when :batch_read
            Aws::CloudDirectory::Endpoints::BatchRead.build(context)
          when :batch_write
            Aws::CloudDirectory::Endpoints::BatchWrite.build(context)
          when :create_directory
            Aws::CloudDirectory::Endpoints::CreateDirectory.build(context)
          when :create_facet
            Aws::CloudDirectory::Endpoints::CreateFacet.build(context)
          when :create_index
            Aws::CloudDirectory::Endpoints::CreateIndex.build(context)
          when :create_object
            Aws::CloudDirectory::Endpoints::CreateObject.build(context)
          when :create_schema
            Aws::CloudDirectory::Endpoints::CreateSchema.build(context)
          when :create_typed_link_facet
            Aws::CloudDirectory::Endpoints::CreateTypedLinkFacet.build(context)
          when :delete_directory
            Aws::CloudDirectory::Endpoints::DeleteDirectory.build(context)
          when :delete_facet
            Aws::CloudDirectory::Endpoints::DeleteFacet.build(context)
          when :delete_object
            Aws::CloudDirectory::Endpoints::DeleteObject.build(context)
          when :delete_schema
            Aws::CloudDirectory::Endpoints::DeleteSchema.build(context)
          when :delete_typed_link_facet
            Aws::CloudDirectory::Endpoints::DeleteTypedLinkFacet.build(context)
          when :detach_from_index
            Aws::CloudDirectory::Endpoints::DetachFromIndex.build(context)
          when :detach_object
            Aws::CloudDirectory::Endpoints::DetachObject.build(context)
          when :detach_policy
            Aws::CloudDirectory::Endpoints::DetachPolicy.build(context)
          when :detach_typed_link
            Aws::CloudDirectory::Endpoints::DetachTypedLink.build(context)
          when :disable_directory
            Aws::CloudDirectory::Endpoints::DisableDirectory.build(context)
          when :enable_directory
            Aws::CloudDirectory::Endpoints::EnableDirectory.build(context)
          when :get_applied_schema_version
            Aws::CloudDirectory::Endpoints::GetAppliedSchemaVersion.build(context)
          when :get_directory
            Aws::CloudDirectory::Endpoints::GetDirectory.build(context)
          when :get_facet
            Aws::CloudDirectory::Endpoints::GetFacet.build(context)
          when :get_link_attributes
            Aws::CloudDirectory::Endpoints::GetLinkAttributes.build(context)
          when :get_object_attributes
            Aws::CloudDirectory::Endpoints::GetObjectAttributes.build(context)
          when :get_object_information
            Aws::CloudDirectory::Endpoints::GetObjectInformation.build(context)
          when :get_schema_as_json
            Aws::CloudDirectory::Endpoints::GetSchemaAsJson.build(context)
          when :get_typed_link_facet_information
            Aws::CloudDirectory::Endpoints::GetTypedLinkFacetInformation.build(context)
          when :list_applied_schema_arns
            Aws::CloudDirectory::Endpoints::ListAppliedSchemaArns.build(context)
          when :list_attached_indices
            Aws::CloudDirectory::Endpoints::ListAttachedIndices.build(context)
          when :list_development_schema_arns
            Aws::CloudDirectory::Endpoints::ListDevelopmentSchemaArns.build(context)
          when :list_directories
            Aws::CloudDirectory::Endpoints::ListDirectories.build(context)
          when :list_facet_attributes
            Aws::CloudDirectory::Endpoints::ListFacetAttributes.build(context)
          when :list_facet_names
            Aws::CloudDirectory::Endpoints::ListFacetNames.build(context)
          when :list_incoming_typed_links
            Aws::CloudDirectory::Endpoints::ListIncomingTypedLinks.build(context)
          when :list_index
            Aws::CloudDirectory::Endpoints::ListIndex.build(context)
          when :list_managed_schema_arns
            Aws::CloudDirectory::Endpoints::ListManagedSchemaArns.build(context)
          when :list_object_attributes
            Aws::CloudDirectory::Endpoints::ListObjectAttributes.build(context)
          when :list_object_children
            Aws::CloudDirectory::Endpoints::ListObjectChildren.build(context)
          when :list_object_parent_paths
            Aws::CloudDirectory::Endpoints::ListObjectParentPaths.build(context)
          when :list_object_parents
            Aws::CloudDirectory::Endpoints::ListObjectParents.build(context)
          when :list_object_policies
            Aws::CloudDirectory::Endpoints::ListObjectPolicies.build(context)
          when :list_outgoing_typed_links
            Aws::CloudDirectory::Endpoints::ListOutgoingTypedLinks.build(context)
          when :list_policy_attachments
            Aws::CloudDirectory::Endpoints::ListPolicyAttachments.build(context)
          when :list_published_schema_arns
            Aws::CloudDirectory::Endpoints::ListPublishedSchemaArns.build(context)
          when :list_tags_for_resource
            Aws::CloudDirectory::Endpoints::ListTagsForResource.build(context)
          when :list_typed_link_facet_attributes
            Aws::CloudDirectory::Endpoints::ListTypedLinkFacetAttributes.build(context)
          when :list_typed_link_facet_names
            Aws::CloudDirectory::Endpoints::ListTypedLinkFacetNames.build(context)
          when :lookup_policy
            Aws::CloudDirectory::Endpoints::LookupPolicy.build(context)
          when :publish_schema
            Aws::CloudDirectory::Endpoints::PublishSchema.build(context)
          when :put_schema_from_json
            Aws::CloudDirectory::Endpoints::PutSchemaFromJson.build(context)
          when :remove_facet_from_object
            Aws::CloudDirectory::Endpoints::RemoveFacetFromObject.build(context)
          when :tag_resource
            Aws::CloudDirectory::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::CloudDirectory::Endpoints::UntagResource.build(context)
          when :update_facet
            Aws::CloudDirectory::Endpoints::UpdateFacet.build(context)
          when :update_link_attributes
            Aws::CloudDirectory::Endpoints::UpdateLinkAttributes.build(context)
          when :update_object_attributes
            Aws::CloudDirectory::Endpoints::UpdateObjectAttributes.build(context)
          when :update_schema
            Aws::CloudDirectory::Endpoints::UpdateSchema.build(context)
          when :update_typed_link_facet
            Aws::CloudDirectory::Endpoints::UpdateTypedLinkFacet.build(context)
          when :upgrade_applied_schema
            Aws::CloudDirectory::Endpoints::UpgradeAppliedSchema.build(context)
          when :upgrade_published_schema
            Aws::CloudDirectory::Endpoints::UpgradePublishedSchema.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
