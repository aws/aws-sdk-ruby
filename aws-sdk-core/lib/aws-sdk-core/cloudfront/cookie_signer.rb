require 'base64'
require 'uri'
require 'time'
require 'json'
require 'openssl'

module Aws
  module CloudFront

    # Allows you to create signed cookie for Amazon CloudFront resources
    #
    #     signer = Aws::CloudFront::CookieSigner.new(
    #       key_pair_id: "cf-keypair-id",
    #       private_key_path: "./cf_private_key.pem"
    #     )
    #     url = signer.signed_cookie(url,
    #       policy: policy.to_json
    #     )
    #
    class CookieSigner
      include Signer

      # create a signed Amazon CloudFront Cookie
      # @param [String] url
      # @option params [Time, DateTime, Date, String, Integer<timestamp>] :expires
      # @option params [String<JSON>] :policy
      def signed_cookie(url, params = {})
        url_sections = url.split('://')
        if url_sections.length < 2
          raise ArgumentError, "Invaild URL:#{url}"
        end
        # removing wildcard character to get real scheme
        scheme = url_sections[0].gsub('*', '')
        uri = "#{scheme}://#{url_sections[1]}"
        signed_content = signature(
          resource: resource(scheme, uri),
          expires: time(params[:expires]),
          policy: params[:policy]
        )

        cookie_parameters = {}
        signed_content.each { |k, v|
          cookie_parameters["CloudFront-#{k}"] = v.to_s.gsub("\n", '')
        }
        cookie_parameters
      end

    end
  end
end
