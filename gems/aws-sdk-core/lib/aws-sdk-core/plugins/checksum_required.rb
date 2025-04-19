# frozen_string_literal: true

require 'openssl'

module Aws
  module Core
    module Plugins
      # @api private
      class ChecksumRequired < Smithy::Client::Plugin
        def add_handlers(handlers, _config)
          # Ensure checksum is computed AFTER the request is built but BEFORE it is signed
          handlers.add(Handler, priority: 15)
        end

        # @api private
        class Handler < Smithy::Client::Handler
          CHUNK_SIZE = 1 * 1024 * 1024 # one MB

          def call(context)
            if checksum_required_operation?(context)
              context.request.headers['Content-Md5'] ||= md5(context.request.body)
            end
            @handler.call(context)
          end

          private

          def checksum_required_operation?(context)
            context.operation.traits.include?('smithy.api#httpChecksumRequired')
          end

          # @param [File, Tempfile, IO#read, String] value
          # @return [String<MD5>]
          def md5(value)
            if (value.is_a?(File) || value.is_a?(Tempfile)) && !value.path.nil? && File.exist?(value.path)
              OpenSSL::Digest::MD5.file(value).base64digest
            elsif value.respond_to?(:read)
              md5 = OpenSSL::Digest::MD5.new
              update_in_chunks(md5, value)
              md5.base64digest
            else
              OpenSSL::Digest::MD5.digest(value).base64digest
            end
          end

          def update_in_chunks(digest, io)
            loop do
              chunk = io.read(CHUNK_SIZE)
              break unless chunk
              digest.update(chunk)
            end
            io.rewind
          end
        end
      end
    end
  end
end
