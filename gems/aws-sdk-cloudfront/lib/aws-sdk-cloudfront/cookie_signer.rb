# frozen_string_literal: true

module Aws
  module CloudFront
    # Allows you to create a signed cookie for Amazon CloudFront resources.
    #
    #     signer = Aws::CloudFront::CookieSigner.new(
    #       key_pair_id: "cf-keypair-id",
    #       private_key_path: "./unit_test_dummy_key"
    #     )
    #     cookie = signer.signed_cookie(url, policy: policy.to_json)
    #
    class CookieSigner
      include Signer

      # Create a set of signed Amazon CloudFront cookie parameters
      # @param [String] url
      # @option options [Time, DateTime, Date, String, Integer<timestamp>] :expires
      # @option options [String<JSON>] :policy
      def signed_cookie(url, options = {})
        content = cookie_content(url, options)
        signature(content).each_with_object({}) do |(k, v), cookie|
          cookie["CloudFront-#{k}"] = v.to_s.delete("\n")
        end
      end

      private

      def cookie_content(url, options)
        content = {}
        if options[:policy]
          content[:policy] = options[:policy]
        elsif url && options[:expires]
          scheme, uri = scheme_and_uri(url)
          content[:resource] = resource(scheme, uri)
          content[:expires] = time(options[:expires])
        end
        content
      end
    end
  end
end
