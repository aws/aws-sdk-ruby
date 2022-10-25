# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Glacier
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Glacier::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Glacier::EndpointParameters`'
      ) do |cfg|
        Aws::Glacier::EndpointProvider.new
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
          when :abort_multipart_upload
            Aws::Glacier::Endpoints::AbortMultipartUpload.build(context)
          when :abort_vault_lock
            Aws::Glacier::Endpoints::AbortVaultLock.build(context)
          when :add_tags_to_vault
            Aws::Glacier::Endpoints::AddTagsToVault.build(context)
          when :complete_multipart_upload
            Aws::Glacier::Endpoints::CompleteMultipartUpload.build(context)
          when :complete_vault_lock
            Aws::Glacier::Endpoints::CompleteVaultLock.build(context)
          when :create_vault
            Aws::Glacier::Endpoints::CreateVault.build(context)
          when :delete_archive
            Aws::Glacier::Endpoints::DeleteArchive.build(context)
          when :delete_vault
            Aws::Glacier::Endpoints::DeleteVault.build(context)
          when :delete_vault_access_policy
            Aws::Glacier::Endpoints::DeleteVaultAccessPolicy.build(context)
          when :delete_vault_notifications
            Aws::Glacier::Endpoints::DeleteVaultNotifications.build(context)
          when :describe_job
            Aws::Glacier::Endpoints::DescribeJob.build(context)
          when :describe_vault
            Aws::Glacier::Endpoints::DescribeVault.build(context)
          when :get_data_retrieval_policy
            Aws::Glacier::Endpoints::GetDataRetrievalPolicy.build(context)
          when :get_job_output
            Aws::Glacier::Endpoints::GetJobOutput.build(context)
          when :get_vault_access_policy
            Aws::Glacier::Endpoints::GetVaultAccessPolicy.build(context)
          when :get_vault_lock
            Aws::Glacier::Endpoints::GetVaultLock.build(context)
          when :get_vault_notifications
            Aws::Glacier::Endpoints::GetVaultNotifications.build(context)
          when :initiate_job
            Aws::Glacier::Endpoints::InitiateJob.build(context)
          when :initiate_multipart_upload
            Aws::Glacier::Endpoints::InitiateMultipartUpload.build(context)
          when :initiate_vault_lock
            Aws::Glacier::Endpoints::InitiateVaultLock.build(context)
          when :list_jobs
            Aws::Glacier::Endpoints::ListJobs.build(context)
          when :list_multipart_uploads
            Aws::Glacier::Endpoints::ListMultipartUploads.build(context)
          when :list_parts
            Aws::Glacier::Endpoints::ListParts.build(context)
          when :list_provisioned_capacity
            Aws::Glacier::Endpoints::ListProvisionedCapacity.build(context)
          when :list_tags_for_vault
            Aws::Glacier::Endpoints::ListTagsForVault.build(context)
          when :list_vaults
            Aws::Glacier::Endpoints::ListVaults.build(context)
          when :purchase_provisioned_capacity
            Aws::Glacier::Endpoints::PurchaseProvisionedCapacity.build(context)
          when :remove_tags_from_vault
            Aws::Glacier::Endpoints::RemoveTagsFromVault.build(context)
          when :set_data_retrieval_policy
            Aws::Glacier::Endpoints::SetDataRetrievalPolicy.build(context)
          when :set_vault_access_policy
            Aws::Glacier::Endpoints::SetVaultAccessPolicy.build(context)
          when :set_vault_notifications
            Aws::Glacier::Endpoints::SetVaultNotifications.build(context)
          when :upload_archive
            Aws::Glacier::Endpoints::UploadArchive.build(context)
          when :upload_multipart_part
            Aws::Glacier::Endpoints::UploadMultipartPart.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
