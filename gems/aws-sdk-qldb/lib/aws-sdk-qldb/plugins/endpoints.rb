# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::QLDB
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::QLDB::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::QLDB::EndpointParameters`'
      ) do |cfg|
        Aws::QLDB::EndpointProvider.new
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
          when :cancel_journal_kinesis_stream
            Aws::QLDB::Endpoints::CancelJournalKinesisStream.build(context)
          when :create_ledger
            Aws::QLDB::Endpoints::CreateLedger.build(context)
          when :delete_ledger
            Aws::QLDB::Endpoints::DeleteLedger.build(context)
          when :describe_journal_kinesis_stream
            Aws::QLDB::Endpoints::DescribeJournalKinesisStream.build(context)
          when :describe_journal_s3_export
            Aws::QLDB::Endpoints::DescribeJournalS3Export.build(context)
          when :describe_ledger
            Aws::QLDB::Endpoints::DescribeLedger.build(context)
          when :export_journal_to_s3
            Aws::QLDB::Endpoints::ExportJournalToS3.build(context)
          when :get_block
            Aws::QLDB::Endpoints::GetBlock.build(context)
          when :get_digest
            Aws::QLDB::Endpoints::GetDigest.build(context)
          when :get_revision
            Aws::QLDB::Endpoints::GetRevision.build(context)
          when :list_journal_kinesis_streams_for_ledger
            Aws::QLDB::Endpoints::ListJournalKinesisStreamsForLedger.build(context)
          when :list_journal_s3_exports
            Aws::QLDB::Endpoints::ListJournalS3Exports.build(context)
          when :list_journal_s3_exports_for_ledger
            Aws::QLDB::Endpoints::ListJournalS3ExportsForLedger.build(context)
          when :list_ledgers
            Aws::QLDB::Endpoints::ListLedgers.build(context)
          when :list_tags_for_resource
            Aws::QLDB::Endpoints::ListTagsForResource.build(context)
          when :stream_journal_to_kinesis
            Aws::QLDB::Endpoints::StreamJournalToKinesis.build(context)
          when :tag_resource
            Aws::QLDB::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::QLDB::Endpoints::UntagResource.build(context)
          when :update_ledger
            Aws::QLDB::Endpoints::UpdateLedger.build(context)
          when :update_ledger_permissions_mode
            Aws::QLDB::Endpoints::UpdateLedgerPermissionsMode.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
