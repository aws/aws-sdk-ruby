# frozen_string_literal: true

module Aws
  # Represents static AWS SSO OIDC token.
  class SSOOIDCToken
    def initialize(options = {})
      @token = options[:token]
    end

    # @return [String, nil]
    attr_reader :token

    # @return [Boolean]
    def set?
      !!@token && !@token.empty?
    end

    # @api private
    def inspect
      super.gsub(/@token="(\\"|[^"])*"/, '@token=[FILTERED]')
    end
  end
end
