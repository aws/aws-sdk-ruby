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

          handlers.add(Handler, step: :sign)
        end

        # @api private
        class Handler < Smithy::Client::Handler
          def call(context)
            expected = nil
            actual = nil
            context.http_response.on_headers do |_status, headers|
              expected = headers['x-amz-crc32']
            end
            context.http_response.on_data do |chunk|
              actual = Zlib.crc32(chunk, actual || 0) if expected
            end
            context.http_response.on_success do
              if expected && expected.to_i != actual
                error = Core::Errors::ChecksumError.new('Response failed CRC32 check.')
                context.http_response.signal_error(Smithy::Client::NetworkingError.new(error))
              end
            end
            @handler.call(context)
          end
        end
      end
    end
  end
end
