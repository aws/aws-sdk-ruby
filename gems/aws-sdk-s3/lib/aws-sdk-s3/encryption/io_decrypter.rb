# frozen_string_literal: true

module Aws
  module S3
    module Encryption
      # @api private
      class IODecrypter

        # @param [OpenSSL::Cipher] cipher
        # @param [IO#write] io An IO-like object that responds to `#write`.
        def initialize(cipher, io)
          @cipher = cipher.clone
          # Ensure that IO is reset between retries
          @io = io.tap { |io| io.truncate(0) if io.respond_to?(:truncate) }
          @cipher_buffer = String.new
        end

        # @return [#write]
        attr_reader :io

        def write(chunk)
          # decrypt and write
          @io.write(@cipher.update(chunk, @cipher_buffer))
        end

        def finalize
          @io.write(@cipher.final)
        end

        def size
          @io.size
        end

      end
    end
  end
end
