# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::HealthLake
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::HealthLake::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::HealthLake::EndpointParameters`'
      ) do |cfg|
        Aws::HealthLake::EndpointProvider.new
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
          when :create_fhir_datastore
            Aws::HealthLake::Endpoints::CreateFHIRDatastore.build(context)
          when :delete_fhir_datastore
            Aws::HealthLake::Endpoints::DeleteFHIRDatastore.build(context)
          when :describe_fhir_datastore
            Aws::HealthLake::Endpoints::DescribeFHIRDatastore.build(context)
          when :describe_fhir_export_job
            Aws::HealthLake::Endpoints::DescribeFHIRExportJob.build(context)
          when :describe_fhir_import_job
            Aws::HealthLake::Endpoints::DescribeFHIRImportJob.build(context)
          when :list_fhir_datastores
            Aws::HealthLake::Endpoints::ListFHIRDatastores.build(context)
          when :list_fhir_export_jobs
            Aws::HealthLake::Endpoints::ListFHIRExportJobs.build(context)
          when :list_fhir_import_jobs
            Aws::HealthLake::Endpoints::ListFHIRImportJobs.build(context)
          when :list_tags_for_resource
            Aws::HealthLake::Endpoints::ListTagsForResource.build(context)
          when :start_fhir_export_job
            Aws::HealthLake::Endpoints::StartFHIRExportJob.build(context)
          when :start_fhir_import_job
            Aws::HealthLake::Endpoints::StartFHIRImportJob.build(context)
          when :tag_resource
            Aws::HealthLake::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::HealthLake::Endpoints::UntagResource.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
