module Aws
  module Resources
    module Validator
      class Context

        # @option options [required, String] :path
        # @option options [required, Object] :value
        # @option options [required, Hash] :definition
        # @option options [required, Hash] :api
        # @option options [required, MatchData] :matches
        def initialize(options = {})
          [:path, :value, :definition, :api, :matches].each do |opt|
            if options.key?(opt)
              instance_variable_set("@#{opt}", options[opt])
            else
              raise ArgumentError, "missing required option :#{opt}"
            end
          end
          @errors = []
        end

        # @return [String]
        attr_reader :path

        # @return [Object]
        attr_reader :value

        # @return [Hash]
        attr_reader :definition

        # @return [Hash]
        attr_reader :api

        # @return [MatchData]
        attr_reader :matches

        # @return [Array<String>]
        attr_reader :errors

        def error(msg)
          @errors << msg
          false
        end

        def resource
          definition['resources'][matches[1]]
        end

        def resource_name
          matches[1]
        end

        def shape(name)
          api['shapes'][name]
        end

      end
    end
  end
end
