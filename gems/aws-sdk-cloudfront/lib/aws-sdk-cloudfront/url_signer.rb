# frozen_string_literal: true

module Aws
  module CloudFront
    # Allows you to create signed URLs for Amazon CloudFront resources
    #
    #     signer = Aws::CloudFront::UrlSigner.new(
    #       key_pair_id: "cf-keypair-id",
    #       private_key_path: "./unit_test_dummy_key"
    #     )
    #     url = signer.signed_url(url, policy: policy.to_json)
    #
    class UrlSigner
      include Signer

      # Create a signed Amazon CloudFront URL
      # @param [String] url
      # @option options [Time, DateTime, Date, String, Integer<timestamp>] :expires
      # @option options [String<JSON>] :policy
      def signed_url(url, options = {})
        scheme, uri = scheme_and_uri(url)
        signed_content = signature(
          resource: resource(scheme, uri),
          expires: time(options[:expires]),
          policy: options[:policy]
        )

        start_flag = uri.include?('?') ? '&' : '?'
        signature = signed_content.map { |k, v| "#{k}=#{v}" }.join('&').delete("\n")
        uri = "#{uri}#{start_flag}#{signature}"

        if scheme == 'rtmp'
          rtmp_url(URI(uri))
        else
          uri
        end
      end
    end
  end
end
