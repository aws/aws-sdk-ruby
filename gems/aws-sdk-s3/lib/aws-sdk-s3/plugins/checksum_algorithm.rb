# frozen_string_literal: true

module Aws
  module S3
    module Plugins
      # S3-specific flexible checksum behavior.
      # @api private
      class ChecksumAlgorithm < Smithy::Client::Plugin
        # The Flexible Checksums SEP requires skipping whole multipart object
        # checksums because their part-count suffix cannot be validated against
        # the returned object bytes.
        class SkipWholeMultipartGetChecksumsHandler < Smithy::Client::Handler
          def call(context)
            context[:http_checksum] ||= {}
            context[:http_checksum][:skip_on_suffix] = true
            @handler.call(context)
          end
        end

        # V3 compatibility for S3-compatible custom endpoints that do not
        # support STREAMING-UNSIGNED-PAYLOAD-TRAILER.
        # See https://github.com/aws/aws-sdk-ruby/issues/3338.
        class SkipTrailerChecksumsHandler < Smithy::Client::Handler
          def call(context)
            context[:skip_trailer_checksums] = true if custom_endpoint?(context.config)
            @handler.call(context)
          end

          private

          def custom_endpoint?(config)
            !config.endpoint.nil? ||
              !config.endpoint_provider.instance_of?(Aws::S3::EndpointProvider)
          end
        end

        def add_handlers(handlers, _config)
          handlers.add(
            SkipWholeMultipartGetChecksumsHandler,
            step: :initialize,
            operations: [:get_object]
          )
          handlers.add(
            SkipTrailerChecksumsHandler,
            step: :build,
            priority: 16,
            operations: %i[put_object upload_part]
          )
        end
      end
    end
  end
end
