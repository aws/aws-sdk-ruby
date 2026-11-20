# frozen_string_literal: true

module Aws
  module S3
    module Plugins
      # S3-specific flexible checksum behavior.
      # @api private
      class ChecksumAlgorithm < Smithy::Client::Plugin
        SKIP_MULTIPART_CHECKSUM_VALIDATION =
          ->(checksum) { /-\d+$/.match?(checksum) }
        private_constant :SKIP_MULTIPART_CHECKSUM_VALIDATION

        # S3 GetObject responses for multipart objects can contain a composite
        # checksum with a part-count suffix that cannot be validated against
        # the returned object bytes. Smithy does not model this S3-specific
        # behavior.
        # @api private
        class SkipWholeMultipartGetChecksumsHandler < Smithy::Client::Handler
          def call(context)
            context[:http_checksum] ||= {}
            context[:http_checksum][:skip_response_validation] =
              SKIP_MULTIPART_CHECKSUM_VALIDATION
            @handler.call(context)
          end
        end

        def add_handlers(handlers, _config)
          handlers.add(
            SkipWholeMultipartGetChecksumsHandler,
            step: :initialize,
            operations: [:get_object]
          )
        end
      end
    end
  end
end
