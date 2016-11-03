module AwsSdkCodeGenerator
  module Generators
    class WaitersModule < Dsl::Module

      include Helper

      # @option options [required, Module] :parent
      # @option options [required, Hash, nil] :waiters
      def initialize(options)
        waiters = options.fetch(:waiters)
        super('Waiters', parent: options.fetch(:parent))
        require_statement('aws-sdk-core/waiters')
        waiters['waiters'].each do |waiter_name, waiter|
          add(WaiterClass.new(waiter_name: waiter_name, waiter: waiter))
        end
      end

    end
  end
end
