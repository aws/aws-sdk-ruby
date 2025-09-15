# frozen_string_literal: true

module Aws
  module SigV4
    # Contains the results of a presigning operation.
    class PresignedUrl
      def initialize(options = {})
        @url = options.fetch(:url)
        @headers = options.fetch(:headers, {})
        @canonical_request = options[:canonical_request]
        @string_to_sign = options[:string_to_sign]
        @content_sha256 = options[:content_sha256]
        @signature = options[:signature]
      end

      # @return [URI] The presigned URL that includes all necessary authentication
      #  information as query string parameters.
      attr_reader :url

      # @return [Hash<String,String>] A hash of headers that should be used with the URL.
      #  Header keys are lower cased strings.
      attr_reader :headers

      # @return [String] For debugging purposes.
      attr_reader :canonical_request

      # @return [String] For debugging purposes.
      attr_reader :string_to_sign

      # @return [String] For debugging purposes.
      attr_reader :content_sha256

      # @return [String] For debugging purposes.
      attr_reader :signature
    end
  end
end
