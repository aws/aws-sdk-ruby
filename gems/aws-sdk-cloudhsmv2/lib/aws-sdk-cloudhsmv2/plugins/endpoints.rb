# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CloudHSMV2
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CloudHSMV2::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CloudHSMV2::EndpointParameters`'
      ) do |cfg|
        Aws::CloudHSMV2::EndpointProvider.new
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
          when :copy_backup_to_region
            Aws::CloudHSMV2::Endpoints::CopyBackupToRegion.build(context)
          when :create_cluster
            Aws::CloudHSMV2::Endpoints::CreateCluster.build(context)
          when :create_hsm
            Aws::CloudHSMV2::Endpoints::CreateHsm.build(context)
          when :delete_backup
            Aws::CloudHSMV2::Endpoints::DeleteBackup.build(context)
          when :delete_cluster
            Aws::CloudHSMV2::Endpoints::DeleteCluster.build(context)
          when :delete_hsm
            Aws::CloudHSMV2::Endpoints::DeleteHsm.build(context)
          when :describe_backups
            Aws::CloudHSMV2::Endpoints::DescribeBackups.build(context)
          when :describe_clusters
            Aws::CloudHSMV2::Endpoints::DescribeClusters.build(context)
          when :initialize_cluster
            Aws::CloudHSMV2::Endpoints::InitializeCluster.build(context)
          when :list_tags
            Aws::CloudHSMV2::Endpoints::ListTags.build(context)
          when :modify_backup_attributes
            Aws::CloudHSMV2::Endpoints::ModifyBackupAttributes.build(context)
          when :modify_cluster
            Aws::CloudHSMV2::Endpoints::ModifyCluster.build(context)
          when :restore_backup
            Aws::CloudHSMV2::Endpoints::RestoreBackup.build(context)
          when :tag_resource
            Aws::CloudHSMV2::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::CloudHSMV2::Endpoints::UntagResource.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
