module Aws
  module Api
    class OperationTranslator < BaseTranslator

      def translated
        @properties['http_method'] ||= 'POST'
        @properties['http_path'] ||= '/'

        if @input
          @input.members.each_pair do |member_name, member_shape|
            if member_shape.location == 'uri'
              placeholder = member_shape.serialized_name
              @properties['http_path'].sub!("{#{placeholder}}", "{#{member_name}}")
              member_shape.serialized_name = nil
              if path_param?(@properties['http_path'], member_name)
                member_shape.required = true
              end
            end
          end
        end

        operation = Seahorse::Model::Operation.from_hash(@properties)
        operation.input = @input if @input
        operation.output = @output if @output
        operation.errors = @errors if @errors and @options[:errors]
        operation
      end

      ignore :documentation_url
      ignore :alias

      def path_param?(path, param_name)
        path.split('?').first.include?("{#{param_name}}")
      end

      def set_name(name)
        # strip api version from operation name
        @properties['name'] = name.sub(/\d{4}_\d{2}_\d{2}$/, '')
      end

      def set_http(http)
        @properties['http_method'] = http['method']
        @properties['http_path'] = http['uri']
      end

      def set_input(src)
        handle_input_output('input', src)
      end

      def set_output(src)
        handle_input_output('output', src)
      end

      def handle_input_output(input_or_output, src)
        if src
          src = src.merge('type' => input_or_output)
          translator = "#{input_or_output.capitalize}ShapeTranslator"
          translator = Aws::Api::const_get(translator)
          shape = translator.translate(src, @options)
          shape.members.each do |member_name, member|
            if member.metadata['payload']
              member.metadata.delete('payload')
              shape.payload = member_name
            end
          end
          instance_variable_set("@#{input_or_output}", shape)
        end
      end

      def set_errors(errors)
        @errors = errors.map { |src| OutputShapeTranslator.translate(src, @options) }
        @errors = nil if @errors.empty?
      end

    end
  end
end
