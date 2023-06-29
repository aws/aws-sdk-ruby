# frozen_string_literal: true

module Aws
  module CredentialProvider

    # @return [Credentials]
    attr_reader :credentials

    # @param [Time]
    attr_reader :expiration

    # @return [Boolean]
    def set?
      !!credentials && credentials.set?
    end

  end
end
