module Aws
  module Resources
    module Validator
      class OperationValidator

        PARAM_SOURCES = %w(identifier dataMember string integer boolean)

        # @param [Validator::Context] context
        def initialize(context)
          @context = context
          @operation = context.value
          @definition = context.definition
          @api = context.api
          @path = context.path
        end

        # @return [Hash] The service resource definition model.
        attr_reader :definition

        # @return [Hash] The api model.
        attr_reader :api

        # @return [String] The JSON path inside the definition document.
        attr_reader :path

        # @return [Boolean] Returns `true` if the operation defines a request.
        def request_set?
          @operation.key?('request')
        end

        # @return [Boolean] Returns `true` if the operation defines how to
        #   build a resource.
        def resource_set?
          @operation.key?('resource')
        end

        # @return [Boolean] Returns `true` if the operation defines a path.
        def path_set?
          @operation.key?('path')
        end

        # Performs generic request validation including:
        # * request is defined
        # * request operation is defined in the api
        # * request params resolve as input parameters
        # * etc.
        # Yields to the given block if the request is defined and exists in
        # the api.
        # @return [Boolean]
        def validate_request(&block)
          if
            validate_request_set &&
            validate_operation_exists
          then
            yield if block_given?
            validate_params
          end
        end

        # @return [Boolean] Returns `true` if the operation does not define
        #   a request.  Only hasSome/hasOne references should not have a
        #   request defined.
        def validate_request_not_set
          if @operation['request']
            error("'#{path}/request' is not valid in this context.")
          else
            true
          end
        end

        # @return [Boolean] Returns `true` if the operation does not define
        #   how to build a resource.  Only load operations may not define
        #   a resource.
        def validate_resource_not_set
          if @operation.key?('resource')
            error("'#{path}/resource' is not valid in this context.")
          else
            true
          end
        end

        # Performs basic validation on the resource definition.
        # @return [Boolean]
        def validate_resource(&block)
          if resource_set?
            validate_resource_exists
          else
            error("'#{path}/resource' must be set.")
          end
        end

        # @return [Boolean] Returns `true` if the operation defines a path.
        #   Load operations require a path.
        def validate_path_set
          if path_set?
            true
          else
            error("'#{path}/path' must be set.")
          end
        end

        # Validates a path by resolving it against the resource definition
        # and the API model.  You must specify the `:origin` and optionally
        # the `:target`.
        #
        # == Origins
        #
        # * :response - Resolves the path starting from the operation output.
        #
        # * :request - Resolves the path starting from the operation input.
        #
        # * :self - Resolves the path starting from the resource data/shape.
        #
        # == Target
        #
        # * :resource - Requires the path to resolve to the shape of the operation
        #   resource entry.
        #
        # * :self - Requries the path to resolve to the shape of the
        #   current resource.
        #
        # @option options [:response, :request, :self] :origin
        # @option options [:self, :resource] :target
        def validate_path(options = {})
          if path_set?
            validate_path_resolves(options)
          else
            true
          end
        end

        # @return [Boolean] Returns `true` if the path resolves to an array.
        #   Has many operations require plural paths and at least one plural
        #   input.
        def validate_path_is_plural
          if @operation['path'].match(/\[/)
            true
          else
            error("'#{path}/path' must be plural.")
          end
        end

        # @return [Boolean] Returns `true` if none of the request params
        #   are for the given `source_type`.  Load operations may not use
        #   "dataMember" source types.
        def validate_param_source_type_not_used(source_type)
          (@operation['request']['params'] || []).each.with_index do |param, n|
            if param['sourceType'] == source_type
              error("'#{path}/request/params/#{n}/sourceType' is set to '#{source_type}' which is not valid in this context.")
            end
          end
        end

        private

        def error(msg)
          @context.error(msg)
        end

        # @option options [:response, :request, :self] :origin
        # @option options [:self, :response] :target
        def validate_path_resolves(options)
          if origin_exists?(options)
            resolve_path(options)
          else
            error("'#{path}/path' requires that '#{origin_path(options)}' be set.")
          end
        end

        def validate_resource_exists
          if definition['resources'].key?(operation_resource_name)
            true
          else
            error("'#{path}/resource/type' references '#{operation_resource_name}' which is not defined.")
          end
        end

        def resolve_path(options)
          if resolved_shape = resolve(@operation['path'], origin(options))
            validate_resolved_shape(resolved_shape, options)
          else
            error("'#{path}/path' does not resolve.")
          end
        end

        def validate_resolved_shape(resolved_shape, options)
          if options[:target]
            validate_target_exists(options) &&
            validate_resolved_shape_matches(resolved_shape, options)
          else
            true
          end
        end

        def validate_target_exists(options)
          if target(options)
            true
          else
            error("'#{path}/path' requires that '#/resources/#{target_resource_name(options)}/shape' is set.")
          end
        end

        def validate_resolved_shape_matches(resolved_shape, options)
          if resolved_shape == target(options)
            true
          else
            error("'#{path}/path' did not resolve to a '#{target(options)}' shape.")
          end
        end

        def origin(options)
          case options[:origin]
          when :request then api_operation['input']
          when :response then api_operation['output']
          when :self then { 'shape' => resource_shape_name }
          else
            msg = "expected :origin to be one of :output, :input, or :self"
            raise ArgumentError, msg
          end
        end

        def target_resource_name(options)
          case options[:target]
          when :resource then operation_resource_name
          when :self then resource_name
          else
            raise ArgumentError, "expected `:target` as :resource, or :self"
          end
        end

        def target(options)
          @definition['resources'][target_resource_name(options)]['shape']
        end

        def origin_path(options)
          case options[:origin]
          when :request then "api#/operations/#{operation_name}/input"
          when :response then "api#/operations/#{operation_name}/output"
          when :self then raise 'not tested'; "api#/shapes/#{resource_shape_name}"
          else raise "unhandled origin #{options[:origin].inspect}"
          end
        end

        def origin_exists?(options)
          case options[:origin]
          when :request then !!(api_operation && api_operation['input'])
          when :response then !!(api_operation && api_operation['output'])
          when :self then !!api['shapes'][resource_shape_name]
          else raise "unhandled origin #{options[:origin].inspect}"
          end
        end

        def operation_resource_name
          @operation['resource']['type']
        end

        def resolve(jamespath, from)
          ref = jamespath.scan(/\w+|\[.*?\]/).inject(from) do |ref, part|
            shape = api['shapes'][ref['shape']]
            if part[0] == '['
              return nil unless shape['type'] == 'list'
              shape['member']
            else
              return nil unless shape['type'] == 'structure'
              return nil unless shape['members'][part]
              shape['members'][part]
            end
          end
          ref && ref['shape']
        end

        def validate_request_set
          if @operation['request']
            true
          else
            error("'#{path}/request' is required in this context.")
          end
        end

        def validate_params
          if params = @operation['request']['params']
            if validate_operation_accepts_input
              params.each.with_index do |param, index|
                validate_request_param(param, index)
              end
            end
          end
        end

        def validate_operation_accepts_input
          if api_operation['input']
            true
          else
            error("'#{path}/request/params' is set but '#{operation_name}' does not accept input.")
          end
        end

        def validate_request_param(param, index)
          validate_request_param_target_resolves(param, index)
          validate_static_params_match_coral_type(param, index)
        end

        def validate_request_param_target_resolves(param, index)
          if resolve(param['target'], api_operation['input'])
            true
          else
            error("'#{path}/request/params/#{index}/target' has the expression '#{param['target']}' which does not resolve from 'api#/operations/#{operation_name}/input'.")
          end
        end

        def validate_static_params_match_coral_type(param, index)
          if %w(string integer boolean).include?(param['sourceType'])
            resolved_shape = resolve(param['target'], api_operation['input'])
            resolved_type = @api['shapes'][resolved_shape]['type']
            unless param['sourceType'] == resolved_type
              error("'#{path}/request/params/#{index}/sourceType' given as '#{param['sourceType']}' but resolves to a '#{resolved_type}' shape.")
            end
          end
        end

        def validate_operation_exists
          #if api_operation
            true
          #else
          #  error("'#{path}/request/operation' is set but is not defined at 'api#/operations/#{operation_name}'.")
          #end
        end

        def resource_name
          @context.matches[1]
        end

        def resource
          definition['resources'][resource_name]
        end

        def resource_shape_name
          resource['shape']
        end

        def operation_name
          @operation['request']['operation']
        end

        def api_operation
          api['operations'][operation_name]
        end

      end
    end
  end
end
