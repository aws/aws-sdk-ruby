module Aws
  module Resources
    module Validator
      class Context

        def initialize(options = {})
          @parent = options[:parent]
          @path = options[:path]
          @value = options[:value]
          @definition = options[:definition]
          @api = options[:api]
          @errors = options[:errors] || []
        end

        def child(at)
          Context.new(
            parent: self,
            path: "#{path}/#{at}",
            value: value[at],
            definition: definition,
            api: api,
            errors: errors
          )
        end

        # @return [Context,nil]
        attr_reader :parent

        # @return [String]
        attr_reader :path

        # @return [Object]
        attr_reader :value

        # @return [Hash]
        attr_reader :definition

        # @return [Hash]
        attr_reader :api

        # @return [Array<String>]
        attr_reader :errors

        def [] key
          @value[key]
        end

        def error(msg)
          @errors << msg
          false
        end

      end
    end
  end
end
