# frozen_string_literal: true

require_relative '../query_extension'

module Aws
  module Core
    module Query
      # Legacy Query extension API.
      #
      # New protocol code should use +Aws::Core::QueryExtension+. This adapter
      # keeps the existing Query codec behavior stable while later work moves
      # consumers to the cached metadata API.
      # @api private
      module Extension
        class << self
          def query_name(shape)
            QueryExtension.query_name(shape)
          end

          def ec2_query_name(shape)
            QueryExtension.ec2_query_name(shape)
          end

          def flattened?(shape)
            QueryExtension.flattened?(shape)
          end

          def sparse?(shape)
            QueryExtension.sparse?(shape)
          end
        end
      end
    end
  end
end
