require 'openssl'
require 'tempfile'

module Aws
  # @api private
  module Checksums

    CHUNK_SIZE = 1 * 1024 * 1024 # one MB

    class << self

      # @param [File, Tempfile, IO#read, String] value
      # @return [String<SHA256 Hexdigest>]
      def sha256_hexdigest(value)
        if value.respond_to?(:read) && value.respond_to?(:rewind)
          sha256 = OpenSSL::Digest::SHA256.new
          update_in_chunks(sha256, value)
          sha256.hexdigest
        else
          OpenSSL::Digest::SHA256.hexdigest(value.to_str)
        end
      end

      # @param [File, Tempfile, IO#read, String] value
      # @return [String<MD5>]
      def md5(value)
        if value.respond_to?(:read) && value.respond_to?(:rewind)
          md5 = OpenSSL::Digest::MD5.new
          update_in_chunks(md5, value)
          Base64.encode64(md5.digest).strip
        else
          Base64.encode64(OpenSSL::Digest::MD5.digest(value.to_str)).strip
        end
      end

      private

      def update_in_chunks(digest, io)
        dupped = false
        if io.kind_of?(IO)
          io2 = io.dup
          io2.binmode
          dupped = true
        else
          io2 = io
        end
        io2.rewind

        while chunk = io2.read(CHUNK_SIZE)
          digest.update(chunk)
        end
      ensure
        io2.rewind
        if dupped
          io2.close
        end
      end

    end
  end
end
