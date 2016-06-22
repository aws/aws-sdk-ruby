module AwsSdkCodeGenerator
  module Generators
    class WaitersModule < Dsl::Module

      include Helper

      def initialize(waiters:)
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
