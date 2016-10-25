require 'openssl'
require 'tempfile'

module Aws
  # @api private
  module Checksums

    CHUNK_SIZE = 1 * 1024 * 1024 # one MB

    class << self

      # @param [File, Tempfile, IO#read, String] value
      # @return [String<MD5>]
      def md5(value)
        if (File === value || Tempfile === value) && !value.path.nil? && File.exist?(value.path)
          Base64.encode64(OpenSSL::Digest::MD5.file(value).digest).strip
        elsif value.respond_to?(:read)
          md5 = OpenSSL::Digest::MD5.new
          update_in_chunks(md5, value)
          Base64.encode64(md5.digest).strip
        else
          Base64.encode64(OpenSSL::Digest::MD5.digest(value)).strip
        end
      end

      private

      def update_in_chunks(digest, io)
        while chunk = io.read(CHUNK_SIZE)
          digest.update(chunk)
        end
        io.rewind
      end

    end
  end
end
