module Aws
  module Resources
    module Options

      private

      def expect_hash(key, options)
        if options.key?(key) && !(Hash === options[key])
          raise ArgumentError, "expected #{key.inspect} to be a Hash"
        end
      end

      def option(key, options)
        if options[key].nil?
          raise Errors::DefinitionError, "missing required option #{key.inspect}"
        else
          options[key]
        end
      end

    end
  end
end
