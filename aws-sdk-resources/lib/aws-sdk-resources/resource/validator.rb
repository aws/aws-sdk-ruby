require 'multi_json'
require 'json-schema'
require 'aws-sdk-resources/resource/validator/context'
require 'aws-sdk-resources/resource/validator/rule'
require 'aws-sdk-resources/resource/validator/shape_validator'
require 'aws-sdk-resources/resource/validator/identifier_validator'
require 'aws-sdk-resources/resource/validator/operation_validator'

module Aws
  module Resource
    module Validator

      # @api private
      RULES = []

      # @api private
      SCHEMA_PATH = File.expand_path(File.join([
        File.dirname(__FILE__), '..', '..', '..', 'resources.schema.json'
      ]))

      class << self

        def match(pattern, &block)
          RULES << Rule.new(pattern, &block)
        end

        # @param [Hash] definition
        # @param [Hash] api
        # @return [Array<String>]
        def validate(definition, api)
          errors = apply_schema(definition)
          errors = lint('#', definition, definition, api) if errors.empty?
          errors
        end

        private

        # Validates the resource definition document against the JSON
        # schema for resources.
        # @param [Hash] definition
        # @return [Array<String>] Returns an array of schema validation errors.
        #   Returns an empty array if there are no errors.
        def apply_schema(definition)
          schema = MultiJson.load(File.read(SCHEMA_PATH))
          JSON::Validator.fully_validate(schema, definition)
        end

        # Recursively lints the resource definition hash against the given
        # api.
        # @param [Hash] definition
        # @param [Hash] api
        # @return [Array<String>] Returns an array of schema validation errors.
        #   Returns an empty array if there are no errors.
        def lint(prefix, node, definition, api, errors = [])
          lint_node(prefix, node, definition, api, errors)
          case node
          when Hash
            node.each do |key, value|
              lint("#{prefix}/#{key}", value, definition, api, errors)
            end
          when Array
            node.each.with_index do |value, index|
              lint("#{prefix}/#{index}", value, definition, api, errors)
            end
          end
          errors
        end

        def lint_node(path, value, definition, api, errors)
          RULES.each do |rule|
            if rule.applies?(path)
              errors.concat(rule.validate(path, value, definition, api))
            end
          end
        end

      end

      match('#/resources/(\w+)/shape') do |context|
        ShapeValidator.new(context, context.value).validate
      end

      match('#/resources/(\w+)/identifiers') do |context|
        context.value.each.with_index do |identifier, index|
          IdentifierValidator.new(context, identifier, index).validate
        end
      end

      match('#/resources/(\w+)/load') do |context|
        v = OperationValidator.new(context)
        v.validate_request do
          v.validate_param_source_type_not_used('dataMember')
          v.validate_path(origin: :response, target: :self)
        end
        v.validate_path_set
        v.validate_resource_not_set
      end

      match('#/resources/(\w+)/actions/\w+') do |context|
        v = OperationValidator.new(context)
        v.validate_request
        if v.resource_set?
          v.validate_resource
          v.validate_path(origin: :response, target: :resource)
        else
          v.validate_path(origin: :response)
        end
      end

      match('#/resources/(\w+)/batchActions/\w+') do |context|
        # TODO : much like a normal action???
      end

      match('#/resources/(\w+)/hasMany/\w+') do |context|
        v = OperationValidator.new(context)
        v.validate_request
        v.validate_resource do
          # at least one of the identifier sources must be plural
        end
        if v.path_set?
          v.validate_path(origin: :response, target: :resource)
          v.validate_path_is_plural
        end
      end

      match('#/resources/(\w+)/(hasSome|hasOne)/\w+') do |context|
        v = OperationValidator.new(context)
        v.validate_request_not_set
        v.validate_resource do
          # disallow requestParameter
          # disallow responsepath
        end
        # path must resolve FROM the resource data shape
        # to the target resource data
        v.validate_path(origin: :self, target: :resource)

        if context.matches[2] == 'hasSome'
          # at least one identifier source must be plural
          # path must be plural if given
        else
          # identifier sources must be singular
          # path must be singular if given
        end
      end

      match('#/resources/(\w+)/subResources') do |context|
        # TODO : validate subResources
      end

    end
  end
end
