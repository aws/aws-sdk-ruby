# frozen_string_literal: true

module Aws
  module Core
    # This module provides basic accessors and methods for a
    # CredentialsProvider class which provides an Identity.
    module CredentialsProvider
      include Smithy::Client::IdentityProvider

      # @return [Array<String>]
      # Returns UserAgent feature ids for credentials.
      attr_accessor :features
    end
  end
end
