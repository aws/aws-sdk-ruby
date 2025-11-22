# frozen_string_literal: true

require 'zlib'

module Aws
  module DynamoDB
    module Plugins
      # @api private
      class CRC32Validation < Smithy::Client::Plugin
        option(
          :compute_checksums,
          default: true,
          doc_type: 'Boolean',
          docstring: <<~DOCS)
            When `true`, a CRC32 checksum is computed of every HTTP response body and compared against the `X-Amz-Crc32` header.
            If the checksums do not match, the request is re-sent up to the configured number of retries.
          DOCS

        def add_handlers(handlers, config)
          return unless config.compute_checksums

          handlers.add(Handler, step: :retry)
        end

        # @api private
        class Handler < Smithy::Client::Handler
          def call(context)
            @handler.call(context).on_done(200..299) do |response|
              response.error = validate(context)
            end
          end

          private

          def validate(context)
            return if crc32_is_valid?(context.http_response)

            checksum_error = Core::Errors::ChecksumError.new('Response failed CRC32 check.')
            Smithy::Client::NetworkingError.new(checksum_error)
          end

          def crc32_is_valid?(response)
            crc_checksum = response.headers['x-amz-crc32']
            return true unless crc_checksum

            # TODO: this can be optimized with listeners to avoid reading the entire
            # body and rewinding here. Listeners would have to be registered early
            # to calculate the checksum and not part of the retry loop.
            body_contents = response.body.read
            response.body.rewind
            crc_checksum.to_i == Zlib.crc32(body_contents)
          end
        end
      end
    end
  end
end
