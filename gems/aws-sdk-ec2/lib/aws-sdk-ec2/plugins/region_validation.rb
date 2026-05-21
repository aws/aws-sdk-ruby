# frozen_string_literal: true

module Aws::EC2::Plugins
  # @api private
  class RegionValidation < Smithy::Client::Plugin

    def after_initialize(client)
      if (region = client.config.region)
        if (matches = region.match(/^(\w+-\w+-\d+)[a-z]$/))
          msg = ":region option must be a region name, not an availability "\
            "zone name; try `#{matches[1]}' instead of `#{matches[0]}'"
          raise ArgumentError, msg
        end
      end
    end
  end
end
