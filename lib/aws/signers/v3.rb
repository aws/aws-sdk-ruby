require 'time'
require 'base64'
require 'openssl'

module Aws
  # @api private
  module Signers
    class V3

      # @param [Credentials] credentials
      def initialize(credentials)
        @credentials = credentials
      end

      def sign(http_req)

        date = Time.now.httpdate
        http_req.headers['Date'] = date

        if @credentials.session_token
          http_req.headers['X-Amz-Security-Token'] = @credentials.session_token
        end

        parts = []
        parts << "AWS3-HTTPS AWSAccessKeyId=#{@credentials.access_key_id}"
        parts << "Algorithm=HmacSHA256"
        parts << "Signature=#{signature(date)}"
        http_req.headers['X-Amzn-Authorization'] = parts.join(',')
      end

      private

      def signature(date)
        Base64.encode64(
          OpenSSL::HMAC.digest(
            OpenSSL::Digest::Digest.new('sha256'),
            @credentials.secret_access_key,
            date
          )
        ).strip
      end

    end
  end
end
