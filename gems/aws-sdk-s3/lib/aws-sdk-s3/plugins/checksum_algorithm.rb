# frozen_string_literal: true

module Aws
  module S3
    module Plugins
      # @api private
      class ChecksumAlgorithm < Seahorse::Client::Plugin

        # S3 GetObject results for whole Multipart Objects contain a checksum
        # that cannot be validated. These should be skipped by the
        # ChecksumAlgorithm plugin.
        class SkipWholeMultipartGetChecksumsHandler < Seahorse::Client::Handler
          def call(context)
            context[:http_checksum] ||= {}
            context[:http_checksum][:skip_on_suffix] = true

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
