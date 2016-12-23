module AwsSdkCodeGenerator
  module Views
    class WaitersModule < View

      def initialize(options)
        @module_name = options.fetch(:module_name)
        @waiters = Waiter.build_list(options.fetch(:waiters))
      end

      # @return [String]
      attr_reader :module_name

      # @return [Array<Waiter>]
      attr_reader :waiters

    end
  end
end
