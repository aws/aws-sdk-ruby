module Aws
  module Resource
    module Validator
      class IdentifierValidator

        # @param [Validator::Context] context
        # @param [Hash] identifier
        # @param [Integer] index
        def initialize(context, identifier, index)
          @context = context
          @identifier = identifier
          @index = index
        end

        attr_reader :identifier

        attr_reader :index

        def validate
          validate_name_is_uniq
          validate_name_is_not_prefixed
          if member_name
            validate_resource_has_shape && validate_resource_shape_contains_member
          end
        end

        private

        def validate_name_is_uniq
          if all_identifier_names.count(name) > 1
            error("#{path("#{index}/name")} must be uniq within #{path('*/name')}.")
          else
            true
          end
        end

        def validate_name_is_not_prefixed
          if name.match(/^#{resource_name}/)
            error("#{path("#{index}/name")} must not be prefixed with '#{resource_name}'.")
          else
            true
          end
        end

        def validate_resource_has_shape
          if resource_shape_name
            true
          else
            error("#{path("#{index}/memberName")} requires '#/resources/#{resource_name}/shape' to be set.")
          end
        end

        def validate_resource_shape_contains_member
          if
            resource_shape['type'] == 'structure' &&
            resource_shape['members'].key?(member_name)
          then
            true
          else
            error("#{path("#{index}/memberName")} is not defined at 'api#/shapes/#{resource_shape_name}/members/#{member_name}'.")
          end
        end

        def error(msg)
          @context.error(msg)
        end

        def path(suffix = nil)
          if suffix
            "'#{@context.path}/#{suffix}'"
          else
            "'#{@context.path}'"
          end
        end

        def name
          @identifier['name']
        end

        def member_name
          @identifier['memberName']
        end

        def resource_name
          @context.matches[1]
        end

        def all_identifier_names
          @context.value.map { |i| i['name'] }
        end

        def resource
          @context.definition['resources'][resource_name]
        end

        def resource_shape_name
          resource['shape']
        end

        def resource_shape
          @context.api['shapes'][resource_shape_name]
        end

      end
    end
  end
end
