require 'openssl'
require 'tempfile'

module Aws
  # @api private
  module Checksums
    class << self

      # @param [File, Tempfile, IO#read, String] value
      # @return [String<SHA256 Hexdigest>]
      def sha256_hexdigest(value)
        if File === value || Tempfile === value
          OpenSSL::Digest::SHA256.file(value).hexdigest
        elsif value.respond_to?(:read)
          OpenSSL::Digest::SHA256.hexdigest(read_and_rewind(value))
        else
          OpenSSL::Digest::SHA256.hexdigest(value)
        end
      end

      # @param [File, Tempfile, IO#read, String] value
      # @return [String<MD5>]
      def md5(value)
        if File === value || Tempfile === value
          Base64.encode64(OpenSSL::Digest::MD5.file(value).digest).strip
        elsif value.respond_to?(:read)
          Base64.encode64(OpenSSL::Digest::MD5.digest(read_and_rewind(value))).strip
        else
          Base64.encode64(OpenSSL::Digest::MD5.digest(value)).strip
        end
      end

      private

      def read_and_rewind(io)
        value = io.read
        io.rewind
        value
      end

    end
  end
end
