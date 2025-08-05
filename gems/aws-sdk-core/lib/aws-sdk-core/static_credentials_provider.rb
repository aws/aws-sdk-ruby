# frozen_string_literal: true

module Aws
  module Core
    # Returns a static set of credentials.
    class StaticCredentialsProvider
      def initialize(options = {})
        @identity = Identities::Credentials.new(**options)
      end

      attr_reader :identity
    end
  end
end
