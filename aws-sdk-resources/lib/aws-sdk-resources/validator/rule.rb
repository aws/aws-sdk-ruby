module Aws
  module Resources
    module Validator
      # @api private
      class Rule

        # @param [String] pattern
        def initialize(pattern, &block)
          @pattern = Regexp.new('^' + pattern + '$')
          @block = block
        end

        # @param [String] path
        # @return [Boolean]
        def applies?(path)
          !!path.match(@pattern)
        end

        # @param [String] path
        # @return [MatchData]
        def matches(path)
          path.match(@pattern)
        end

        # @param [String] path
        # @param [Object] value
        # @param [Hash] definition
        # @param [Hash] api
        # @return [Array<String>]
        def validate(path, value, definition, api)
          context = Validator::Context.new(
            path: path,
            value: value,
            definition: definition,
            api: api,
            matches: matches(path),
          )
          @block.call(context)
          context.errors
        end

      end
    end
  end
end
