module Aws
  module Resources
    module Validator
      # @api private
      class Rule

        def initialize(pattern, &block)
          @pattern = Regexp.new('^' + pattern + '$')
          @block = block
        end

        def matches(path)
          path.match(@pattern)
        end

        def apply(context, matches)
          @block.call(context, matches)
        end

      end
    end
  end
end
