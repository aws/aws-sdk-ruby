module Aws
  module Paging
    class NullProvider

      # @param [String] operation_name
      # @return [NullPager]
      def pager(operation_name)
        NullPager.new
      end

    end
  end
end
