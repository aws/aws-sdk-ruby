module AwsSdkCodeGenerator
  module Views
    class WaitersModule < View

      def initialize(options)
        @module_name = options.fetch(:module_name)
        @waiters = Waiter.build_list(options.fetch(:waiters))
        @custom = options.fetch(:custom)
      end

      # @return [String]
      attr_reader :module_name

      # @return [Array<Waiter>]
      attr_reader :waiters

      # @return [String|nil]
      def generated_src_warning
        return if @custom
        GENERATED_SRC_WARNING
      end

    end
  end
end
