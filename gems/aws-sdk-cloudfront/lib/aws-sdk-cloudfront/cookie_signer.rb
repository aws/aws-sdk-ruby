# frozen_string_literal: true

require 'base64'
require 'uri'
require 'time'
require 'openssl'

module Aws
  module CloudFront

    # Allows you to create signed cookie for Amazon CloudFront resources
    #
    #     signer = Aws::CloudFront::CookieSigner.new(
    #       key_pair_id: "cf-keypair-id",
    #       private_key_path: "./cf_private_key.pem"
    #     )
    #     cookies = signer.signed_cookie(url,
    #       policy: policy.to_json
    #     )
    #
    class CookieSigner
      include Signer

      # create a set of signed Amazon CloudFront cookie parameters
      # @param [String] url
      # @option params [Time, DateTime, Date, String, Integer<timestamp>] :expires
      # @option params [String<JSON>] :policy
      def signed_cookie(url, params = {})
        content = {}.tap do |c|
          if params[:policy]
            c[:policy] = params[:policy]
          elsif url && params[:expires]
            scheme, uri = scheme_and_uri(url)
            c[:resource] = resource(scheme, uri)
            c[:expires] = time(params[:expires])
          end
        end

        cookie_parameters = {}
        signature(content).each { |k, v|
          cookie_parameters["CloudFront-#{k}"] = v.to_s.gsub("\n", '')
        }
        cookie_parameters
      end

    end
  end
end
