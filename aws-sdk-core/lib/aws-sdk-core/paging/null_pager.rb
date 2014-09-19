module Aws
  module Paging
    class NullPager < Pager

      def initialize
      end

      # @return [{}]
      def next_tokens
        {}
      end

      # @return [false]
      def truncated?(response)
        false
      end

    end
  end
end
