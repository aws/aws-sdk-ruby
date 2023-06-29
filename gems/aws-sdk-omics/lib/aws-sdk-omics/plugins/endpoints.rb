# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Omics
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Omics::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Omics::EndpointParameters`'
      ) do |cfg|
        Aws::Omics::EndpointProvider.new
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
          when :abort_multipart_read_set_upload
            Aws::Omics::Endpoints::AbortMultipartReadSetUpload.build(context)
          when :batch_delete_read_set
            Aws::Omics::Endpoints::BatchDeleteReadSet.build(context)
          when :cancel_annotation_import_job
            Aws::Omics::Endpoints::CancelAnnotationImportJob.build(context)
          when :cancel_run
            Aws::Omics::Endpoints::CancelRun.build(context)
          when :cancel_variant_import_job
            Aws::Omics::Endpoints::CancelVariantImportJob.build(context)
          when :complete_multipart_read_set_upload
            Aws::Omics::Endpoints::CompleteMultipartReadSetUpload.build(context)
          when :create_annotation_store
            Aws::Omics::Endpoints::CreateAnnotationStore.build(context)
          when :create_multipart_read_set_upload
            Aws::Omics::Endpoints::CreateMultipartReadSetUpload.build(context)
          when :create_reference_store
            Aws::Omics::Endpoints::CreateReferenceStore.build(context)
          when :create_run_group
            Aws::Omics::Endpoints::CreateRunGroup.build(context)
          when :create_sequence_store
            Aws::Omics::Endpoints::CreateSequenceStore.build(context)
          when :create_variant_store
            Aws::Omics::Endpoints::CreateVariantStore.build(context)
          when :create_workflow
            Aws::Omics::Endpoints::CreateWorkflow.build(context)
          when :delete_annotation_store
            Aws::Omics::Endpoints::DeleteAnnotationStore.build(context)
          when :delete_reference
            Aws::Omics::Endpoints::DeleteReference.build(context)
          when :delete_reference_store
            Aws::Omics::Endpoints::DeleteReferenceStore.build(context)
          when :delete_run
            Aws::Omics::Endpoints::DeleteRun.build(context)
          when :delete_run_group
            Aws::Omics::Endpoints::DeleteRunGroup.build(context)
          when :delete_sequence_store
            Aws::Omics::Endpoints::DeleteSequenceStore.build(context)
          when :delete_variant_store
            Aws::Omics::Endpoints::DeleteVariantStore.build(context)
          when :delete_workflow
            Aws::Omics::Endpoints::DeleteWorkflow.build(context)
          when :get_annotation_import_job
            Aws::Omics::Endpoints::GetAnnotationImportJob.build(context)
          when :get_annotation_store
            Aws::Omics::Endpoints::GetAnnotationStore.build(context)
          when :get_read_set
            Aws::Omics::Endpoints::GetReadSet.build(context)
          when :get_read_set_activation_job
            Aws::Omics::Endpoints::GetReadSetActivationJob.build(context)
          when :get_read_set_export_job
            Aws::Omics::Endpoints::GetReadSetExportJob.build(context)
          when :get_read_set_import_job
            Aws::Omics::Endpoints::GetReadSetImportJob.build(context)
          when :get_read_set_metadata
            Aws::Omics::Endpoints::GetReadSetMetadata.build(context)
          when :get_reference
            Aws::Omics::Endpoints::GetReference.build(context)
          when :get_reference_import_job
            Aws::Omics::Endpoints::GetReferenceImportJob.build(context)
          when :get_reference_metadata
            Aws::Omics::Endpoints::GetReferenceMetadata.build(context)
          when :get_reference_store
            Aws::Omics::Endpoints::GetReferenceStore.build(context)
          when :get_run
            Aws::Omics::Endpoints::GetRun.build(context)
          when :get_run_group
            Aws::Omics::Endpoints::GetRunGroup.build(context)
          when :get_run_task
            Aws::Omics::Endpoints::GetRunTask.build(context)
          when :get_sequence_store
            Aws::Omics::Endpoints::GetSequenceStore.build(context)
          when :get_variant_import_job
            Aws::Omics::Endpoints::GetVariantImportJob.build(context)
          when :get_variant_store
            Aws::Omics::Endpoints::GetVariantStore.build(context)
          when :get_workflow
            Aws::Omics::Endpoints::GetWorkflow.build(context)
          when :list_annotation_import_jobs
            Aws::Omics::Endpoints::ListAnnotationImportJobs.build(context)
          when :list_annotation_stores
            Aws::Omics::Endpoints::ListAnnotationStores.build(context)
          when :list_multipart_read_set_uploads
            Aws::Omics::Endpoints::ListMultipartReadSetUploads.build(context)
          when :list_read_set_activation_jobs
            Aws::Omics::Endpoints::ListReadSetActivationJobs.build(context)
          when :list_read_set_export_jobs
            Aws::Omics::Endpoints::ListReadSetExportJobs.build(context)
          when :list_read_set_import_jobs
            Aws::Omics::Endpoints::ListReadSetImportJobs.build(context)
          when :list_read_set_upload_parts
            Aws::Omics::Endpoints::ListReadSetUploadParts.build(context)
          when :list_read_sets
            Aws::Omics::Endpoints::ListReadSets.build(context)
          when :list_reference_import_jobs
            Aws::Omics::Endpoints::ListReferenceImportJobs.build(context)
          when :list_reference_stores
            Aws::Omics::Endpoints::ListReferenceStores.build(context)
          when :list_references
            Aws::Omics::Endpoints::ListReferences.build(context)
          when :list_run_groups
            Aws::Omics::Endpoints::ListRunGroups.build(context)
          when :list_run_tasks
            Aws::Omics::Endpoints::ListRunTasks.build(context)
          when :list_runs
            Aws::Omics::Endpoints::ListRuns.build(context)
          when :list_sequence_stores
            Aws::Omics::Endpoints::ListSequenceStores.build(context)
          when :list_tags_for_resource
            Aws::Omics::Endpoints::ListTagsForResource.build(context)
          when :list_variant_import_jobs
            Aws::Omics::Endpoints::ListVariantImportJobs.build(context)
          when :list_variant_stores
            Aws::Omics::Endpoints::ListVariantStores.build(context)
          when :list_workflows
            Aws::Omics::Endpoints::ListWorkflows.build(context)
          when :start_annotation_import_job
            Aws::Omics::Endpoints::StartAnnotationImportJob.build(context)
          when :start_read_set_activation_job
            Aws::Omics::Endpoints::StartReadSetActivationJob.build(context)
          when :start_read_set_export_job
            Aws::Omics::Endpoints::StartReadSetExportJob.build(context)
          when :start_read_set_import_job
            Aws::Omics::Endpoints::StartReadSetImportJob.build(context)
          when :start_reference_import_job
            Aws::Omics::Endpoints::StartReferenceImportJob.build(context)
          when :start_run
            Aws::Omics::Endpoints::StartRun.build(context)
          when :start_variant_import_job
            Aws::Omics::Endpoints::StartVariantImportJob.build(context)
          when :tag_resource
            Aws::Omics::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Omics::Endpoints::UntagResource.build(context)
          when :update_annotation_store
            Aws::Omics::Endpoints::UpdateAnnotationStore.build(context)
          when :update_run_group
            Aws::Omics::Endpoints::UpdateRunGroup.build(context)
          when :update_variant_store
            Aws::Omics::Endpoints::UpdateVariantStore.build(context)
          when :update_workflow
            Aws::Omics::Endpoints::UpdateWorkflow.build(context)
          when :upload_read_set_part
            Aws::Omics::Endpoints::UploadReadSetPart.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
