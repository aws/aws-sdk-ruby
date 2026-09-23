# frozen_string_literal: true

require_relative '../query_protocol'

module Aws
  module Core
    module Query
      # Legacy namespace for Query protocol orchestration.
      # @api private
      Protocol = QueryProtocol
    end
  end
end
