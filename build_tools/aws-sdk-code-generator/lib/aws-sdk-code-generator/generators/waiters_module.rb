module AwsSdkCodeGenerator
  module Generators
    class WaitersModule < Dsl::Module

      include Helper

      # @option options [required, Hash, nil] :waiters
      def initialize(options)
        waiters = options.fetch(:waiters)
        super('Waiters')
        if waiters
          waiters['waiters'].each do |waiter_name, waiter|
            add(WaiterClass.new(waiter_name: waiter_name, waiter: waiter))
          end
        end
      end

    end
  end
end
