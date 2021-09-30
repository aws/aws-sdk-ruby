# frozen_string_literal: true

require 'net/http'

module Seahorse
  module Client
    # @api private
    module NetHttp

      # @api private
      module Patches

        def self.apply!
          Net::HTTPGenericRequest.prepend(PatchDefaultContentType)
          return unless RUBY_VERSION < '2.5'

          Net::HTTP::IDEMPOTENT_METHODS_.clear
        end


        module PatchDefaultContentType
          def supply_default_content_type
            return if Thread.current[:net_http_skip_default_content_type]

            super
          end
        end

      end
    end
  end
end
