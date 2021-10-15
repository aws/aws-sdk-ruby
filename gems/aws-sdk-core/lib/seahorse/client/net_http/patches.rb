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

        # For requests with bodys, Net::HTTP sets a default content type of:
        #   'application/x-www-form-urlencoded'
        # There are cases where we should not send content type at all.
        # Even when no body is supplied, Net::HTTP uses a default empty body
        # and sets it anyway. This patch disables the behavior when a Thread
        # local variable is set.
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
