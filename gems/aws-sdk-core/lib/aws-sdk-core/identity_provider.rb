# frozen_string_literal: true

module Aws
  module Core
    # This module provides basic accessors and methods for an
    # IdentityProvider class which provides an Identity.
    module IdentityProvider
      include Smithy::Client::IdentityProvider

      # @return [Array<String>]
      # Returns UserAgent feature ids for identity.
      attr_accessor :features
    end
  end
end
