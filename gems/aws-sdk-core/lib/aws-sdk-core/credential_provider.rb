# frozen_string_literal: true

module Aws
  module CredentialProvider

    # @return [Credentials]
    attr_reader :credentials

    # @return [Time]
    attr_reader :expiration

    # @api private
    # @return [String] Returns the credentials source. Used for
    #   tracking credentials related UserAgent metrics.
    attr_accessor :metrics_source

    # @return [Boolean]
    def set?
      !!@credentials && @credentials.set?
    end

  end
end
