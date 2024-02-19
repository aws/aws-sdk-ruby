# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MedicalImaging
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::MedicalImaging::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::MedicalImaging::EndpointParameters`'
      ) do |cfg|
        Aws::MedicalImaging::EndpointProvider.new
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
          when :copy_image_set
            Aws::MedicalImaging::Endpoints::CopyImageSet.build(context)
          when :create_datastore
            Aws::MedicalImaging::Endpoints::CreateDatastore.build(context)
          when :delete_datastore
            Aws::MedicalImaging::Endpoints::DeleteDatastore.build(context)
          when :delete_image_set
            Aws::MedicalImaging::Endpoints::DeleteImageSet.build(context)
          when :get_dicom_import_job
            Aws::MedicalImaging::Endpoints::GetDICOMImportJob.build(context)
          when :get_datastore
            Aws::MedicalImaging::Endpoints::GetDatastore.build(context)
          when :get_image_frame
            Aws::MedicalImaging::Endpoints::GetImageFrame.build(context)
          when :get_image_set
            Aws::MedicalImaging::Endpoints::GetImageSet.build(context)
          when :get_image_set_metadata
            Aws::MedicalImaging::Endpoints::GetImageSetMetadata.build(context)
          when :list_dicom_import_jobs
            Aws::MedicalImaging::Endpoints::ListDICOMImportJobs.build(context)
          when :list_datastores
            Aws::MedicalImaging::Endpoints::ListDatastores.build(context)
          when :list_image_set_versions
            Aws::MedicalImaging::Endpoints::ListImageSetVersions.build(context)
          when :list_tags_for_resource
            Aws::MedicalImaging::Endpoints::ListTagsForResource.build(context)
          when :search_image_sets
            Aws::MedicalImaging::Endpoints::SearchImageSets.build(context)
          when :start_dicom_import_job
            Aws::MedicalImaging::Endpoints::StartDICOMImportJob.build(context)
          when :tag_resource
            Aws::MedicalImaging::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::MedicalImaging::Endpoints::UntagResource.build(context)
          when :update_image_set_metadata
            Aws::MedicalImaging::Endpoints::UpdateImageSetMetadata.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
