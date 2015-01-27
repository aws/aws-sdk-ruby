require 'json-schema'
require 'aws-sdk-resources/validator/context'
require 'aws-sdk-resources/validator/dsl'
require 'aws-sdk-resources/validator/path_resolver'
require 'aws-sdk-resources/validator/rule'
require 'aws-sdk-resources/validator/operation_validator'

module Aws
  module Resources
    module Validator

      extend Validator::DSL

      # identifiers_may_not_be_prefixed_by_their_resource_name
      match('#/resources/(\w+)/identifiers/\d+/name') do |c, matches|
        resource_name = matches[1]
        if c.value.match(/^#{resource_name}/)
          c.error("#{c.path} must not be prefixed with '#{resource_name}'")
        end
      end

      # identifiers_must_have_unique_names
      match('#/resources/\w+/identifiers') do |c|
        identifiers = c.value.map { |v| v['name'] }
        identifiers.each.with_index do |identifier, n|
          unless identifiers.count(identifier) == 1
            c.error("#{c.path}/#{n}/name must be uniq within #{c.path}/*/name")
          end
        end
      end

      # identifiers_with_memberName_require_the_resource_to_have_a_shape
      match('#/resources/(\w+)/identifiers/(\d+)/memberName') do |c, matches|
        resource_name = matches[1]
        shape_path = "#/resources/#{resource_name}/shape"
        unless c.definition['resources'][resource_name]['shape']
          c.error("#{c.path} requires #{shape_path} to be set")
        end
      end

      # identifiers_with_memberName_require_the_resource_shape_to_have_that_member
      match('#/resources/(\w+)/identifiers/(\d+)/memberName') do |c, matches|
        resource_name = matches[1]
        shape_path = "#/resources/#{resource_name}/shape"
        shape_name = c.definition['resources'][resource_name]['shape']
        if
          shape_name &&
          c.api['shapes'][shape_name] &&
          c.api['shapes'][shape_name]['type'] == 'structure' &&
          !c.api['shapes'][shape_name]['members'].key?(c.value)
        then
          c.error("#{c.path} is not defined at api#/shapes/#{shape_name}/members/#{c.value}")
        end
      end

      # shape_must_be_defined_in_the_api
      match('#/resources/\w+/shape') do |c|
        unless c.api['shapes'][c.value]
          c.error("#{c.path} not found at api#/shapes/#{c.value}")
        end
      end

      # shape_must_be_a_structure
      # load_requires_shape_to_be_a_structure
      match('#/resources/\w+/shape') do |c|
        shape = c.api['shapes'][c.value]
        if shape && shape['type'] != 'structure'
          c.error("#{c.path} must resolve to a structure")
        end
      end

      # load_requires_shape_to_be_set
      match('#/resources/(\w+)/load') do |c, matches|
        resource = matches[1]
        unless c.definition['resources'][resource]['shape']
          c.error("#{c.path} requires #/resources/#{resource}/shape to be set")
        end
      end


      # load_operation_must_exist
      # TODO : add assertions for service/actions, service/hasMany, actions, etc
      match(*%w(
        #/service/actions/\w+/request/operation
        #/service/hasMany/\w+/request/operation
        #/resources/\w+/load/request/operation
        #/resources/\w+/actions/\w+/request/operation
        #/resources/\w+/batchActions/\w+/request/operation
        #/resources/\w+/hasMany/\w+/request/operation
      )) do |c|
        unless c.api['operations'][c.value]
          c.error("#{c.path} is set but is not defined at api#/operations/#{c.value}")
        end
      end

      # load_operation_must_accept_input_if_params_given
      match(*%w(
        #/service/actions/\w+/request
        #/service/hasMany/\w+/request
        #/resources/\w+/load/request
        #/resources/\w+/actions/\w+/request
        #/resources/\w+/batchActions/\w+/request
        #/resources/\w+/hasMany/\w+/request
      )) do |c|
        # ...
      end

      # load_path_must_resolve_to_shape
      match('#/resources/(\w+)/load/path') do |c, matches|
        operation_name =
          c.definition['resources'][matches[1]]['load']['request']['operation']
        if operation = c.api['operations'][operation_name]
          if from = operation['output']
            if shape_name = c.definition['resources'][matches[1]]['shape']
              resolved = PathResolver.new(c.api).resolve(c.value, from)
              unless resolved == shape_name
                c.error("#{c.path} must resolve to a '#{shape_name}' shape")
              end
            else
              # resource defines load but does not define shape
            end
          else
            # resource load operation does not have output shape reference
          end
        else
          # resource load operation not in API model
        end
      end

      match(*%w(
        #/service/actions/\w+/request
        #/resources/\w+/load/request
        #/resources/\w+/actions/\w+/request
        #/resources/\w+/batchActions/\w+/request
        #/resources/\w+/hasMany/\w+/request
      )) do |c|
      end

      match(*%w(
        #/service/hasMany/\w+/resource/type
        #/resources/\w+/actions/\w+/resource/type
        #/resources/\w+/batchActions/\w+/resource/type
        #/resources/\w+/hasMany/\w+/resource/type
      )) do |c|
      end

      match(*%w(
        #/service/hasMany/\w+/resource/identifiers
        #/resources/\w+/actions/\w+/resource/identifiers
        #/resources/\w+/batchActions/\w+/resource/identifiers
        #/resources/\w+/hasMany/\w+/resource/identifiers
      )) do |c|
        # must provide ALL of the identifiers for the target resource
        # each identifier must resolve from its
      end

      match(*%w(
        #/service/hasMany/\w+/resource/path
        #/resources/\w+/actions/\w+/resource/path
        #/resources/\w+/batchActions/\w+/resource/path
        #/resources/\w+/hasMany/\w+/resource/path
      )) do |c|
        type = c.parent['type']
        from = c.parent.parent['request']['operation']
        from = c.api['operations'][from]['output']
        expected = c.definition['resources'][type]['shape']
        resolved = PathResolver.new(c.api).resolve(c.value, from)
        unless expected == resolved
          c.error("#{c.path} must resolve to a \"#{expected}\" shape")
        end
      end

      # load_params_can_be_nested
      # load_params_must_match_their_static_types
      # load_params_must_not_be_dataMembers
      # load_params_must_resolve
      # load_path_accepts_dollar_signs
      # load_path_accepts_nested_paths

      match('#/resources/(\w+)/load') do |context|
        v = OperationValidator.new(context)
        v.validate_request do
          v.validate_param_source_type_not_used('data')
          #v.validate_path(origin: :response, target: :self)
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

      match('#/resources/(\w+)/has/\w+') do |context, matches|
        v = OperationValidator.new(context)
        v.validate_request_not_set
        v.validate_resource do
          # disallow requestParameter
          # disallow responsepath
        end
        # path must resolve FROM the resource data shape
        # to the target resource data
        v.validate_path(origin: :self, target: :resource)

        if matches[2] == 'hasSome'
          # at least one identifier source must be plural
          # path must be plural if given
        else
          # identifier sources must be singular
          # path must be singular if given
        end
      end

    end
  end
end
