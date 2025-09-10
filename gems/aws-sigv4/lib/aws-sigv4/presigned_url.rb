# frozen_string_literal: true

module Aws
  module SigV4
    # Contains the results of a presigning operation.
    class PresignedUrl
      def initialize(options)
        @url = options.fetch(:url)
        @headers = options.fetch(:headers, {})
        @canonical_request = options[:canonical_request]
        @string_to_sign = options[:string_to_sign]
        @content_sha256 = options[:content_sha256]
        @signature = options[:signature]
      end

      # @return [String] The presigned URL that includes all necessary authentication information as query string parameters.
      attr_accessor :url

      # @return [Hash<String,String>] A hash of headers that should be used with the URL.
      #  Header keys are lower cased strings
      attr_accessor :headers

      # @return [String] For debugging purposes.
      attr_accessor :canonical_request

      # @return [String] For debugging purposes.
      attr_accessor :string_to_sign

      # @return [String] For debugging purposes.
      attr_accessor :content_sha256

      # @return [String] For debugging purposes.
      attr_accessor :signature
    end
  end
end
