require 'set'

module Aws
  module Waiters
    # @api private
    class Provider

      def initialize(definitions)
        @waiter_names = Set.new
        @definitions = definitions['waiters'].each.with_object({}) do |(k,v),h|
          if k.match(/^__/)
            h[k] = v
          else
            underscore(k).to_sym.tap do |name|
              @waiter_names << name
              h[name] = v
            end
          end
        end
      end

      # @return [Array<Symbol>]
      def waiter_names
        @waiter_names.to_a
      end

      # @param [Symbol] waiter_name
      # @return [Waiter]
      # @raise [ArgumentError]
      def waiter(waiter_name)
        if @waiter_names.include?(waiter_name)
          Waiter.new(resolve('extends' => waiter_name))
        else
          raise Errors::NoSuchWaiterError.new(waiter_name, waiter_names)
        end
      end

      private

      def resolve(definition)
        if extends = definition.delete('extends')
          resolve(@definitions[extends].merge(definition))
        else
          @definitions['__default__'].merge(definition)
        end
      end

      def underscore(str)
        str.gsub(/\w+/) { |part| Seahorse::Util.underscore(part) }
      end

    end
  end
end
