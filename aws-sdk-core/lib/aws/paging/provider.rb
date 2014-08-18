module Aws
  module Paging
    class Provider

      # @param [Hash] rules
      def initialize(rules)
        @operations = rules['pagination'].select { |k,v| v.key?('input_token') }
      end

      # @param [String] operation_name
      # @return [Pager]
      def pager(operation_name)
        if rules = @operations[operation_name]
          Pager.new(rules)
        else
          NullPager.new
        end
      end

    end
  end
end
