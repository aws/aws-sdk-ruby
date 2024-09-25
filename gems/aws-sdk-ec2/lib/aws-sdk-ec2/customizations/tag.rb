# frozen_string_literal: true

module Aws
  module EC2
    class Tag
      class Collection < Aws::Resources::Collection
        alias_method :delete, :batch_delete!
        extend Aws::Deprecations
        deprecated :delete, use: :batch_delete!
      end
    end
  end
end