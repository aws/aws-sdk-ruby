# frozen_string_literal: true

module Aws
  # This module provides basic accessors and methods for an Identity provider.
  module IdentityProvider
    include Smithy::Client::IdentityProvider

    # Feature IDs for the User-Agent
    # @api private
    attr_accessor :features
  end
end
