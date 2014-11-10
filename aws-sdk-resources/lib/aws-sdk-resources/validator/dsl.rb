module Aws
  module Resources
    module Validator
      module DSL

        def self.extended(base)

          # @api private
          base.const_set(:RULES, [])

          # @api private
          base.const_set(:SCHEMA_PATH, File.expand_path(File.join([
            File.dirname(__FILE__), '..', '..', '..', 'resources.schema.json'
          ])))

        end

        def match(*patterns, &block)
          patterns.each do |pattern|
            RULES << Rule.new(pattern, &block)
          end
        end

        # @param [Hash] definition
        # @param [Hash] api
        # @return [Array<String>]
        def validate(definition, api)
          errors = validate_against_schema(definition)
          if errors.empty?
            lint(new_context(definition, api))
          else
            errors
          end
        end

        private

        def new_context(definition, api)
          Validator::Context.new(
            path: '#',
            value: definition,
            definition: definition,
            api: api,
          )
        end

        # Validates the resource definition document against the JSON
        # schema for resources.
        # @param [Hash] definition
        # @return [Array<String>] Returns an array of schema validation errors.
        #   Returns an empty array if there are no errors.
        def validate_against_schema(definition)
          schema = MultiJson.load(File.read(SCHEMA_PATH))
          JSON::Validator.fully_validate(schema, definition)
        end

        # Recursively lints the resource definition hash against the given
        # api.
        # @param [Hash] definition
        # @param [Hash] api
        # @return [Array<String>] Returns an array of schema validation errors.
        #   Returns an empty array if there are no errors.
        def lint(context)
          lint_node(context)
          case context.value
          when Hash
            context.value.keys.each do |key, value|
              lint(context.child(key))
            end
          when Array
            (0...context.value.size).each do |index|
              lint(context.child(index))
            end
          end
          context.errors
        end

        def lint_node(context)
          RULES.each do |rule|
            if matches = rule.matches(context.path)
              rule.apply(context, matches)
            end
          end
        end

      end
    end
  end
end
