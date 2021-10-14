# frozen_string_literal: true

require 'net/http'

module Seahorse
  module Client
    # @api private
    module NetHttp

      # @api private
      module Patches

        def self.apply!
          return unless RUBY_VERSION < '2.5'
          Net::HTTP::IDEMPOTENT_METHODS_.clear
        end

      end
    end
  end
end
