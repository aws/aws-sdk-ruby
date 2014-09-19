module Aws
  module Resources
    module OperationMethods

      # @param [Symbol] name
      # @return [Operation] Returns the named operation.
      # @raise [Errors::UnknownOperationError]
      def operation(name)
        @operations[name.to_sym] or
          raise Errors::UnknownOperationError.new(name)
      end

      # @param [Symbol] method_name
      # @param [Operation] operation
      # @return [void]
      def add_operation(method_name, operation = nil, &definition)
        operation = definition if block_given?
        safe_define_method(method_name) do |*args, &block|
          operation.call(resource:self, args:args, block:block)
        end
        @operations[method_name.to_sym] = operation
      end

      # @return [Hash]
      def operations(&block)
        @operations.dup
      end

      # @return [Array<Symbol>]
      def operation_names
        @operations.keys
      end

      # @api private
      def inherited(subclass)
        subclass.send(:instance_variable_set, "@operations", {})
      end

      private

      def safe_define_method(method_name, &block)
        if instance_methods.include?(method_name.to_sym)
          msg = "unable to define method #{name}##{method_name}, "
          msg << "method already exists"
          raise Errors::DefinitionError, msg
        else
          define_method(method_name, &block)
        end
      end

    end
  end
end
